@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Wed Sep 08 17:28:19 +0200 2021
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim ctrl_logic_tb_behav -key {Behavioral:sim_1:Functional:ctrl_logic_tb} -tclbatch ctrl_logic_tb.tcl -view C:/Users/mlabadm/Desktop/Github/FPGA/nqueens/nqueens_vhdl/ctrl_logic_tb_behav.wcfg -log simulate.log"
call xsim  ctrl_logic_tb_behav -key {Behavioral:sim_1:Functional:ctrl_logic_tb} -tclbatch ctrl_logic_tb.tcl -view C:/Users/mlabadm/Desktop/Github/FPGA/nqueens/nqueens_vhdl/ctrl_logic_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
