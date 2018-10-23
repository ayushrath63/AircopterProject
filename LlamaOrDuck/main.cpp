#include "mbed.h"
#include "nRF24L01P.h"

DigitalOut myled(D6);

int main() {

    nRF24L01P transmitter(D11, D12, D13, A3, D7);
    transmitter.powerUp();
    transmitter.setRfFrequency(DEFAULT_NRF24L01P_RF_FREQUENCY + 16);
    transmitter.setTxAddress(0xDEADBEEF, 8, 5);
    transmitter.setTransmitMode();
    transmitter.enable();

    char data[1] = {'A'};

    while(1) {
        transmitter.write(5, data, 1);
        myled = 1; // LED is ON
        wait(0.2); // 200 ms
        myled = 0; // LED is OFF
        wait(1.0); // 1 sec
    }
}
