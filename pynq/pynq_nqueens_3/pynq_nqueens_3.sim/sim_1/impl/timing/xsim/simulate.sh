#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2021.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Tue Jan 18 18:02:17 -03 2022
# SW Build 3367213 on Tue Oct 19 02:47:39 MDT 2021
#
# IP Build 3369179 on Thu Oct 21 08:25:16 MDT 2021
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim fsm_tb_time_impl -key {Post-Implementation:sim_1:Timing:fsm_tb} -tclbatch fsm_tb.tcl -protoinst "protoinst_files/design_1.protoinst" -view /home/agustinsilva447/Escritorio/Github/FPGA/pynq/pynq_nqueens_3/fsm_tb_behav.wcfg -log simulate.log"
xsim fsm_tb_time_impl -key {Post-Implementation:sim_1:Timing:fsm_tb} -tclbatch fsm_tb.tcl -protoinst "protoinst_files/design_1.protoinst" -view /home/agustinsilva447/Escritorio/Github/FPGA/pynq/pynq_nqueens_3/fsm_tb_behav.wcfg -log simulate.log
