/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "comblock.h"
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"

int main()
{
    init_platform();
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 1);
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 0);
    while(!(cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG0) &0x01));
    xil_printf("Soluci�nes: %U \n", cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IREG1));
    cleanup_platform();
    return 0;
}