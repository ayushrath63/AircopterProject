
#include "mbed.h"
#include "sensor_fusion.h"

Serial pc(USBTX, USBRX);

int main() {

    MPU6050 imu(SDA, SCL);
    imu.start();

    while(1)
    {
        pc.printf("%d\r\n", imu.data_ready());
    }
    
    return 0;
}