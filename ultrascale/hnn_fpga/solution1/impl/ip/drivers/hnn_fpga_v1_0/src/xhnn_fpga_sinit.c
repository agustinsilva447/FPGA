// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xhnn_fpga.h"

extern XHnn_fpga_Config XHnn_fpga_ConfigTable[];

XHnn_fpga_Config *XHnn_fpga_LookupConfig(u16 DeviceId) {
	XHnn_fpga_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XHNN_FPGA_NUM_INSTANCES; Index++) {
		if (XHnn_fpga_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XHnn_fpga_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XHnn_fpga_Initialize(XHnn_fpga *InstancePtr, u16 DeviceId) {
	XHnn_fpga_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XHnn_fpga_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XHnn_fpga_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

