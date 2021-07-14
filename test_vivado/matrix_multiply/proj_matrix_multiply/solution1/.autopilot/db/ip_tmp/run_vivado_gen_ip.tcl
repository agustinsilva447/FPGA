create_project prj -part xc7k160t-fbg484-1 -force
set_property target_language vhdl [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/vhdl"
source "C:/Users/aguss/Desktop/Github/FPGA/test_hsp2/matrix_multiply/proj_matrix_multiply/solution1/syn/vhdl/matrix_multiply_top_ap_fadd_5_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips matrix_multiply_top_ap_fadd_5_no_dsp_32]]
}
source "C:/Users/aguss/Desktop/Github/FPGA/test_hsp2/matrix_multiply/proj_matrix_multiply/solution1/syn/vhdl/matrix_multiply_top_ap_fmul_4_max_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips matrix_multiply_top_ap_fmul_4_max_dsp_32]]
}
