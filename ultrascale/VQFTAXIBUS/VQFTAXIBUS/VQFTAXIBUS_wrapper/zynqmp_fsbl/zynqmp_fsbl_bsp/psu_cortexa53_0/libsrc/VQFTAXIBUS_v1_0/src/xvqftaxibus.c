// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xvqftaxibus.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XVqftaxibus_CfgInitialize(XVqftaxibus *InstancePtr, XVqftaxibus_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XVqftaxibus_Start(XVqftaxibus *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVqftaxibus_ReadReg(InstancePtr->Axilites_BaseAddress, XVQFTAXIBUS_AXILITES_ADDR_AP_CTRL) & 0x80;
    XVqftaxibus_WriteReg(InstancePtr->Axilites_BaseAddress, XVQFTAXIBUS_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XVqftaxibus_IsDone(XVqftaxibus *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVqftaxibus_ReadReg(InstancePtr->Axilites_BaseAddress, XVQFTAXIBUS_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XVqftaxibus_IsIdle(XVqftaxibus *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVqftaxibus_ReadReg(InstancePtr->Axilites_BaseAddress, XVQFTAXIBUS_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XVqftaxibus_IsReady(XVqftaxibus *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVqftaxibus_ReadReg(InstancePtr->Axilites_BaseAddress, XVQFTAXIBUS_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XVqftaxibus_EnableAutoRestart(XVqftaxibus *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVqftaxibus_WriteReg(InstancePtr->Axilites_BaseAddress, XVQFTAXIBUS_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XVqftaxibus_DisableAutoRestart(XVqftaxibus *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVqftaxibus_WriteReg(InstancePtr->Axilites_BaseAddress, XVQFTAXIBUS_AXILITES_ADDR_AP_CTRL, 0);
}

u32 XVqftaxibus_Get_E_BaseAddress(XVqftaxibus *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XVQFTAXIBUS_AXILITES_ADDR_E_BASE);
}

u32 XVqftaxibus_Get_E_HighAddress(XVqftaxibus *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XVQFTAXIBUS_AXILITES_ADDR_E_HIGH);
}

u32 XVqftaxibus_Get_E_TotalBytes(XVqftaxibus *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XVQFTAXIBUS_AXILITES_ADDR_E_HIGH - XVQFTAXIBUS_AXILITES_ADDR_E_BASE + 1);
}

u32 XVqftaxibus_Get_E_BitWidth(XVqftaxibus *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVQFTAXIBUS_AXILITES_WIDTH_E;
}

u32 XVqftaxibus_Get_E_Depth(XVqftaxibus *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVQFTAXIBUS_AXILITES_DEPTH_E;
}

u32 XVqftaxibus_Write_E_Words(XVqftaxibus *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XVQFTAXIBUS_AXILITES_ADDR_E_HIGH - XVQFTAXIBUS_AXILITES_ADDR_E_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XVQFTAXIBUS_AXILITES_ADDR_E_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XVqftaxibus_Read_E_Words(XVqftaxibus *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XVQFTAXIBUS_AXILITES_ADDR_E_HIGH - XVQFTAXIBUS_AXILITES_ADDR_E_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XVQFTAXIBUS_AXILITES_ADDR_E_BASE + (offset + i)*4);
    }
    return length;
}

u32 XVqftaxibus_Write_E_Bytes(XVqftaxibus *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XVQFTAXIBUS_AXILITES_ADDR_E_HIGH - XVQFTAXIBUS_AXILITES_ADDR_E_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XVQFTAXIBUS_AXILITES_ADDR_E_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XVqftaxibus_Read_E_Bytes(XVqftaxibus *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XVQFTAXIBUS_AXILITES_ADDR_E_HIGH - XVQFTAXIBUS_AXILITES_ADDR_E_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XVQFTAXIBUS_AXILITES_ADDR_E_BASE + offset + i);
    }
    return length;
}

u32 XVqftaxibus_Get_S_BaseAddress(XVqftaxibus *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XVQFTAXIBUS_AXILITES_ADDR_S_BASE);
}

u32 XVqftaxibus_Get_S_HighAddress(XVqftaxibus *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XVQFTAXIBUS_AXILITES_ADDR_S_HIGH);
}

u32 XVqftaxibus_Get_S_TotalBytes(XVqftaxibus *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XVQFTAXIBUS_AXILITES_ADDR_S_HIGH - XVQFTAXIBUS_AXILITES_ADDR_S_BASE + 1);
}

u32 XVqftaxibus_Get_S_BitWidth(XVqftaxibus *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVQFTAXIBUS_AXILITES_WIDTH_S;
}

u32 XVqftaxibus_Get_S_Depth(XVqftaxibus *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVQFTAXIBUS_AXILITES_DEPTH_S;
}

u32 XVqftaxibus_Write_S_Words(XVqftaxibus *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XVQFTAXIBUS_AXILITES_ADDR_S_HIGH - XVQFTAXIBUS_AXILITES_ADDR_S_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XVQFTAXIBUS_AXILITES_ADDR_S_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XVqftaxibus_Read_S_Words(XVqftaxibus *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XVQFTAXIBUS_AXILITES_ADDR_S_HIGH - XVQFTAXIBUS_AXILITES_ADDR_S_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XVQFTAXIBUS_AXILITES_ADDR_S_BASE + (offset + i)*4);
    }
    return length;
}

