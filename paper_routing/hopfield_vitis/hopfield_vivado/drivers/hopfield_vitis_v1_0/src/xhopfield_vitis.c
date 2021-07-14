// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xhopfield_vitis.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XHopfield_vitis_CfgInitialize(XHopfield_vitis *InstancePtr, XHopfield_vitis_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Crtl_bus_BaseAddress = ConfigPtr->Crtl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XHopfield_vitis_Start(XHopfield_vitis *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHopfield_vitis_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_VITIS_CRTL_BUS_ADDR_AP_CTRL) & 0x80;
    XHopfield_vitis_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_VITIS_CRTL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHopfield_vitis_IsDone(XHopfield_vitis *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHopfield_vitis_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_VITIS_CRTL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XHopfield_vitis_IsIdle(XHopfield_vitis *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHopfield_vitis_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_VITIS_CRTL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XHopfield_vitis_IsReady(XHopfield_vitis *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHopfield_vitis_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_VITIS_CRTL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XHopfield_vitis_EnableAutoRestart(XHopfield_vitis *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHopfield_vitis_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_VITIS_CRTL_BUS_ADDR_AP_CTRL, 0x80);
}

void XHopfield_vitis_DisableAutoRestart(XHopfield_vitis *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHopfield_vitis_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_VITIS_CRTL_BUS_ADDR_AP_CTRL, 0);
}

void XHopfield_vitis_Set_l(XHopfield_vitis *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHopfield_vitis_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_VITIS_CRTL_BUS_ADDR_L_DATA, Data);
}

u32 XHopfield_vitis_Get_l(XHopfield_vitis *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHopfield_vitis_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_VITIS_CRTL_BUS_ADDR_L_DATA);
    return Data;
}

void XHopfield_vitis_InterruptGlobalEnable(XHopfield_vitis *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHopfield_vitis_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_VITIS_CRTL_BUS_ADDR_GIE, 1);
}

void XHopfield_vitis_InterruptGlobalDisable(XHopfield_vitis *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHopfield_vitis_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_VITIS_CRTL_BUS_ADDR_GIE, 0);
}

void XHopfield_vitis_InterruptEnable(XHopfield_vitis *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHopfield_vitis_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_VITIS_CRTL_BUS_ADDR_IER);
    XHopfield_vitis_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_VITIS_CRTL_BUS_ADDR_IER, Register | Mask);
}

void XHopfield_vitis_InterruptDisable(XHopfield_vitis *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHopfield_vitis_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_VITIS_CRTL_BUS_ADDR_IER);
    XHopfield_vitis_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_VITIS_CRTL_BUS_ADDR_IER, Register & (~Mask));
}

void XHopfield_vitis_InterruptClear(XHopfield_vitis *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHopfield_vitis_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_VITIS_CRTL_BUS_ADDR_ISR, Mask);
}

u32 XHopfield_vitis_InterruptGetEnabled(XHopfield_vitis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHopfield_vitis_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_VITIS_CRTL_BUS_ADDR_IER);
}

u32 XHopfield_vitis_InterruptGetStatus(XHopfield_vitis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHopfield_vitis_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_VITIS_CRTL_BUS_ADDR_ISR);
}

