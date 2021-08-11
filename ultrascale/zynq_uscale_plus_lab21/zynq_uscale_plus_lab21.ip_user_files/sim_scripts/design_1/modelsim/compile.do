vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_6
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_6
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_6 modelsim_lib/msim/axi_vip_v1_1_6
vmap zynq_ultra_ps_e_vip_v1_0_6 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_6
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_6 -L zynq_ultra_ps_e_vip_v1_0_6 -L xilinx_vip "+incdir+/home/agustinsilva447/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"/home/agustinsilva447/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/agustinsilva447/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/agustinsilva447/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/agustinsilva447/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/agustinsilva447/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/agustinsilva447/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/agustinsilva447/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/agustinsilva447/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/agustinsilva447/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../zynq_uscale_plus_lab21.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_uscale_plus_lab21.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../zynq_uscale_plus_lab21.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../zynq_uscale_plus_lab21.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/home/agustinsilva447/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../zynq_uscale_plus_lab21.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_6 -64 -incr -sv -L axi_vip_v1_1_6 -L zynq_ultra_ps_e_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../zynq_uscale_plus_lab21.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_uscale_plus_lab21.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../zynq_uscale_plus_lab21.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../zynq_uscale_plus_lab21.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/home/agustinsilva447/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../zynq_uscale_plus_lab21.srcs/sources_1/bd/design_1/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_6 -64 -incr -sv -L axi_vip_v1_1_6 -L zynq_ultra_ps_e_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../zynq_uscale_plus_lab21.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_uscale_plus_lab21.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../zynq_uscale_plus_lab21.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../zynq_uscale_plus_lab21.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/home/agustinsilva447/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../zynq_uscale_plus_lab21.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zynq_uscale_plus_lab21.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_uscale_plus_lab21.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../zynq_uscale_plus_lab21.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../zynq_uscale_plus_lab21.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0" "+incdir+/home/agustinsilva447/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

