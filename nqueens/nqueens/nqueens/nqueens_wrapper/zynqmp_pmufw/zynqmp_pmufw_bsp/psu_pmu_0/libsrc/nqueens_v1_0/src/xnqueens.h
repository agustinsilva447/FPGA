// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XNQUEENS_H
#define XNQUEENS_H

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
#include "xnqueens_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XNqueens_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XNqueens;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XNqueens_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XNqueens_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XNqueens_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XNqueens_ReadReg(BaseAddress, RegOffset) \
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
int XNqueens_Initialize(XNqueens *InstancePtr, u16 DeviceId);
XNqueens_Config* XNqueens_LookupConfig(u16 DeviceId);
int XNqueens_CfgInitialize(XNqueens *InstancePtr, XNqueens_Config *ConfigPtr);
#else
int XNqueens_Initialize(XNqueens *InstancePtr, const char* InstanceName);
int XNqueens_Release(XNqueens *InstancePtr);
#endif

void XNqueens_Start(XNqueens *InstancePtr);
u32 XNqueens_IsDone(XNqueens *InstancePtr);
u32 XNqueens_IsIdle(XNqueens *InstancePtr);
u32 XNqueens_IsReady(XNqueens *InstancePtr);
void XNqueens_EnableAutoRestart(XNqueens *InstancePtr);
void XNqueens_DisableAutoRestart(XNqueens *InstancePtr);

void XNqueens_Set_k_i(XNqueens *InstancePtr, u32 Data);
u32 XNqueens_Get_k_i(XNqueens *InstancePtr);
u32 XNqueens_Get_k_o(XNqueens *InstancePtr);
u32 XNqueens_Get_k_o_vld(XNqueens *InstancePtr);
void XNqueens_Set_u_0_i(XNqueens *InstancePtr, u32 Data);
u32 XNqueens_Get_u_0_i(XNqueens *InstancePtr);
u32 XNqueens_Get_u_0_o(XNqueens *InstancePtr);
u32 XNqueens_Get_u_0_o_vld(XNqueens *InstancePtr);
void XNqueens_Set_sol_list_i(XNqueens *InstancePtr, u32 Data);
u32 XNqueens_Get_sol_list_i(XNqueens *InstancePtr);
u32 XNqueens_Get_sol_list_o(XNqueens *InstancePtr);
u32 XNqueens_Get_sol_list_o_vld(XNqueens *InstancePtr);
u32 XNqueens_Get_flag(XNqueens *InstancePtr);
u32 XNqueens_Get_flag_vld(XNqueens *InstancePtr);
u32 XNqueens_Get_a_BaseAddress(XNqueens *InstancePtr);
u32 XNqueens_Get_a_HighAddress(XNqueens *InstancePtr);
u32 XNqueens_Get_a_TotalBytes(XNqueens *InstancePtr);
u32 XNqueens_Get_a_BitWidth(XNqueens *InstancePtr);
u32 XNqueens_Get_a_Depth(XNqueens *InstancePtr);
u32 XNqueens_Write_a_Words(XNqueens *InstancePtr, int offset, int *data, int length);
u32 XNqueens_Read_a_Words(XNqueens *InstancePtr, int offset, int *data, int length);
u32 XNqueens_Write_a_Bytes(XNqueens *InstancePtr, int offset, char *data, int length);
u32 XNqueens_Read_a_Bytes(XNqueens *InstancePtr, int offset, char *data, int length);

void XNqueens_InterruptGlobalEnable(XNqueens *InstancePtr);
void XNqueens_InterruptGlobalDisable(XNqueens *InstancePtr);
void XNqueens_InterruptEnable(XNqueens *InstancePtr, u32 Mask);
void XNqueens_InterruptDisable(XNqueens *InstancePtr, u32 Mask);
void XNqueens_InterruptClear(XNqueens *InstancePtr, u32 Mask);
u32 XNqueens_InterruptGetEnabled(XNqueens *InstancePtr);
u32 XNqueens_InterruptGetStatus(XNqueens *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
