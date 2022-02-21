#include <stdio.h>
#include "comblock.h"
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"

int main()
{
	int clk = 0;
	int a = 0;
	u32 count = 0;
	u32 n = 0;
    init_platform();
    print("Hello World\n\r");

    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 1);
	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 0);
    count = cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0);

    while ((cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1)&0b1) == 0){
    	if (clk == 0){
    		clk = 1;
    	} else {
    		clk = 0;
    	}
    	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, clk);
    	n = n + 1;
    	xil_printf("Clock %U. \n", n);
		a = cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG2);
		xil_printf("Solution number %U for input n° %U. \n\n", count, a);

    	if (count != cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0)) {
    		count = cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0);
    	}
    };

    xil_printf("Counter: %U. \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0));
    xil_printf("Done: %U. \n\n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));

    cleanup_platform();
    return 0;
}