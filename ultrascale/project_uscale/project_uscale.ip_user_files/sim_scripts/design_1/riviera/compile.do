vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_6
vlib riviera/zynq_ultra_ps_e_vip_v1_0_6
vlib riviera/xil_defaultlib

vmap xilinx_vip riviera/xilinx_vip
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_6 riviera/axi_vip_v1_1_6
vmap zynq_ultra_ps_e_vip_v1_0_6 riviera/zynq_ultra_ps_e_vip_v1_0_6
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../project_uscale.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_uscale.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../project_uscale.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_uscale.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../project_uscale.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_6  -sv2k12 "+incdir+../../../../project_uscale.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_uscale.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../project_uscale.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_uscale.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../project_uscale.srcs/sources_1/bd/design_1/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_6  -sv2k12 "+incdir+../../../../project_uscale.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_uscale.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../project_uscale.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_uscale.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../project_uscale.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_uscale.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_uscale.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../project_uscale.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_uscale.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

