create_project prj -part xc7k160t-fbg484-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/agustinsilva447/Escritorio/Github/FPGA/test_hsp2/matrix_multiply/proj_matrix_multiply/solution1/syn/verilog/matrix_multiply_top_ap_fmul_4_max_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips matrix_multiply_top_ap_fmul_4_max_dsp_32]]
}
source "/home/agustinsilva447/Escritorio/Github/FPGA/test_hsp2/matrix_multiply/proj_matrix_multiply/solution1/syn/verilog/matrix_multiply_top_ap_fadd_5_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips matrix_multiply_top_ap_fadd_5_no_dsp_32]]
}
