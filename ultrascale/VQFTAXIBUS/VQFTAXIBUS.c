#include <math.h>
#define DOSPI 6.282958984375
#define M 16				//Cantidad de estados

void VQFTAXIBUS(const float E[2*M], float S[2*M])
{
#pragma HLS INTERFACE s_axilite port=E
#pragma HLS INTERFACE s_axilite port=S
#pragma HLS INTERFACE s_axilite port=return
	int j,k;
	float m,n;
	for (j=0;j<M;j++)
	{
	#pragma HLS UNROLL
		S[j]=0;
		S[j+M]=0;
		for (k=0;k<M;k++)
		{
		#pragma HLS UNROLL
			m = cos(DOSPI*j*k/M)/sqrt(M);
			n = sin(DOSPI*j*k/M)/sqrt(M);
			S[j]   = S[j]   + (m)   *   E[k]   - (n)   *   E[k+M];
			S[j+M] = S[j+M] + (m)   *   E[k+M] + (n)   *   E[k];
		}
	}
}
