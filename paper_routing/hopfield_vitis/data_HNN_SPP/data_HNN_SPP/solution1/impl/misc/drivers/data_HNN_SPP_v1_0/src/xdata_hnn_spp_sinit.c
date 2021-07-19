// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdata_hnn_spp.h"

extern XData_hnn_spp_Config XData_hnn_spp_ConfigTable[];

XData_hnn_spp_Config *XData_hnn_spp_LookupConfig(u16 DeviceId) {
	XData_hnn_spp_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDATA_HNN_SPP_NUM_INSTANCES; Index++) {
		if (XData_hnn_spp_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XData_hnn_spp_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XData_hnn_spp_Initialize(XData_hnn_spp *InstancePtr, u16 DeviceId) {
	XData_hnn_spp_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XData_hnn_spp_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XData_hnn_spp_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

