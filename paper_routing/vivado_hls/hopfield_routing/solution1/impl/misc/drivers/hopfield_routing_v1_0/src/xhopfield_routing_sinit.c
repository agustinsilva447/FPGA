// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xhopfield_routing.h"

extern XHopfield_routing_Config XHopfield_routing_ConfigTable[];

XHopfield_routing_Config *XHopfield_routing_LookupConfig(u16 DeviceId) {
	XHopfield_routing_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XHOPFIELD_ROUTING_NUM_INSTANCES; Index++) {
		if (XHopfield_routing_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XHopfield_routing_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XHopfield_routing_Initialize(XHopfield_routing *InstancePtr, u16 DeviceId) {
	XHopfield_routing_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XHopfield_routing_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XHopfield_routing_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

