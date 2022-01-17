#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/agustinsilva447/Vitis/Vitis/2021.2/bin:/home/agustinsilva447/Vitis/Vivado/2021.2/ids_lite/ISE/bin/lin64:/home/agustinsilva447/Vitis/Vivado/2021.2/bin
else
  PATH=/home/agustinsilva447/Vitis/Vitis/2021.2/bin:/home/agustinsilva447/Vitis/Vivado/2021.2/ids_lite/ISE/bin/lin64:/home/agustinsilva447/Vitis/Vivado/2021.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/agustinsilva447/Escritorio/Github/FPGA/pynq/pynq_nqueens_3/pynq_nqueens_3.runs/design_1_fsm_block_0_5_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log design_1_fsm_block_0_5.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source design_1_fsm_block_0_5.tcl
