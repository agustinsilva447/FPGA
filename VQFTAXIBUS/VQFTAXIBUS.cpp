	#include <hls_math.h>
		#include <ap_fixed.h>
		typedef ap_fixed<32,4> fix_t;

	#define DOSPI 6.282958984375
	#define M 16				//Cantidad de estados

	void VQFTAXIBUS(float E[2*M], float S[2*M])
	{
	#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS		
	//Directiva de control
	#pragma HLS RESOURCE variable=E core=RAM_1P_BRAM	
	#pragma HLS INTERFACE bram port=E	//Directiva almacenamiento
	#pragma HLS RESOURCE variable=S core=RAM_1P_BRAM
	#pragma HLS INTERFACE bram port=S	//Directiva almacenamiento
		int j,k;
		float m,n;
		for (j=0;j<M;j++)
		{
	#pragma HLS UNROLL			//Directiva de loop
			S[j]=0;
			S[j+M]=0;
			for (k=0;k<M;k++)
			{
	#pragma HLS UNROLL			//Directiva de loop
				m = hls::cos(DOSPI*j*k/M)/hls::sqrt(M);
				n = hls::sin(DOSPI*j*k/M)/hls::sqrt(M);
				S[j]   = S[j]   + (m)   *   E[k]   - (n)   *   E[k+M];
				S[j+M] = S[j+M] + (m)   *   E[k+M] + (n)   *   E[k];
			}
		}
	}
