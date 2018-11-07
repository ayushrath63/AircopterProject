/* 
 * @author: Natasha Sarkar, 2018
 */

#include "mbed.h"
#include "sensor_fusion.h"
 
MPU6050::MPU6050(PinName sda, PinName scl): i2c_object(sda, scl) {
    i2c_object.frequency(400000);
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

}
 
bool MPU6050::read_raw(float *gx, float *gy, float *gz, float *ax, float *ay, float *az) {
    /** TO DO
     * 
     * GET THE RAW READINGS FROM THE ACCELEROMETER/GYRSCOPE
     *
     * Store the readings in the floats pointed to by the given float pointers.
     */

    /** YOUR CODE GOES BELOW */ 

}

bool MPU6050::data_ready(void) {
    /** TO DO
     * 
     * CHECK THE INT_STATUS REGISTER TO DETERMINE IF DATA IS READY
     *
     * Return true if it is ready, false otherwise.
     */

    /** YOUR CODE GOES BELOW */ 
}

bool MPU6050::write_reg(int addr, int reg, char buf) {
    /** TO DO
     * 
     * IMPELEMENT THIS FUNCTION
     *
     * See the documentation in sensor_fusion.h for detail.
     */

    /** YOUR CODE GOES BELOW */ 
}
 
bool MPU6050::read_reg(char addr, char reg, char *buf, int length) {
    /** TO DO
     * 
     * IMPLEMENT THIS FUNCTION
     * 
     * See the documentation in sensor_fusion.h for detail.
     */

    /** YOUR CODE GOES BELOW */ 
}
