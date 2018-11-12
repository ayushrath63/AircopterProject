
#include "mbed.h"
#include "quaternion.h"
#include "sensor_fusion.h"

Serial pc(USBTX, USBRX);

#define NUM_SAMPLES 200

int main() {

    MPU6050 imu(SDA, SCL);
    imu.start();
    char buf[1] = { 0x00 };
    float gx, gy, gz, ax, ay, az;
    while(1)
    {
        for(int i = 0; i < NUM_SAMPLES; i++)
        {
            while(!imu.data_ready());
            imu.read_raw(&gx, &gy, &gz, &ax, &ay, &az);
            vector accel_vec(ax,ay,az);
            vector_normalize(&accel_vec, &accel_vec);
            pc.printf("%f,%f,%f\r\n", accel_vec.x,accel_vec.y,accel_vec.z);
        }
    }
    
    return 0;
}