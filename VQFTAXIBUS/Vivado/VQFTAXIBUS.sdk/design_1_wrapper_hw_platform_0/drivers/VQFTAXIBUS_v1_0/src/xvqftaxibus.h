// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XVQFTAXIBUS_H
#define XVQFTAXIBUS_H

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
#include "xvqftaxibus_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Crtl_bus_BaseAddress;
} XVqftaxibus_Config;
#endif

typedef struct {
    u32 Crtl_bus_BaseAddress;
    u32 IsReady;
} XVqftaxibus;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XVqftaxibus_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XVqftaxibus_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XVqftaxibus_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XVqftaxibus_ReadReg(BaseAddress, RegOffset) \
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
int XVqftaxibus_Initialize(XVqftaxibus *InstancePtr, u16 DeviceId);
XVqftaxibus_Config* XVqftaxibus_LookupConfig(u16 DeviceId);
int XVqftaxibus_CfgInitialize(XVqftaxibus *InstancePtr, XVqftaxibus_Config *ConfigPtr);
#else
int XVqftaxibus_Initialize(XVqftaxibus *InstancePtr, const char* InstanceName);
int XVqftaxibus_Release(XVqftaxibus *InstancePtr);
#endif

void XVqftaxibus_Start(XVqftaxibus *InstancePtr);
u32 XVqftaxibus_IsDone(XVqftaxibus *InstancePtr);
u32 XVqftaxibus_IsIdle(XVqftaxibus *InstancePtr);
u32 XVqftaxibus_IsReady(XVqftaxibus *InstancePtr);
void XVqftaxibus_EnableAutoRestart(XVqftaxibus *InstancePtr);
void XVqftaxibus_DisableAutoRestart(XVqftaxibus *InstancePtr);


void XVqftaxibus_InterruptGlobalEnable(XVqftaxibus *InstancePtr);
void XVqftaxibus_InterruptGlobalDisable(XVqftaxibus *InstancePtr);
void XVqftaxibus_InterruptEnable(XVqftaxibus *InstancePtr, u32 Mask);
void XVqftaxibus_InterruptDisable(XVqftaxibus *InstancePtr, u32 Mask);
void XVqftaxibus_InterruptClear(XVqftaxibus *InstancePtr, u32 Mask);
u32 XVqftaxibus_InterruptGetEnabled(XVqftaxibus *InstancePtr);
u32 XVqftaxibus_InterruptGetStatus(XVqftaxibus *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
