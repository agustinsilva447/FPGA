// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XHNN_FPGA_H
#define XHNN_FPGA_H

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
#include "xhnn_fpga_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XHnn_fpga_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XHnn_fpga;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XHnn_fpga_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XHnn_fpga_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XHnn_fpga_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XHnn_fpga_ReadReg(BaseAddress, RegOffset) \
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
int XHnn_fpga_Initialize(XHnn_fpga *InstancePtr, u16 DeviceId);
XHnn_fpga_Config* XHnn_fpga_LookupConfig(u16 DeviceId);
int XHnn_fpga_CfgInitialize(XHnn_fpga *InstancePtr, XHnn_fpga_Config *ConfigPtr);
#else
int XHnn_fpga_Initialize(XHnn_fpga *InstancePtr, const char* InstanceName);
int XHnn_fpga_Release(XHnn_fpga *InstancePtr);
#endif

void XHnn_fpga_Start(XHnn_fpga *InstancePtr);
u32 XHnn_fpga_IsDone(XHnn_fpga *InstancePtr);
u32 XHnn_fpga_IsIdle(XHnn_fpga *InstancePtr);
u32 XHnn_fpga_IsReady(XHnn_fpga *InstancePtr);
void XHnn_fpga_EnableAutoRestart(XHnn_fpga *InstancePtr);
void XHnn_fpga_DisableAutoRestart(XHnn_fpga *InstancePtr);

void XHnn_fpga_Set_l(XHnn_fpga *InstancePtr, u32 Data);
u32 XHnn_fpga_Get_l(XHnn_fpga *InstancePtr);
u32 XHnn_fpga_Get_U_BaseAddress(XHnn_fpga *InstancePtr);
u32 XHnn_fpga_Get_U_HighAddress(XHnn_fpga *InstancePtr);
u32 XHnn_fpga_Get_U_TotalBytes(XHnn_fpga *InstancePtr);
u32 XHnn_fpga_Get_U_BitWidth(XHnn_fpga *InstancePtr);
u32 XHnn_fpga_Get_U_Depth(XHnn_fpga *InstancePtr);
u32 XHnn_fpga_Write_U_Words(XHnn_fpga *InstancePtr, int offset, int *data, int length);
u32 XHnn_fpga_Read_U_Words(XHnn_fpga *InstancePtr, int offset, int *data, int length);
u32 XHnn_fpga_Write_U_Bytes(XHnn_fpga *InstancePtr, int offset, char *data, int length);
u32 XHnn_fpga_Read_U_Bytes(XHnn_fpga *InstancePtr, int offset, char *data, int length);
u32 XHnn_fpga_Get_V_BaseAddress(XHnn_fpga *InstancePtr);
u32 XHnn_fpga_Get_V_HighAddress(XHnn_fpga *InstancePtr);
u32 XHnn_fpga_Get_V_TotalBytes(XHnn_fpga *InstancePtr);
u32 XHnn_fpga_Get_V_BitWidth(XHnn_fpga *InstancePtr);
u32 XHnn_fpga_Get_V_Depth(XHnn_fpga *InstancePtr);
u32 XHnn_fpga_Write_V_Words(XHnn_fpga *InstancePtr, int offset, int *data, int length);
u32 XHnn_fpga_Read_V_Words(XHnn_fpga *InstancePtr, int offset, int *data, int length);
u32 XHnn_fpga_Write_V_Bytes(XHnn_fpga *InstancePtr, int offset, char *data, int length);
u32 XHnn_fpga_Read_V_Bytes(XHnn_fpga *InstancePtr, int offset, char *data, int length);

void XHnn_fpga_InterruptGlobalEnable(XHnn_fpga *InstancePtr);
void XHnn_fpga_InterruptGlobalDisable(XHnn_fpga *InstancePtr);
void XHnn_fpga_InterruptEnable(XHnn_fpga *InstancePtr, u32 Mask);
void XHnn_fpga_InterruptDisable(XHnn_fpga *InstancePtr, u32 Mask);
void XHnn_fpga_InterruptClear(XHnn_fpga *InstancePtr, u32 Mask);
u32 XHnn_fpga_InterruptGetEnabled(XHnn_fpga *InstancePtr);
u32 XHnn_fpga_InterruptGetStatus(XHnn_fpga *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
