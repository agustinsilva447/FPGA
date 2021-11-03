/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

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
#include "platform.h"
#include "xil_printf.h"
#include "comblock.h"
#include "xparameters.h"
#include "Type1.h"


int main()
{
    init_platform();
    int fifo_status;
    int val;
    int res[4]={0,0,0,0};

    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG4, 0); //Disable FIFO read
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OFIFO_CONTROL, 1); //Clear output fifo
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OFIFO_CONTROL, 0);

    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IFIFO_CONTROL, 1); //Clear input fifo
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IFIFO_CONTROL, 0);

    //Filling FIFO with trace.
    for(int i=0; i<16536; i++){
    	cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OFIFO_VALUE, dst[i]);
    }

    //PSD Configuration
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG0, 1000); //FIR Trigger
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG1, 6); //Signal Trigger
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG2, 58); //Shift register Delay
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG3, 30); //Number for saturated

    //Enable Fifo readout
    cbWrite(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_OREG4, 1);

    for(int i=0; i<500; i++){
    	fifo_status=cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IFIFO_STATUS)&1;
    	if(fifo_status==0){
    		val=cbRead(XPAR_COMBLOCK_0_AXIL_BASEADDR, CB_IFIFO_VALUE);
    		res[val]+=1;
    	}

    }

    xil_printf("Results \n\r");
    for (int i=0; i<4; i++){
    	xil_printf("Type %d: %d \n\r",i, res[i]);
    }


    cleanup_platform();

    return 0;
}
