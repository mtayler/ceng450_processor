--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: motherboard_timesim.vhd
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

entity motherboard is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    an : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    sseg : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    inport : in STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end motherboard;

architecture Structure of motherboard is
  component display_controller
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
  end component;
  component processor
    port (
      clk : in STD_LOGIC := 'X'; 
      rst : in STD_LOGIC := 'X'; 
      inport : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
      outport : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
    );
  end component;
  signal rst_IBUF_8206 : STD_LOGIC; 
  signal an_3_OBUF_8223 : STD_LOGIC; 
  signal an_2_OBUF_8224 : STD_LOGIC; 
  signal an_1_OBUF_8225 : STD_LOGIC; 
  signal an_0_OBUF_8226 : STD_LOGIC; 
  signal sseg_6_OBUF_8227 : STD_LOGIC; 
  signal sseg_5_OBUF_8228 : STD_LOGIC; 
  signal sseg_4_OBUF_8229 : STD_LOGIC; 
  signal sseg_3_OBUF_8230 : STD_LOGIC; 
  signal sseg_2_OBUF_8231 : STD_LOGIC; 
  signal sseg_1_OBUF_8232 : STD_LOGIC; 
  signal sseg_0_OBUF_8233 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal display_or00004_0 : STD_LOGIC; 
  signal display_or00009_0 : STD_LOGIC; 
  signal display_or0000_0 : STD_LOGIC; 
  signal display_or000021_0 : STD_LOGIC; 
  signal display_or000026_8282 : STD_LOGIC; 
  signal clk_div_0_DXMUX_25791 : STD_LOGIC; 
  signal clk_div_0_XORF_25789 : STD_LOGIC; 
  signal clk_div_0_LOGIC_ONE_25788 : STD_LOGIC; 
  signal clk_div_0_CYINIT_25787 : STD_LOGIC; 
  signal clk_div_0_CYSELF_25778 : STD_LOGIC; 
  signal clk_div_0_BXINV_25776 : STD_LOGIC; 
  signal clk_div_0_DYMUX_25769 : STD_LOGIC; 
  signal clk_div_0_XORG_25767 : STD_LOGIC; 
  signal clk_div_0_CYMUXG_25766 : STD_LOGIC; 
  signal clk_div_0_LOGIC_ZERO_25764 : STD_LOGIC; 
  signal clk_div_0_CYSELG_25755 : STD_LOGIC; 
  signal clk_div_0_G : STD_LOGIC; 
  signal clk_div_0_SRINV_25753 : STD_LOGIC; 
  signal clk_div_0_CLKINV_25752 : STD_LOGIC; 
  signal clk_div_2_DXMUX_25847 : STD_LOGIC; 
  signal clk_div_2_XORF_25845 : STD_LOGIC; 
  signal clk_div_2_CYINIT_25844 : STD_LOGIC; 
  signal clk_div_2_F : STD_LOGIC; 
  signal clk_div_2_DYMUX_25828 : STD_LOGIC; 
  signal clk_div_2_XORG_25826 : STD_LOGIC; 
  signal clk_div_2_CYSELF_25824 : STD_LOGIC; 
  signal clk_div_2_CYMUXFAST_25823 : STD_LOGIC; 
  signal clk_div_2_CYAND_25822 : STD_LOGIC; 
  signal clk_div_2_FASTCARRY_25821 : STD_LOGIC; 
  signal clk_div_2_CYMUXG2_25820 : STD_LOGIC; 
  signal clk_div_2_CYMUXF2_25819 : STD_LOGIC; 
  signal clk_div_2_LOGIC_ZERO_25818 : STD_LOGIC; 
  signal clk_div_2_CYSELG_25809 : STD_LOGIC; 
  signal clk_div_2_G : STD_LOGIC; 
  signal clk_div_2_SRINV_25807 : STD_LOGIC; 
  signal clk_div_2_CLKINV_25806 : STD_LOGIC; 
  signal clk_div_4_DXMUX_25903 : STD_LOGIC; 
  signal clk_div_4_XORF_25901 : STD_LOGIC; 
  signal clk_div_4_CYINIT_25900 : STD_LOGIC; 
  signal clk_div_4_F : STD_LOGIC; 
  signal clk_div_4_DYMUX_25884 : STD_LOGIC; 
  signal clk_div_4_XORG_25882 : STD_LOGIC; 
  signal clk_div_4_CYSELF_25880 : STD_LOGIC; 
  signal clk_div_4_CYMUXFAST_25879 : STD_LOGIC; 
  signal clk_div_4_CYAND_25878 : STD_LOGIC; 
  signal clk_div_4_FASTCARRY_25877 : STD_LOGIC; 
  signal clk_div_4_CYMUXG2_25876 : STD_LOGIC; 
  signal clk_div_4_CYMUXF2_25875 : STD_LOGIC; 
  signal clk_div_4_LOGIC_ZERO_25874 : STD_LOGIC; 
  signal clk_div_4_CYSELG_25865 : STD_LOGIC; 
  signal clk_div_4_G : STD_LOGIC; 
  signal clk_div_4_SRINV_25863 : STD_LOGIC; 
  signal clk_div_4_CLKINV_25862 : STD_LOGIC; 
  signal clk_div_6_DXMUX_25959 : STD_LOGIC; 
  signal clk_div_6_XORF_25957 : STD_LOGIC; 
  signal clk_div_6_CYINIT_25956 : STD_LOGIC; 
  signal clk_div_6_F : STD_LOGIC; 
  signal clk_div_6_DYMUX_25940 : STD_LOGIC; 
  signal clk_div_6_XORG_25938 : STD_LOGIC; 
  signal clk_div_6_CYSELF_25936 : STD_LOGIC; 
  signal clk_div_6_CYMUXFAST_25935 : STD_LOGIC; 
  signal clk_div_6_CYAND_25934 : STD_LOGIC; 
  signal clk_div_6_FASTCARRY_25933 : STD_LOGIC; 
  signal clk_div_6_CYMUXG2_25932 : STD_LOGIC; 
  signal clk_div_6_CYMUXF2_25931 : STD_LOGIC; 
  signal clk_div_6_LOGIC_ZERO_25930 : STD_LOGIC; 
  signal clk_div_6_CYSELG_25921 : STD_LOGIC; 
  signal clk_div_6_G : STD_LOGIC; 
  signal clk_div_6_SRINV_25919 : STD_LOGIC; 
  signal clk_div_6_CLKINV_25918 : STD_LOGIC; 
  signal clk_div_8_DXMUX_26015 : STD_LOGIC; 
  signal clk_div_8_XORF_26013 : STD_LOGIC; 
  signal clk_div_8_CYINIT_26012 : STD_LOGIC; 
  signal clk_div_8_F : STD_LOGIC; 
  signal clk_div_8_DYMUX_25996 : STD_LOGIC; 
  signal clk_div_8_XORG_25994 : STD_LOGIC; 
  signal clk_div_8_CYSELF_25992 : STD_LOGIC; 
  signal clk_div_8_CYMUXFAST_25991 : STD_LOGIC; 
  signal clk_div_8_CYAND_25990 : STD_LOGIC; 
  signal clk_div_8_FASTCARRY_25989 : STD_LOGIC; 
  signal clk_div_8_CYMUXG2_25988 : STD_LOGIC; 
  signal clk_div_8_CYMUXF2_25987 : STD_LOGIC; 
  signal clk_div_8_LOGIC_ZERO_25986 : STD_LOGIC; 
  signal clk_div_8_CYSELG_25977 : STD_LOGIC; 
  signal clk_div_8_G : STD_LOGIC; 
  signal clk_div_8_SRINV_25975 : STD_LOGIC; 
  signal clk_div_8_CLKINV_25974 : STD_LOGIC; 
  signal clk_div_10_DXMUX_26071 : STD_LOGIC; 
  signal clk_div_10_XORF_26069 : STD_LOGIC; 
  signal clk_div_10_CYINIT_26068 : STD_LOGIC; 
  signal clk_div_10_F : STD_LOGIC; 
  signal clk_div_10_DYMUX_26052 : STD_LOGIC; 
  signal clk_div_10_XORG_26050 : STD_LOGIC; 
  signal clk_div_10_CYSELF_26048 : STD_LOGIC; 
  signal clk_div_10_CYMUXFAST_26047 : STD_LOGIC; 
  signal clk_div_10_CYAND_26046 : STD_LOGIC; 
  signal clk_div_10_FASTCARRY_26045 : STD_LOGIC; 
  signal clk_div_10_CYMUXG2_26044 : STD_LOGIC; 
  signal clk_div_10_CYMUXF2_26043 : STD_LOGIC; 
  signal clk_div_10_LOGIC_ZERO_26042 : STD_LOGIC; 
  signal clk_div_10_CYSELG_26033 : STD_LOGIC; 
  signal clk_div_10_G : STD_LOGIC; 
  signal clk_div_10_SRINV_26031 : STD_LOGIC; 
  signal clk_div_10_CLKINV_26030 : STD_LOGIC; 
  signal clk_div_12_DXMUX_26127 : STD_LOGIC; 
  signal clk_div_12_XORF_26125 : STD_LOGIC; 
  signal clk_div_12_CYINIT_26124 : STD_LOGIC; 
  signal clk_div_12_F : STD_LOGIC; 
  signal clk_div_12_DYMUX_26108 : STD_LOGIC; 
  signal clk_div_12_XORG_26106 : STD_LOGIC; 
  signal clk_div_12_CYSELF_26104 : STD_LOGIC; 
  signal clk_div_12_CYMUXFAST_26103 : STD_LOGIC; 
  signal clk_div_12_CYAND_26102 : STD_LOGIC; 
  signal clk_div_12_FASTCARRY_26101 : STD_LOGIC; 
  signal clk_div_12_CYMUXG2_26100 : STD_LOGIC; 
  signal clk_div_12_CYMUXF2_26099 : STD_LOGIC; 
  signal clk_div_12_LOGIC_ZERO_26098 : STD_LOGIC; 
  signal clk_div_12_CYSELG_26089 : STD_LOGIC; 
  signal clk_div_12_G : STD_LOGIC; 
  signal clk_div_12_SRINV_26087 : STD_LOGIC; 
  signal clk_div_12_CLKINV_26086 : STD_LOGIC; 
  signal clk_div_14_DXMUX_26183 : STD_LOGIC; 
  signal clk_div_14_XORF_26181 : STD_LOGIC; 
  signal clk_div_14_CYINIT_26180 : STD_LOGIC; 
  signal clk_div_14_F : STD_LOGIC; 
  signal clk_div_14_DYMUX_26164 : STD_LOGIC; 
  signal clk_div_14_XORG_26162 : STD_LOGIC; 
  signal clk_div_14_CYSELF_26160 : STD_LOGIC; 
  signal clk_div_14_CYMUXFAST_26159 : STD_LOGIC; 
  signal clk_div_14_CYAND_26158 : STD_LOGIC; 
  signal clk_div_14_FASTCARRY_26157 : STD_LOGIC; 
  signal clk_div_14_CYMUXG2_26156 : STD_LOGIC; 
  signal clk_div_14_CYMUXF2_26155 : STD_LOGIC; 
  signal clk_div_14_LOGIC_ZERO_26154 : STD_LOGIC; 
  signal clk_div_14_CYSELG_26145 : STD_LOGIC; 
  signal clk_div_14_G : STD_LOGIC; 
  signal clk_div_14_SRINV_26143 : STD_LOGIC; 
  signal clk_div_14_CLKINV_26142 : STD_LOGIC; 
  signal clk_div_16_DXMUX_26209 : STD_LOGIC; 
  signal clk_div_16_XORF_26207 : STD_LOGIC; 
  signal clk_div_16_CYINIT_26206 : STD_LOGIC; 
  signal clk_div_16_rt_26204 : STD_LOGIC; 
  signal clk_div_16_CLKINV_26195 : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal rst_INBUF : STD_LOGIC; 
  signal an_0_O : STD_LOGIC; 
  signal an_1_O : STD_LOGIC; 
  signal an_2_O : STD_LOGIC; 
  signal an_3_O : STD_LOGIC; 
  signal sseg_0_O : STD_LOGIC; 
  signal sseg_1_O : STD_LOGIC; 
  signal sseg_2_O : STD_LOGIC; 
  signal sseg_3_O : STD_LOGIC; 
  signal sseg_4_O : STD_LOGIC; 
  signal sseg_5_O : STD_LOGIC; 
  signal sseg_6_O : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal display_or00004_26330 : STD_LOGIC; 
  signal display_or00009_26342 : STD_LOGIC; 
  signal display_1_DXMUX_26365 : STD_LOGIC; 
  signal display_1_DYMUX_26356 : STD_LOGIC; 
  signal display_1_SRINV_26354 : STD_LOGIC; 
  signal display_1_CLKINV_26353 : STD_LOGIC; 
  signal display_1_CEINV_26352 : STD_LOGIC; 
  signal display_3_DXMUX_26393 : STD_LOGIC; 
  signal display_3_DYMUX_26384 : STD_LOGIC; 
  signal display_3_SRINV_26382 : STD_LOGIC; 
  signal display_3_CLKINV_26381 : STD_LOGIC; 
  signal display_3_CEINV_26380 : STD_LOGIC; 
  signal display_5_DXMUX_26421 : STD_LOGIC; 
  signal display_5_DYMUX_26412 : STD_LOGIC; 
  signal display_5_SRINV_26410 : STD_LOGIC; 
  signal display_5_CLKINV_26409 : STD_LOGIC; 
  signal display_5_CEINV_26408 : STD_LOGIC; 
  signal display_7_DXMUX_26449 : STD_LOGIC; 
  signal display_7_DYMUX_26440 : STD_LOGIC; 
  signal display_7_SRINV_26438 : STD_LOGIC; 
  signal display_7_CLKINV_26437 : STD_LOGIC; 
  signal display_7_CEINV_26436 : STD_LOGIC; 
  signal display_9_DXMUX_26477 : STD_LOGIC; 
  signal display_9_DYMUX_26468 : STD_LOGIC; 
  signal display_9_SRINV_26466 : STD_LOGIC; 
  signal display_9_CLKINV_26465 : STD_LOGIC; 
  signal display_9_CEINV_26464 : STD_LOGIC; 
  signal display_or000021_26494 : STD_LOGIC; 
  signal display_or0000 : STD_LOGIC; 
  signal display_or000026_pack_1 : STD_LOGIC; 
  signal display_11_DXMUX_26541 : STD_LOGIC; 
  signal display_11_DYMUX_26532 : STD_LOGIC; 
  signal display_11_SRINV_26530 : STD_LOGIC; 
  signal display_11_CLKINV_26529 : STD_LOGIC; 
  signal display_11_CEINV_26528 : STD_LOGIC; 
  signal display_13_DXMUX_26569 : STD_LOGIC; 
  signal display_13_DYMUX_26560 : STD_LOGIC; 
  signal display_13_SRINV_26558 : STD_LOGIC; 
  signal display_13_CLKINV_26557 : STD_LOGIC; 
  signal display_13_CEINV_26556 : STD_LOGIC; 
  signal display_15_DXMUX_26597 : STD_LOGIC; 
  signal display_15_DYMUX_26588 : STD_LOGIC; 
  signal display_15_SRINV_26586 : STD_LOGIC; 
  signal display_15_CLKINV_26585 : STD_LOGIC; 
  signal display_15_CEINV_26584 : STD_LOGIC; 
  signal clk_div_16_FFX_RSTAND_26214 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal clk_div : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal display : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal outport : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Mcount_clk_div_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Mcount_clk_div_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  dc : display_controller
    port map (
      clk => clk_div(16),
      reset => rst_IBUF_8206,
      hex0(3) => display(3),
      hex0(2) => display(2),
      hex0(1) => display(1),
      hex0(0) => display(0),
      hex1(3) => display(7),
      hex1(2) => display(6),
      hex1(1) => display(5),
      hex1(0) => display(4),
      hex2(3) => display(11),
      hex2(2) => display(10),
      hex2(1) => display(9),
      hex2(0) => display(8),
      hex3(3) => display(15),
      hex3(2) => display(14),
      hex3(1) => display(13),
      hex3(0) => display(12),
      an(3) => an_3_OBUF_8223,
      an(2) => an_2_OBUF_8224,
      an(1) => an_1_OBUF_8225,
      an(0) => an_0_OBUF_8226,
      sseg(6) => sseg_6_OBUF_8227,
      sseg(5) => sseg_5_OBUF_8228,
      sseg(4) => sseg_4_OBUF_8229,
      sseg(3) => sseg_3_OBUF_8230,
      sseg(2) => sseg_2_OBUF_8231,
      sseg(1) => sseg_1_OBUF_8232,
      sseg(0) => sseg_0_OBUF_8233
    );
  proc : processor
    port map (
      clk => clk_BUFGP,
      rst => rst_IBUF_8206,
      inport(15) => inport(15),
      inport(14) => inport(14),
      inport(13) => inport(13),
      inport(12) => inport(12),
      inport(11) => inport(11),
      inport(10) => inport(10),
      inport(9) => inport(9),
      inport(8) => inport(8),
      inport(7) => inport(7),
      inport(6) => inport(6),
      inport(5) => inport(5),
      inport(4) => inport(4),
      inport(3) => inport(3),
      inport(2) => inport(2),
      inport(1) => inport(1),
      inport(0) => inport(0),
      outport(15) => outport(15),
      outport(14) => outport(14),
      outport(13) => outport(13),
      outport(12) => outport(12),
      outport(11) => outport(11),
      outport(10) => outport(10),
      outport(9) => outport(9),
      outport(8) => outport(8),
      outport(7) => outport(7),
      outport(6) => outport(6),
      outport(5) => outport(5),
      outport(4) => outport(4),
      outport(3) => outport(3),
      outport(2) => outport(2),
      outport(1) => outport(1),
      outport(0) => outport(0)
    );
  clk_div_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X89Y64"
    )
    port map (
      O => clk_div_0_LOGIC_ZERO_25764
    );
  clk_div_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X89Y64"
    )
    port map (
      O => clk_div_0_LOGIC_ONE_25788
    );
  clk_div_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_0_XORF_25789,
      O => clk_div_0_DXMUX_25791
    );
  clk_div_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X89Y64"
    )
    port map (
      I0 => clk_div_0_CYINIT_25787,
      I1 => Mcount_clk_div_lut(0),
      O => clk_div_0_XORF_25789
    );
  clk_div_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X89Y64"
    )
    port map (
      IA => clk_div_0_LOGIC_ONE_25788,
      IB => clk_div_0_CYINIT_25787,
      SEL => clk_div_0_CYSELF_25778,
      O => Mcount_clk_div_cy(0)
    );
  clk_div_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X89Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_0_BXINV_25776,
      O => clk_div_0_CYINIT_25787
    );
  clk_div_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X89Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_clk_div_lut(0),
      O => clk_div_0_CYSELF_25778
    );
  clk_div_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => clk_div_0_BXINV_25776
    );
  clk_div_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_0_XORG_25767,
      O => clk_div_0_DYMUX_25769
    );
  clk_div_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X89Y64"
    )
    port map (
      I0 => Mcount_clk_div_cy(0),
      I1 => clk_div_0_G,
      O => clk_div_0_XORG_25767
    );
  clk_div_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_0_CYMUXG_25766,
      O => Mcount_clk_div_cy(1)
    );
  clk_div_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X89Y64"
    )
    port map (
      IA => clk_div_0_LOGIC_ZERO_25764,
      IB => Mcount_clk_div_cy(0),
      SEL => clk_div_0_CYSELG_25755,
      O => clk_div_0_CYMUXG_25766
    );
  clk_div_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X89Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_0_G,
      O => clk_div_0_CYSELG_25755
    );
  clk_div_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_8206,
      O => clk_div_0_SRINV_25753
    );
  clk_div_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => clk_div_0_CLKINV_25752
    );
  clk_div_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X89Y65"
    )
    port map (
      O => clk_div_2_LOGIC_ZERO_25818
    );
  clk_div_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_2_XORF_25845,
      O => clk_div_2_DXMUX_25847
    );
  clk_div_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X89Y65"
    )
    port map (
      I0 => clk_div_2_CYINIT_25844,
      I1 => clk_div_2_F,
      O => clk_div_2_XORF_25845
    );
  clk_div_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X89Y65"
    )
    port map (
      IA => clk_div_2_LOGIC_ZERO_25818,
      IB => clk_div_2_CYINIT_25844,
      SEL => clk_div_2_CYSELF_25824,
      O => Mcount_clk_div_cy(2)
    );
  clk_div_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X89Y65"
    )
    port map (
      IA => clk_div_2_LOGIC_ZERO_25818,
      IB => clk_div_2_LOGIC_ZERO_25818,
      SEL => clk_div_2_CYSELF_25824,
      O => clk_div_2_CYMUXF2_25819
    );
  clk_div_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X89Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_clk_div_cy(1),
      O => clk_div_2_CYINIT_25844
    );
  clk_div_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X89Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_2_F,
      O => clk_div_2_CYSELF_25824
    );
  clk_div_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_2_XORG_25826,
      O => clk_div_2_DYMUX_25828
    );
  clk_div_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X89Y65"
    )
    port map (
      I0 => Mcount_clk_div_cy(2),
      I1 => clk_div_2_G,
      O => clk_div_2_XORG_25826
    );
  clk_div_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_2_CYMUXFAST_25823,
      O => Mcount_clk_div_cy(3)
    );
  clk_div_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X89Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_clk_div_cy(1),
      O => clk_div_2_FASTCARRY_25821
    );
  clk_div_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X89Y65"
    )
    port map (
      I0 => clk_div_2_CYSELG_25809,
      I1 => clk_div_2_CYSELF_25824,
      O => clk_div_2_CYAND_25822
    );
  clk_div_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X89Y65"
    )
    port map (
      IA => clk_div_2_CYMUXG2_25820,
      IB => clk_div_2_FASTCARRY_25821,
      SEL => clk_div_2_CYAND_25822,
      O => clk_div_2_CYMUXFAST_25823
    );
  clk_div_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X89Y65"
    )
    port map (
      IA => clk_div_2_LOGIC_ZERO_25818,
      IB => clk_div_2_CYMUXF2_25819,
      SEL => clk_div_2_CYSELG_25809,
      O => clk_div_2_CYMUXG2_25820
    );
  clk_div_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X89Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_2_G,
      O => clk_div_2_CYSELG_25809
    );
  clk_div_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_8206,
      O => clk_div_2_SRINV_25807
    );
  clk_div_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => clk_div_2_CLKINV_25806
    );
  clk_div_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X89Y66"
    )
    port map (
      O => clk_div_4_LOGIC_ZERO_25874
    );
  clk_div_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_4_XORF_25901,
      O => clk_div_4_DXMUX_25903
    );
  clk_div_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X89Y66"
    )
    port map (
      I0 => clk_div_4_CYINIT_25900,
      I1 => clk_div_4_F,
      O => clk_div_4_XORF_25901
    );
  clk_div_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X89Y66"
    )
    port map (
      IA => clk_div_4_LOGIC_ZERO_25874,
      IB => clk_div_4_CYINIT_25900,
      SEL => clk_div_4_CYSELF_25880,
      O => Mcount_clk_div_cy(4)
    );
  clk_div_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X89Y66"
    )
    port map (
      IA => clk_div_4_LOGIC_ZERO_25874,
      IB => clk_div_4_LOGIC_ZERO_25874,
      SEL => clk_div_4_CYSELF_25880,
      O => clk_div_4_CYMUXF2_25875
    );
  clk_div_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X89Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_clk_div_cy(3),
      O => clk_div_4_CYINIT_25900
    );
  clk_div_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X89Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_4_F,
      O => clk_div_4_CYSELF_25880
    );
  clk_div_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_4_XORG_25882,
      O => clk_div_4_DYMUX_25884
    );
  clk_div_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X89Y66"
    )
    port map (
      I0 => Mcount_clk_div_cy(4),
      I1 => clk_div_4_G,
      O => clk_div_4_XORG_25882
    );
  clk_div_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_4_CYMUXFAST_25879,
      O => Mcount_clk_div_cy(5)
    );
  clk_div_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X89Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_clk_div_cy(3),
      O => clk_div_4_FASTCARRY_25877
    );
  clk_div_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X89Y66"
    )
    port map (
      I0 => clk_div_4_CYSELG_25865,
      I1 => clk_div_4_CYSELF_25880,
      O => clk_div_4_CYAND_25878
    );
  clk_div_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X89Y66"
    )
    port map (
      IA => clk_div_4_CYMUXG2_25876,
      IB => clk_div_4_FASTCARRY_25877,
      SEL => clk_div_4_CYAND_25878,
      O => clk_div_4_CYMUXFAST_25879
    );
  clk_div_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X89Y66"
    )
    port map (
      IA => clk_div_4_LOGIC_ZERO_25874,
      IB => clk_div_4_CYMUXF2_25875,
      SEL => clk_div_4_CYSELG_25865,
      O => clk_div_4_CYMUXG2_25876
    );
  clk_div_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X89Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_4_G,
      O => clk_div_4_CYSELG_25865
    );
  clk_div_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_8206,
      O => clk_div_4_SRINV_25863
    );
  clk_div_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => clk_div_4_CLKINV_25862
    );
  clk_div_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X89Y67"
    )
    port map (
      O => clk_div_6_LOGIC_ZERO_25930
    );
  clk_div_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_6_XORF_25957,
      O => clk_div_6_DXMUX_25959
    );
  clk_div_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X89Y67"
    )
    port map (
      I0 => clk_div_6_CYINIT_25956,
      I1 => clk_div_6_F,
      O => clk_div_6_XORF_25957
    );
  clk_div_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X89Y67"
    )
    port map (
      IA => clk_div_6_LOGIC_ZERO_25930,
      IB => clk_div_6_CYINIT_25956,
      SEL => clk_div_6_CYSELF_25936,
      O => Mcount_clk_div_cy(6)
    );
  clk_div_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X89Y67"
    )
    port map (
      IA => clk_div_6_LOGIC_ZERO_25930,
      IB => clk_div_6_LOGIC_ZERO_25930,
      SEL => clk_div_6_CYSELF_25936,
      O => clk_div_6_CYMUXF2_25931
    );
  clk_div_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X89Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_clk_div_cy(5),
      O => clk_div_6_CYINIT_25956
    );
  clk_div_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X89Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_6_F,
      O => clk_div_6_CYSELF_25936
    );
  clk_div_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_6_XORG_25938,
      O => clk_div_6_DYMUX_25940
    );
  clk_div_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X89Y67"
    )
    port map (
      I0 => Mcount_clk_div_cy(6),
      I1 => clk_div_6_G,
      O => clk_div_6_XORG_25938
    );
  clk_div_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_6_CYMUXFAST_25935,
      O => Mcount_clk_div_cy(7)
    );
  clk_div_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X89Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_clk_div_cy(5),
      O => clk_div_6_FASTCARRY_25933
    );
  clk_div_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X89Y67"
    )
    port map (
      I0 => clk_div_6_CYSELG_25921,
      I1 => clk_div_6_CYSELF_25936,
      O => clk_div_6_CYAND_25934
    );
  clk_div_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X89Y67"
    )
    port map (
      IA => clk_div_6_CYMUXG2_25932,
      IB => clk_div_6_FASTCARRY_25933,
      SEL => clk_div_6_CYAND_25934,
      O => clk_div_6_CYMUXFAST_25935
    );
  clk_div_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X89Y67"
    )
    port map (
      IA => clk_div_6_LOGIC_ZERO_25930,
      IB => clk_div_6_CYMUXF2_25931,
      SEL => clk_div_6_CYSELG_25921,
      O => clk_div_6_CYMUXG2_25932
    );
  clk_div_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X89Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_6_G,
      O => clk_div_6_CYSELG_25921
    );
  clk_div_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_8206,
      O => clk_div_6_SRINV_25919
    );
  clk_div_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => clk_div_6_CLKINV_25918
    );
  clk_div_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X89Y68"
    )
    port map (
      O => clk_div_8_LOGIC_ZERO_25986
    );
  clk_div_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_8_XORF_26013,
      O => clk_div_8_DXMUX_26015
    );
  clk_div_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X89Y68"
    )
    port map (
      I0 => clk_div_8_CYINIT_26012,
      I1 => clk_div_8_F,
      O => clk_div_8_XORF_26013
    );
  clk_div_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X89Y68"
    )
    port map (
      IA => clk_div_8_LOGIC_ZERO_25986,
      IB => clk_div_8_CYINIT_26012,
      SEL => clk_div_8_CYSELF_25992,
      O => Mcount_clk_div_cy(8)
    );
  clk_div_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X89Y68"
    )
    port map (
      IA => clk_div_8_LOGIC_ZERO_25986,
      IB => clk_div_8_LOGIC_ZERO_25986,
      SEL => clk_div_8_CYSELF_25992,
      O => clk_div_8_CYMUXF2_25987
    );
  clk_div_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X89Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_clk_div_cy(7),
      O => clk_div_8_CYINIT_26012
    );
  clk_div_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X89Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_8_F,
      O => clk_div_8_CYSELF_25992
    );
  clk_div_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_8_XORG_25994,
      O => clk_div_8_DYMUX_25996
    );
  clk_div_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X89Y68"
    )
    port map (
      I0 => Mcount_clk_div_cy(8),
      I1 => clk_div_8_G,
      O => clk_div_8_XORG_25994
    );
  clk_div_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_8_CYMUXFAST_25991,
      O => Mcount_clk_div_cy(9)
    );
  clk_div_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X89Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_clk_div_cy(7),
      O => clk_div_8_FASTCARRY_25989
    );
  clk_div_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X89Y68"
    )
    port map (
      I0 => clk_div_8_CYSELG_25977,
      I1 => clk_div_8_CYSELF_25992,
      O => clk_div_8_CYAND_25990
    );
  clk_div_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X89Y68"
    )
    port map (
      IA => clk_div_8_CYMUXG2_25988,
      IB => clk_div_8_FASTCARRY_25989,
      SEL => clk_div_8_CYAND_25990,
      O => clk_div_8_CYMUXFAST_25991
    );
  clk_div_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X89Y68"
    )
    port map (
      IA => clk_div_8_LOGIC_ZERO_25986,
      IB => clk_div_8_CYMUXF2_25987,
      SEL => clk_div_8_CYSELG_25977,
      O => clk_div_8_CYMUXG2_25988
    );
  clk_div_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X89Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_8_G,
      O => clk_div_8_CYSELG_25977
    );
  clk_div_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_8206,
      O => clk_div_8_SRINV_25975
    );
  clk_div_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => clk_div_8_CLKINV_25974
    );
  clk_div_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X89Y69"
    )
    port map (
      O => clk_div_10_LOGIC_ZERO_26042
    );
  clk_div_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_10_XORF_26069,
      O => clk_div_10_DXMUX_26071
    );
  clk_div_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X89Y69"
    )
    port map (
      I0 => clk_div_10_CYINIT_26068,
      I1 => clk_div_10_F,
      O => clk_div_10_XORF_26069
    );
  clk_div_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X89Y69"
    )
    port map (
      IA => clk_div_10_LOGIC_ZERO_26042,
      IB => clk_div_10_CYINIT_26068,
      SEL => clk_div_10_CYSELF_26048,
      O => Mcount_clk_div_cy(10)
    );
  clk_div_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X89Y69"
    )
    port map (
      IA => clk_div_10_LOGIC_ZERO_26042,
      IB => clk_div_10_LOGIC_ZERO_26042,
      SEL => clk_div_10_CYSELF_26048,
      O => clk_div_10_CYMUXF2_26043
    );
  clk_div_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X89Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_clk_div_cy(9),
      O => clk_div_10_CYINIT_26068
    );
  clk_div_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X89Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_10_F,
      O => clk_div_10_CYSELF_26048
    );
  clk_div_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_10_XORG_26050,
      O => clk_div_10_DYMUX_26052
    );
  clk_div_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X89Y69"
    )
    port map (
      I0 => Mcount_clk_div_cy(10),
      I1 => clk_div_10_G,
      O => clk_div_10_XORG_26050
    );
  clk_div_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_10_CYMUXFAST_26047,
      O => Mcount_clk_div_cy(11)
    );
  clk_div_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X89Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_clk_div_cy(9),
      O => clk_div_10_FASTCARRY_26045
    );
  clk_div_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X89Y69"
    )
    port map (
      I0 => clk_div_10_CYSELG_26033,
      I1 => clk_div_10_CYSELF_26048,
      O => clk_div_10_CYAND_26046
    );
  clk_div_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X89Y69"
    )
    port map (
      IA => clk_div_10_CYMUXG2_26044,
      IB => clk_div_10_FASTCARRY_26045,
      SEL => clk_div_10_CYAND_26046,
      O => clk_div_10_CYMUXFAST_26047
    );
  clk_div_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X89Y69"
    )
    port map (
      IA => clk_div_10_LOGIC_ZERO_26042,
      IB => clk_div_10_CYMUXF2_26043,
      SEL => clk_div_10_CYSELG_26033,
      O => clk_div_10_CYMUXG2_26044
    );
  clk_div_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X89Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_10_G,
      O => clk_div_10_CYSELG_26033
    );
  clk_div_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_8206,
      O => clk_div_10_SRINV_26031
    );
  clk_div_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => clk_div_10_CLKINV_26030
    );
  clk_div_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X89Y70"
    )
    port map (
      O => clk_div_12_LOGIC_ZERO_26098
    );
  clk_div_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_12_XORF_26125,
      O => clk_div_12_DXMUX_26127
    );
  clk_div_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X89Y70"
    )
    port map (
      I0 => clk_div_12_CYINIT_26124,
      I1 => clk_div_12_F,
      O => clk_div_12_XORF_26125
    );
  clk_div_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X89Y70"
    )
    port map (
      IA => clk_div_12_LOGIC_ZERO_26098,
      IB => clk_div_12_CYINIT_26124,
      SEL => clk_div_12_CYSELF_26104,
      O => Mcount_clk_div_cy(12)
    );
  clk_div_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X89Y70"
    )
    port map (
      IA => clk_div_12_LOGIC_ZERO_26098,
      IB => clk_div_12_LOGIC_ZERO_26098,
      SEL => clk_div_12_CYSELF_26104,
      O => clk_div_12_CYMUXF2_26099
    );
  clk_div_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X89Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_clk_div_cy(11),
      O => clk_div_12_CYINIT_26124
    );
  clk_div_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X89Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_12_F,
      O => clk_div_12_CYSELF_26104
    );
  clk_div_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_12_XORG_26106,
      O => clk_div_12_DYMUX_26108
    );
  clk_div_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X89Y70"
    )
    port map (
      I0 => Mcount_clk_div_cy(12),
      I1 => clk_div_12_G,
      O => clk_div_12_XORG_26106
    );
  clk_div_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_12_CYMUXFAST_26103,
      O => Mcount_clk_div_cy(13)
    );
  clk_div_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X89Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_clk_div_cy(11),
      O => clk_div_12_FASTCARRY_26101
    );
  clk_div_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X89Y70"
    )
    port map (
      I0 => clk_div_12_CYSELG_26089,
      I1 => clk_div_12_CYSELF_26104,
      O => clk_div_12_CYAND_26102
    );
  clk_div_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X89Y70"
    )
    port map (
      IA => clk_div_12_CYMUXG2_26100,
      IB => clk_div_12_FASTCARRY_26101,
      SEL => clk_div_12_CYAND_26102,
      O => clk_div_12_CYMUXFAST_26103
    );
  clk_div_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X89Y70"
    )
    port map (
      IA => clk_div_12_LOGIC_ZERO_26098,
      IB => clk_div_12_CYMUXF2_26099,
      SEL => clk_div_12_CYSELG_26089,
      O => clk_div_12_CYMUXG2_26100
    );
  clk_div_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X89Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_12_G,
      O => clk_div_12_CYSELG_26089
    );
  clk_div_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_8206,
      O => clk_div_12_SRINV_26087
    );
  clk_div_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => clk_div_12_CLKINV_26086
    );
  clk_div_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X89Y71"
    )
    port map (
      O => clk_div_14_LOGIC_ZERO_26154
    );
  clk_div_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_14_XORF_26181,
      O => clk_div_14_DXMUX_26183
    );
  clk_div_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X89Y71"
    )
    port map (
      I0 => clk_div_14_CYINIT_26180,
      I1 => clk_div_14_F,
      O => clk_div_14_XORF_26181
    );
  clk_div_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X89Y71"
    )
    port map (
      IA => clk_div_14_LOGIC_ZERO_26154,
      IB => clk_div_14_CYINIT_26180,
      SEL => clk_div_14_CYSELF_26160,
      O => Mcount_clk_div_cy(14)
    );
  clk_div_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X89Y71"
    )
    port map (
      IA => clk_div_14_LOGIC_ZERO_26154,
      IB => clk_div_14_LOGIC_ZERO_26154,
      SEL => clk_div_14_CYSELF_26160,
      O => clk_div_14_CYMUXF2_26155
    );
  clk_div_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X89Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_clk_div_cy(13),
      O => clk_div_14_CYINIT_26180
    );
  clk_div_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X89Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_14_F,
      O => clk_div_14_CYSELF_26160
    );
  clk_div_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_14_XORG_26162,
      O => clk_div_14_DYMUX_26164
    );
  clk_div_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X89Y71"
    )
    port map (
      I0 => Mcount_clk_div_cy(14),
      I1 => clk_div_14_G,
      O => clk_div_14_XORG_26162
    );
  clk_div_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X89Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_clk_div_cy(13),
      O => clk_div_14_FASTCARRY_26157
    );
  clk_div_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X89Y71"
    )
    port map (
      I0 => clk_div_14_CYSELG_26145,
      I1 => clk_div_14_CYSELF_26160,
      O => clk_div_14_CYAND_26158
    );
  clk_div_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X89Y71"
    )
    port map (
      IA => clk_div_14_CYMUXG2_26156,
      IB => clk_div_14_FASTCARRY_26157,
      SEL => clk_div_14_CYAND_26158,
      O => clk_div_14_CYMUXFAST_26159
    );
  clk_div_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X89Y71"
    )
    port map (
      IA => clk_div_14_LOGIC_ZERO_26154,
      IB => clk_div_14_CYMUXF2_26155,
      SEL => clk_div_14_CYSELG_26145,
      O => clk_div_14_CYMUXG2_26156
    );
  clk_div_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X89Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_14_G,
      O => clk_div_14_CYSELG_26145
    );
  clk_div_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_8206,
      O => clk_div_14_SRINV_26143
    );
  clk_div_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => clk_div_14_CLKINV_26142
    );
  clk_div_15 : X_FF
    generic map(
      LOC => "SLICE_X89Y71",
      INIT => '0'
    )
    port map (
      I => clk_div_14_DYMUX_26164,
      CE => VCC,
      CLK => clk_div_14_CLKINV_26142,
      SET => GND,
      RST => clk_div_14_SRINV_26143,
      O => clk_div(15)
    );
  clk_div_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_16_XORF_26207,
      O => clk_div_16_DXMUX_26209
    );
  clk_div_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X89Y72"
    )
    port map (
      I0 => clk_div_16_CYINIT_26206,
      I1 => clk_div_16_rt_26204,
      O => clk_div_16_XORF_26207
    );
  clk_div_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X89Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_div_14_CYMUXFAST_26159,
      O => clk_div_16_CYINIT_26206
    );
  clk_div_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => clk_div_16_CLKINV_26195
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD193",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "IPAD79",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => rst_INBUF
    );
  an_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD99"
    )
    port map (
      I => an_0_O,
      O => an(0)
    );
  an_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD107"
    )
    port map (
      I => an_1_O,
      O => an(1)
    );
  an_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD81"
    )
    port map (
      I => an_2_O,
      O => an(2)
    );
  an_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD93"
    )
    port map (
      I => an_3_O,
      O => an(3)
    );
  sseg_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD123"
    )
    port map (
      I => sseg_0_O,
      O => sseg(0)
    );
  sseg_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD100"
    )
    port map (
      I => sseg_1_O,
      O => sseg(1)
    );
  sseg_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => sseg_2_O,
      O => sseg(2)
    );
  sseg_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => sseg_3_O,
      O => sseg(3)
    );
  sseg_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => sseg_4_O,
      O => sseg(4)
    );
  sseg_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD115"
    )
    port map (
      I => sseg_5_O,
      O => sseg(5)
    );
  sseg_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD105"
    )
    port map (
      I => sseg_6_O,
      O => sseg(6)
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X1Y1"
    )
    port map (
      I0 => clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X1Y1",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X1Y1",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_BUFG_I0_INV
    );
  display_or00004 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X90Y110"
    )
    port map (
      ADR0 => outport(8),
      ADR1 => outport(6),
      ADR2 => outport(7),
      ADR3 => outport(9),
      O => display_or00004_26330
    );
  display_or00004_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y110",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_or00004_26330,
      O => display_or00004_0
    );
  display_or00009_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y117",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_or00009_26342,
      O => display_or00009_0
    );
  display_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y117",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(1),
      O => display_1_DXMUX_26365
    );
  display_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y117",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(0),
      O => display_1_DYMUX_26356
    );
  display_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y117",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_8206,
      O => display_1_SRINV_26354
    );
  display_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y117",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => display_1_CLKINV_26353
    );
  display_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y117",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_or0000_0,
      O => display_1_CEINV_26352
    );
  display_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y114",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(3),
      O => display_3_DXMUX_26393
    );
  display_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y114",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(2),
      O => display_3_DYMUX_26384
    );
  display_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y114",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_8206,
      O => display_3_SRINV_26382
    );
  display_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y114",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => display_3_CLKINV_26381
    );
  display_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y114",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_or0000_0,
      O => display_3_CEINV_26380
    );
  display_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(5),
      O => display_5_DXMUX_26421
    );
  display_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(4),
      O => display_5_DYMUX_26412
    );
  display_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_8206,
      O => display_5_SRINV_26410
    );
  display_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => display_5_CLKINV_26409
    );
  display_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_or0000_0,
      O => display_5_CEINV_26408
    );
  display_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(7),
      O => display_7_DXMUX_26449
    );
  display_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(6),
      O => display_7_DYMUX_26440
    );
  display_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_8206,
      O => display_7_SRINV_26438
    );
  display_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => display_7_CLKINV_26437
    );
  display_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_or0000_0,
      O => display_7_CEINV_26436
    );
  display_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(9),
      O => display_9_DXMUX_26477
    );
  display_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(8),
      O => display_9_DYMUX_26468
    );
  display_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_8206,
      O => display_9_SRINV_26466
    );
  display_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => display_9_CLKINV_26465
    );
  display_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_or0000_0,
      O => display_9_CEINV_26464
    );
  display_or000021_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y116",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_or000021_26494,
      O => display_or000021_0
    );
  display_or0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y115",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_or0000,
      O => display_or0000_0
    );
  display_or0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y115",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_or000026_pack_1,
      O => display_or000026_8282
    );
  display_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y116",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(11),
      O => display_11_DXMUX_26541
    );
  display_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y116",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(10),
      O => display_11_DYMUX_26532
    );
  display_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y116",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_8206,
      O => display_11_SRINV_26530
    );
  display_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y116",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => display_11_CLKINV_26529
    );
  display_11_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y116",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_or0000_0,
      O => display_11_CEINV_26528
    );
  display_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y114",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(13),
      O => display_13_DXMUX_26569
    );
  display_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y114",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(12),
      O => display_13_DYMUX_26560
    );
  display_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y114",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_8206,
      O => display_13_SRINV_26558
    );
  display_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y114",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => display_13_CLKINV_26557
    );
  display_13_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y114",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_or0000_0,
      O => display_13_CEINV_26556
    );
  display_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y110",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(15),
      O => display_15_DXMUX_26597
    );
  display_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y110",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(14),
      O => display_15_DYMUX_26588
    );
  display_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y110",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_8206,
      O => display_15_SRINV_26586
    );
  display_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y110",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => display_15_CLKINV_26585
    );
  display_15_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y110",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_or0000_0,
      O => display_15_CEINV_26584
    );
  Mcount_clk_div_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X89Y64"
    )
    port map (
      ADR0 => clk_div(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Mcount_clk_div_lut(0)
    );
  clk_div_5 : X_FF
    generic map(
      LOC => "SLICE_X89Y66",
      INIT => '0'
    )
    port map (
      I => clk_div_4_DYMUX_25884,
      CE => VCC,
      CLK => clk_div_4_CLKINV_25862,
      SET => GND,
      RST => clk_div_4_SRINV_25863,
      O => clk_div(5)
    );
  clk_div_7 : X_FF
    generic map(
      LOC => "SLICE_X89Y67",
      INIT => '0'
    )
    port map (
      I => clk_div_6_DYMUX_25940,
      CE => VCC,
      CLK => clk_div_6_CLKINV_25918,
      SET => GND,
      RST => clk_div_6_SRINV_25919,
      O => clk_div(7)
    );
  clk_div_9 : X_FF
    generic map(
      LOC => "SLICE_X89Y68",
      INIT => '0'
    )
    port map (
      I => clk_div_8_DYMUX_25996,
      CE => VCC,
      CLK => clk_div_8_CLKINV_25974,
      SET => GND,
      RST => clk_div_8_SRINV_25975,
      O => clk_div(9)
    );
  clk_div_11 : X_FF
    generic map(
      LOC => "SLICE_X89Y69",
      INIT => '0'
    )
    port map (
      I => clk_div_10_DYMUX_26052,
      CE => VCC,
      CLK => clk_div_10_CLKINV_26030,
      SET => GND,
      RST => clk_div_10_SRINV_26031,
      O => clk_div(11)
    );
  clk_div_13 : X_FF
    generic map(
      LOC => "SLICE_X89Y70",
      INIT => '0'
    )
    port map (
      I => clk_div_12_DYMUX_26108,
      CE => VCC,
      CLK => clk_div_12_CLKINV_26086,
      SET => GND,
      RST => clk_div_12_SRINV_26087,
      O => clk_div(13)
    );
  clk_div_1 : X_FF
    generic map(
      LOC => "SLICE_X89Y64",
      INIT => '0'
    )
    port map (
      I => clk_div_0_DYMUX_25769,
      CE => VCC,
      CLK => clk_div_0_CLKINV_25752,
      SET => GND,
      RST => clk_div_0_SRINV_25753,
      O => clk_div(1)
    );
  clk_div_0 : X_FF
    generic map(
      LOC => "SLICE_X89Y64",
      INIT => '0'
    )
    port map (
      I => clk_div_0_DXMUX_25791,
      CE => VCC,
      CLK => clk_div_0_CLKINV_25752,
      SET => GND,
      RST => clk_div_0_SRINV_25753,
      O => clk_div(0)
    );
  clk_div_3 : X_FF
    generic map(
      LOC => "SLICE_X89Y65",
      INIT => '0'
    )
    port map (
      I => clk_div_2_DYMUX_25828,
      CE => VCC,
      CLK => clk_div_2_CLKINV_25806,
      SET => GND,
      RST => clk_div_2_SRINV_25807,
      O => clk_div(3)
    );
  clk_div_2 : X_FF
    generic map(
      LOC => "SLICE_X89Y65",
      INIT => '0'
    )
    port map (
      I => clk_div_2_DXMUX_25847,
      CE => VCC,
      CLK => clk_div_2_CLKINV_25806,
      SET => GND,
      RST => clk_div_2_SRINV_25807,
      O => clk_div(2)
    );
  clk_div_4 : X_FF
    generic map(
      LOC => "SLICE_X89Y66",
      INIT => '0'
    )
    port map (
      I => clk_div_4_DXMUX_25903,
      CE => VCC,
      CLK => clk_div_4_CLKINV_25862,
      SET => GND,
      RST => clk_div_4_SRINV_25863,
      O => clk_div(4)
    );
  clk_div_6 : X_FF
    generic map(
      LOC => "SLICE_X89Y67",
      INIT => '0'
    )
    port map (
      I => clk_div_6_DXMUX_25959,
      CE => VCC,
      CLK => clk_div_6_CLKINV_25918,
      SET => GND,
      RST => clk_div_6_SRINV_25919,
      O => clk_div(6)
    );
  clk_div_8 : X_FF
    generic map(
      LOC => "SLICE_X89Y68",
      INIT => '0'
    )
    port map (
      I => clk_div_8_DXMUX_26015,
      CE => VCC,
      CLK => clk_div_8_CLKINV_25974,
      SET => GND,
      RST => clk_div_8_SRINV_25975,
      O => clk_div(8)
    );
  clk_div_10 : X_FF
    generic map(
      LOC => "SLICE_X89Y69",
      INIT => '0'
    )
    port map (
      I => clk_div_10_DXMUX_26071,
      CE => VCC,
      CLK => clk_div_10_CLKINV_26030,
      SET => GND,
      RST => clk_div_10_SRINV_26031,
      O => clk_div(10)
    );
  clk_div_12 : X_FF
    generic map(
      LOC => "SLICE_X89Y70",
      INIT => '0'
    )
    port map (
      I => clk_div_12_DXMUX_26127,
      CE => VCC,
      CLK => clk_div_12_CLKINV_26086,
      SET => GND,
      RST => clk_div_12_SRINV_26087,
      O => clk_div(12)
    );
  clk_div_14 : X_FF
    generic map(
      LOC => "SLICE_X89Y71",
      INIT => '0'
    )
    port map (
      I => clk_div_14_DXMUX_26183,
      CE => VCC,
      CLK => clk_div_14_CLKINV_26142,
      SET => GND,
      RST => clk_div_14_SRINV_26143,
      O => clk_div(14)
    );
  clk_div_16_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X89Y72"
    )
    port map (
      ADR0 => clk_div(16),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_div_16_rt_26204
    );
  clk_div_16 : X_FF
    generic map(
      LOC => "SLICE_X89Y72",
      INIT => '0'
    )
    port map (
      I => clk_div_16_DXMUX_26209,
      CE => VCC,
      CLK => clk_div_16_CLKINV_26195,
      SET => GND,
      RST => clk_div_16_FFX_RSTAND_26214,
      O => clk_div(16)
    );
  clk_div_16_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X89Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_8206,
      O => clk_div_16_FFX_RSTAND_26214
    );
  rst_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD79",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_INBUF,
      O => rst_IBUF_8206
    );
  display_or00009 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X91Y117"
    )
    port map (
      ADR0 => outport(11),
      ADR1 => outport(10),
      ADR2 => outport(12),
      ADR3 => outport(13),
      O => display_or00009_26342
    );
  display_0 : X_FF
    generic map(
      LOC => "SLICE_X90Y117",
      INIT => '0'
    )
    port map (
      I => display_1_DYMUX_26356,
      CE => display_1_CEINV_26352,
      CLK => display_1_CLKINV_26353,
      SET => GND,
      RST => display_1_SRINV_26354,
      O => display(0)
    );
  display_1 : X_FF
    generic map(
      LOC => "SLICE_X90Y117",
      INIT => '0'
    )
    port map (
      I => display_1_DXMUX_26365,
      CE => display_1_CEINV_26352,
      CLK => display_1_CLKINV_26353,
      SET => GND,
      RST => display_1_SRINV_26354,
      O => display(1)
    );
  display_2 : X_FF
    generic map(
      LOC => "SLICE_X90Y114",
      INIT => '0'
    )
    port map (
      I => display_3_DYMUX_26384,
      CE => display_3_CEINV_26380,
      CLK => display_3_CLKINV_26381,
      SET => GND,
      RST => display_3_SRINV_26382,
      O => display(2)
    );
  display_3 : X_FF
    generic map(
      LOC => "SLICE_X90Y114",
      INIT => '0'
    )
    port map (
      I => display_3_DXMUX_26393,
      CE => display_3_CEINV_26380,
      CLK => display_3_CLKINV_26381,
      SET => GND,
      RST => display_3_SRINV_26382,
      O => display(3)
    );
  display_4 : X_FF
    generic map(
      LOC => "SLICE_X90Y113",
      INIT => '0'
    )
    port map (
      I => display_5_DYMUX_26412,
      CE => display_5_CEINV_26408,
      CLK => display_5_CLKINV_26409,
      SET => GND,
      RST => display_5_SRINV_26410,
      O => display(4)
    );
  display_5 : X_FF
    generic map(
      LOC => "SLICE_X90Y113",
      INIT => '0'
    )
    port map (
      I => display_5_DXMUX_26421,
      CE => display_5_CEINV_26408,
      CLK => display_5_CLKINV_26409,
      SET => GND,
      RST => display_5_SRINV_26410,
      O => display(5)
    );
  display_6 : X_FF
    generic map(
      LOC => "SLICE_X90Y111",
      INIT => '0'
    )
    port map (
      I => display_7_DYMUX_26440,
      CE => display_7_CEINV_26436,
      CLK => display_7_CLKINV_26437,
      SET => GND,
      RST => display_7_SRINV_26438,
      O => display(6)
    );
  display_7 : X_FF
    generic map(
      LOC => "SLICE_X90Y111",
      INIT => '0'
    )
    port map (
      I => display_7_DXMUX_26449,
      CE => display_7_CEINV_26436,
      CLK => display_7_CLKINV_26437,
      SET => GND,
      RST => display_7_SRINV_26438,
      O => display(7)
    );
  display_8 : X_FF
    generic map(
      LOC => "SLICE_X88Y111",
      INIT => '0'
    )
    port map (
      I => display_9_DYMUX_26468,
      CE => display_9_CEINV_26464,
      CLK => display_9_CLKINV_26465,
      SET => GND,
      RST => display_9_SRINV_26466,
      O => display(8)
    );
  display_9 : X_FF
    generic map(
      LOC => "SLICE_X88Y111",
      INIT => '0'
    )
    port map (
      I => display_9_DXMUX_26477,
      CE => display_9_CEINV_26464,
      CLK => display_9_CLKINV_26465,
      SET => GND,
      RST => display_9_SRINV_26466,
      O => display(9)
    );
  display_or000021 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X90Y116"
    )
    port map (
      ADR0 => outport(15),
      ADR1 => outport(1),
      ADR2 => outport(14),
      ADR3 => outport(0),
      O => display_or000021_26494
    );
  display_or000026 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X90Y115"
    )
    port map (
      ADR0 => outport(3),
      ADR1 => outport(4),
      ADR2 => outport(5),
      ADR3 => outport(2),
      O => display_or000026_pack_1
    );
  display_or000036 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X90Y115"
    )
    port map (
      ADR0 => display_or000021_0,
      ADR1 => display_or00004_0,
      ADR2 => display_or000026_8282,
      ADR3 => display_or00009_0,
      O => display_or0000
    );
  display_10 : X_FF
    generic map(
      LOC => "SLICE_X91Y116",
      INIT => '0'
    )
    port map (
      I => display_11_DYMUX_26532,
      CE => display_11_CEINV_26528,
      CLK => display_11_CLKINV_26529,
      SET => GND,
      RST => display_11_SRINV_26530,
      O => display(10)
    );
  display_11 : X_FF
    generic map(
      LOC => "SLICE_X91Y116",
      INIT => '0'
    )
    port map (
      I => display_11_DXMUX_26541,
      CE => display_11_CEINV_26528,
      CLK => display_11_CLKINV_26529,
      SET => GND,
      RST => display_11_SRINV_26530,
      O => display(11)
    );
  display_12 : X_FF
    generic map(
      LOC => "SLICE_X89Y114",
      INIT => '0'
    )
    port map (
      I => display_13_DYMUX_26560,
      CE => display_13_CEINV_26556,
      CLK => display_13_CLKINV_26557,
      SET => GND,
      RST => display_13_SRINV_26558,
      O => display(12)
    );
  display_13 : X_FF
    generic map(
      LOC => "SLICE_X89Y114",
      INIT => '0'
    )
    port map (
      I => display_13_DXMUX_26569,
      CE => display_13_CEINV_26556,
      CLK => display_13_CLKINV_26557,
      SET => GND,
      RST => display_13_SRINV_26558,
      O => display(13)
    );
  display_14 : X_FF
    generic map(
      LOC => "SLICE_X88Y110",
      INIT => '0'
    )
    port map (
      I => display_15_DYMUX_26588,
      CE => display_15_CEINV_26584,
      CLK => display_15_CLKINV_26585,
      SET => GND,
      RST => display_15_SRINV_26586,
      O => display(14)
    );
  display_15 : X_FF
    generic map(
      LOC => "SLICE_X88Y110",
      INIT => '0'
    )
    port map (
      I => display_15_DXMUX_26597,
      CE => display_15_CEINV_26584,
      CLK => display_15_CLKINV_26585,
      SET => GND,
      RST => display_15_SRINV_26586,
      O => display(15)
    );
  clk_div_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X89Y64"
    )
    port map (
      ADR0 => VCC,
      ADR1 => clk_div(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_div_0_G
    );
  clk_div_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X89Y65"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => clk_div(2),
      O => clk_div_2_F
    );
  clk_div_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X89Y65"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => clk_div(3),
      ADR3 => VCC,
      O => clk_div_2_G
    );
  clk_div_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X89Y66"
    )
    port map (
      ADR0 => clk_div(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_div_4_F
    );
  clk_div_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X89Y66"
    )
    port map (
      ADR0 => VCC,
      ADR1 => clk_div(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_div_4_G
    );
  clk_div_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X89Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => clk_div(6),
      O => clk_div_6_F
    );
  clk_div_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X89Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => clk_div(7),
      ADR3 => VCC,
      O => clk_div_6_G
    );
  clk_div_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X89Y68"
    )
    port map (
      ADR0 => clk_div(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_div_8_F
    );
  clk_div_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X89Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => clk_div(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_div_8_G
    );
  clk_div_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X89Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => clk_div(10),
      O => clk_div_10_F
    );
  clk_div_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X89Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => clk_div(11),
      ADR3 => VCC,
      O => clk_div_10_G
    );
  clk_div_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X89Y70"
    )
    port map (
      ADR0 => clk_div(12),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_div_12_F
    );
  clk_div_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X89Y70"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => clk_div(13),
      O => clk_div_12_G
    );
  clk_div_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X89Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => clk_div(14),
      ADR3 => VCC,
      O => clk_div_14_F
    );
  clk_div_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X89Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => clk_div(15),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_div_14_G
    );
  an_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_0_OBUF_8226,
      O => an_0_O
    );
  an_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_1_OBUF_8225,
      O => an_1_O
    );
  an_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_2_OBUF_8224,
      O => an_2_O
    );
  an_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_3_OBUF_8223,
      O => an_3_O
    );
  sseg_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_0_OBUF_8233,
      O => sseg_0_O
    );
  sseg_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_1_OBUF_8232,
      O => sseg_1_O
    );
  sseg_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_2_OBUF_8231,
      O => sseg_2_O
    );
  sseg_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_3_OBUF_8230,
      O => sseg_3_O
    );
  sseg_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_4_OBUF_8229,
      O => sseg_4_O
    );
  sseg_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_5_OBUF_8228,
      O => sseg_5_O
    );
  sseg_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_6_OBUF_8227,
      O => sseg_6_O
    );
  NlwBlock_motherboard_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_motherboard_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

