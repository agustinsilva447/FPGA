
call C:/Xilinx/Vivado/2016.4/bin/xelab xil_defaultlib.apatb_NGrover64_top -prj NGrover64.prj --initfile "C:/Xilinx/Vivado/2016.4/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s NGrover64 
call C:/Xilinx/Vivado/2016.4/bin/xsim --noieeewarnings NGrover64 -tclbatch NGrover64.tcl

