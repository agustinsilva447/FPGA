create_project prj -part xc7z020-clg484-1 -force
set_property target_language vhdl [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/vhdl"
source "C:/Users/aguss/AppData/Roaming/Xilinx/Vivado/hnn_fpga/solution1/syn/vhdl/hnn_fpga_ap_dadd_3_full_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips hnn_fpga_ap_dadd_3_full_dsp_64]]
}
source "C:/Users/aguss/AppData/Roaming/Xilinx/Vivado/hnn_fpga/solution1/syn/vhdl/hnn_fpga_ap_ddiv_29_no_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips hnn_fpga_ap_ddiv_29_no_dsp_64]]
}
source "C:/Users/aguss/AppData/Roaming/Xilinx/Vivado/hnn_fpga/solution1/syn/vhdl/hnn_fpga_ap_dexp_16_full_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips hnn_fpga_ap_dexp_16_full_dsp_64]]
}
source "C:/Users/aguss/AppData/Roaming/Xilinx/Vivado/hnn_fpga/solution1/syn/vhdl/hnn_fpga_ap_fmul_2_max_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips hnn_fpga_ap_fmul_2_max_dsp_32]]
}
source "C:/Users/aguss/AppData/Roaming/Xilinx/Vivado/hnn_fpga/solution1/syn/vhdl/hnn_fpga_ap_fpext_0_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips hnn_fpga_ap_fpext_0_no_dsp_32]]
}
source "C:/Users/aguss/AppData/Roaming/Xilinx/Vivado/hnn_fpga/solution1/syn/vhdl/hnn_fpga_ap_fptrunc_0_no_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips hnn_fpga_ap_fptrunc_0_no_dsp_64]]
}
