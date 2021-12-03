#include <stdio.h>
#include "comblock.h"
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"


int main()
{
    init_platform();

    //cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 0);
    //cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 0);
    //xil_printf("Counter:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));
    //xil_printf("Counter:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));
    //xil_printf("Counter:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));
    //cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 0);
    //cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 1);
    //xil_printf("Counter:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));
    //xil_printf("Counter:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));
    //xil_printf("Counter:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));
    //xil_printf("Counter:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));
    //cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 1);
    //cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 0);
    //xil_printf("Counter:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));
    //xil_printf("Counter:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));
    //xil_printf("Counter:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));
    //xil_printf("Counter:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));
    //cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 1);
    //cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 1);
    //xil_printf("Counter:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));
    //xil_printf("Counter:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));
    //xil_printf("Counter:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));
    //xil_printf("Counter:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));

    u32 n = 2;
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG2, n);
    xil_printf("Data:    %U \n", n);
    xil_printf("Data:    %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG2));

    cleanup_platform();
    return 0;
}