u32 XVqftaxibus_Write_S_Bytes(XVqftaxibus *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XVQFTAXIBUS_AXILITES_ADDR_S_HIGH - XVQFTAXIBUS_AXILITES_ADDR_S_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XVQFTAXIBUS_AXILITES_ADDR_S_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XVqftaxibus_Read_S_Bytes(XVqftaxibus *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XVQFTAXIBUS_AXILITES_ADDR_S_HIGH - XVQFTAXIBUS_AXILITES_ADDR_S_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XVQFTAXIBUS_AXILITES_ADDR_S_BASE + offset + i);
    }
    return length;
}

void XVqftaxibus_InterruptGlobalEnable(XVqftaxibus *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVqftaxibus_WriteReg(InstancePtr->Axilites_BaseAddress, XVQFTAXIBUS_AXILITES_ADDR_GIE, 1);
}

void XVqftaxibus_InterruptGlobalDisable(XVqftaxibus *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVqftaxibus_WriteReg(InstancePtr->Axilites_BaseAddress, XVQFTAXIBUS_AXILITES_ADDR_GIE, 0);
}

void XVqftaxibus_InterruptEnable(XVqftaxibus *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVqftaxibus_ReadReg(InstancePtr->Axilites_BaseAddress, XVQFTAXIBUS_AXILITES_ADDR_IER);
    XVqftaxibus_WriteReg(InstancePtr->Axilites_BaseAddress, XVQFTAXIBUS_AXILITES_ADDR_IER, Register | Mask);
}

void XVqftaxibus_InterruptDisable(XVqftaxibus *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVqftaxibus_ReadReg(InstancePtr->Axilites_BaseAddress, XVQFTAXIBUS_AXILITES_ADDR_IER);
    XVqftaxibus_WriteReg(InstancePtr->Axilites_BaseAddress, XVQFTAXIBUS_AXILITES_ADDR_IER, Register & (~Mask));
}

void XVqftaxibus_InterruptClear(XVqftaxibus *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVqftaxibus_WriteReg(InstancePtr->Axilites_BaseAddress, XVQFTAXIBUS_AXILITES_ADDR_ISR, Mask);
}

u32 XVqftaxibus_InterruptGetEnabled(XVqftaxibus *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVqftaxibus_ReadReg(InstancePtr->Axilites_BaseAddress, XVQFTAXIBUS_AXILITES_ADDR_IER);
}

u32 XVqftaxibus_InterruptGetStatus(XVqftaxibus *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVqftaxibus_ReadReg(InstancePtr->Axilites_BaseAddress, XVQFTAXIBUS_AXILITES_ADDR_ISR);
}

