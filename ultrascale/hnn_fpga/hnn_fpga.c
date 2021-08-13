#include "hnn_fpga.h"
#include <math.h>

#define N1 8    //Cantidad de nodos

void hnn_fpga(const float U[N1 * N1], float l, float V[N1 * N1])
{
#pragma HLS INTERFACE s_axilite port=V
#pragma HLS INTERFACE s_axilite port=l
#pragma HLS INTERFACE s_axilite port=U
#pragma HLS INTERFACE s_axilite port=return

	int x;
	int i;
	int V_tmp;

	for (x = 0; x < N1; x++) {
	#pragma HLS UNROLL
		for (i = 0; i < N1; i++) {
		#pragma HLS UNROLL
			V_tmp = x * N1 + i;
			if (x == i) {
				V[V_tmp] = 0;
			} else {
				V[V_tmp] = 1 / (1 + exp(-U[V_tmp] * l));
			}
		}
	}
}
