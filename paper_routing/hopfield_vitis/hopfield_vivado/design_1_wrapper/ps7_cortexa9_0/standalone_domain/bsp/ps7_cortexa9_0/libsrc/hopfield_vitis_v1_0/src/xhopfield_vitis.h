// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XHOPFIELD_VITIS_H
#define XHOPFIELD_VITIS_H

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
#include "xhopfield_vitis_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Crtl_bus_BaseAddress;
} XHopfield_vitis_Config;
#endif

typedef struct {
    u32 Crtl_bus_BaseAddress;
    u32 IsReady;
} XHopfield_vitis;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XHopfield_vitis_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XHopfield_vitis_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XHopfield_vitis_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XHopfield_vitis_ReadReg(BaseAddress, RegOffset) \
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
int XHopfield_vitis_Initialize(XHopfield_vitis *InstancePtr, u16 DeviceId);
XHopfield_vitis_Config* XHopfield_vitis_LookupConfig(u16 DeviceId);
int XHopfield_vitis_CfgInitialize(XHopfield_vitis *InstancePtr, XHopfield_vitis_Config *ConfigPtr);
#else
int XHopfield_vitis_Initialize(XHopfield_vitis *InstancePtr, const char* InstanceName);
int XHopfield_vitis_Release(XHopfield_vitis *InstancePtr);
#endif

void XHopfield_vitis_Start(XHopfield_vitis *InstancePtr);
u32 XHopfield_vitis_IsDone(XHopfield_vitis *InstancePtr);
u32 XHopfield_vitis_IsIdle(XHopfield_vitis *InstancePtr);
u32 XHopfield_vitis_IsReady(XHopfield_vitis *InstancePtr);
void XHopfield_vitis_EnableAutoRestart(XHopfield_vitis *InstancePtr);
void XHopfield_vitis_DisableAutoRestart(XHopfield_vitis *InstancePtr);

void XHopfield_vitis_Set_l(XHopfield_vitis *InstancePtr, u32 Data);
u32 XHopfield_vitis_Get_l(XHopfield_vitis *InstancePtr);

void XHopfield_vitis_InterruptGlobalEnable(XHopfield_vitis *InstancePtr);
void XHopfield_vitis_InterruptGlobalDisable(XHopfield_vitis *InstancePtr);
void XHopfield_vitis_InterruptEnable(XHopfield_vitis *InstancePtr, u32 Mask);
void XHopfield_vitis_InterruptDisable(XHopfield_vitis *InstancePtr, u32 Mask);
void XHopfield_vitis_InterruptClear(XHopfield_vitis *InstancePtr, u32 Mask);
u32 XHopfield_vitis_InterruptGetEnabled(XHopfield_vitis *InstancePtr);
u32 XHopfield_vitis_InterruptGetStatus(XHopfield_vitis *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
