#include "main.h"
#include "hnn_fpga.h"
#include "hnn_fpga_terminate.h"

static void argInit_64x1_real_T(double result[64]);
static double argInit_real_T(void);
static void main_hnn_fpga(void);

static void argInit_64x1_real_T(double result[64])
{
  int idx0;

  for (idx0 = 0; idx0 < 64; idx0++) {
    result[idx0] = argInit_real_T();
  }
}

static double argInit_real_T(void)
{
  return 0.0;
}

static void main_hnn_fpga(void)
{
  double dv[64];
  double V[64];

  argInit_64x1_real_T(dv);
  hnn_fpga(dv, argInit_real_T(), V);
}

int main(int argc, const char * const argv[])
{
  (void)argc;
  (void)argv;

  main_hnn_fpga();
  hnn_fpga_terminate();
  return 0;
}
