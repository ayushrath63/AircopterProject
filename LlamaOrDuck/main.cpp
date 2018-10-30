
#include "mbed.h"
#include "millis.h"
#include "nRF24L01P.h"

#define TRANSFER_SIZE 1
#define RED 0x05
#define GREEN 0x06
#ifdef RECEIVE

nRF24L01P my_nrf24l01p(PB_5, PB_4, PB_3, PA_4, PF_0);    // mosi, miso, sck, csn, ce, irq
DigitalOut ledR(A6);
DigitalOut ledG(A4);
Serial printer(SERIAL_TX,SERIAL_RX);


int main() {

    //Set up for Send
    my_nrf24l01p.powerUp();
    my_nrf24l01p.setRfFrequency(NRF24L01P_MIN_RF_FREQUENCY + 16);
    my_nrf24l01p.setRfOutputPower(); //Done
    my_nrf24l01p.setAirDataRate();   //Done
    my_nrf24l01p.setCrcWidth();      //Done
    my_nrf24l01p.setTxAddress(0xc2c2c2c2c2);
    my_nrf24l01p.setRxAddress(0xe7e7e7e7e7);
    my_nrf24l01p.setTransferSize( TRANSFER_SIZE );

    my_nrf24l01p.setReceiveMode();
    my_nrf24l01p.enable();
    
    char buffer = 0;
    
    while (1) {
        ledR = 0;
        ledG = 0;
        wait(1);
        if(my_nrf24l01p.readable()){
            my_nrf24l01p.read(0, &buffer, 1);
            if(buffer == 0x05){
                ledR = 1;
                printer.printf("%d", buffer);
                wait(1);
            } else if(buffer == 0x06){
                ledG = 1;
                printer.printf("%d", buffer);
                wait(1);
            }
        }
    }
}

#endif
//
#ifdef TRANSMIT

#include "mbed.h"
#include "nRF24L01P.h"
//
nRF24L01P my_nrf24l01p(PB_5, PB_4, PB_3, PA_4, PF_0);    // mosi, miso, sck, csn, ce, irq

int main() {

    //Set up for Send
    my_nrf24l01p.powerUp();
    my_nrf24l01p.setRfFrequency(NRF24L01P_MIN_RF_FREQUENCY + 16);
    my_nrf24l01p.setRfOutputPower(); //Done
    my_nrf24l01p.setAirDataRate();   //Done
    my_nrf24l01p.setCrcWidth();      //Done
    my_nrf24l01p.setTxAddress(0xe7e7e7e7e7);
    my_nrf24l01p.setRxAddress(0xc2c2c2c2c2);
    my_nrf24l01p.setTransferSize( TRANSFER_SIZE );

    my_nrf24l01p.setTransmitMode();
    my_nrf24l01p.enable();

    char red = RED;
    char green = GREEN;
    srand(0xBEEF);
    while (1) {
        if(rand() & 1) my_nrf24l01p.write(0, &red, 1); 
        else my_nrf24l01p.write(0, &green, 1); 
    }
}
#endif