// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xhopfield_routing.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XHopfield_routing_CfgInitialize(XHopfield_routing *InstancePtr, XHopfield_routing_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Crtl_bus_BaseAddress = ConfigPtr->Crtl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XHopfield_routing_Start(XHopfield_routing *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHopfield_routing_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_ROUTING_CRTL_BUS_ADDR_AP_CTRL) & 0x80;
    XHopfield_routing_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_ROUTING_CRTL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHopfield_routing_IsDone(XHopfield_routing *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHopfield_routing_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_ROUTING_CRTL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XHopfield_routing_IsIdle(XHopfield_routing *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHopfield_routing_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_ROUTING_CRTL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XHopfield_routing_IsReady(XHopfield_routing *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHopfield_routing_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_ROUTING_CRTL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XHopfield_routing_EnableAutoRestart(XHopfield_routing *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHopfield_routing_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_ROUTING_CRTL_BUS_ADDR_AP_CTRL, 0x80);
}

void XHopfield_routing_DisableAutoRestart(XHopfield_routing *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHopfield_routing_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_ROUTING_CRTL_BUS_ADDR_AP_CTRL, 0);
}

void XHopfield_routing_Set_l(XHopfield_routing *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHopfield_routing_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_ROUTING_CRTL_BUS_ADDR_L_DATA, Data);
}

u32 XHopfield_routing_Get_l(XHopfield_routing *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHopfield_routing_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_ROUTING_CRTL_BUS_ADDR_L_DATA);
    return Data;
}

void XHopfield_routing_InterruptGlobalEnable(XHopfield_routing *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHopfield_routing_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_ROUTING_CRTL_BUS_ADDR_GIE, 1);
}

void XHopfield_routing_InterruptGlobalDisable(XHopfield_routing *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHopfield_routing_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_ROUTING_CRTL_BUS_ADDR_GIE, 0);
}

void XHopfield_routing_InterruptEnable(XHopfield_routing *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHopfield_routing_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_ROUTING_CRTL_BUS_ADDR_IER);
    XHopfield_routing_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_ROUTING_CRTL_BUS_ADDR_IER, Register | Mask);
}

void XHopfield_routing_InterruptDisable(XHopfield_routing *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHopfield_routing_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_ROUTING_CRTL_BUS_ADDR_IER);
    XHopfield_routing_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_ROUTING_CRTL_BUS_ADDR_IER, Register & (~Mask));
}

void XHopfield_routing_InterruptClear(XHopfield_routing *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHopfield_routing_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_ROUTING_CRTL_BUS_ADDR_ISR, Mask);
}

u32 XHopfield_routing_InterruptGetEnabled(XHopfield_routing *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHopfield_routing_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_ROUTING_CRTL_BUS_ADDR_IER);
}

u32 XHopfield_routing_InterruptGetStatus(XHopfield_routing *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHopfield_routing_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XHOPFIELD_ROUTING_CRTL_BUS_ADDR_ISR);
}

