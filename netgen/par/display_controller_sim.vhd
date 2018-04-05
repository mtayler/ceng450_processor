--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: display_controller_sim.vhd
-- /___/   /\     Timestamp: Wed Apr 04 15:49:47 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf motherboard.pcf -mhf -rpw 100 -tpw 0 -ar Structure -tm motherboard -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim motherboard.ncd motherboard_timesim.vhd 
-- Device	: 3s1200efg320-5 (PRODUCTION 1.27 2012-01-07)
-- Input file	: motherboard.ncd
-- Output file	: C:\Users\mtayler\Documents\ceng450_processor\netgen\par\motherboard_timesim.vhd
-- # of Entities	: 7
-- Design Name	: motherboard
-- Module Name	: display_controller
-- Xilinx	: C:\Xilinx\13.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity display_controller is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    hex0 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    hex1 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    hex2 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    hex3 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    an : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    sseg : out STD_LOGIC_VECTOR ( 6 downto 0 ) 
  );
end display_controller;

architecture Structure of display_controller is
  signal dc_hex_1_F5MUX_8306 : STD_LOGIC; 
  signal Mmux_hex_31_8304 : STD_LOGIC; 
  signal dc_hex_1_BXINV_8298 : STD_LOGIC; 
  signal Mmux_hex_41_8296 : STD_LOGIC; 
  signal dc_hex_2_F5MUX_8331 : STD_LOGIC; 
  signal Mmux_hex_32_8329 : STD_LOGIC; 
  signal dc_hex_2_BXINV_8323 : STD_LOGIC; 
  signal Mmux_hex_42_8321 : STD_LOGIC; 
  signal dc_hex_3_F5MUX_8356 : STD_LOGIC; 
  signal Mmux_hex_33_8354 : STD_LOGIC; 
  signal dc_hex_3_BXINV_8348 : STD_LOGIC; 
  signal Mmux_hex_43_8346 : STD_LOGIC; 
  signal dc_hex_0_F5MUX_8381 : STD_LOGIC; 
  signal Mmux_hex_3_8379 : STD_LOGIC; 
  signal dc_hex_0_BXINV_8373 : STD_LOGIC; 
  signal Mmux_hex_4_8371 : STD_LOGIC; 
  signal an_1_OBUF_F : STD_LOGIC; 
  signal an_1_OBUF_G : STD_LOGIC; 
  signal an_3_OBUF_F : STD_LOGIC; 
  signal an_3_OBUF_G : STD_LOGIC; 
  signal sseg_3_OBUF_F : STD_LOGIC; 
  signal sseg_3_OBUF_G : STD_LOGIC; 
  signal sseg_1_OBUF_F : STD_LOGIC; 
  signal sseg_1_OBUF_G : STD_LOGIC; 
  signal sseg_5_OBUF_F : STD_LOGIC; 
  signal sseg_5_OBUF_G : STD_LOGIC; 
  signal sseg_6_OBUF_G : STD_LOGIC; 
  signal dc_q_reg_0_DXMUX_8541 : STD_LOGIC; 
  signal dc_q_reg_0_DYMUX_8533 : STD_LOGIC; 
  signal dc_q_reg_0_SRINV_8523 : STD_LOGIC; 
  signal dc_q_reg_0_CLKINV_8522 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal q_reg : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 1 downto 1 ); 
