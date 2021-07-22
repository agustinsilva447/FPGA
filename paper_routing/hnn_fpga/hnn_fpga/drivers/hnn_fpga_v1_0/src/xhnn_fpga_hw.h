// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AXILiteS
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x200 : Data signal of l
//         bit 31~0 - l[31:0] (Read/Write)
// 0x204 : reserved
// 0x100 ~
// 0x1ff : Memory 'U' (64 * 32b)
//         Word n : bit [31:0] - U[n]
// 0x300 ~
// 0x3ff : Memory 'V' (64 * 32b)
//         Word n : bit [31:0] - V[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XHNN_FPGA_AXILITES_ADDR_AP_CTRL 0x000
#define XHNN_FPGA_AXILITES_ADDR_GIE     0x004
#define XHNN_FPGA_AXILITES_ADDR_IER     0x008
#define XHNN_FPGA_AXILITES_ADDR_ISR     0x00c
#define XHNN_FPGA_AXILITES_ADDR_L_DATA  0x200
#define XHNN_FPGA_AXILITES_BITS_L_DATA  32
#define XHNN_FPGA_AXILITES_ADDR_U_BASE  0x100
#define XHNN_FPGA_AXILITES_ADDR_U_HIGH  0x1ff
#define XHNN_FPGA_AXILITES_WIDTH_U      32
#define XHNN_FPGA_AXILITES_DEPTH_U      64
#define XHNN_FPGA_AXILITES_ADDR_V_BASE  0x300
#define XHNN_FPGA_AXILITES_ADDR_V_HIGH  0x3ff
#define XHNN_FPGA_AXILITES_WIDTH_V      32
#define XHNN_FPGA_AXILITES_DEPTH_V      64

