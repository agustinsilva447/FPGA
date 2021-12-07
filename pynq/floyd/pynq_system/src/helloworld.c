#include <stdio.h>
#include "comblock.h"
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"


int main()
{
    init_platform();
    print("Hello World\n\r");

    u32 i;
    i = 38395104;
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, i);
    xil_printf("Input N° Data:    %U \n", i);
    xil_printf("Comblock Data:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0));

    cleanup_platform();
    return 0;
}
