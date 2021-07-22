void XHnn_fpga_Set_l(XHnn_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHnn_fpga_WriteReg(InstancePtr->Axilites_BaseAddress, XHNN_FPGA_AXILITES_ADDR_L_DATA, Data);
}

u32 XHnn_fpga_Write_U_Words(XHnn_fpga *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XHNN_FPGA_AXILITES_ADDR_U_HIGH - XHNN_FPGA_AXILITES_ADDR_U_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XHNN_FPGA_AXILITES_ADDR_U_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XHnn_fpga_Read_V_Words(XHnn_fpga *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XHNN_FPGA_AXILITES_ADDR_V_HIGH - XHNN_FPGA_AXILITES_ADDR_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XHNN_FPGA_AXILITES_ADDR_V_BASE + (offset + i)*4);
    }
    return length;
}

for(x = 0; x < N1; x++)
{
    for(i = 0; i < N1; i++)
    {
        U_hw[x * N1 + i] = float_to_u32(U[x * N1 + i]);
    }
}

for(x = 0; x < N1; x++)
{
    for(i = 0; i < N1; i++)
    {
        V[x * N1 + i] = u32_to_float(V_hw[x * N1 + i]);
    }
}    