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
create_project -in_memory -part xczu9eg-ffvb1156-2-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/mlabadm/Desktop/Github/FPGA/nqueens/nqueens_vhdl/nqueens_vhdl.cache/wt [current_project]
set_property parent.project_path C:/Users/mlabadm/Desktop/Github/FPGA/nqueens/nqueens_vhdl/nqueens_vhdl.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part xilinx.com:zcu102:part0:3.3 [current_project]
set_property ip_repo_paths c:/Users/mlabadm/Desktop/Github/core-comblock-master [current_project]
update_ip_catalog
set_property ip_output_repo c:/Users/mlabadm/Desktop/Github/FPGA/nqueens/nqueens_vhdl/nqueens_vhdl.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/mlabadm/Desktop/Github/FPGA/nqueens/nqueens_vhdl/nqueens_vhdl.srcs/sources_1/new/ctrl_logic.vhd
  C:/Users/mlabadm/Desktop/Github/FPGA/nqueens/nqueens_vhdl/nqueens_vhdl.srcs/sources_1/new/up_counter.vhd
  C:/Users/mlabadm/Desktop/Github/FPGA/nqueens/nqueens_vhdl/nqueens_vhdl.srcs/sources_1/new/fsm.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top fsm -part xczu9eg-ffvb1156-2-e


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef fsm.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file fsm_utilization_synth.rpt -pb fsm_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]