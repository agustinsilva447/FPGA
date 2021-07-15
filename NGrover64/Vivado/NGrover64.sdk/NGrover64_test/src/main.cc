/*
 * Empty C++ Application
 */

#include <xparameters.h>
#include <xngrover64.h>
#include <stdio.h>
#include <math.h>
#include "AxiTimerHelper.h"

#define PI 3.1416
#define L 64   // tama�o del vector

float *E1HW = (float*)0x40000000;
float *BHW = (float*)0x42000000;

XNgrover64 doNgrover64;
XNgrover64_Config *doNgrover64_cfg;

unsigned int float_to_u32(float val)
{
	unsigned int result;
	union float_bytes {
		float v;
		unsigned char bytes[4];
	} data;
	data.v = val;

	result = (data.bytes[3] << 24) + (data.bytes[2] << 16) + (data.bytes[1] << 8) + (data.bytes[0]);
	return result;
}

void NGrover64(float E1[L], float B[L], float C)
{
	int i,j;
	bool V[L];
	float A,K,M,K1,K2;

	M=0;
	for (i=0;i<L;i++)
	{
		if (E1[i]>C)  //condicion
		{
			V[i]=1;
			M=M+1;

		}else{
	    	V[i]=0;
		}
	}
	K2=sqrt(M/L);
	K1=K2+(1/6)*pow(K2,3)+(3/40)*pow(K2,5);
	K = round (PI/(4*(K1)));

	for (i=0;i<K;i++)
	{
	    for (j=0;j<L;j++)
	    {
	        if (V[j]==1)
	        {
	        	B[j] = (-1) * B[j];
	        }
	    }
	    A=0;
	    for (j=0;j<L;j++)
	    {
	        A=B[j]+A;
	    }
	    A=A/L;

	    for (j=0;j<L;j++)
	    {
	        B[j]=2*A-B[j];
	    }
	}
}

void init_ngrover64Core()
{
	int status = 0;

	doNgrover64_cfg = XNgrover64_LookupConfig(XPAR_XNGROVER64_0_DEVICE_ID);
	if (doNgrover64_cfg)
	{
		status =XNgrover64_CfgInitialize(&doNgrover64,doNgrover64_cfg);
		if (status != XST_SUCCESS)
		{
			printf("Error a inicializar doNgrover64\n");
		}
	}
}

int main()
{
	init_ngrover64Core();
	int i,iM;
	float XSW,XHW,C;
	float BSW[L],E1SW[L];
	AxiTimerHelper myTimerSW, myTimerHW;


	for (i=0;i<L;i++)
	{
		BSW[i]=1/sqrt(L);
		BHW[i]=1/sqrt(L);
		E1SW[i] = 5;
		E1HW[i] = 5;
	}
	E1SW[15] = 15;
	//E1SW[24] = 16;
	E1SW[35] = 12;


	E1HW[15] = 15;
	//E1HW[24] = 16;
	E1HW[35] = 12;
	C=10;	//condicion

	myTimerSW.startTimer();
	NGrover64(E1SW,BSW,C);
	myTimerSW.stopTimer();

	XNgrover64_Set_C(&doNgrover64,float_to_u32(C));
	myTimerHW.startTimer();
	XNgrover64_Start(&doNgrover64);
	while (!XNgrover64_IsDone(&doNgrover64));
	myTimerHW.stopTimer();

	XSW = BSW[0];
	XHW = BHW[0];
	for (i=1;i<L;i++)
	{
		if (XSW<BSW[i])
		{
			XSW = BSW[i];
		}
		if (XHW<BHW[i])
		{
			XHW = BHW[i];
		}
	}
	iM = 0;
	for (i=1;i<L;i++)
	{
		if (XSW==BSW[i])
		{
			//printf("El numero buscado es el %f, en la posicion %d, con probabilidad %f\n", E1SW[i],i,XSW*XSW);
			iM = iM + 1 ;
		}
		if (XHW==BHW[i])
		{
			//printf("El numero buscado es el %f, en la posicion %d, con probabilidad %f\n\n", E1HW[i],i,XHW*XHW);
		}
	}
	//printf("\nGrover Software tard�: %f segundos\n", myTimerSW.getElapsedTimerInSeconds());
	//printf("Grover Hardware tard�: %f segundos\n", myTimerHW.getElapsedTimerInSeconds());

	printf("%d\n",iM);
	for (i=1;i<L;i++)
	{
		if (XSW==BSW[i])
		{
			printf("%d\n",i);
			printf("%f\n",BSW[i]);
		}
		if (XHW==BHW[i])
		{
			printf("%d\n",i);
			printf("%f\n",BHW[i]);
		}
	}
	printf("%f\n",myTimerSW.getElapsedTimerInSeconds());
	printf("%f\n",myTimerHW.getElapsedTimerInSeconds());
	return 0;
}

