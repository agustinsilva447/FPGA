// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xvqftaxibus.h"

extern XVqftaxibus_Config XVqftaxibus_ConfigTable[];

XVqftaxibus_Config *XVqftaxibus_LookupConfig(u16 DeviceId) {
	XVqftaxibus_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XVQFTAXIBUS_NUM_INSTANCES; Index++) {
		if (XVqftaxibus_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XVqftaxibus_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XVqftaxibus_Initialize(XVqftaxibus *InstancePtr, u16 DeviceId) {
	XVqftaxibus_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XVqftaxibus_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XVqftaxibus_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

