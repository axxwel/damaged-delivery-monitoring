#include "boards.h"
#include "nrf_drv_twi.h"

#include "nrf_log.h"
#include "nrf_log_ctrl.h"

#include "nrf_delay.h"

#include "mpu6050.h"
#include "mpu6050_reg_map.h"

/* TWI instance ID. */
#define TWI_MPU6050_INSTANCE_ID     0

/* TWI instance. */
static const nrf_drv_twi_t m_twi_mpu6050 = NRF_DRV_TWI_INSTANCE(TWI_MPU6050_INSTANCE_ID);

#define MPU6050_STATE_UNINIT        0x00
#define MPU6050_STATE_INITIALIZED   0x01
#define MPU6050_STATE_SLEEP         0x02
#define MPU6050_STATE_ERROR         0x80

static uint16_t m_mpu6050_state = MPU6050_STATE_UNINIT;

/* User request :
 *  0 : event is internal,
 *  1 : event respond to user request
 */
static uint8_t m_user_request = 0;
// Pointer to user event handler functin
static mpu6050_event_handler_t m_user_event_handler = NULL;

// Accelerometer sensitivity for full-scale 2, 4, 8 and 16g
static const uint16_t m_accel_sensi[] = {16384, 8192, 4096, 2048};
static uint8_t m_accel_fs = 0;
// Gyroscope sensitivity for full-scale 250, 500, 1000 and 2000°/s
static const float m_gyro_sensi[] = {131.0, 65.5, 32.8, 16.4};
static uint8_t m_gyro_fs = 0;

/* xfer state :
 *  0 : waiting,
 *  1 : done,
 *  2+: error code.
 */
static volatile uint8_t m_xfer_state = 1;
#define WAIT_FOR_XFER() while(m_xfer_state == 0) {}
                         //Sprintf("Event status : %u\n", m_xfer_state);\
                         //}

static void mpu6050_internal_event_handler(nrf_drv_twi_evt_t const *p_event, void *p_context)
{
    switch(p_event->xfer_desc.type) {
      case NRF_DRV_TWI_XFER_RX:
        //NRF_LOG_INFO("MPU6050: event rx");
        break;
      case NRFX_TWI_XFER_TX:
        //NRF_LOG_INFO("MPU6050: event tx");
        break;
      case NRFX_TWI_XFER_TXRX:
        //NRF_LOG_INFO("MPU6050: event txrx");
        break;
      case NRFX_TWI_XFER_TXTX:
        //NRF_LOG_INFO("MPU6050: event txtx");
        break;
    }
    switch(p_event->type) {
      case NRF_DRV_TWI_EVT_DONE:
        //NRF_LOG_INFO("MPU6050: event done");
        m_xfer_state = 1;
        break;
      case  NRFX_TWI_EVT_ADDRESS_NACK:
        //NRF_LOG_INFO("MPU6050: event ERROR addr nack");
        m_xfer_state = 2;
        break;
      case  NRFX_TWI_EVT_DATA_NACK:
        //NRF_LOG_INFO("MPU6050: event ERROR data nack");
        m_xfer_state = 3;
        break;
      case  NRFX_TWI_EVT_OVERRUN:
        //NRF_LOG_INFO("MPU6050: event ERROR over-run");
        m_xfer_state = 4;
        break;
      default:
        //NRF_LOG_INFO("MPU6050: event ERROR unknown case");
        m_xfer_state = 5;
        break;
    }
    if(m_user_request == 1) {
      m_user_event_handler((m_xfer_state==1)?0:0x83);
    }
}

ret_code_t mpu6050_read_datas(uint8_t *p_datas, uint8_t length)
{
  ret_code_t err_code = NRF_SUCCESS;
  // Maximum length HARD CODED ....................................................
  length = (length>14)?14:length;
  err_code = mpu6050_reg_read(MPU6050_REG_ACCEL_XOUT_H, p_datas, length);
  //printf("\nreg xfer return status : %u\n", err_code);
  if(err_code != NRF_SUCCESS) {
    //printf("\nreg xfer return status : %u\n", err_code);
    return err_code;
  }
  m_user_request = 1;
  return err_code;
}

