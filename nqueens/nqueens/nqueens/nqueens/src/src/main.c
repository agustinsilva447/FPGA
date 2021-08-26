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

int find_0(int a[n])
{
	for(int i = 0; i<n; i++){
		if (a[i] == 0){
			return i;
		}
	}
	return n;
}

int counter(int a[n], int k, int n_0, int u_0)
{
	int count, f;
	f = find_0(a);
	for (int u = u_0; u<n+1; u++){
		count = 0;
		for (int j = 0; j<f; j++){
			if ((u != a[j]) && (abs(u - a[j]) != (k - j))){
				count = count + 1;
			}
		}
		if (count == k){
			return u;
		}
	}
	return 0;
}

void nqueens(int a[n], int *k, int *u_0, int *sol_list, int *flag)
{
	while (1){
		a[*k] = counter(a, *k, n, *u_0);
		*u_0 = 1;
		if (a[*k] == 0){
			*k = *k - 1;
			if (find_0(a) == 0){
				*flag = 1;
				break;
			}
			*u_0 = a[*k] + 1;
			a[*k] = 0;
			*k = *k - 1;
		}
		*k = *k + 1;
		if (find_0(a) == n){
			*sol_list = *sol_list + 1;
			break;
		}
	}
}

unsigned int float_to_u32(float val)
{
	unsigned int result;
	union float_bytes{
		float v;
		unsigned char bytes[4];
	} data;
	data.v = val;
	result = (data.bytes[3]<<24) + (data.bytes[2]<<16) + (data.bytes[1]<<8) + (data.bytes[0]);
	return result;
}

float u32_to_float(unsigned int val)
{
	union{
		float val_float;
		unsigned char bytes[4];
	} data;
	data.bytes[3] = (val >> (8*3)) & 0xff;
	data.bytes[2] = (val >> (8*2)) & 0xff;
	data.bytes[1] = (val >> (8*1)) & 0xff;
	data.bytes[0] = (val >> (8*0)) & 0xff;
	return data.val_float;
}

int main()
{
	XTime tStart;
	XTime tEnd;
	int a[n];
	int u_0 = 1, k = 0, sol_list = 0, iteration = 1, flag = 0;
	double time_sw, time_hw;

	for (int x=0; x<n; x++){
		a[x] = 0;
	}

	XTime_GetTime(&tStart);
	while ((!flag) && (iteration < 100)){
		nqueens(a, &k, &u_0, &sol_list, &flag);
    	iteration = iteration + 1;
	}
	XTime_GetTime(&tEnd);
	time_sw = (double)((tEnd - tStart));

	///////////////////////////////////////////////////////////////////////
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
	///////////////////////////////////////////////////////////////////////


	printf("SOFTWARE---> Number of solutions for %d queens: %d. Execution time: %f mseg.\n", n, sol_list, time_sw/(COUNTS_PER_SECOND/1000));
	return 0;
}
