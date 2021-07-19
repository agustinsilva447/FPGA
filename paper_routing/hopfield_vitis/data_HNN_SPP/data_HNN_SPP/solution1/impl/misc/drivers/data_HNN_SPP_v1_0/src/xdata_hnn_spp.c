// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xdata_hnn_spp.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XData_hnn_spp_CfgInitialize(XData_hnn_spp *InstancePtr, XData_hnn_spp_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Crtl_bus_BaseAddress = ConfigPtr->Crtl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XData_hnn_spp_Start(XData_hnn_spp *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XData_hnn_spp_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XDATA_HNN_SPP_CRTL_BUS_ADDR_AP_CTRL) & 0x80;
    XData_hnn_spp_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XDATA_HNN_SPP_CRTL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XData_hnn_spp_IsDone(XData_hnn_spp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XData_hnn_spp_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XDATA_HNN_SPP_CRTL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XData_hnn_spp_IsIdle(XData_hnn_spp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XData_hnn_spp_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XDATA_HNN_SPP_CRTL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XData_hnn_spp_IsReady(XData_hnn_spp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XData_hnn_spp_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XDATA_HNN_SPP_CRTL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XData_hnn_spp_EnableAutoRestart(XData_hnn_spp *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XData_hnn_spp_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XDATA_HNN_SPP_CRTL_BUS_ADDR_AP_CTRL, 0x80);
}

void XData_hnn_spp_DisableAutoRestart(XData_hnn_spp *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XData_hnn_spp_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XDATA_HNN_SPP_CRTL_BUS_ADDR_AP_CTRL, 0);
}

void XData_hnn_spp_Set_l(XData_hnn_spp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XData_hnn_spp_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XDATA_HNN_SPP_CRTL_BUS_ADDR_L_DATA, Data);
}

u32 XData_hnn_spp_Get_l(XData_hnn_spp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XData_hnn_spp_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XDATA_HNN_SPP_CRTL_BUS_ADDR_L_DATA);
    return Data;
}

void XData_hnn_spp_InterruptGlobalEnable(XData_hnn_spp *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XData_hnn_spp_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XDATA_HNN_SPP_CRTL_BUS_ADDR_GIE, 1);
}

void XData_hnn_spp_InterruptGlobalDisable(XData_hnn_spp *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XData_hnn_spp_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XDATA_HNN_SPP_CRTL_BUS_ADDR_GIE, 0);
}

void XData_hnn_spp_InterruptEnable(XData_hnn_spp *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XData_hnn_spp_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XDATA_HNN_SPP_CRTL_BUS_ADDR_IER);
    XData_hnn_spp_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XDATA_HNN_SPP_CRTL_BUS_ADDR_IER, Register | Mask);
}

void XData_hnn_spp_InterruptDisable(XData_hnn_spp *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XData_hnn_spp_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XDATA_HNN_SPP_CRTL_BUS_ADDR_IER);
    XData_hnn_spp_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XDATA_HNN_SPP_CRTL_BUS_ADDR_IER, Register & (~Mask));
}

void XData_hnn_spp_InterruptClear(XData_hnn_spp *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XData_hnn_spp_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XDATA_HNN_SPP_CRTL_BUS_ADDR_ISR, Mask);
}

u32 XData_hnn_spp_InterruptGetEnabled(XData_hnn_spp *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XData_hnn_spp_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XDATA_HNN_SPP_CRTL_BUS_ADDR_IER);
}

u32 XData_hnn_spp_InterruptGetStatus(XData_hnn_spp *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XData_hnn_spp_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XDATA_HNN_SPP_CRTL_BUS_ADDR_ISR);
}

