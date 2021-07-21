/*
 * File: _coder_hnn_fpga_api.h
 *
 * MATLAB Coder version            : 5.0
 * C/C++ source code generated on  : 21-Jul-2021 18:48:13
 */

#ifndef _CODER_HNN_FPGA_API_H
#define _CODER_HNN_FPGA_API_H

/* Include Files */
#include <stddef.h>
#include <stdlib.h>
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"

/* Variable Declarations */
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

/* Function Declarations */
extern void hnn_fpga(real_T U[64], real_T l, real_T V[64]);
extern void hnn_fpga_api(const mxArray * const prhs[2], int32_T nlhs, const
  mxArray *plhs[1]);
extern void hnn_fpga_atexit(void);
extern void hnn_fpga_initialize(void);
extern void hnn_fpga_terminate(void);
extern void hnn_fpga_xil_shutdown(void);
extern void hnn_fpga_xil_terminate(void);

#endif

/*
 * File trailer for _coder_hnn_fpga_api.h
 *
 * [EOF]
 */
