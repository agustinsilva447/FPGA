#include <stdio.h>
#include "comblock.h"
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"


int main()
{
    u32 n;
    n = 38395104;

    init_platform();
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR , CB_OREG0, n);
    xil_printf("\nLoopback: %U\n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0));

    xil_printf("\n---------------------> Adder\n");
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG2, 0);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG3, 0);
    xil_printf("0 + 0 => (Sum: %U, Carry: %U) \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG3)&0x01, cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG4)&0x01);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG2, 0);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG3, 1);
    xil_printf("0 + 1 => (Sum: %U, Carry: %U) \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG3)&0x01, cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG4)&0x01);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG2, 1);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG3, 0);
    xil_printf("1 + 0 => (Sum: %U, Carry: %U) \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG3)&0x01, cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG4)&0x01);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG2, 1);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG3, 1);
    xil_printf("1 + 1 => (Sum: %U, Carry: %U) \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG3)&0x01, cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG4)&0x01);

    xil_printf("\n---------------------> Counter\n");
    u32 l = 0;
    u32 k = 0;
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG6, 1);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG6, 0);
    for (int j = 0; j < 5; ++j)
    {
		if (l == 0){
			l = 1;
		}else{
			l = 0;
		}
		cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG5, l);
		for (int i = 0; i < 5; ++i)
		{
			if (k == 0){
				k = 1;
			}else{
				k = 0;
			}
			cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG4, k);
			xil_printf("ce = %U. clk = %U. Counter: %U. \n", l,k,cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG7));
		}
    }

    xil_printf("\n---------------------> SLICE register\n");
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG8, 1);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG8, 0);
    n = 119943496;
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG9, n);
	for (int i = 0; i < 16; ++i)
	{
		if (k == 0){
			k = 1;
		}else{
			k = 0;
		}
		cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG7, k);
		xil_printf("idx: %U. u_k: %U. \n",cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG8) ,cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG9));
		xil_printf("idx: %U. u_0: %U. \n",cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG8) ,cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG10));
	}

    xil_printf("\n---------------------> NQUEENS\n");
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 0);
    xil_printf("Done: %U. Counter: %U. \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1)&0x1, cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG2));
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 1);
    while(!(cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1)&0x1)){
    	//xil_printf("a_i: %U. Counter: %U. \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG5), cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG2));
    };
    xil_printf("Done: %U. Counter: %U. \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1)&0x1, cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG2));

    cleanup_platform();
    return 0;
}
