#ifndef MPU6050_H
#define MPU6050_H

// Event status returned in event handler
#define MPU6050_EVT_DONE            0x00
#define MPU6050_EVT_ADDRESS_NACK    0x80
#define MPU6050_EVT_DATA_NACK       0x81
#define MPU6050_EVT_OVERRUN         0x82
#define MPU6050_EVT_ERROR           0x83


typedef void (* mpu6050_event_handler_t) (uint8_t event_status);

ret_code_t mpu6050_twi_init ();
ret_code_t mpu6050_init (mpu6050_event_handler_t event_handler);
ret_code_t mpu6050_conf_gyro(uint8_t fs_sel);
ret_code_t mpu6050_conf_accel(uint8_t afs_sel);

ret_code_t mpu6050_read_datas(uint8_t *p_datas, uint8_t length);

void mpu6050_compute_int(uint8_t *p_raw, uint8_t raw_len, int16_t *p_data, uint8_t data_len);
void mpu6050_compute_float(int16_t *p_raw, uint8_t raw_len, float *p_data, uint8_t data_len);

ret_code_t mpu6050_reset_device();
ret_code_t mpu6050_reset_signal_path();

void mpu6050_print_config();
void mpu6050_print_all_float(float *p_datas);
void mpu6050_print_all_int(int16_t *p_datas);

ret_code_t mpu6050_reg_read(uint8_t register_address, uint8_t * destination, uint8_t number_of_bytes);
ret_code_t mpu6050_reg_write(uint8_t register_address, uint8_t value);

#endif
