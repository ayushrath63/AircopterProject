#include "mbed.h"
#include "quaternion.h"
#include "millis.h"
#include "sensor_fusion.h"

Serial pc(USBTX, USBRX);

#define NUM_SAMPLES 200

int main() {
    
    float initial = 0;
    float final = 0;
    vector orientation(0,0,1);
    vector filtered(0,0,1);

    MPU6050 imu(SDA, SCL);
    imu.start();
    char buf[1] = { 0x00 };
    float gx, gy, gz, ax, ay, az;
    millis_begin();
    initial = millis();
    while(1)
    {
        for(int i = 0; i < NUM_SAMPLES; i++)
        {         
            while(!imu.data_ready());
            imu.read_raw(&gx, &gy, &gz, &ax, &ay, &az);
            vector accel_vec(ax,ay,az);
            vector_normalize(&accel_vec, &accel_vec);
            
            
            vector gyro_vec(gx,gy,gz);
            //pc.printf("New turn\r\n");
            //pc.printf("%f,%f,%f\r\n", gyro_vec.x,gyro_vec.y,gyro_vec.z);
            
            float mag = vector_normalize(&gyro_vec, &gyro_vec);
            
            final = millis();
            float time = (final - initial)/1000;
            initial = final;
            
            quaternion q;
            
            quaternion_create(&gyro_vec, mag*time, &q);
            
            quaternion_rotate(&orientation, &q, &orientation);
            
            pc.printf("Gyro: %f,%f,%f\r\n", orientation.x,orientation.y,orientation.z);
            pc.printf("Accl: %f,%f,%f\r\n", accel_vec.x,accel_vec.y,accel_vec.z);

        }
    }
    
    return 0;
}