void mpu6050_compute_int(uint8_t *p_raw, uint8_t raw_len, int16_t *p_data, uint8_t data_len)
{
  for (uint8_t i = 0 ; i < data_len ; i++) {
    p_data[i] = (p_raw[i*2]<<8 | p_raw[i*2+1]);
  }
}

void mpu6050_compute_float(int16_t *p_raw, uint8_t raw_len, float *p_data, uint8_t data_len)
{
  p_data[0] = ((float) p_raw[0]) / m_accel_sensi[m_accel_fs];
  p_data[1] = ((float) p_raw[1]) / m_accel_sensi[m_accel_fs];
  p_data[2] = ((float) p_raw[2]) / m_accel_sensi[m_accel_fs];
  p_data[3] = (p_raw[3] / 340.0) + 36.53;
  p_data[4] = ((float) p_raw[4]) / m_gyro_sensi[m_gyro_fs];
  p_data[5] = ((float) p_raw[5]) / m_gyro_sensi[m_gyro_fs];
  p_data[6] = ((float) p_raw[6]) / m_gyro_sensi[m_gyro_fs];
}

ret_code_t mpu6050_conf_gyro(uint8_t fs_sel)
{
  ret_code_t err_code = NRF_SUCCESS;
  if( (fs_sel<0) || (3<fs_sel)) {
    return NRF_ERROR_INVALID_PARAM;
  }
  err_code = mpu6050_reg_write(MPU6050_REG_GYRO_CONFIG, fs_sel<<3);
  if(err_code != NRF_SUCCESS) {
    NRF_LOG_INFO("ERROR on setting gyro config");
    return err_code;
  }
  m_gyro_fs = fs_sel;
  WAIT_FOR_XFER();
  return err_code;
}

ret_code_t mpu6050_conf_accel(uint8_t afs_sel)
{
  ret_code_t err_code = NRF_SUCCESS;
  if( (afs_sel<0) || (3<afs_sel)) {
    return NRF_ERROR_INVALID_PARAM;
  }
  err_code = mpu6050_reg_write(MPU6050_REG_ACCEL_CONFIG, afs_sel<<3);
  if(err_code != NRF_SUCCESS) {
    NRF_LOG_INFO("ERROR on setting gyro config");
    return err_code;
  }
  m_accel_fs = afs_sel;
  WAIT_FOR_XFER();
  return err_code;
}

ret_code_t mpu6050_init(mpu6050_event_handler_t usr_evt_hdl)
{
    ret_code_t err_code = NRF_SUCCESS;

    m_user_event_handler = usr_evt_hdl;
    m_mpu6050_state = MPU6050_STATE_UNINIT;
    // Read and print product ID
    uint8_t value = 0;
    printf(" --- Read who am I - ");
    err_code = mpu6050_reg_read(MPU6050_REG_WHO_AM_I, &value, 1);
    //printf("reg xfer return status : %u\n", err_code);
    if(err_code != NRF_SUCCESS) {
      NRF_LOG_INFO("ERROR on reading who am I");
      return err_code;
    }
    WAIT_FOR_XFER();
    printf("Who am I : %x\n", value);

    // Set sample rate to 1kHz,
    // DLPF is disable so gyro rate is 8kHz
    printf(" --- Write sample rate\n");
    err_code = mpu6050_reg_write(MPU6050_REG_SMPLRT_DIV, 0x07U);
    //printf("reg xfer return status : %u\n", err_code);
    if(err_code != NRF_SUCCESS) {
      NRF_LOG_INFO("ERROR on writing sample rate");
      return err_code;
    }
    WAIT_FOR_XFER();

    // Set clock source to external 32.768kHz
    m_mpu6050_state |= MPU6050_STATE_SLEEP;
    printf(" --- Set clock source\n");
    err_code = mpu6050_reg_write(MPU6050_REG_PWR_MGMT_1,0x04U);
    //printf("reg xfer return status : %u\n", err_code);
    if(err_code != NRF_SUCCESS) {
      NRF_LOG_INFO("ERROR on setting clock source");
      return err_code;
    }
    nrf_delay_ms(100);
    WAIT_FOR_XFER();

    m_mpu6050_state |= MPU6050_STATE_INITIALIZED;
    return err_code;
}

