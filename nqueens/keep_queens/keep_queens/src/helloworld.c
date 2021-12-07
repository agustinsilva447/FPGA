#include <stdio.h>
#include "comblock.h"
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"


int main()
{
    u32 n,m;
    u32 k = 0;
    n = 38395104;

    init_platform();
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR , CB_OREG0, n);
    xil_printf("\nLoopback: %U\n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0));

    xil_printf("\n---------------------> SLICE register\n");
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG2, 1);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG2, 0);
    n = 119943496; // [8. 4. 1. 3. 6. 2. 7.]
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG3, n);
	for (int i = 0; i < 12; ++i)
	{
		if (k == 0){
			k = 1;
		}else{
			k = 0;
		}
		cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, k);
		xil_printf("idx: %U. u_k: %U. \n",cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1) ,cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG2));
		xil_printf("idx: %U. u_0: %U. \n",cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1) ,cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG3));
	}


	xil_printf("\n---------------------> CONTROL logic (no valid)\n");
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG5, 1);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG5, 0);
    n = 119943496; // [8. 4. 1. 3. 6. 2. 7.]
    m = 4;
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG6, n);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG7, m);
	for (int i = 0; i < 20; ++i)
	{
		if (k == 0){
			k = 1;
		}else{
			k = 0;
		}
		cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG4, k);
		xil_printf("done: %U. valid: %U. \n",cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG5)&0x1 ,cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG4)&0x1);
	}


	xil_printf("\n---------------------> CONTROL logic (valid)\n");
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG5, 1);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG5, 0);
    n = 119943496; // [8. 4. 1. 3. 6. 2. 7.]
    m = 5;
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG6, n);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG7, m);
	for (int i = 0; i < 20; ++i)
	{
		if (k == 0){
			k = 1;
		}else{
			k = 0;
		}
		cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG4, k);
		xil_printf("done: %U. valid: %U. \n",cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG5)&0x1 ,cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG4)&0x1);
	}


    cleanup_platform();
    return 0;
}