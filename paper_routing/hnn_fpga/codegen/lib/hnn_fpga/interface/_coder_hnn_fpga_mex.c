/*
 * File: _coder_hnn_fpga_mex.c
 *
 * MATLAB Coder version            : 5.0
 * C/C++ source code generated on  : 21-Jul-2021 18:48:13
 */

/* Include Files */
#include "_coder_hnn_fpga_mex.h"
#include "_coder_hnn_fpga_api.h"

/* Function Declarations */
MEXFUNCTION_LINKAGE void hnn_fpga_mexFunction(int32_T nlhs, mxArray *plhs[1],
  int32_T nrhs, const mxArray *prhs[2]);

/* Function Definitions */

/*
 * Arguments    : int32_T nlhs
 *                mxArray *plhs[1]
 *                int32_T nrhs
 *                const mxArray *prhs[2]
 * Return Type  : void
 */
void hnn_fpga_mexFunction(int32_T nlhs, mxArray *plhs[1], int32_T nrhs, const
  mxArray *prhs[2])
{
  const mxArray *outputs[1];
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  st.tls = emlrtRootTLSGlobal;

  /* Check for proper number of arguments. */
  if (nrhs != 2) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:WrongNumberOfInputs", 5, 12, 2, 4, 8,
                        "hnn_fpga");
  }

  if (nlhs > 1) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:TooManyOutputArguments", 3, 4, 8,
                        "hnn_fpga");
  }

  /* Call the function. */
  hnn_fpga_api(prhs, nlhs, outputs);

  /* Copy over outputs to the caller. */
  emlrtReturnArrays(1, plhs, outputs);
}

/*
 * Arguments    : int32_T nlhs
 *                mxArray *plhs[]
 *                int32_T nrhs
 *                const mxArray *prhs[]
 * Return Type  : void
 */
void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs, const mxArray
                 *prhs[])
{
  mexAtExit(&hnn_fpga_atexit);

  /* Module initialization. */
  hnn_fpga_initialize();

  /* Dispatch the entry-point. */
  hnn_fpga_mexFunction(nlhs, plhs, nrhs, prhs);

  /* Module termination. */
  hnn_fpga_terminate();
}

/*
 * Arguments    : void
 * Return Type  : emlrtCTX
 */
emlrtCTX mexFunctionCreateRootTLS(void)
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  return emlrtRootTLSGlobal;
}

/*
 * File trailer for _coder_hnn_fpga_mex.c
 *
 * [EOF]
 */
