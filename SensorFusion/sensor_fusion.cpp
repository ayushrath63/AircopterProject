/* 
 * @author: Natasha Sarkar, 2018
 */

#include "mbed.h"
#include "sensor_fusion.h"
 
MPU6050::MPU6050(PinName sda, PinName scl): i2c_object(sda, scl) {
    i2c_object.frequency(100000);
}
 
void MPU6050::start(void) {
    /** TO DO 
     * 
     * CONFIGURE THE FOLLOWING REGISTERS ACCORDING TO THE DATASHEET:
     *
     * PWR_MGMT_1 register to take the IMU out of sleep mode
     * ACCEL_CONFIG register to the smallest possible full-scale range (why might we want to do that?)
     * GYRO_CONFIG register to the largest possible full-scale range to enable the detection of high-velocity rotations
     * CONFIG register to the largest possible bandwidth.
     */

    /** YOUR CODE GOES BELOW */

    char PWR_MGMT_1_data[1] = {0x00};
    char ACCEL_CONFIG_data[1] = {0x00};
    char GYRO_CONFIG_data[1] = {0x00};
    char CONFIG_data[1] = {0x00};

    //wake IMU
    read_reg(ADDRESS, PWR_MGMT_1, PWR_MGMT_1_data, 1);
    PWR_MGMT_1_data[0] &= ~MPU6050_SLEEP_MASK;
    write_reg(ADDRESS, PWR_MGMT_1, PWR_MGMT_1_data[0]);

    //Minimize accelerometer range, maximizes resolution
    read_reg(ADDRESS, ACCEL_CONFIG, ACCEL_CONFIG_data, 1);
    ACCEL_CONFIG_data[0] &= ~ACCEL_CONFIG_AFS_MASK;
    ACCEL_CONFIG_data[0] &= ~ACCEL_CONFIG_ST_MASK;
    write_reg(ADDRESS, ACCEL_CONFIG, ACCEL_CONFIG_data[0]);

    //Maximize gyro range
    read_reg(ADDRESS, GYRO_CONFIG, GYRO_CONFIG_data, 1);
    GYRO_CONFIG_data[0] |= GYRO_CONFIG_FS_MASK;
    GYRO_CONFIG_data[0] &= ~GYRO_CONFIG_ST_MASK;
    write_reg(ADDRESS, GYRO_CONFIG, GYRO_CONFIG_data[0]);

    //Maximize digital lpf bandwidth
    read_reg(ADDRESS, CONFIG, CONFIG_data, 1);
    CONFIG_data[0] &= ~MPU6050_DLPF_CFG_MASK;
    write_reg(ADDRESS, CONFIG, CONFIG_data[0]);

    write_reg(ADDRESS, INT_ENABLE, INT_ENABLE_DATA_RDY);

}
 
bool MPU6050::read_raw(float *gx, float *gy, float *gz, float *ax, float *ay, float *az) {
    /** TO DO
     * 
     * GET THE RAW READINGS FROM THE ACCELEROMETER/GYRSCOPE
     *
     * Store the readings in the floats pointed to by the given float pointers.
     */

    /** YOUR CODE GOES BELOW */ 

    char data[12];
    
    read_reg(ADDRESS, GYRO_X, data, 1);
    read_reg(ADDRESS, GYRO_X+1, data+1, 1);

    read_reg(ADDRESS, GYRO_Y, data+2, 1);
    read_reg(ADDRESS, GYRO_Y+1, data+3, 1);

    read_reg(ADDRESS, GYRO_Z, data+4, 1);
    read_reg(ADDRESS, GYRO_Z+1, data+5, 1);

    read_reg(ADDRESS, ACCEL_X, data+6, 1);
    read_reg(ADDRESS, ACCEL_X+1, data+7, 1);

    read_reg(ADDRESS, ACCEL_Y, data+8, 1);
    read_reg(ADDRESS, ACCEL_Y+1, data+9, 1);

    read_reg(ADDRESS, ACCEL_Z, data+10, 1);
    read_reg(ADDRESS, ACCEL_Z+1, data+11, 1);
    

    *gx = (float)( (int)(data[0] << 8) | (int)(data[1]) );
    *gy = (float)( (int)(data[2] << 8) | (int)(data[3]) );
    *gz = (float)( (int)(data[4] << 8) | (int)(data[5]) );
    *ax = (float)( (int)(data[6] << 8) | (int)(data[7]) );
    *ay = (float)( (int)(data[8] << 8) | (int)(data[9]) );
    *az = (float)( (int)(data[10] << 8) | (int)(data[11]) );

    return true;
}

bool MPU6050::data_ready(void) {
    /** TO DO
     * 
     * CHECK THE INT_STATUS REGISTER TO DETERMINE IF DATA IS READY
     *
     * Return true if it is ready, false otherwise.
     */

    /** YOUR CODE GOES BELOW */
    char INT_STATUS_data[1] = {0x00};
    read_reg(ADDRESS, INT_STATUS, INT_STATUS_data, 1);
    return INT_STATUS_data[0] & INT_STATUS_DATA_RDY;
}

bool MPU6050::write_reg(char addr, char reg, char buf) {
    /** TO DO
     * 
     * IMPELEMENT THIS FUNCTION
     *
     * See the documentation in sensor_fusion.h for detail.
     */

    /** YOUR CODE GOES BELOW */ 

    char command[2] = {reg, buf};

    i2c_object.write(addr, command, 2);
    return true;
}
 
bool MPU6050::read_reg(char addr, char reg, char *buf, int length) {
    /** TO DO
     * 
     * IMPLEMENT THIS FUNCTION
     * 
     * See the documentation in sensor_fusion.h for detail.
     */

    /** YOUR CODE GOES BELOW */

    i2c_object.write(addr, &reg, 1);
    for(int i = 0; i < length; i++)
    {
        i2c_object.read(addr, buf+i, 1);
    }
    return true;
}