ret_code_t mpu6050_reset_device ()
{
    ret_code_t err_code = NRF_SUCCESS;
    // Reset device
//    printf(" --- Reset device\n");
    err_code = mpu6050_reg_write(MPU6050_REG_PWR_MGMT_1, 0x80U);
    if(err_code != NRF_SUCCESS) {
      return err_code;
    }
    WAIT_FOR_XFER();
    m_accel_fs = m_gyro_fs = m_user_request = 0;
    return err_code;
}

ret_code_t mpu6050_reset_signal_path ()
{
    ret_code_t err_code = NRF_SUCCESS;
    // Reset signal path
//    printf(" --- Reset signal path\n");
    err_code = mpu6050_reg_write(MPU6050_REG_SIGNAL_PATH_RESET,0x70U);
    if(err_code != NRF_SUCCESS) {
      return err_code;
    }
    WAIT_FOR_XFER();
    return err_code;
}

void mpu6050_print_all_int(int16_t *p_datas)
{
  printf("Ax %+6d ", p_datas[0]);
  printf("Ay %+6d ", p_datas[1]);
  printf("Az %+6d ", p_datas[2]);
  printf("T %+6d ", p_datas[3]);
  printf("Gx %+6d ", p_datas[4]);
  printf("Gy %+6d ", p_datas[5]);
  printf("Gz %+6d\n", p_datas[6]);
}

void mpu6050_print_all_float(float *p_datas) 
{
  printf("Ax %+3.2f ", p_datas[0]);
  printf("Ay %+3.2f ", p_datas[1]);
  printf("Az %+3.2f ", p_datas[2]);
  printf("T %+2.2f ", p_datas[3]);
  printf("Gx %+4.2f ", p_datas[4]);
  printf("Gy %+4.2f ", p_datas[5]);
  printf("Gz %+4.2f\n", p_datas[6]);
}

void mpu6050_print_config ()
{
  uint8_t reg[10] = {
    MPU6050_REG_SMPLRT_DIV,
    MPU6050_REG_CONFIG,
    MPU6050_REG_GYRO_CONFIG,
    MPU6050_REG_ACCEL_CONFIG,
    MPU6050_REG_FIFO_EN,
    MPU6050_REG_INT_PIN_CFG,
    MPU6050_REG_INT_ENABLE,
    MPU6050_REG_USER_CTRL,
    MPU6050_REG_PWR_MGMT_1,
    MPU6050_REG_PWR_MGMT_2
  };
  uint8_t datas[10] = {0};
  for(uint8_t i = 0 ; i < 10 ; i++) {
    mpu6050_reg_read(reg[i], &datas[i], 1);
    WAIT_FOR_XFER();
  }
  printf("SMPLRT_DIV      : 0x%02x\n", datas[0]);
  printf("CONFIG          : 0x%02x\n", datas[1]);
  printf("GYRO_CONFIG     : 0x%02x\n", datas[2]);
  printf("ACCEL_CONFIG    : 0x%02x\n", datas[3]);
  printf("FIFO_EN         : 0x%02x\n", datas[4]);
  printf("INT_PIN_CFG     : 0x%02x\n", datas[5]);
  printf("INT_ENABLE      : 0x%02x\n", datas[6]);
  printf("USER_CTRL       : 0x%02x\n", datas[7]);
  printf("PWR_MGMT_1      : 0x%02x\n", datas[8]);
  printf("PWR_MGMT_2      : 0x%02x\n", datas[9]);
}

