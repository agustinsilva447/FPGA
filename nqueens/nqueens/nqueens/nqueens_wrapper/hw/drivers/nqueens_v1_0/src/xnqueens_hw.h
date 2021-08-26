// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AXILiteS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x40 : Data signal of k_i
//        bit 31~0 - k_i[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of k_o
//        bit 31~0 - k_o[31:0] (Read)
// 0x4c : Control signal of k_o
//        bit 0  - k_o_ap_vld (Read/COR)
//        others - reserved
// 0x50 : Data signal of u_0_i
//        bit 31~0 - u_0_i[31:0] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of u_0_o
//        bit 31~0 - u_0_o[31:0] (Read)
// 0x5c : Control signal of u_0_o
//        bit 0  - u_0_o_ap_vld (Read/COR)
//        others - reserved
// 0x60 : Data signal of sol_list_i
//        bit 31~0 - sol_list_i[31:0] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of sol_list_o
//        bit 31~0 - sol_list_o[31:0] (Read)
// 0x6c : Control signal of sol_list_o
//        bit 0  - sol_list_o_ap_vld (Read/COR)
//        others - reserved
// 0x70 : Data signal of flag
//        bit 31~0 - flag[31:0] (Read)
// 0x74 : Control signal of flag
//        bit 0  - flag_ap_vld (Read/COR)
//        others - reserved
// 0x20 ~
// 0x3f : Memory 'a' (8 * 32b)
//        Word n : bit [31:0] - a[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XNQUEENS_AXILITES_ADDR_AP_CTRL         0x00
#define XNQUEENS_AXILITES_ADDR_GIE             0x04
#define XNQUEENS_AXILITES_ADDR_IER             0x08
#define XNQUEENS_AXILITES_ADDR_ISR             0x0c
#define XNQUEENS_AXILITES_ADDR_K_I_DATA        0x40
#define XNQUEENS_AXILITES_BITS_K_I_DATA        32
#define XNQUEENS_AXILITES_ADDR_K_O_DATA        0x48
#define XNQUEENS_AXILITES_BITS_K_O_DATA        32
#define XNQUEENS_AXILITES_ADDR_K_O_CTRL        0x4c
#define XNQUEENS_AXILITES_ADDR_U_0_I_DATA      0x50
#define XNQUEENS_AXILITES_BITS_U_0_I_DATA      32
#define XNQUEENS_AXILITES_ADDR_U_0_O_DATA      0x58
#define XNQUEENS_AXILITES_BITS_U_0_O_DATA      32
#define XNQUEENS_AXILITES_ADDR_U_0_O_CTRL      0x5c
#define XNQUEENS_AXILITES_ADDR_SOL_LIST_I_DATA 0x60
#define XNQUEENS_AXILITES_BITS_SOL_LIST_I_DATA 32
#define XNQUEENS_AXILITES_ADDR_SOL_LIST_O_DATA 0x68
#define XNQUEENS_AXILITES_BITS_SOL_LIST_O_DATA 32
#define XNQUEENS_AXILITES_ADDR_SOL_LIST_O_CTRL 0x6c
#define XNQUEENS_AXILITES_ADDR_FLAG_DATA       0x70
#define XNQUEENS_AXILITES_BITS_FLAG_DATA       32
#define XNQUEENS_AXILITES_ADDR_FLAG_CTRL       0x74
#define XNQUEENS_AXILITES_ADDR_A_BASE          0x20
#define XNQUEENS_AXILITES_ADDR_A_HIGH          0x3f
#define XNQUEENS_AXILITES_WIDTH_A              32
#define XNQUEENS_AXILITES_DEPTH_A              8

