#ifndef MPU6050_REG_MAP_H
#define MPU6050_REG_MAP_H

// Device address
#define MPU6050_ADDR                      0x68

// Registers address
#define MPU6050_REG_SMPLRT_DIV            0x19
#define MPU6050_REG_CONFIG                0x1A
#define MPU6050_REG_GYRO_CONFIG           0x1B
#define MPU6050_REG_ACCEL_CONFIG          0x1C
#define MPU6050_REG_FIFO_EN               0x23
#define MPU6050_REG_INT_PIN_CFG           0x37
#define MPU6050_REG_INT_ENABLE            0x38
#define MPU6050_REG_ACCEL_XOUT_H          0x3B
#define MPU6050_REG_SIGNAL_PATH_RESET     0x68
#define MPU6050_REG_USER_CTRL             0x6A
#define MPU6050_REG_PWR_MGMT_1            0x6B
#define MPU6050_REG_PWR_MGMT_2            0x6C
#define MPU6050_REG_WHO_AM_I              0x75

// Bits masks
#define MPU6050_SIGNAL_PATH_RESET_TEMP    0x01
#define MPU6050_SIGNAL_PATH_RESET_ACCEL   0x02
#define MPU6050_SIGNAL_PATH_RESET_GYRO    0x04


#endif
