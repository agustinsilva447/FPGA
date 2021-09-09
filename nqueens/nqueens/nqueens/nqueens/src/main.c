#include <xparameters.h>
#include <xtime_l.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>

#include "xnqueens_hw.h"
#include "xil_printf.h"
#include "xnqueens.h"
#include "sleep.h"

#define n 8

int main()
{
	XTime tStart;
	XTime tEnd;
	int sol_list_hw;
	float time_hw;

	int status;
	XNqueens goNqueens;
	XNqueens_Config *goNqueens_cfg;
	goNqueens_cfg = XNqueens_LookupConfig(XPAR_NQUEENS_0_DEVICE_ID);
	if (!goNqueens_cfg){
		printf("\nError cargando la configuracion de goNqueens.");
	} else {
		printf("\nNqueens configurado correctamente.");
	}
	status = XNqueens_CfgInitialize(&goNqueens, goNqueens_cfg);
	if (status != XST_SUCCESS){
		printf("\nError inicializando goNqueens.");
	} else {
		printf("\nNqueens inicializado correctamente.");
	}
	XNqueens_Initialize(&goNqueens, XPAR_NQUEENS_0_DEVICE_ID);
	XNqueens_Start(&goNqueens);

	XTime_GetTime(&tStart);
	XNqueens_Start(&goNqueens);
	while(!XNqueens_IsDone(&goNqueens));
	sol_list_hw = XNqueens_Get_return(&goNqueens);
	XTime_GetTime(&tEnd);
	time_hw = (float)((tEnd - tStart));

	printf("\nHARDWARE ---> Number of solutions for %d queens: %d. Execution time: %f mseg.\n", n, sol_list_hw, time_hw/(COUNTS_PER_SECOND/1000));
	return 0;
}