begin
  dc_hex_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => dc_hex_1_F5MUX_8306,
      O => hex(1)
    );
  dc_hex_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y113"
    )
    port map (
      IA => Mmux_hex_41_8296,
      IB => Mmux_hex_31_8304,
      SEL => dc_hex_1_BXINV_8298,
      O => dc_hex_1_F5MUX_8306
    );
  dc_hex_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_reg(1),
      O => dc_hex_1_BXINV_8298
    );
  dc_hex_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y112",
      PATHPULSE => 555 ps
    )
    port map (
      I => dc_hex_2_F5MUX_8331,
      O => hex(2)
    );
  dc_hex_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y112"
    )
    port map (
      IA => Mmux_hex_42_8321,
      IB => Mmux_hex_32_8329,
      SEL => dc_hex_2_BXINV_8323,
      O => dc_hex_2_F5MUX_8331
    );
  dc_hex_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y112",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_reg(1),
      O => dc_hex_2_BXINV_8323
    );
  dc_hex_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y112",
      PATHPULSE => 555 ps
    )
    port map (
      I => dc_hex_3_F5MUX_8356,
      O => hex(3)
    );
  dc_hex_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y112"
    )
    port map (
      IA => Mmux_hex_43_8346,
      IB => Mmux_hex_33_8354,
      SEL => dc_hex_3_BXINV_8348,
      O => dc_hex_3_F5MUX_8356
    );
  dc_hex_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y112",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_reg(1),
      O => dc_hex_3_BXINV_8348
    );
  dc_hex_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y112",
      PATHPULSE => 555 ps
    )
    port map (
      I => dc_hex_0_F5MUX_8381,
      O => hex(0)
    );
  dc_hex_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X89Y112"
    )
    port map (
      IA => Mmux_hex_4_8371,
      IB => Mmux_hex_3_8379,
      SEL => dc_hex_0_BXINV_8373,
      O => dc_hex_0_F5MUX_8381
    );
  dc_hex_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y112",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_reg(1),
      O => dc_hex_0_BXINV_8373
    );
  an_1_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_1_OBUF_F,
      O => an(1)
    );
  an_1_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_1_OBUF_G,
      O => an(0)
    );
  Mdecod_an31 : X_LUT4
    generic map(
      INIT => X"7777",
      LOC => "SLICE_X90Y104"
    )
    port map (
      ADR0 => q_reg(1),
      ADR1 => q_reg(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => an_3_OBUF_F
    );
  an_3_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y104",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_3_OBUF_F,
      O => an(3)
    );
  an_3_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y104",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_3_OBUF_G,
      O => an(2)
    );
  Mdecod_an21 : X_LUT4
    generic map(
      INIT => X"DDDD",
      LOC => "SLICE_X90Y104"
    )
    port map (
      ADR0 => q_reg(1),
      ADR1 => q_reg(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => an_3_OBUF_G
    );
  sseg_3_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y100",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_3_OBUF_F,
      O => sseg(3)
    );
  sseg_3_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y100",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_3_OBUF_G,
      O => sseg(0)
    );
  sseg_1_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y105",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_1_OBUF_F,
      O => sseg(1)
    );
  sseg_1_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y105",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_1_OBUF_G,
      O => sseg(2)
    );
  sseg_5_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y101",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_5_OBUF_F,
      O => sseg(5)
    );
  sseg_5_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y101",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_5_OBUF_G,
      O => sseg(4)
    );
  sseg_6_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y101",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_6_OBUF_G,
      O => sseg(6)
    );
  dc_q_reg_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X91Y118",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_reg(0),
      O => dc_q_reg_0_DXMUX_8541
    );
  dc_q_reg_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y118",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(1),
      O => dc_q_reg_0_DYMUX_8533
    );
  dc_q_reg_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y118",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset,
      O => dc_q_reg_0_SRINV_8523
    );
  dc_q_reg_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y118",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => dc_q_reg_0_CLKINV_8522
    );
  Mmux_hex_41 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X91Y113"
    )
    port map (
      ADR0 => hex0(1),
      ADR1 => q_reg(0),
      ADR2 => VCC,
      ADR3 => hex1(1),
      O => Mmux_hex_41_8296
    );
  Mmux_hex_31 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X91Y113"
    )
    port map (
      ADR0 => VCC,
      ADR1 => q_reg(0),
      ADR2 => hex3(1),
      ADR3 => hex2(1),
      O => Mmux_hex_31_8304
    );
  Mmux_hex_42 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X90Y112"
    )
    port map (
      ADR0 => q_reg(0),
      ADR1 => VCC,
      ADR2 => hex1(2),
      ADR3 => hex0(2),
      O => Mmux_hex_42_8321
    );
  Mmux_hex_32 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X90Y112"
    )
    port map (
      ADR0 => q_reg(0),
      ADR1 => hex3(2),
      ADR2 => VCC,
      ADR3 => hex2(2),
      O => Mmux_hex_32_8329
    );
  Mmux_hex_43 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X91Y112"
    )
    port map (
      ADR0 => hex0(3),
      ADR1 => q_reg(0),
      ADR2 => VCC,
      ADR3 => hex1(3),
      O => Mmux_hex_43_8346
    );
  Mmux_hex_33 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X91Y112"
    )
    port map (
      ADR0 => hex3(3),
      ADR1 => hex2(3),
      ADR2 => VCC,
      ADR3 => q_reg(0),
      O => Mmux_hex_33_8354
    );
  Mmux_hex_4 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X89Y112"
    )
    port map (
      ADR0 => VCC,
      ADR1 => hex1(0),
      ADR2 => q_reg(0),
      ADR3 => hex0(0),
      O => Mmux_hex_4_8371
    );
  Mmux_hex_3 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X89Y112"
    )
    port map (
      ADR0 => q_reg(0),
      ADR1 => VCC,
      ADR2 => hex3(0),
      ADR3 => hex2(0),
      O => Mmux_hex_3_8379
    );
  Mdecod_an01 : X_LUT4
    generic map(
      INIT => X"FCFC",
      LOC => "SLICE_X90Y85"
    )
    port map (
      ADR0 => VCC,
      ADR1 => q_reg(0),
      ADR2 => q_reg(1),
      ADR3 => VCC,
      O => an_1_OBUF_G
    );
  Mdecod_an11 : X_LUT4
    generic map(
      INIT => X"F3F3",
      LOC => "SLICE_X90Y85"
    )
    port map (
      ADR0 => VCC,
      ADR1 => q_reg(0),
      ADR2 => q_reg(1),
      ADR3 => VCC,
      O => an_1_OBUF_F
    );
  Mrom_sseg11 : X_LUT4
    generic map(
      INIT => X"0984",
      LOC => "SLICE_X91Y100"
    )
    port map (
      ADR0 => hex(3),
      ADR1 => hex(0),
      ADR2 => hex(1),
      ADR3 => hex(2),
      O => sseg_3_OBUF_G
    );
  Mrom_sseg31 : X_LUT4
    generic map(
      INIT => X"C124",
      LOC => "SLICE_X91Y100"
    )
    port map (
      ADR0 => hex(3),
      ADR1 => hex(0),
      ADR2 => hex(1),
      ADR3 => hex(2),
      O => sseg_3_OBUF_F
    );
  Mrom_sseg21 : X_LUT4
    generic map(
      INIT => X"8908",
      LOC => "SLICE_X90Y105"
    )
    port map (
      ADR0 => hex(2),
      ADR1 => hex(3),
      ADR2 => hex(0),
      ADR3 => hex(1),
      O => sseg_1_OBUF_G
    );
  Mrom_sseg111 : X_LUT4
    generic map(
      INIT => X"CA28",
      LOC => "SLICE_X90Y105"
    )
    port map (
      ADR0 => hex(2),
      ADR1 => hex(3),
      ADR2 => hex(0),
      ADR3 => hex(1),
      O => sseg_1_OBUF_F
    );
  Mrom_sseg41 : X_LUT4
    generic map(
      INIT => X"10F2",
      LOC => "SLICE_X90Y101"
    )
    port map (
      ADR0 => hex(2),
      ADR1 => hex(1),
      ADR2 => hex(0),
      ADR3 => hex(3),
      O => sseg_5_OBUF_G
    );
  Mrom_sseg51 : X_LUT4
    generic map(
      INIT => X"20D4",
      LOC => "SLICE_X90Y101"
    )
    port map (
      ADR0 => hex(2),
      ADR1 => hex(1),
      ADR2 => hex(0),
      ADR3 => hex(3),
      O => sseg_5_OBUF_F
    );
  Mrom_sseg61 : X_LUT4
    generic map(
      INIT => X"4205",
      LOC => "SLICE_X91Y101"
    )
    port map (
      ADR0 => hex(3),
      ADR1 => hex(0),
      ADR2 => hex(1),
      ADR3 => hex(2),
      O => sseg_6_OBUF_G
    );
  Mcount_q_reg_xor_1_11 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X91Y118"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => q_reg(1),
      ADR3 => q_reg(0),
      O => Result(1)
    );
  q_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X91Y118",
      INIT => '0'
    )
    port map (
      I => dc_q_reg_0_DYMUX_8533,
      CE => VCC,
      CLK => dc_q_reg_0_CLKINV_8522,
      SET => GND,
      RST => dc_q_reg_0_SRINV_8523,
      O => q_reg(1)
    );
  q_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X91Y118",
      INIT => '0'
    )
    port map (
      I => dc_q_reg_0_DXMUX_8541,
      CE => VCC,
      CLK => dc_q_reg_0_CLKINV_8522,
      SET => GND,
      RST => dc_q_reg_0_SRINV_8523,
      O => q_reg(0)
    );
  NlwBlock_dc_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_dc_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

