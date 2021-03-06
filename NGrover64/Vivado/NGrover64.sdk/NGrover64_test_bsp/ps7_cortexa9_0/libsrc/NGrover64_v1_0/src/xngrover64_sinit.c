// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xngrover64.h"

extern XNgrover64_Config XNgrover64_ConfigTable[];

XNgrover64_Config *XNgrover64_LookupConfig(u16 DeviceId) {
	XNgrover64_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XNGROVER64_NUM_INSTANCES; Index++) {
		if (XNgrover64_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XNgrover64_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XNgrover64_Initialize(XNgrover64 *InstancePtr, u16 DeviceId) {
	XNgrover64_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XNgrover64_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XNgrover64_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

