#include <stdbool.h>
#include <stdint.h>
#include "inc/hw_memmap.h"
#include "driverlib/gpio.h"
#include "driverlib/pin_map.h"
#include "driverlib/ssi.h"
#include "driverlib/sysctl.h"
#include "driverlib/uart.h"
#include "utils/uartstdio.h"

//*****************************************************************************
//
//! \addtogroup ssi_examples_list
//! <h1>SPI Master (spi_master)</h1>
//!
//! This example shows how to configure the SSI0 as SPI Master.  The code will
//! send three characters on the master Tx then polls the receive FIFO until
//! 3 characters are received on the master Rx.
//!
//! This example uses the following peripherals and I/O signals.  You must
//! review these and change as needed for your own board:
//! - SSI0 peripheral
//! - GPIO Port A peripheral (for SSI0 pins)
//! - SSI0Clk - PA2
//! - SSI0Fss - PA3
//! - SSI0Rx  - PA4
//! - SSI0Tx  - PA5
//!
//! The following UART signals are configured only for displaying console
//! messages for this example.  These are not required for operation of SSI0.
//! - UART0 peripheral
//! - GPIO Port A peripheral (for UART0 pins)
//! - UART0RX - PA0
//! - UART0TX - PA1
//!
//! This example uses the following interrupt handlers.  To use this example
//! in your own application you must add these interrupt handlers to your
//! vector table.
//! - None.
//
//*****************************************************************************

//*****************************************************************************
//
// Number of bytes to send and receive.
//
//*****************************************************************************
#define NUM_LEDS 8
uint8_t frame_buffer[NUM_LEDS*3];
void send_data(uint8_t* data, uint8_t num_leds);
void fill_frame_buffer(uint8_t r, uint8_t g, uint8_t b,uint32_t num_leds);
static volatile uint32_t ssi_lut[] =
{

 0b100100100,
 0b110100100,
 0b100110100,
 0b110110100,
 0b100100110,
 0b110100110,
 0b100110110,
 0b110110110
};

int main(void)
{
    FPULazyStackingEnable();// 80MHz
    SysCtlClockSet(SYSCTL_SYSDIV_2_5 | SYSCTL_USE_PLL | SYSCTL_XTAL_16MHZ |SYSCTL_OSC_MAIN);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);
    SysCtlDelay(50000);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_SSI0);
    SysCtlDelay(50000);
    GPIOPinConfigure(GPIO_PA5_SSI0TX);
    GPIOPinConfigure(GPIO_PA2_SSI0CLK);
    GPIOPinConfigure(GPIO_PA4_SSI0RX);
    GPIOPinConfigure(GPIO_PA3_SSI0FSS);
    GPIOPinTypeSSI(GPIO_PORTA_BASE, GPIO_PIN_5);
    GPIOPinTypeSSI(GPIO_PORTA_BASE, GPIO_PIN_2);
    GPIOPinTypeSSI(GPIO_PORTA_BASE, GPIO_PIN_4);
    GPIOPinTypeSSI(GPIO_PORTA_BASE, GPIO_PIN_3);//20 MHz data rate
    SSIConfigSetExpClk(SSI0_BASE, 80000000, SSI_FRF_MOTO_MODE_0, SSI_MODE_MASTER, 2400000, 9);
    SSIEnable(SSI0_BASE);
    while(1)
    {

        fill_frame_buffer(255, 0, 0, NUM_LEDS);
        send_data(frame_buffer, NUM_LEDS);
        fill_frame_buffer(0, 255, 0, NUM_LEDS);
        send_data(frame_buffer, NUM_LEDS);
        fill_frame_buffer(0, 0, 255, NUM_LEDS);
        send_data(frame_buffer, NUM_LEDS);
        fill_frame_buffer(255, 255, 0, NUM_LEDS);
        send_data(frame_buffer, NUM_LEDS);
        fill_frame_buffer(255, 0, 255, NUM_LEDS);
        send_data(frame_buffer, NUM_LEDS);
        fill_frame_buffer(0, 255, 255, NUM_LEDS);
        send_data(frame_buffer, NUM_LEDS);
        fill_frame_buffer(255, 255, 255, NUM_LEDS);
        send_data(frame_buffer, NUM_LEDS);
    }
    return 0;
}
void send_data(uint8_t* data, uint8_t num_leds)
{
    uint32_t i, j, curr_lut_index=0, curr_rgb;
    for(i = 0; i < (num_leds*3); i = i + 3)
    {
        curr_rgb = (((uint32_t)data[i + 2]) << 16) | (((uint32_t)data[i + 1]) << 8) | data[i];
        for(j = 0; j < 24; j = j + 3)
        {
            curr_lut_index = ((curr_rgb>>j) & 0b111);
            SSIDataPut(SSI0_BASE, ssi_lut[curr_lut_index]);
       }
    }
    SysCtlDelay(50000000); // delay more then 50us
}
void fill_frame_buffer(uint8_t r, uint8_t g, uint8_t b, uint32_t num_leds)
{
    uint32_t i;
    uint8_t* frame_buffer_index = frame_buffer;
    for(i = 0; i < num_leds; i++)
    {
        *(frame_buffer_index++) = g;
        *(frame_buffer_index++) = r;
        *(frame_buffer_index++) = b;
    }
}

