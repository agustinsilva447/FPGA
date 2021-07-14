// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xhopfield_vitis.h"

extern XHopfield_vitis_Config XHopfield_vitis_ConfigTable[];

XHopfield_vitis_Config *XHopfield_vitis_LookupConfig(u16 DeviceId) {
	XHopfield_vitis_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XHOPFIELD_VITIS_NUM_INSTANCES; Index++) {
		if (XHopfield_vitis_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XHopfield_vitis_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XHopfield_vitis_Initialize(XHopfield_vitis *InstancePtr, u16 DeviceId) {
	XHopfield_vitis_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XHopfield_vitis_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XHopfield_vitis_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

