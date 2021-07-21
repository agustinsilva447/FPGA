/*
 * File: _coder_hnn_fpga_info.c
 *
 * MATLAB Coder version            : 5.0
 * C/C++ source code generated on  : 21-Jul-2021 18:48:13
 */

/* Include Files */
#include "_coder_hnn_fpga_info.h"
#include "emlrt.h"
#include "tmwtypes.h"

/* Function Declarations */
static const mxArray *emlrtMexFcnResolvedFunctionsInfo(void);

/* Function Definitions */

/*
 * Arguments    : void
 * Return Type  : const mxArray *
 */
static const mxArray *emlrtMexFcnResolvedFunctionsInfo(void)
{
  const mxArray *nameCaptureInfo;
  const char * data[7] = {
    "789ced584b6fd3401076e843bd407b4242e2c01555ca460d0d8f63d3572a5ab971297d0885b5bd69acac778dd78ed25ee8099038c0919fc1919f80500f4870e0"
    "8ef8039cb820e1d724a98595aaaedc36cd48d16634e3fdbe995d7f6bad94abace62449ba2185f6f576385e8ffca968bc261db7783c178d633dfedf97ddfc3169",
    "f4d8737efcb537e9bbc8d7387348db091d864dd27952e7a6c1307336f62d22d94470da227a10a91b946c1826517a9d35df33177b421dc70ff9ffcb0da23515d7"
    "94ec86e832a4bd4ea71f1f7aeaf5eb817a47ffd38fde38f4a318f3c1a6a27c88ef2e3c2b3f424f04b105c27bae10689e88a6c32da46307d796d7d66a8a2cd78a",
    "a8c158ad6eede1bcd9e1f9c6ebe3f3943c4712798e04f9a46d9d29de7822de7890af7357a5a48bf73125de4a225e980ff1ddcae3ad6029649befd9d8bce36f18"
    "81644ef785853582aa33859902460ee754e56d444c8aa8a122133b14ab88d0bacb90d7ac6879faf66bf284fce363377f22c8cffffc9ecb12ef90beb2b3c4033b",
    "2fbc76c27c27dd7f3713f060ff41fc9e61cf32559dd1688917aba572b1e528f5a52e0fb90f4e3f1e52829fd5fc97fd3d3e4cc9ff561ffe10d7b84eecbce11d8a"
    "36c3342f344cb19d07154eafc3714be20306789f4e8907f36ff6c183f869d6cfff4d078d43d3d039341db60ed67260f5f8d76f96251ed8a0eb7143acce19db44",
    "a92ecdb794ed057ac0e8c1fa508f2f8c1ebf4fc9ff6e1ffe108fe931b62cbaaf04cab2e832cd3138ab30997a8548c7f9815e9f96df64cc8ff383783d62516b60"
    "a67b1fce80ff39253e89f9717c889f995e27773658faacf4e6edb76cf55b7297ff648a17d9a0eb77a939db7caa6ce94ca53b0f57b8d8d996e78c01d2efabf67e",
    "9fb4ae89c4bac2fd68088fb62dc879dd67a4fd8e5e4fc40bf3219ef2dcf59be49fbcd02e387e33d38da32f19eb3039fa91295e6483aec32fcabc2a97d442f5c1"
    "f26a552f3436efbb74637ea8c3175d870f53d67551ee3bce4ba787f71dc3fb8ecba4d3837adff10f8906f887",
    "" };

  nameCaptureInfo = NULL;
  emlrtNameCaptureMxArrayR2016a(&data[0], 7400U, &nameCaptureInfo);
  return nameCaptureInfo;
}

/*
 * Arguments    : void
 * Return Type  : mxArray *
 */
mxArray *emlrtMexFcnProperties(void)
{
  mxArray *xResult;
  mxArray *xEntryPoints;
  const char * epFieldName[6] = { "Name", "NumberOfInputs", "NumberOfOutputs",
    "ConstantInputs", "FullPath", "TimeStamp" };

  mxArray *xInputs;
  const char * propFieldName[4] = { "Version", "ResolvedFunctions",
    "EntryPoints", "CoverageInfo" };

  xEntryPoints = emlrtCreateStructMatrix(1, 1, 6, epFieldName);
  xInputs = emlrtCreateLogicalMatrix(1, 2);
  emlrtSetField(xEntryPoints, 0, "Name", emlrtMxCreateString("hnn_fpga"));
  emlrtSetField(xEntryPoints, 0, "NumberOfInputs", emlrtMxCreateDoubleScalar(2.0));
  emlrtSetField(xEntryPoints, 0, "NumberOfOutputs", emlrtMxCreateDoubleScalar
                (1.0));
  emlrtSetField(xEntryPoints, 0, "ConstantInputs", xInputs);
  emlrtSetField(xEntryPoints, 0, "FullPath", emlrtMxCreateString(
    "C:\\Users\\aguss\\Desktop\\data_HNN_SPP_3\\hnn_fpga.m"));
  emlrtSetField(xEntryPoints, 0, "TimeStamp", emlrtMxCreateDoubleScalar
                (738358.776712963));
  xResult = emlrtCreateStructMatrix(1, 1, 4, propFieldName);
  emlrtSetField(xResult, 0, "Version", emlrtMxCreateString(
    "9.8.0.1323502 (R2020a)"));
  emlrtSetField(xResult, 0, "ResolvedFunctions", (mxArray *)
                emlrtMexFcnResolvedFunctionsInfo());
  emlrtSetField(xResult, 0, "EntryPoints", xEntryPoints);
  return xResult;
}

/*
 * File trailer for _coder_hnn_fpga_info.c
 *
 * [EOF]
 */
