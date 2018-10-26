#include "mbed.h"
#include "nRF24L01P.h"

DigitalOut myled(D6);

int main() {
#define TRANSMIT
#ifdef TRANSMIT

    nRF24L01P transmitter(D11, D12, D13, A3, D7);
    transmitter.powerUp();
    transmitter.setRfFrequency(DEFAULT_NRF24L01P_RF_FREQUENCY + 4 * 4);
    transmitter.setTxAddress(0xc2c2c2c2c2, 8, 5);
    transmitter.setTransmitMode();
    transmitter.enable();

    char txdata[1] = {'A'};

    while(1) {
        transmitter.write(5, txdata, 1);
        myled = 1; // LED is ON
        wait(0.1); // 200 ms
        myled = 0; // LED is OFF
        wait(0.1); // 1 sec
    }

#else

Serial pc(SERIAL_TX, SERIAL_RX, 115200);

    nRF24L01P receiver(D11, D12, D13, A3, D7);
    receiver.powerUp();
    receiver.setRfFrequency(DEFAULT_NRF24L01P_RF_FREQUENCY + 4 * 4);
    receiver.setRxAddress(0xc2c2c2c2c2, 8, 5);
    receiver.setReceiveMode();
    receiver.enable();

    char rxdata[1];

    while(1) {
        receiver.read(5, rxdata, 1);
        pc.printf("TEST %c\r\n", rxdata);
    }

#endif
}
