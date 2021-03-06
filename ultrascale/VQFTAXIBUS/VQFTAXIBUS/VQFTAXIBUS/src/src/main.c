#include "xil_printf.h"
#include "sleep.h"
#include <stdio.h>
#include <math.h>
#include <xtime_l.h>
#include <time.h>
#include <xparameters.h>
#include "xvqftaxibus_hw.h"
#include "xvqftaxibus.h"

#define DOSPI 6.282958984375
#define M 2*2*2*2	//Dos elevado a la cantidad de qubits

void VQFTAXIBUS(const float E[2*M], float S[2*M])
{
	int j,k;
	float m,n;
	for (j=0;j<M;j++)
	{
		S[j]=0;
		S[j+M]=0;
		for (k=0;k<M;k++)
		{
			m = cos(DOSPI*j*k/M)/sqrt(M);
			n = sin(DOSPI*j*k/M)/sqrt(M);
			S[j]   = S[j]   + (m)   *   E[k]   - (n)   *   E[k+M];
			S[j+M] = S[j+M] + (m)   *   E[k+M] + (n)   *   E[k];
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
	int j;
	float E[2*M], SSW[2*M], SHW[2*M];
	unsigned int E_uint[2*M], S_uint[2*M];
	double time_sw, time_hw;
	XTime tStart;
	XTime tEnd;

	E[0]=1;			E[0+M]=0;
	E[1]=0;			E[1+M]=0;
	E[2]=0;			E[2+M]=0;
	E[3]=0;			E[3+M]=0;
	E[4]=0;			E[4+M]=0;
	E[5]=0;			E[5+M]=0;
	E[6]=0;			E[6+M]=0;
	E[7]=0;			E[7+M]=0;
	E[8]=0;			E[8+M]=0;
	E[9]=0;			E[9+M]=0;
	E[10]=0;		E[10+M]=0;
	E[11]=0;		E[11+M]=0;
	E[12]=0;		E[12+M]=0;
	E[13]=0;		E[13+M]=0;
	E[14]=0;		E[14+M]=0;
	E[15]=0;		E[15+M]=0;

	// Comienza Software
	XTime_GetTime(&tStart);
	VQFTAXIBUS(E,SSW);
	XTime_GetTime(&tEnd);
	time_sw = (double)((tEnd - tStart));
	// Termina Software

	// Compienza Hardware
	int status;
	XVqftaxibus goVqftaxibus;
	XVqftaxibus_Config *goVqftaxibus_cfg;
	goVqftaxibus_cfg = XVqftaxibus_LookupConfig(XPAR_XVQFTAXIBUS_0_DEVICE_ID);
	if (!goVqftaxibus_cfg){
		printf("\nError cargando la configuracion de goVqftaxibus.");
	} else {
		printf("\nVqftaxibus configurado correctamente.");
	}
	status = XVqftaxibus_CfgInitialize(&goVqftaxibus, goVqftaxibus_cfg);
	if (status != XST_SUCCESS){
		printf("\nError inicializando goVqftaxibus.");
	} else {
		printf("\nVqftaxibus inicializado correctamente.");
	}
	XVqftaxibus_Initialize(&goVqftaxibus, XPAR_XVQFTAXIBUS_0_DEVICE_ID);

    for (j=0;j<M;j++)
	{
    	E_uint[j]   = float_to_u32(E[j]);
    	E_uint[j+M] = float_to_u32(E[j+M]);
	}
    XVqftaxibus_Write_E_Words(&goVqftaxibus, 0, E_uint, 2*M);

	XTime_GetTime(&tStart);
	XVqftaxibus_Start(&goVqftaxibus);
	while(!XVqftaxibus_IsDone(&goVqftaxibus));
	XTime_GetTime(&tEnd);
	time_hw = (double)((tEnd - tStart));

	XVqftaxibus_Read_S_Words(&goVqftaxibus, 0, S_uint, 2*M);
    for (j=0;j<M;j++)
	{
    	SHW[j]   = u32_to_float(S_uint[j]);
    	SHW[j+M] = u32_to_float(S_uint[j+M]);
	}
    // Termina Hardware

	printf("\n----------> ENTRADA: \n");
	printf("E = \n");
    for (j=0;j<M;j++)
	{
    	printf("%f + i* %f\n",(float)E[j],(float)E[j+M]);
	}

	printf("\n----------> SALIDA SOFTWARE: \n");
	printf("S_SW = \n");
	for (j=0;j<M;j++)
	{
		printf("%f + i* %f\n",(float)SSW[j],(float)SSW[j+M]);
	}

	printf("\n----------> SALIDA HARDWARE: \n");
	printf("S_HW = \n");
	for (j=0;j<M;j++)
	{
		printf("%f + i* %f\n",(float)SHW[j],(float)SHW[j+M]);
	}

	printf("\n----------> RESULTADOS: \n");
	printf("El tiempo que le llevo al Software calcular la QFT es %f us\n", time_sw/(COUNTS_PER_SECOND/1000000));
	printf("El tiempo que le llevo al Hardware calcular la QFT es %f us\n", time_hw/(COUNTS_PER_SECOND/1000000));

	return 0;
}
