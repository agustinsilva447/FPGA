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

/*
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
*/

int main()
{
	XTime tStart;
	XTime tEnd;
	//int a[n],    u_0    = 1, k    = 0, sol_list    = 0, iteration    = 1, flag    = 0;
	int a_hw[n], u_0_hw = 1, k_hw = 0, sol_list_hw = 0, iteration_hw = 1, flag_hw = 0;
	float time_sw, time_hw;
	/*
	///////////////////////////////////////////////////////////////////////
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
	*/
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

	for (int x=0; x<n; x++){
		a_hw[x] = 0;
	}
	XNqueens_Write_a_Words(&goNqueens, 0, a_hw, n);
	XNqueens_Set_k_i(&goNqueens, k_hw);
	XNqueens_Set_u_0_i(&goNqueens, u_0_hw);
	XNqueens_Set_sol_list_i(&goNqueens, sol_list_hw);
	XNqueens_Start(&goNqueens);

	//XTime_GetTime(&tStart);
	while ((!flag_hw) && (iteration_hw < 100)){
		XNqueens_Start(&goNqueens);
		//while(!XNqueens_IsDone(&goNqueens));
		//XNqueens_Read_a_Words(&goNqueens, 0, a_hw, n);
		//k_hw = XNqueens_Get_k_i(&goNqueens);
		//u_0_hw = XNqueens_Get_u_0_i(&goNqueens);
		//sol_list_hw = XNqueens_Get_sol_list_i(&goNqueens);
		//flag_hw = XNqueens_Get_flag(&goNqueens);
		iteration_hw = iteration_hw + 1;
	}
	//XTime_GetTime(&tEnd);
	//time_hw = (float)((tEnd - tStart));
	///////////////////////////////////////////////////////////////////////
	//printf("\nSOFTWARE ---> Number of solutions for %d queens: %d. Execution time: %f mseg.\n", n, sol_list,    time_sw/(COUNTS_PER_SECOND/1000));
	printf("\nHARDWARE ---> Number of solutions for %d queens: %d. Execution time: %f mseg.\n", n, sol_list_hw, time_hw/(COUNTS_PER_SECOND/1000));
	return 0;
}