/*
 ***********************************************************************
 * Low level TWI functions
 ***********************************************************************
 */

ret_code_t mpu6050_twi_init ()
{
    ret_code_t err_code = NRF_SUCCESS;

     const nrf_drv_twi_config_t twi_mpu6050_config = {
       .scl                = ARDUINO_SCL_PIN,
       .sda                = ARDUINO_SDA_PIN,
       .frequency          = NRF_DRV_TWI_FREQ_100K,
       .interrupt_priority = APP_IRQ_PRIORITY_HIGH,
       .clear_bus_init     = false
    };

    // Init twi driver, without callback == polling mode.
    err_code = nrf_drv_twi_init(&m_twi_mpu6050, &twi_mpu6050_config, mpu6050_internal_event_handler, NULL);
    if(err_code != NRF_SUCCESS) {
      NRF_LOG_INFO("ERROR on twi init, tx");
      return err_code;
    }

    nrf_drv_twi_enable(&m_twi_mpu6050);
    
    return err_code;
}


/* functions to read/write device registers
 *
 * Return nRF error code from nrf_drv_twi_xfer except for
 * NRF_ERROR_BUSY corresponding to local pending transfert.
 */
static nrf_drv_twi_xfer_desc_t m_twi_xfer = {
  .address            = MPU6050_ADDR,
  .primary_length     = 0,
  .secondary_length   = 0,
  .p_primary_buf      = NULL,
  .p_secondary_buf    = NULL
};
static uint8_t m_reg_to_read = 0x75U;

ret_code_t mpu6050_reg_read(uint8_t register_address, uint8_t * destination, uint8_t number_of_bytes)
{
    if(m_xfer_state == 0) {
      return NRF_ERROR_BUSY;
    }
    ret_code_t err_code = NRF_SUCCESS;
    //NRF_LOG_INFO("MPU6050: Start xfer: tx-rx");
    m_reg_to_read = register_address;
    m_twi_xfer.type = NRFX_TWI_XFER_TXRX;
    m_twi_xfer.p_primary_buf = &m_reg_to_read;
    m_twi_xfer.primary_length = 1;
    m_twi_xfer.p_secondary_buf = destination;
    m_twi_xfer.secondary_length = number_of_bytes;
    m_xfer_state = 0;
    do {
      err_code = nrf_drv_twi_xfer(&m_twi_mpu6050, &m_twi_xfer, 0);
    } while(err_code == NRF_ERROR_BUSY);
    if(err_code != NRF_SUCCESS) {
      //NRF_LOG_FLUSH();
      //printf("ERROR on xfer tx-rx: %ux\n", err_code);
      m_xfer_state = 1;
      return err_code;
    }

    return err_code;
}

ret_code_t mpu6050_reg_write(uint8_t register_address, uint8_t value)
{
    if(m_xfer_state == 0) {
      return NRF_ERROR_BUSY;
    }
    ret_code_t err_code = NRF_SUCCESS;
    uint8_t datas[2] = {register_address, value};
    //NRF_LOG_INFO("MPU6050: Start xfer: tx");
    m_twi_xfer.type = NRFX_TWI_XFER_TX;
    m_twi_xfer.p_primary_buf = datas;
    m_twi_xfer.primary_length = 2;
    m_twi_xfer.p_secondary_buf = 0;
    m_twi_xfer.secondary_length = NULL;
    m_xfer_state = 0;
    do {
      err_code = nrf_drv_twi_xfer(&m_twi_mpu6050, &m_twi_xfer, 0);
    } while(err_code == NRF_ERROR_BUSY);
    if(err_code != NRF_SUCCESS) {
      //NRF_LOG_INFO("ERROR on transfer, xfer tx");
      m_xfer_state = 1;
      return err_code;
    }
    return err_code;
}
