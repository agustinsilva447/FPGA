// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xnqueens.h"

extern XNqueens_Config XNqueens_ConfigTable[];

XNqueens_Config *XNqueens_LookupConfig(u16 DeviceId) {
	XNqueens_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XNQUEENS_NUM_INSTANCES; Index++) {
		if (XNqueens_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XNqueens_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XNqueens_Initialize(XNqueens *InstancePtr, u16 DeviceId) {
	XNqueens_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XNqueens_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XNqueens_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

