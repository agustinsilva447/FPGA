@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Thu Sep 09 16:59:21 +0200 2021
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto 88498b8c75bb45e28567bc2f93023c1e --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot T20_FiniteStateMachineTb_behav xil_defaultlib.T20_FiniteStateMachineTb -log elaborate.log"
call xelab  -wto 88498b8c75bb45e28567bc2f93023c1e --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot T20_FiniteStateMachineTb_behav xil_defaultlib.T20_FiniteStateMachineTb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0