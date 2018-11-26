#include "mbed.h"
#include "quaternion.h"
#include "millis.h"
#include "sensor_fusion.h"

//Serial pc(USBTX, USBRX);

#define NUM_SAMPLES 200


typedef union {
    char s[4];
    float f;    
} floatUnion;

floatUnion x,y,z;


const float alpha = 0.8;

int main() {
    
    float initialTime = 0;
    float finalTime = 0;
    vector orientation(0,0,1);

    MPU6050 imu(SDA, SCL);
    imu.start();
    char buf[1] = { 0x00 };
    float gx, gy, gz, ax, ay, az;
    millis_begin();
    initialTime = millis();
    while(1)
    {  
            while(!imu.data_ready());
            imu.read_raw(&gx, &gy, &gz, &ax, &ay, &az);
            vector accel_vec(ax,ay,az);
            vector_normalize(&accel_vec, &accel_vec);
            
            vector gyro_vec(gx,gy,gz);
            //pc.printf("New turn\r\n");
            //pc.printf("%f,%f,%f\r\n", gyro_vec.x,gyro_vec.y,gyro_vec.z);
            
            float mag = vector_normalize(&gyro_vec, &gyro_vec);
            
            finalTime = millis();
            float time = (finalTime - initialTime)/1000;
            initialTime = finalTime;
            
            quaternion q;
            
            quaternion_create(&gyro_vec, mag*time, &q);
            
            quaternion_rotate(&orientation, &q, &orientation);
            
            vector tmp_accel(0,0,1);
            vector tmp_gyro(0,0,1);
            
            vector_multiply(&accel_vec, alpha, &tmp_accel);
            vector_multiply(&orientation, (1.0f-alpha), &tmp_gyro);
            
            vector tmp_nonormal(0,0,1);
            vector combo_vec(0,0,1);
            vector_add(&tmp_accel, &tmp_gyro, &tmp_nonormal);
            vector_normalize(&tmp_nonormal, &combo_vec);
            
            x.f = combo_vec.x;
            y.f = combo_vec.y;
            z.f = combo_vec.z;
            
            //pc.printf("%c%c%c%c%c%c%c%c%c%c%c%c\r\n", x.s[0], x.s[1],x.s[2],x.s[3], y.s[0], y.s[1],y.s[2],y.s[3], z.s[0], z.s[1],z.s[2],z.s[3]);
            //pc.printf("%c%c%c%c%c%c%c%c%c%c%c%c\r\n", x.s[3], x.s[2],x.s[1],x.s[0], y.s[3], y.s[2],y.s[1],y.s[0], z.s[3], z.s[2],z.s[1],z.s[0]);
            pc.printf("Accl: %f %f %f ", accel_vec.x,accel_vec.y,accel_vec.z);
            pc.printf("Gyro: %f %f %f ", orientation.x,orientation.y,orientation.z);
            pc.printf("Cmbo: %f %f %f\r\n", combo_vec.x,combo_vec.y,combo_vec.z);
            //wait(0.1);

    }
    
    return 0;
}