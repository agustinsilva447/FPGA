#include <stdio.h>
#include "comblock.h"
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"

int main()
{
    init_platform();

    xil_printf("10 QUEENS PROBLEM ->54189654\n");
    xil_printf("\n");

    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 1);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 1);
    xil_printf("STEP 1:\n");
    xil_printf("Done:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0));
    xil_printf("Counter: %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));
    xil_printf("Cblock:  %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG2));
    xil_printf("a0_in:   %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG3));

    xil_printf("\n");
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 0);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 0);
    xil_printf("STEP 2:\n");
    xil_printf("Done:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0));
    xil_printf("Counter: %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));
    xil_printf("Cblock:  %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG2));
    xil_printf("a0_in:   %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG3));

    while(!(cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0)&0x01));

    xil_printf("STEP 3:\n");
    xil_printf("Done:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0));
    xil_printf("Counter: %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));
    xil_printf("Cblock:  %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG2));
    xil_printf("a0_in:   %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG3));

    cleanup_platform();
    return 0;
}
