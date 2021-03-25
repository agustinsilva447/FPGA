
call C:/Xilinx/Vivado/2016.4/bin/xelab xil_defaultlib.apatb_VQFTAXIBUS_top -prj VQFTAXIBUS.prj --initfile "C:/Xilinx/Vivado/2016.4/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s VQFTAXIBUS 
call C:/Xilinx/Vivado/2016.4/bin/xsim --noieeewarnings VQFTAXIBUS -tclbatch VQFTAXIBUS.tcl

