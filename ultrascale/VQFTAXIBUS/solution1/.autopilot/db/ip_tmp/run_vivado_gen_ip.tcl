create_project prj -part xczu9eg-ffvb1156-2-e -force
set_property target_language vhdl [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/vhdl"
source "C:/Users/aguss/Desktop/Github/FPGA/ultrascale/VQFTAXIBUS/solution1/syn/vhdl/VQFTAXIBUS_ap_faddfsub_2_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips VQFTAXIBUS_ap_faddfsub_2_full_dsp_32]]
}
source "C:/Users/aguss/Desktop/Github/FPGA/ultrascale/VQFTAXIBUS/solution1/syn/vhdl/VQFTAXIBUS_ap_fmul_0_max_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips VQFTAXIBUS_ap_fmul_0_max_dsp_32]]
}
