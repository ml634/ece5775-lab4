-- (c) Copyright 1995-2014 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: xilinx.com:user:util_flipflop:1.0
-- IP Revision: -1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY work;
USE work.util_flipflop;

ENTITY top_tpg_util_flipflop_1_0 IS
  PORT (
    Clk : IN STD_LOGIC;
    Rst : IN STD_LOGIC;
    Set : IN STD_LOGIC;
    CE : IN STD_LOGIC;
    D : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    Q : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END top_tpg_util_flipflop_1_0;

ARCHITECTURE top_tpg_util_flipflop_1_0_arch OF top_tpg_util_flipflop_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF top_tpg_util_flipflop_1_0_arch: ARCHITECTURE IS "yes";

  COMPONENT util_flipflop IS
    GENERIC (
      C_SET_RST_HIGH : INTEGER;
      C_USE_RST : INTEGER;
      C_USE_SET : INTEGER;
      C_USE_CE : INTEGER;
      C_USE_ASYNCH : INTEGER;
      C_SIZE : INTEGER;
      C_INIT : STRING
    );
    PORT (
      Clk : IN STD_LOGIC;
      Rst : IN STD_LOGIC;
      Set : IN STD_LOGIC;
      CE : IN STD_LOGIC;
      D : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      Q : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT util_flipflop;
BEGIN
  U0 : util_flipflop
    GENERIC MAP (
      C_SET_RST_HIGH => 0,
      C_USE_RST => 0,
      C_USE_SET => 0,
      C_USE_CE => 0,
      C_USE_ASYNCH => 0,
      C_SIZE => 1,
      C_INIT => "0"
    )
    PORT MAP (
      Clk => Clk,
      Rst => Rst,
      Set => Set,
      CE => CE,
      D => D,
      Q => Q
    );
END top_tpg_util_flipflop_1_0_arch;
