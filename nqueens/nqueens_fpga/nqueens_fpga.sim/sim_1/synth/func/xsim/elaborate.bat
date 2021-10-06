@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Tue Oct 05 11:58:33 +0200 2021
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto 1bf643aa3fcf423bbac43a93dbf04ea6 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L secureip --snapshot top_nqueens_tb_func_synth xil_defaultlib.top_nqueens_tb xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto 1bf643aa3fcf423bbac43a93dbf04ea6 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L secureip --snapshot top_nqueens_tb_func_synth xil_defaultlib.top_nqueens_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0