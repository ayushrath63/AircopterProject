
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
    
    char red = RED;
    char green = GREEN;
    srand(0xBEEF);
    ledR = 0;
    ledG = 0;
    millis_begin();
    int game_time = 2000;
    int buttonVal;
    while (1) {
        ledR = ledG = 0;
        wait(0.5);
        unsigned long t_start = millis();
        if(rand() & 1) 
        {
            ledR = 1;
            buttonVal = RED;
        }
        else 
        {
            ledG = 1;
            buttonVal = GREEN;
        }
        while(millis() - t_start < game_time)
        {
            if(my_nrf24l01p.readable()){
                my_nrf24l01p.read(0, &buffer, 1);
                if(buffer == buttonVal)
                {
                    game_time = game_time == 500 ? 500 : game_time - 250;
                    printer.printf("%d\r\n", buffer);
                    break;
                }
            }
        }
        if(buffer != buttonVal)
        {
            buffer = 0;
            game_time = 2000;
            ledG = 0;
            ledG = 0;
            for(int i = 0; i < 6; i++)
            {
                ledR = !ledR;
                wait(0.1);
            }
        }
    }
}

#endif

#ifdef TRANSMIT

#include "mbed.h"
#include "nRF24L01P.h"

nRF24L01P my_nrf24l01p(PB_5, PB_4, PB_3, PA_4, PF_0);    // mosi, miso, sck, csn, ce, irq
DigitalIn btnR(A6);
DigitalIn btnG(A5);
DigitalOut ledG(A2);
DigitalOut ledR(D9);

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

    while (1) {
        if(btnR)
        {
            my_nrf24l01p.write(0, &red, 1); 
            ledR = 1;
            wait(0.2);
        }
        else if(btnG)
        {
            my_nrf24l01p.write(0, &green, 1); 
            ledG = 1;
            wait(0.2);
        }
        ledR = 0;
        ledG = 0;
    }

}
#endif