#include <stdint.h>
#include <stdbool.h>
#include <math.h>
#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include "driverlib/fpu.h"
#include "driverlib/sysctl.h"
#define TARGET_IS_BLIZZARD_RB1
#include "driverlib/rom.h"
//#include "IQmath/IQmathLib.h"

#ifndef M_PI
#define M_PI                    3.14159265358979323846
#endif

//length = 100
#define SERIES_LENGTH 100

//global variables
float gSeriesData[SERIES_LENGTH];

int32_t i32DataCount = 0;

int main(void)
{
    //local variables
    float fRadians;
    //enable Lazy Stack
    ROM_FPULazyStackingEnable();
    //Turn on FPU
    ROM_FPUEnable();
    //set up yhe system clock for 50MHz
    ROM_SysCtlClockSet(SYSCTL_SYSDIV_4 | SYSCTL_USE_PLL | SYSCTL_XTAL_16MHZ | SYSCTL_OSC_MAIN);

    fRadians = ((2 * M_PI) / SERIES_LENGTH);
    //the while loop will calculate the sine value for each of the 100 values of the angle and place them in data array
    while(i32DataCount < SERIES_LENGTH)
    {
        gSeriesData[i32DataCount] = sinf(fRadians * i32DataCount);

        i32DataCount++;
    }
    //endless loop
    while(1)
    {
    }
}
