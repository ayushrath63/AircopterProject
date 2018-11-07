
#include "mbed.h"

PwmOut out(D9);

#define MAX_SPEED 0.3f

int main() {

    while(1)
    {
        while(out < MAX_SPEED)
        {
            out = out + 0.05f;
            wait_ms(200);
        }

        while(out > 0.0f)
        {
            out = out - 0.05f;
            wait_ms(200);
        }
    }
    
    return 0;
}