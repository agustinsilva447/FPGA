// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xnqueens.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XNqueens_CfgInitialize(XNqueens *InstancePtr, XNqueens_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XNqueens_Start(XNqueens *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNqueens_ReadReg(InstancePtr->Axilites_BaseAddress, XNQUEENS_AXILITES_ADDR_AP_CTRL) & 0x80;
    XNqueens_WriteReg(InstancePtr->Axilites_BaseAddress, XNQUEENS_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XNqueens_IsDone(XNqueens *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNqueens_ReadReg(InstancePtr->Axilites_BaseAddress, XNQUEENS_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XNqueens_IsIdle(XNqueens *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNqueens_ReadReg(InstancePtr->Axilites_BaseAddress, XNQUEENS_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XNqueens_IsReady(XNqueens *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNqueens_ReadReg(InstancePtr->Axilites_BaseAddress, XNQUEENS_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XNqueens_EnableAutoRestart(XNqueens *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNqueens_WriteReg(InstancePtr->Axilites_BaseAddress, XNQUEENS_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XNqueens_DisableAutoRestart(XNqueens *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNqueens_WriteReg(InstancePtr->Axilites_BaseAddress, XNQUEENS_AXILITES_ADDR_AP_CTRL, 0);
}

u32 XNqueens_Get_return(XNqueens *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNqueens_ReadReg(InstancePtr->Axilites_BaseAddress, XNQUEENS_AXILITES_ADDR_AP_RETURN);
    return Data;
}
void XNqueens_InterruptGlobalEnable(XNqueens *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNqueens_WriteReg(InstancePtr->Axilites_BaseAddress, XNQUEENS_AXILITES_ADDR_GIE, 1);
}

void XNqueens_InterruptGlobalDisable(XNqueens *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNqueens_WriteReg(InstancePtr->Axilites_BaseAddress, XNQUEENS_AXILITES_ADDR_GIE, 0);
}

void XNqueens_InterruptEnable(XNqueens *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XNqueens_ReadReg(InstancePtr->Axilites_BaseAddress, XNQUEENS_AXILITES_ADDR_IER);
    XNqueens_WriteReg(InstancePtr->Axilites_BaseAddress, XNQUEENS_AXILITES_ADDR_IER, Register | Mask);
}

void XNqueens_InterruptDisable(XNqueens *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XNqueens_ReadReg(InstancePtr->Axilites_BaseAddress, XNQUEENS_AXILITES_ADDR_IER);
    XNqueens_WriteReg(InstancePtr->Axilites_BaseAddress, XNQUEENS_AXILITES_ADDR_IER, Register & (~Mask));
}

void XNqueens_InterruptClear(XNqueens *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNqueens_WriteReg(InstancePtr->Axilites_BaseAddress, XNQUEENS_AXILITES_ADDR_ISR, Mask);
}

u32 XNqueens_InterruptGetEnabled(XNqueens *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNqueens_ReadReg(InstancePtr->Axilites_BaseAddress, XNQUEENS_AXILITES_ADDR_IER);
}

u32 XNqueens_InterruptGetStatus(XNqueens *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNqueens_ReadReg(InstancePtr->Axilites_BaseAddress, XNQUEENS_AXILITES_ADDR_ISR);
}

