vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_6
vlib questa_lib/msim/processing_system7_vip_v1_0_8
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconstant_v1_1_6
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_20

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_6 questa_lib/msim/axi_vip_v1_1_6
vmap processing_system7_vip_v1_0_8 questa_lib/msim/processing_system7_vip_v1_0_8
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_6 questa_lib/msim/xlconstant_v1_1_6
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_20 questa_lib/msim/axi_register_slice_v2_1_20

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_6 -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_8 -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ipshared/2cb9/hdl/axil.vhdl" \
"../../../bd/design_1/ipshared/2cb9/hdl/axif.vhdl" \
"../../../bd/design_1/ipshared/2cb9/hdl/tdpram.vhdl" \
"../../../bd/design_1/ipshared/2cb9/hdl/graysync.vhdl" \
"../../../bd/design_1/ipshared/2cb9/hdl/fifo.vhdl" \
"../../../bd/design_1/ipshared/2cb9/hdl/comblock.vhdl" \
"../../../bd/design_1/ipshared/2cb9/hdl/axi_comblock.vhdl" \
"../../../bd/design_1/ip/design_1_comblock_0_0/sim/design_1_comblock_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work xlconstant_v1_1_6 -64 "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/34f7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_winsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_binsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_aroutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_routsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_awoutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_woutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_boutsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_arni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_rni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_awni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_wni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_bni_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2508/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/9d43/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_30/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_31/sim/bd_afc3_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/901a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_32/sim/bd_afc3_m00e_0.sv" \

vlog -work axi_register_slice_v2_1_20 -64 "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../debug_queen.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \
"../../../bd/design_1/ip/design_1_up_counter_0_0/sim/design_1_up_counter_0_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/sim/bd_f60c.vhd" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/sim/bd_f60c_ila_lib_0.vhd" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/sim/design_1_system_ila_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

