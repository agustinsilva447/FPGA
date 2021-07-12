#include <hls_math.h>

#define N1 8	//Cantidad de nodos

void hopfield_routing(	float V[N1 * N1],
						float U_1[N1 * N1],
						float &l)
{

	#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS
	#pragma HLS INTERFACE s_axilite port=l bundle=CRTL_BUS
	#pragma HLS INTERFACE bram port=V
	#pragma HLS INTERFACE bram port=U_1

	int x, i;

	for(x = 0; x < N1; x++)
	{
		for(i = 0; i < N1; i++)
		{
			if (x == i)
			{
				V[x * N1 + i] = 0;
			} else {
				V[x * N1 + i] = 1 / (1 + hls::expf(-1 * U_1[x * N1 + i] * l));
			}
		}
	}
}
