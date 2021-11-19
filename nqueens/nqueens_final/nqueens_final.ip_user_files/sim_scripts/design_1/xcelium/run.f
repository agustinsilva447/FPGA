-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../nqueens_final.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_6 -sv \
  "../../../../nqueens_final.srcs/sources_1/bd/design_1/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_8 -sv \
  "../../../../nqueens_final.srcs/sources_1/bd/design_1/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_processing_system7_0_1/sim/design_1_processing_system7_0_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ipshared/2cb9/hdl/axil.vhdl" \
  "../../../bd/design_1/ipshared/2cb9/hdl/axif.vhdl" \
  "../../../bd/design_1/ipshared/2cb9/hdl/tdpram.vhdl" \
  "../../../bd/design_1/ipshared/2cb9/hdl/graysync.vhdl" \
  "../../../bd/design_1/ipshared/2cb9/hdl/fifo.vhdl" \
  "../../../bd/design_1/ipshared/2cb9/hdl/comblock.vhdl" \
  "../../../bd/design_1/ipshared/2cb9/hdl/axi_comblock.vhdl" \
  "../../../bd/design_1/ip/design_1_comblock_0_1/sim/design_1_comblock_0_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_6 \
  "../../../../nqueens_final.srcs/sources_1/bd/design_1/ipshared/34f7/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../nqueens_final.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../nqueens_final.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../nqueens_final.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../nqueens_final.srcs/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
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
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../nqueens_final.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_arni_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_rni_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_awni_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_wni_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_bni_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../nqueens_final.srcs/sources_1/bd/design_1/ipshared/2508/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_s00mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../nqueens_final.srcs/sources_1/bd/design_1/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_s00tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../nqueens_final.srcs/sources_1/bd/design_1/ipshared/9d43/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../nqueens_final.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_s00a2s_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_sarn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_srn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_sawn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_swn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_sbn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../nqueens_final.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m01s2a_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_m01arn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_m01rn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_m01awn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_30/sim/bd_afc3_m01wn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_31/sim/bd_afc3_m01bn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../nqueens_final.srcs/sources_1/bd/design_1/ipshared/901a/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_32/sim/bd_afc3_m01e_0.sv" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_20 \
  "../../../../nqueens_final.srcs/sources_1/bd/design_1/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \
  "../../../bd/design_1/ip/design_1_top_nqueens_0_1/sim/design_1_top_nqueens_0_1.vhd" \
  "../../../bd/design_1/sim/design_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

