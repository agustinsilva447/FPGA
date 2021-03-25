/*
 * Empty C++ Application
 */

#include <xparameters.h>
#include <xvqftaxibus.h>
#include <stdio.h>
#include <math.h>
#include "AxiTimerHelper.h"

#define PI 3.1416
#define L 4			//Cantidad de quits
#define K 2*4		//Dos por la cantidad de qubits
#define M 2*2*2*2	//Dos elevado a la cantidad de qubits

float *EHW = (float*)0x40000000;
float *SHW = (float*)0x42000000;

XVqftaxibus doVqftaxibus;
XVqftaxibus_Config *doVqftaxibus_cfg;

void Kronecker(float P[2*K], float E[2*M])
{
	int j,k,u,v,w;
	float aux[2*M];
	E[0]   = 1;
	E[0+M] = 0;
	v=1;w=0;
	for (j=0;j<L;j++)
	{
		u=0;
		for (k=0;k<v;k++)
		{
			aux[u]       = E[k]*P[w]       - E[k+M]*P[w+K];
			aux[u+M]     = E[k]*P[w+K]     + E[k+M]*P[w];
			aux[(u+1)]   = E[k]*P[(w+1)]   - E[k+M]*P[(w+1)+K];
			aux[(u+1)+M] = E[k]*P[(w+1)+K] + E[k+M]*P[(w+1)];
			u=u+2;
		}
		v=v*2;
		for (k=0;k<v;k++)
		{
			E[k]   = aux[k];
			E[k+M] = aux[k+M];
		}
		w=w+2;
	}
}

void VQFTAXIBUS(float E[2*M], float S[2*M])
{
	int j,k;
	float m,n;
	for (j=0;j<M;j++)
	{
		S[j]=0;
		S[j+M]=0;
		for (k=0;k<M;k++)
		{
			m = cos((2*PI*j*k)/(M))/sqrt(M);
			n = sin((2*PI*j*k)/(M))/sqrt(M);
			S[j]   = S[j]   + (m)   *   E[k]   - (n)   *   E[k+M];
			S[j+M] = S[j+M] + (m)   *   E[k+M] + (n)   *   E[k];
		}
	}
}


void init_vqftaxibusCore()
{
	int status = 0;

	doVqftaxibus_cfg = XVqftaxibus_LookupConfig(XPAR_XVQFTAXIBUS_0_DEVICE_ID);
	if (doVqftaxibus_cfg)
	{
		status =XVqftaxibus_CfgInitialize(&doVqftaxibus,doVqftaxibus_cfg);
		if (status != XST_SUCCESS)
		{
			printf("Error a inicializar doVqftaxibus\n");
		}
	}
}

int main()
{
	init_vqftaxibusCore();

	int j;
	float P[2*K];
	float ESW[2*M];
	float SSW[2*M];
	float MESW[M], MEHW[M];
	float MSSW[M], MSHW[M];
	AxiTimerHelper myTimerSW, myTimerHW;

	for (j=0;j<M;j++)
	{
		EHW[j] = sin(2*PI*j/16);
		EHW[j+M] = 0;
		ESW[j] = sin(2*PI*j/16);
		ESW[j+M] = 0;
	}


	//P[0]=1;	P[0+K]=0;	//Parte real e imaginaria de alfa del qubit
	//P[1]=0;	P[1+K]=0;	//Parte real e imaginaria de beta del qubit
	//P[2]=1;	P[2+K]=0;	//Parte real e imaginaria de alfa del qubit
	//P[3]=0;	P[3+K]=0;	//Parte real e imaginaria de beta del qubit
	//P[4]=1;	P[4+K]=0;	//Parte real e imaginaria de alfa del qubit
	//P[5]=0;	P[5+K]=0;	//Parte real e imaginaria de beta del qubit
	//P[6]=1;	P[6+K]=0;	//Parte real e imaginaria de alfa del qubit
	//P[7]=0;	P[7+K]=0;	//Parte real e imaginaria de beta del qubit
	//Kronecker(P,ESW);
	//Kronecker(P,EHW);

	myTimerSW.startTimer();
	VQFTAXIBUS(ESW,SSW);
	myTimerSW.stopTimer();

	myTimerHW.startTimer();
	XVqftaxibus_Start(&doVqftaxibus);
	while (!XVqftaxibus_IsDone(&doVqftaxibus));
	myTimerHW.stopTimer();

	for (j=0;j<M;j++)
	{
		MESW[j] = sqrt( pow(ESW[j],2.0) + pow(ESW[j+M],2.0) );
		MEHW[j] = sqrt( pow(EHW[j],2.0) + pow(EHW[j+M],2.0) );
		MSSW[j] = sqrt( pow(SSW[j],2.0) + pow(SSW[j+M],2.0) );
		MSHW[j] = sqrt( pow(SHW[j],2.0) + pow(SHW[j+M],2.0) );
	}

	//printf("\nEntrada \n");
	for (j=0;j<M;j++)
	{
	//	printf("ESW = %f + i* %f // EHW = %f + i* %f\n",ESW[j],ESW[j+M],EHW[j],EHW[j+M]);
	}
	//printf("\nSalida \n");
	for (j=0;j<M;j++)
	{
	//	printf("SHW = %f + i* %f\n",SHW[j],SHW[j+M]);
	}
	//printf("QFT Software tardó: %f segundos\n", myTimerSW.getElapsedTimerInSeconds());
	//printf("QFT Hardware tardó: %f segundos\n", myTimerHW.getElapsedTimerInSeconds());

	for (j=0;j<M;j++)
	{
		printf("%f\n", MEHW[j]);
	}
	for (j=0;j<M;j++)
	{
		printf("%f\n", MSHW[j]);
	}
	for (j=0;j<M;j++)
	{
		printf("%f\n", MSSW[j]);
	}

	printf("%f\n", myTimerSW.getElapsedTimerInSeconds());
	printf("%f\n", myTimerHW.getElapsedTimerInSeconds());

	return 0;
}
