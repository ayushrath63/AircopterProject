
#include "mbed.h"
#include "sensor_fusion.h"

Serial pc(USBTX, USBRX);

int main() {

    MPU6050 imu(SDA, SCL);
    imu.start();
    
    float gx,gy,gz,ax,ay,az;
    while(1)
    {
        while(!imu.data_ready()){}
        imu.read_raw(&gx, &gy, &gz, &ax, &ay, &az);
        //pc.printf("w = (%f,%f,%f)\r\n a= (%f,%f,%f)", gx,gy,gz,ax,ay,az);
    }
    
    return 0;
}