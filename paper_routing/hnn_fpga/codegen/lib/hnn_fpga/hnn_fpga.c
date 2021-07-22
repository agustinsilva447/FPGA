#include "hnn_fpga.h"
#include <math.h>

void hnn_fpga(const float U[64], float l, float V[64])
{
#pragma HLS INTERFACE s_axilite port=V
#pragma HLS INTERFACE s_axilite port=l
#pragma HLS INTERFACE s_axilite port=U
#pragma HLS INTERFACE s_axilite port=return
  int x;
  int i;
  int V_tmp;
  for (x = 0; x < 8; x++) {
#pragma HLS UNROLL
    for (i = 0; i < 8; i++) {
#pragma HLS UNROLL
      if (x == i) {
        V[(x << 3) + i] = 0.0;
      } else {
        V_tmp = (x << 3) + i;
        V[V_tmp] = 1.0 / (exp(-U[V_tmp] * l) + 1.0);
      }
    }
  }
}
