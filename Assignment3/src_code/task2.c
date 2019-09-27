#include <stdint.h>
#include <stdbool.h>
#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include "driverlib/sysctl.h"
#include "driverlib/gpio.h"

uint8_t ui8PinData = 8;
int newdata = 4;
int main(void)
{
	SysCtlClockSet(SYSCTL_SYSDIV_5|SYSCTL_USE_PLL|SYSCTL_XTAL_16MHZ|SYSCTL_OSC_MAIN);
	//set at 40MHZ
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);
	GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3);

	while(1)
	{
		GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3,ui8PinData);
		SysCtlDelay(10000000);//2.5ns*20000000=0.25s
		GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3, 0x00);
		SysCtlDelay(10000000);//2.5ns*20000000=0.25s
		if(ui8PinData == 2)
		{
			ui8PinData =  6;
			//blinking RB
		}
		else if(ui8PinData <= 8 && ui8PinData != 6)
		{
			ui8PinData = ui8PinData/2;
		}//blinking R-B-G
		else if(ui8PinData < 14)
		{
			ui8PinData = ui8PinData + newdata;
			if(newdata > 2){newdata = newdata / 2;} else{newdata = 2;}
			//blinking RG-BG-RBG
		}
		else
		{
			ui8PinData = 8;
			newdata = 4;
		}
	}
}