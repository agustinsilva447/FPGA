#include <stdio.h>
#include "comblock.h"
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"


int main()
{
    init_platform();
    u32 i;

    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 1);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 0);
    i = 0b0001;
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 1);
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG2, i);
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 0);
	xil_printf("---> a_in = %U \n", i);
	while (!(cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1)&0b1)){};
	xil_printf("Counter: %U. \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0));

    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 1);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 0);
    i = 0x2;
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 1);
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG2, i);
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 0);
	xil_printf("---> a_in = %U \n", i);
	while (!(cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1)&0b1)){};
	xil_printf("Counter: %U. \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0));

    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 1);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 0);
    i = 0x3;
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 1);
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG2, i);
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 0);
	xil_printf("---> a_in = %U \n", i);
	while (!(cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1)&0b1)){};
	xil_printf("Counter: %U. \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0));

    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 1);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 0);
    i = 0x4;
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 1);
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG2, i);
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 0);
	xil_printf("---> a_in = %U \n", i);
	while (!(cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1)&0b1)){};
	xil_printf("Counter: %U. \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0));

    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 1);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 0);
    i = 0x5;
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 1);
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG2, i);
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 0);
	xil_printf("---> a_in = %U \n", i);
	while (!(cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1)&0b1)){};
	xil_printf("Counter: %U. \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0));

    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 1);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 0);
    i = 0x6;
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 1);
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG2, i);
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 0);
	xil_printf("---> a_in = %U \n", i);
	while (!(cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1)&0b1)){};
	xil_printf("Counter: %U. \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0));

    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 1);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 0);
    i = 0x7;
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 1);
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG2, i);
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 0);
	xil_printf("---> a_in = %U \n", i);
	while (!(cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1)&0b1)){};
	xil_printf("Counter: %U. \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0));

    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 1);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 0);
    i = 0x8;
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 1);
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG2, i);
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 0);
	xil_printf("---> a_in = %U \n", i);
	while (!(cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1)&0b1)){};
	xil_printf("Counter: %U. \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0));

    xil_printf("Finished \n");
    cleanup_platform();
    return 0;
}
