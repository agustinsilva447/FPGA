create_project prj -part xc7z020-clg484-1 -force
set_property target_language vhdl [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/vhdl"
source "/home/agustinsilva447/Escritorio/Github/FPGA/test_hsp/Lab6_HLS_BRAM/solution1/syn/vhdl/crazyFunction_ap_fsqrt_10_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips crazyFunction_ap_fsqrt_10_no_dsp_32]]
}
source "/home/agustinsilva447/Escritorio/Github/FPGA/test_hsp/Lab6_HLS_BRAM/solution1/syn/vhdl/crazyFunction_ap_fexp_7_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips crazyFunction_ap_fexp_7_full_dsp_32]]
}
source "/home/agustinsilva447/Escritorio/Github/FPGA/test_hsp/Lab6_HLS_BRAM/solution1/syn/vhdl/crazyFunction_ap_fadd_3_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips crazyFunction_ap_fadd_3_full_dsp_32]]
}
source "/home/agustinsilva447/Escritorio/Github/FPGA/test_hsp/Lab6_HLS_BRAM/solution1/syn/vhdl/crazyFunction_ap_fmul_2_max_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips crazyFunction_ap_fmul_2_max_dsp_32]]
}
