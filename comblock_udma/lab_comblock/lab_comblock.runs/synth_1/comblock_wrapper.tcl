# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param ced.repoPaths C:/Users/mlabadm/AppData/Roaming/Xilinx/Vivado/2019.2/xhub/ced_store
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.cache/wt [current_project]
set_property parent.project_path C:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.xpr [current_project]
set_property XPM_LIBRARIES {XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part em.avnet.com:zed:part0:1.4 [current_project]
set_property ip_repo_paths c:/Users/mlabadm/Desktop/Github/core-comblock-master [current_project]
update_ip_catalog
set_property ip_output_repo c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib C:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/hdl/comblock_wrapper.vhd
add_files C:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/comblock.bd
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_processing_system7_0_0/comblock_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_c_counter_binary_0_0/comblock_c_counter_binary_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_c_counter_binary_1_0/comblock_c_counter_binary_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_1/bd_14ee_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_1/bd_14ee_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_2/bd_14ee_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_3/bd_14ee_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_4/bd_14ee_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_5/bd_14ee_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_6/bd_14ee_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_10/bd_14ee_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_11/bd_14ee_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_12/bd_14ee_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_13/bd_14ee_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_14/bd_14ee_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_15/bd_14ee_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_16/bd_14ee_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_17/bd_14ee_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_18/bd_14ee_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_19/bd_14ee_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_20/bd_14ee_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_21/bd_14ee_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_23/bd_14ee_m01s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_24/bd_14ee_m01arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_25/bd_14ee_m01rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_26/bd_14ee_m01awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_27/bd_14ee_m01wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/bd_0/ip/ip_28/bd_14ee_m01bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_rst_ps7_0_100M_0/comblock_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_rst_ps7_0_100M_0/comblock_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_rst_ps7_0_100M_0/comblock_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/comblock_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/labs-main/Labs/Lab3_ComBlock/constraint/comblock_test.xdc
set_property used_in_implementation false [get_files C:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/labs-main/Labs/Lab3_ComBlock/constraint/comblock_test.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top comblock_wrapper -part xc7z020clg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef comblock_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file comblock_wrapper_utilization_synth.rpt -pb comblock_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]