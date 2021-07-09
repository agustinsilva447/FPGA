// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XHOPFIELD_ROUTING_H
#define XHOPFIELD_ROUTING_H

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
#include "xhopfield_routing_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Crtl_bus_BaseAddress;
} XHopfield_routing_Config;
#endif

typedef struct {
    u32 Crtl_bus_BaseAddress;
    u32 IsReady;
} XHopfield_routing;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XHopfield_routing_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XHopfield_routing_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XHopfield_routing_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XHopfield_routing_ReadReg(BaseAddress, RegOffset) \
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
int XHopfield_routing_Initialize(XHopfield_routing *InstancePtr, u16 DeviceId);
XHopfield_routing_Config* XHopfield_routing_LookupConfig(u16 DeviceId);
int XHopfield_routing_CfgInitialize(XHopfield_routing *InstancePtr, XHopfield_routing_Config *ConfigPtr);
#else
int XHopfield_routing_Initialize(XHopfield_routing *InstancePtr, const char* InstanceName);
int XHopfield_routing_Release(XHopfield_routing *InstancePtr);
#endif

void XHopfield_routing_Start(XHopfield_routing *InstancePtr);
u32 XHopfield_routing_IsDone(XHopfield_routing *InstancePtr);
u32 XHopfield_routing_IsIdle(XHopfield_routing *InstancePtr);
u32 XHopfield_routing_IsReady(XHopfield_routing *InstancePtr);
void XHopfield_routing_EnableAutoRestart(XHopfield_routing *InstancePtr);
void XHopfield_routing_DisableAutoRestart(XHopfield_routing *InstancePtr);


void XHopfield_routing_InterruptGlobalEnable(XHopfield_routing *InstancePtr);
void XHopfield_routing_InterruptGlobalDisable(XHopfield_routing *InstancePtr);
void XHopfield_routing_InterruptEnable(XHopfield_routing *InstancePtr, u32 Mask);
void XHopfield_routing_InterruptDisable(XHopfield_routing *InstancePtr, u32 Mask);
void XHopfield_routing_InterruptClear(XHopfield_routing *InstancePtr, u32 Mask);
u32 XHopfield_routing_InterruptGetEnabled(XHopfield_routing *InstancePtr);
u32 XHopfield_routing_InterruptGetStatus(XHopfield_routing *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
