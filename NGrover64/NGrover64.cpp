#include <math.h>

#define PI 3.1416
#define L 64   // tamaño del vector

void NGrover64(float E1[L], float B[L], float &C)
{
#pragma HLS INTERFACE s_axilite port=C bundle=CRTL_BUS
#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS
#pragma HLS RESOURCE variable=E1 core=RAM_1P_BRAM
#pragma HLS INTERFACE bram port=E1
#pragma HLS RESOURCE variable=B core=RAM_1P_BRAM
#pragma HLS INTERFACE bram port=B
	int i,j;
	bool V[L];
	float A,K,M,K1,K2;

	M=0;
	for (i=0;i<L;i++)
	{
#pragma HLS UNROLL
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
	K = floor (PI/(4*(K1)));
	//K = 3;
	C = K;

	for (i=0;i<K;i++)
	{
#pragma HLS PIPELINE
	    for (j=0;j<L;j++)
	    {
#pragma HLS UNROLL
	        if (V[j]==1)
	        {
	        	B[j] = (-1) * B[j];
	        }
	    }
	    A=0;
	    for (j=0;j<L;j++)
	    {
#pragma HLS UNROLL
	        A=B[j]+A;
	    }
	    A=A/L;

	    for (j=0;j<L;j++)
	    {
#pragma HLS UNROLL
	        B[j]=2*A-B[j];
	    }
	}
}
