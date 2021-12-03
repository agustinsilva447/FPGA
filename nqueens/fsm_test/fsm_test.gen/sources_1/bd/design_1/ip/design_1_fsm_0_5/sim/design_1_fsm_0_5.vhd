-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:fsm:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_fsm_0_5 IS
  PORT (
    clk : IN STD_LOGIC;
    nRst : IN STD_LOGIC;
    a_in : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    ack_in : IN STD_LOGIC;
    next_in : IN STD_LOGIC;
    a_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    ack_out : OUT STD_LOGIC;
    next_out : OUT STD_LOGIC;
    output_state : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END design_1_fsm_0_5;

ARCHITECTURE design_1_fsm_0_5_arch OF design_1_fsm_0_5 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_fsm_0_5_arch: ARCHITECTURE IS "yes";
  COMPONENT fsm IS
    GENERIC (
      K : INTEGER;
      M : INTEGER;
      N : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      nRst : IN STD_LOGIC;
      a_in : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      ack_in : IN STD_LOGIC;
      next_in : IN STD_LOGIC;
      a_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      ack_out : OUT STD_LOGIC;
      next_out : OUT STD_LOGIC;
      output_state : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
  END COMPONENT fsm;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_fsm_0_5_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : fsm
    GENERIC MAP (
      K => 5,
      M => 8,
      N => 4
    )
    PORT MAP (
      clk => clk,
      nRst => nRst,
      a_in => a_in,
      ack_in => ack_in,
      next_in => next_in,
      a_out => a_out,
      ack_out => ack_out,
      next_out => next_out,
      output_state => output_state
    );
END design_1_fsm_0_5_arch;
