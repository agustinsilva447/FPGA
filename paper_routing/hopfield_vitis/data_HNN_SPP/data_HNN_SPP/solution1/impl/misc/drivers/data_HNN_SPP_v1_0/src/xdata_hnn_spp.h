// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XDATA_HNN_SPP_H
#define XDATA_HNN_SPP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xdata_hnn_spp_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Crtl_bus_BaseAddress;
} XData_hnn_spp_Config;
#endif

typedef struct {
    u32 Crtl_bus_BaseAddress;
    u32 IsReady;
} XData_hnn_spp;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XData_hnn_spp_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XData_hnn_spp_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XData_hnn_spp_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XData_hnn_spp_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XData_hnn_spp_Initialize(XData_hnn_spp *InstancePtr, u16 DeviceId);
XData_hnn_spp_Config* XData_hnn_spp_LookupConfig(u16 DeviceId);
int XData_hnn_spp_CfgInitialize(XData_hnn_spp *InstancePtr, XData_hnn_spp_Config *ConfigPtr);
#else
int XData_hnn_spp_Initialize(XData_hnn_spp *InstancePtr, const char* InstanceName);
int XData_hnn_spp_Release(XData_hnn_spp *InstancePtr);
#endif

void XData_hnn_spp_Start(XData_hnn_spp *InstancePtr);
u32 XData_hnn_spp_IsDone(XData_hnn_spp *InstancePtr);
u32 XData_hnn_spp_IsIdle(XData_hnn_spp *InstancePtr);
u32 XData_hnn_spp_IsReady(XData_hnn_spp *InstancePtr);
void XData_hnn_spp_EnableAutoRestart(XData_hnn_spp *InstancePtr);
void XData_hnn_spp_DisableAutoRestart(XData_hnn_spp *InstancePtr);

void XData_hnn_spp_Set_l(XData_hnn_spp *InstancePtr, u32 Data);
u32 XData_hnn_spp_Get_l(XData_hnn_spp *InstancePtr);

void XData_hnn_spp_InterruptGlobalEnable(XData_hnn_spp *InstancePtr);
void XData_hnn_spp_InterruptGlobalDisable(XData_hnn_spp *InstancePtr);
void XData_hnn_spp_InterruptEnable(XData_hnn_spp *InstancePtr, u32 Mask);
void XData_hnn_spp_InterruptDisable(XData_hnn_spp *InstancePtr, u32 Mask);
void XData_hnn_spp_InterruptClear(XData_hnn_spp *InstancePtr, u32 Mask);
u32 XData_hnn_spp_InterruptGetEnabled(XData_hnn_spp *InstancePtr);
u32 XData_hnn_spp_InterruptGetStatus(XData_hnn_spp *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
