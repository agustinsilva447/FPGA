/*
 * File: hnn_fpga.c
 *
 * MATLAB Coder version            : 5.0
 * C/C++ source code generated on  : 21-Jul-2021 18:48:13
 */

/* Include Files */
#include "hnn_fpga.h"
#include <math.h>

/* Function Definitions */

/*
 * Arguments    : const double U[64]
 *                double l
 *                double V[64]
 * Return Type  : void
 */
void hnn_fpga(const double U[64], double l, double V[64])
{
  int x;
  int i;
  int V_tmp;
  for (x = 0; x < 8; x++) {
    for (i = 0; i < 8; i++) {
      if (x == i) {
        V[(x << 3) + i] = 0.0;
      } else {
        V_tmp = (x << 3) + i;
        V[V_tmp] = 1.0 / (exp(-U[V_tmp] * l) + 1.0);
      }
    }
  }
}

/*
 * File trailer for hnn_fpga.c
 *
 * [EOF]
 */
