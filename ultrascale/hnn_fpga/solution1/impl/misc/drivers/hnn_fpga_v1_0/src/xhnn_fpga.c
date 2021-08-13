// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xhnn_fpga.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XHnn_fpga_CfgInitialize(XHnn_fpga *InstancePtr, XHnn_fpga_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XHnn_fpga_Start(XHnn_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHnn_fpga_ReadReg(InstancePtr->Axilites_BaseAddress, XHNN_FPGA_AXILITES_ADDR_AP_CTRL) & 0x80;
    XHnn_fpga_WriteReg(InstancePtr->Axilites_BaseAddress, XHNN_FPGA_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHnn_fpga_IsDone(XHnn_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHnn_fpga_ReadReg(InstancePtr->Axilites_BaseAddress, XHNN_FPGA_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XHnn_fpga_IsIdle(XHnn_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHnn_fpga_ReadReg(InstancePtr->Axilites_BaseAddress, XHNN_FPGA_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XHnn_fpga_IsReady(XHnn_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHnn_fpga_ReadReg(InstancePtr->Axilites_BaseAddress, XHNN_FPGA_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XHnn_fpga_EnableAutoRestart(XHnn_fpga *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHnn_fpga_WriteReg(InstancePtr->Axilites_BaseAddress, XHNN_FPGA_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XHnn_fpga_DisableAutoRestart(XHnn_fpga *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHnn_fpga_WriteReg(InstancePtr->Axilites_BaseAddress, XHNN_FPGA_AXILITES_ADDR_AP_CTRL, 0);
}

void XHnn_fpga_Set_l(XHnn_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHnn_fpga_WriteReg(InstancePtr->Axilites_BaseAddress, XHNN_FPGA_AXILITES_ADDR_L_DATA, Data);
}

u32 XHnn_fpga_Get_l(XHnn_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHnn_fpga_ReadReg(InstancePtr->Axilites_BaseAddress, XHNN_FPGA_AXILITES_ADDR_L_DATA);
    return Data;
}

u32 XHnn_fpga_Get_U_BaseAddress(XHnn_fpga *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XHNN_FPGA_AXILITES_ADDR_U_BASE);
}

u32 XHnn_fpga_Get_U_HighAddress(XHnn_fpga *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XHNN_FPGA_AXILITES_ADDR_U_HIGH);
}

u32 XHnn_fpga_Get_U_TotalBytes(XHnn_fpga *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XHNN_FPGA_AXILITES_ADDR_U_HIGH - XHNN_FPGA_AXILITES_ADDR_U_BASE + 1);
}

u32 XHnn_fpga_Get_U_BitWidth(XHnn_fpga *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHNN_FPGA_AXILITES_WIDTH_U;
}

u32 XHnn_fpga_Get_U_Depth(XHnn_fpga *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHNN_FPGA_AXILITES_DEPTH_U;
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

u32 XHnn_fpga_Read_U_Words(XHnn_fpga *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XHNN_FPGA_AXILITES_ADDR_U_HIGH - XHNN_FPGA_AXILITES_ADDR_U_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XHNN_FPGA_AXILITES_ADDR_U_BASE + (offset + i)*4);
    }
    return length;
}

u32 XHnn_fpga_Write_U_Bytes(XHnn_fpga *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XHNN_FPGA_AXILITES_ADDR_U_HIGH - XHNN_FPGA_AXILITES_ADDR_U_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XHNN_FPGA_AXILITES_ADDR_U_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XHnn_fpga_Read_U_Bytes(XHnn_fpga *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XHNN_FPGA_AXILITES_ADDR_U_HIGH - XHNN_FPGA_AXILITES_ADDR_U_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XHNN_FPGA_AXILITES_ADDR_U_BASE + offset + i);
    }
    return length;
}

u32 XHnn_fpga_Get_V_BaseAddress(XHnn_fpga *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XHNN_FPGA_AXILITES_ADDR_V_BASE);
}

u32 XHnn_fpga_Get_V_HighAddress(XHnn_fpga *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XHNN_FPGA_AXILITES_ADDR_V_HIGH);
}

u32 XHnn_fpga_Get_V_TotalBytes(XHnn_fpga *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XHNN_FPGA_AXILITES_ADDR_V_HIGH - XHNN_FPGA_AXILITES_ADDR_V_BASE + 1);
}

u32 XHnn_fpga_Get_V_BitWidth(XHnn_fpga *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHNN_FPGA_AXILITES_WIDTH_V;
}

u32 XHnn_fpga_Get_V_Depth(XHnn_fpga *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHNN_FPGA_AXILITES_DEPTH_V;
}

u32 XHnn_fpga_Write_V_Words(XHnn_fpga *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XHNN_FPGA_AXILITES_ADDR_V_HIGH - XHNN_FPGA_AXILITES_ADDR_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XHNN_FPGA_AXILITES_ADDR_V_BASE + (offset + i)*4) = *(data + i);
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

u32 XHnn_fpga_Write_V_Bytes(XHnn_fpga *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XHNN_FPGA_AXILITES_ADDR_V_HIGH - XHNN_FPGA_AXILITES_ADDR_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XHNN_FPGA_AXILITES_ADDR_V_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XHnn_fpga_Read_V_Bytes(XHnn_fpga *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XHNN_FPGA_AXILITES_ADDR_V_HIGH - XHNN_FPGA_AXILITES_ADDR_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XHNN_FPGA_AXILITES_ADDR_V_BASE + offset + i);
    }
    return length;
}

void XHnn_fpga_InterruptGlobalEnable(XHnn_fpga *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHnn_fpga_WriteReg(InstancePtr->Axilites_BaseAddress, XHNN_FPGA_AXILITES_ADDR_GIE, 1);
}

void XHnn_fpga_InterruptGlobalDisable(XHnn_fpga *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHnn_fpga_WriteReg(InstancePtr->Axilites_BaseAddress, XHNN_FPGA_AXILITES_ADDR_GIE, 0);
}

void XHnn_fpga_InterruptEnable(XHnn_fpga *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHnn_fpga_ReadReg(InstancePtr->Axilites_BaseAddress, XHNN_FPGA_AXILITES_ADDR_IER);
    XHnn_fpga_WriteReg(InstancePtr->Axilites_BaseAddress, XHNN_FPGA_AXILITES_ADDR_IER, Register | Mask);
}

void XHnn_fpga_InterruptDisable(XHnn_fpga *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHnn_fpga_ReadReg(InstancePtr->Axilites_BaseAddress, XHNN_FPGA_AXILITES_ADDR_IER);
    XHnn_fpga_WriteReg(InstancePtr->Axilites_BaseAddress, XHNN_FPGA_AXILITES_ADDR_IER, Register & (~Mask));
}

void XHnn_fpga_InterruptClear(XHnn_fpga *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHnn_fpga_WriteReg(InstancePtr->Axilites_BaseAddress, XHNN_FPGA_AXILITES_ADDR_ISR, Mask);
}

u32 XHnn_fpga_InterruptGetEnabled(XHnn_fpga *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHnn_fpga_ReadReg(InstancePtr->Axilites_BaseAddress, XHNN_FPGA_AXILITES_ADDR_IER);
}

u32 XHnn_fpga_InterruptGetStatus(XHnn_fpga *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHnn_fpga_ReadReg(InstancePtr->Axilites_BaseAddress, XHNN_FPGA_AXILITES_ADDR_ISR);
}

