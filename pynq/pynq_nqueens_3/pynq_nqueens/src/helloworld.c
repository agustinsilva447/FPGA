#include <stdio.h>
#include "comblock.h"
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"

int main()
{
    u32 i;
    init_platform();
    print("Hello World\n\r");

    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 1);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 0);
    xil_printf("Counter: %U. \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0));
    for (i = 1; i <= 8; i++)
    {
        cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 1);
        cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG2, i);
        cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 0);
    	xil_printf("---> a_in = %U \n", i);
        while (!(cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1)&0b1)){};
        xil_printf("Counter: %U. \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0));
        xil_printf("Solution: %U. \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG2));
    }
    xil_printf("Finished \n");

    cleanup_platform();
    return 0;
}