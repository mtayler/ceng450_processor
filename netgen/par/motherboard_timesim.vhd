--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: motherboard_timesim.vhd
-- /___/   /\     Timestamp: Tue Apr 03 16:31:10 2018
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
  signal clk_BUFGP : STD_LOGIC; 
  signal rst_IBUF_7829 : STD_LOGIC; 
  signal an_3_OBUF_7846 : STD_LOGIC; 
  signal an_2_OBUF_7847 : STD_LOGIC; 
  signal an_1_OBUF_7848 : STD_LOGIC; 
  signal an_0_OBUF_7849 : STD_LOGIC; 
  signal sseg_6_OBUF_7850 : STD_LOGIC; 
  signal sseg_5_OBUF_7851 : STD_LOGIC; 
  signal sseg_4_OBUF_7852 : STD_LOGIC; 
  signal sseg_3_OBUF_7853 : STD_LOGIC; 
  signal sseg_2_OBUF_7854 : STD_LOGIC; 
  signal sseg_1_OBUF_7855 : STD_LOGIC; 
  signal sseg_0_OBUF_7856 : STD_LOGIC; 
  signal display_not000021_0 : STD_LOGIC; 
  signal display_not00004_0 : STD_LOGIC; 
  signal display_not00009_0 : STD_LOGIC; 
  signal display_not000026_7878 : STD_LOGIC; 
  signal display_not0000_0 : STD_LOGIC; 
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
  signal display_not000021_24811 : STD_LOGIC; 
  signal display_not0000 : STD_LOGIC; 
  signal display_not000026_pack_1 : STD_LOGIC; 
  signal display_1_DXMUX_24853 : STD_LOGIC; 
  signal display_1_DYMUX_24847 : STD_LOGIC; 
  signal display_1_CLKINV_24845 : STD_LOGIC; 
  signal display_1_CEINV_24844 : STD_LOGIC; 
  signal display_3_DXMUX_24873 : STD_LOGIC; 
  signal display_3_DYMUX_24867 : STD_LOGIC; 
  signal display_3_CLKINV_24865 : STD_LOGIC; 
  signal display_3_CEINV_24864 : STD_LOGIC; 
  signal display_5_DXMUX_24893 : STD_LOGIC; 
  signal display_5_DYMUX_24887 : STD_LOGIC; 
  signal display_5_CLKINV_24885 : STD_LOGIC; 
  signal display_5_CEINV_24884 : STD_LOGIC; 
  signal display_7_DXMUX_24913 : STD_LOGIC; 
  signal display_7_DYMUX_24907 : STD_LOGIC; 
  signal display_7_CLKINV_24905 : STD_LOGIC; 
  signal display_7_CEINV_24904 : STD_LOGIC; 
  signal display_9_DXMUX_24933 : STD_LOGIC; 
  signal display_9_DYMUX_24927 : STD_LOGIC; 
  signal display_9_CLKINV_24925 : STD_LOGIC; 
  signal display_9_CEINV_24924 : STD_LOGIC; 
  signal display_not00004_24947 : STD_LOGIC; 
  signal display_not00009_24959 : STD_LOGIC; 
  signal display_11_DXMUX_24977 : STD_LOGIC; 
  signal display_11_DYMUX_24971 : STD_LOGIC; 
  signal display_11_CLKINV_24969 : STD_LOGIC; 
  signal display_11_CEINV_24968 : STD_LOGIC; 
  signal display_13_DXMUX_24997 : STD_LOGIC; 
  signal display_13_DYMUX_24991 : STD_LOGIC; 
  signal display_13_CLKINV_24989 : STD_LOGIC; 
  signal display_13_CEINV_24988 : STD_LOGIC; 
  signal display_15_DXMUX_25017 : STD_LOGIC; 
  signal display_15_DYMUX_25011 : STD_LOGIC; 
  signal display_15_CLKINV_25009 : STD_LOGIC; 
  signal display_15_CEINV_25008 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal display : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal outport : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  dc : display_controller
    port map (
      clk => clk_BUFGP,
      reset => rst_IBUF_7829,
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
      an(3) => an_3_OBUF_7846,
      an(2) => an_2_OBUF_7847,
      an(1) => an_1_OBUF_7848,
      an(0) => an_0_OBUF_7849,
      sseg(6) => sseg_6_OBUF_7850,
      sseg(5) => sseg_5_OBUF_7851,
      sseg(4) => sseg_4_OBUF_7852,
      sseg(3) => sseg_3_OBUF_7853,
      sseg(2) => sseg_2_OBUF_7854,
      sseg(1) => sseg_1_OBUF_7855,
      sseg(0) => sseg_0_OBUF_7856
    );
  proc : processor
    port map (
      clk => clk_BUFGP,
      rst => rst_IBUF_7829,
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
  display_not000021_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y112",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_not000021_24811,
      O => display_not000021_0
    );
  display_not0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_not0000,
      O => display_not0000_0
    );
  display_not0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_not000026_pack_1,
      O => display_not000026_7878
    );
  display_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(1),
      O => display_1_DXMUX_24853
    );
  display_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(0),
      O => display_1_DYMUX_24847
    );
  display_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => display_1_CLKINV_24845
    );
  display_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_not0000_0,
      O => display_1_CEINV_24844
    );
  display_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(3),
      O => display_3_DXMUX_24873
    );
  display_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(2),
      O => display_3_DYMUX_24867
    );
  display_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => display_3_CLKINV_24865
    );
  display_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_not0000_0,
      O => display_3_CEINV_24864
    );
  display_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y108",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(5),
      O => display_5_DXMUX_24893
    );
  display_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y108",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(4),
      O => display_5_DYMUX_24887
    );
  display_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y108",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => display_5_CLKINV_24885
    );
  display_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y108",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_not0000_0,
      O => display_5_CEINV_24884
    );
  display_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y109",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(7),
      O => display_7_DXMUX_24913
    );
  display_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y109",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(6),
      O => display_7_DYMUX_24907
    );
  display_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y109",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => display_7_CLKINV_24905
    );
  display_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y109",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_not0000_0,
      O => display_7_CEINV_24904
    );
  display_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y105",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(9),
      O => display_9_DXMUX_24933
    );
  display_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y105",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(8),
      O => display_9_DYMUX_24927
    );
  display_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y105",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => display_9_CLKINV_24925
    );
  display_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y105",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_not0000_0,
      O => display_9_CEINV_24924
    );
  display_not00004_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y105",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_not00004_24947,
      O => display_not00004_0
    );
  display_not00009_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y109",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_not00009_24959,
      O => display_not00009_0
    );
  display_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y112",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(11),
      O => display_11_DXMUX_24977
    );
  display_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y112",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(10),
      O => display_11_DYMUX_24971
    );
  display_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y112",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => display_11_CLKINV_24969
    );
  display_11_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y112",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_not0000_0,
      O => display_11_CEINV_24968
    );
  display_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(13),
      O => display_13_DXMUX_24997
    );
  display_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(12),
      O => display_13_DYMUX_24991
    );
  display_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => display_13_CLKINV_24989
    );
  display_13_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_not0000_0,
      O => display_13_CEINV_24988
    );
  display_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(15),
      O => display_15_DXMUX_25017
    );
  display_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport(14),
      O => display_15_DYMUX_25011
    );
  display_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => display_15_CLKINV_25009
    );
  display_15_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => display_not0000_0,
      O => display_15_CEINV_25008
    );
  rst_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD79",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_INBUF,
      O => rst_IBUF_7829
    );
  display_not000021 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X89Y112"
    )
    port map (
      ADR0 => outport(14),
      ADR1 => outport(0),
      ADR2 => outport(1),
      ADR3 => outport(15),
      O => display_not000021_24811
    );
  display_not000026 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X88Y111"
    )
    port map (
      ADR0 => outport(12),
      ADR1 => outport(13),
      ADR2 => outport(11),
      ADR3 => outport(10),
      O => display_not000026_pack_1
    );
  display_not000036 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X88Y111"
    )
    port map (
      ADR0 => display_not00004_0,
      ADR1 => display_not000021_0,
      ADR2 => display_not000026_7878,
      ADR3 => display_not00009_0,
      O => display_not0000
    );
  display_0 : X_FF
    generic map(
      LOC => "SLICE_X91Y113",
      INIT => '0'
    )
    port map (
      I => display_1_DYMUX_24847,
      CE => display_1_CEINV_24844,
      CLK => display_1_CLKINV_24845,
      SET => GND,
      RST => GND,
      O => display(0)
    );
  display_1 : X_FF
    generic map(
      LOC => "SLICE_X91Y113",
      INIT => '0'
    )
    port map (
      I => display_1_DXMUX_24853,
      CE => display_1_CEINV_24844,
      CLK => display_1_CLKINV_24845,
      SET => GND,
      RST => GND,
      O => display(1)
    );
  display_2 : X_FF
    generic map(
      LOC => "SLICE_X91Y111",
      INIT => '0'
    )
    port map (
      I => display_3_DYMUX_24867,
      CE => display_3_CEINV_24864,
      CLK => display_3_CLKINV_24865,
      SET => GND,
      RST => GND,
      O => display(2)
    );
  display_3 : X_FF
    generic map(
      LOC => "SLICE_X91Y111",
      INIT => '0'
    )
    port map (
      I => display_3_DXMUX_24873,
      CE => display_3_CEINV_24864,
      CLK => display_3_CLKINV_24865,
      SET => GND,
      RST => GND,
      O => display(3)
    );
  display_4 : X_FF
    generic map(
      LOC => "SLICE_X91Y108",
      INIT => '0'
    )
    port map (
      I => display_5_DYMUX_24887,
      CE => display_5_CEINV_24884,
      CLK => display_5_CLKINV_24885,
      SET => GND,
      RST => GND,
      O => display(4)
    );
  display_5 : X_FF
    generic map(
      LOC => "SLICE_X91Y108",
      INIT => '0'
    )
    port map (
      I => display_5_DXMUX_24893,
      CE => display_5_CEINV_24884,
      CLK => display_5_CLKINV_24885,
      SET => GND,
      RST => GND,
      O => display(5)
    );
  display_6 : X_FF
    generic map(
      LOC => "SLICE_X89Y109",
      INIT => '0'
    )
    port map (
      I => display_7_DYMUX_24907,
      CE => display_7_CEINV_24904,
      CLK => display_7_CLKINV_24905,
      SET => GND,
      RST => GND,
      O => display(6)
    );
  display_7 : X_FF
    generic map(
      LOC => "SLICE_X89Y109",
      INIT => '0'
    )
    port map (
      I => display_7_DXMUX_24913,
      CE => display_7_CEINV_24904,
      CLK => display_7_CLKINV_24905,
      SET => GND,
      RST => GND,
      O => display(7)
    );
  display_8 : X_FF
    generic map(
      LOC => "SLICE_X79Y105",
      INIT => '0'
    )
    port map (
      I => display_9_DYMUX_24927,
      CE => display_9_CEINV_24924,
      CLK => display_9_CLKINV_24925,
      SET => GND,
      RST => GND,
      O => display(8)
    );
  display_9 : X_FF
    generic map(
      LOC => "SLICE_X79Y105",
      INIT => '0'
    )
    port map (
      I => display_9_DXMUX_24933,
      CE => display_9_CEINV_24924,
      CLK => display_9_CLKINV_24925,
      SET => GND,
      RST => GND,
      O => display(9)
    );
  display_not00004 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X88Y105"
    )
    port map (
      ADR0 => outport(6),
      ADR1 => outport(8),
      ADR2 => outport(9),
      ADR3 => outport(7),
      O => display_not00004_24947
    );
  display_not00009 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X91Y109"
    )
    port map (
      ADR0 => outport(3),
      ADR1 => outport(2),
      ADR2 => outport(4),
      ADR3 => outport(5),
      O => display_not00009_24959
    );
  display_10 : X_FF
    generic map(
      LOC => "SLICE_X90Y112",
      INIT => '0'
    )
    port map (
      I => display_11_DYMUX_24971,
      CE => display_11_CEINV_24968,
      CLK => display_11_CLKINV_24969,
      SET => GND,
      RST => GND,
      O => display(10)
    );
  display_11 : X_FF
    generic map(
      LOC => "SLICE_X90Y112",
      INIT => '0'
    )
    port map (
      I => display_11_DXMUX_24977,
      CE => display_11_CEINV_24968,
      CLK => display_11_CLKINV_24969,
      SET => GND,
      RST => GND,
      O => display(11)
    );
  display_12 : X_FF
    generic map(
      LOC => "SLICE_X90Y111",
      INIT => '0'
    )
    port map (
      I => display_13_DYMUX_24991,
      CE => display_13_CEINV_24988,
      CLK => display_13_CLKINV_24989,
      SET => GND,
      RST => GND,
      O => display(12)
    );
  display_13 : X_FF
    generic map(
      LOC => "SLICE_X90Y111",
      INIT => '0'
    )
    port map (
      I => display_13_DXMUX_24997,
      CE => display_13_CEINV_24988,
      CLK => display_13_CLKINV_24989,
      SET => GND,
      RST => GND,
      O => display(13)
    );
  display_14 : X_FF
    generic map(
      LOC => "SLICE_X90Y113",
      INIT => '0'
    )
    port map (
      I => display_15_DYMUX_25011,
      CE => display_15_CEINV_25008,
      CLK => display_15_CLKINV_25009,
      SET => GND,
      RST => GND,
      O => display(14)
    );
  display_15 : X_FF
    generic map(
      LOC => "SLICE_X90Y113",
      INIT => '0'
    )
    port map (
      I => display_15_DXMUX_25017,
      CE => display_15_CEINV_25008,
      CLK => display_15_CLKINV_25009,
      SET => GND,
      RST => GND,
      O => display(15)
    );
  an_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_0_OBUF_7849,
      O => an_0_O
    );
  an_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_1_OBUF_7848,
      O => an_1_O
    );
  an_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_2_OBUF_7847,
      O => an_2_O
    );
  an_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_3_OBUF_7846,
      O => an_3_O
    );
  sseg_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_0_OBUF_7856,
      O => sseg_0_O
    );
  sseg_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_1_OBUF_7855,
      O => sseg_1_O
    );
  sseg_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_2_OBUF_7854,
      O => sseg_2_O
    );
  sseg_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_3_OBUF_7853,
      O => sseg_3_O
    );
  sseg_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_4_OBUF_7852,
      O => sseg_4_O
    );
  sseg_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_5_OBUF_7851,
      O => sseg_5_O
    );
  sseg_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 555 ps
    )
    port map (
      I => sseg_6_OBUF_7850,
      O => sseg_6_O
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

