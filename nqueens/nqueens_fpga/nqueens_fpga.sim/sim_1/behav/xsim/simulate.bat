@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Mon Oct 04 19:21:43 +0200 2021
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim ring_buffer_tb_behav -key {Behavioral:sim_1:Functional:ring_buffer_tb} -tclbatch ring_buffer_tb.tcl -protoinst "protoinst_files/bd_afc3.protoinst" -protoinst "protoinst_files/design_1.protoinst" -view C:/Users/mlabadm/Desktop/Github/FPGA/nqueens/nqueens_fpga/fsm_tb_behav.wcfg -log simulate.log"
call xsim  ring_buffer_tb_behav -key {Behavioral:sim_1:Functional:ring_buffer_tb} -tclbatch ring_buffer_tb.tcl -protoinst "protoinst_files/bd_afc3.protoinst" -protoinst "protoinst_files/design_1.protoinst" -view C:/Users/mlabadm/Desktop/Github/FPGA/nqueens/nqueens_fpga/fsm_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
