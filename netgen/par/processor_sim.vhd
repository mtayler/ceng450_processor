--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: processor_sim.vhd
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
-- Module Name	: processor
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

entity processor is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    inport : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    outport : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end processor;

architecture Structure of processor is
  component ROM_VHDL
    port (
      clk : in STD_LOGIC := 'X'; 
      addr : in STD_LOGIC_VECTOR ( 6 downto 0 ); 
      data : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
    );
  end component;
  component ram
    port (
      clk : in STD_LOGIC := 'X'; 
      addr : in STD_LOGIC_VECTOR ( 11 downto 0 ); 
      din : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
      we : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
      dout : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
    );
  end component;
  component register_file
    port (
      clk : in STD_LOGIC := 'X'; 
      rst : in STD_LOGIC := 'X'; 
      wr_overflow : in STD_LOGIC := 'X'; 
      wr_enable : in STD_LOGIC := 'X'; 
      rd_index1 : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
      rd_index2 : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
      wr_data : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
      wr_index : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
      wr_overflow_data : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
      rd_data1 : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
      rd_data2 : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
    );
  end component;
  component alu
    port (
      clk : in STD_LOGIC := 'X'; 
      rst : in STD_LOGIC := 'X'; 
      z_flag : out STD_LOGIC; 
      n_flag : out STD_LOGIC; 
      alu_mode : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
      in1 : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
      in2 : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
      result : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
      overflow : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
    );
  end component;
  signal ram_wr_enable_0_0 : STD_LOGIC; 
  signal wr_overflow_0 : STD_LOGIC; 
  signal wr_enable_0 : STD_LOGIC; 
  signal rd_index1_2_0 : STD_LOGIC; 
  signal rd_index1_1_0 : STD_LOGIC; 
  signal rd_index1_0_0 : STD_LOGIC; 
  signal rd_index2_2_0 : STD_LOGIC; 
  signal rd_index2_1_0 : STD_LOGIC; 
  signal rd_index2_0_0 : STD_LOGIC; 
  signal reg_EX_result_15_7500 : STD_LOGIC; 
  signal reg_EX_result_14_7501 : STD_LOGIC; 
  signal reg_EX_result_13_7502 : STD_LOGIC; 
  signal reg_EX_result_12_7503 : STD_LOGIC; 
  signal reg_EX_result_11_7504 : STD_LOGIC; 
  signal reg_EX_result_10_7505 : STD_LOGIC; 
  signal reg_EX_result_9_7506 : STD_LOGIC; 
  signal reg_EX_result_8_7507 : STD_LOGIC; 
  signal reg_EX_result_7_7508 : STD_LOGIC; 
  signal reg_EX_result_6_7509 : STD_LOGIC; 
  signal reg_EX_result_5_7510 : STD_LOGIC; 
  signal reg_EX_result_4_7511 : STD_LOGIC; 
  signal reg_EX_result_3_7512 : STD_LOGIC; 
  signal reg_EX_result_2_7513 : STD_LOGIC; 
  signal reg_EX_result_1_7514 : STD_LOGIC; 
  signal reg_EX_result_0_7515 : STD_LOGIC; 
  signal wr_index_2_0 : STD_LOGIC; 
  signal wr_index_1_0 : STD_LOGIC; 
  signal wr_index_0_0 : STD_LOGIC; 
  signal wr_overflow_data_15_0 : STD_LOGIC; 
  signal wr_overflow_data_14_0 : STD_LOGIC; 
  signal wr_overflow_data_13_0 : STD_LOGIC; 
  signal wr_overflow_data_12_0 : STD_LOGIC; 
  signal wr_overflow_data_11_0 : STD_LOGIC; 
  signal wr_overflow_data_10_0 : STD_LOGIC; 
  signal wr_overflow_data_9_0 : STD_LOGIC; 
  signal wr_overflow_data_8_0 : STD_LOGIC; 
  signal wr_overflow_data_7_0 : STD_LOGIC; 
  signal wr_overflow_data_6_0 : STD_LOGIC; 
  signal wr_overflow_data_5_0 : STD_LOGIC; 
  signal wr_overflow_data_4_0 : STD_LOGIC; 
  signal wr_overflow_data_3_0 : STD_LOGIC; 
  signal wr_overflow_data_2_0 : STD_LOGIC; 
  signal wr_overflow_data_1_0 : STD_LOGIC; 
  signal wr_overflow_data_0_0 : STD_LOGIC; 
  signal alu_mode_2_0 : STD_LOGIC; 
  signal alu_mode_1_0 : STD_LOGIC; 
  signal alu_mode_0_0 : STD_LOGIC; 
  signal in1_15_0 : STD_LOGIC; 
  signal in1_14_0 : STD_LOGIC; 
  signal in1_13_0 : STD_LOGIC; 
  signal in1_12_0 : STD_LOGIC; 
  signal in1_11_0 : STD_LOGIC; 
  signal in1_10_0 : STD_LOGIC; 
  signal in1_9_0 : STD_LOGIC; 
  signal in1_8_0 : STD_LOGIC; 
  signal in1_7_0 : STD_LOGIC; 
  signal in1_6_0 : STD_LOGIC; 
  signal in1_5_0 : STD_LOGIC; 
  signal in1_4_0 : STD_LOGIC; 
  signal in1_3_0 : STD_LOGIC; 
  signal in1_2_0 : STD_LOGIC; 
  signal in1_1_0 : STD_LOGIC; 
  signal in1_0_0 : STD_LOGIC; 
  signal z_flag : STD_LOGIC; 
  signal n_flag : STD_LOGIC; 
  signal reg_ID_instr_9_7636 : STD_LOGIC; 
  signal reg_EX_overflow_10_7637 : STD_LOGIC; 
  signal ram_addr_and0000_0 : STD_LOGIC; 
  signal in1_and0003_0 : STD_LOGIC; 
  signal N256_0 : STD_LOGIC; 
  signal in2_and0002_0 : STD_LOGIC; 
  signal N232_0 : STD_LOGIC; 
  signal reg_EX_overflow_11_7643 : STD_LOGIC; 
  signal N254_0 : STD_LOGIC; 
  signal N230_0 : STD_LOGIC; 
  signal reg_ID_instr_11_7646 : STD_LOGIC; 
  signal reg_ID_instr_10_7647 : STD_LOGIC; 
  signal reg_EX_instr_6_7648 : STD_LOGIC; 
  signal reg_ID_instr_0_7649 : STD_LOGIC; 
  signal N288 : STD_LOGIC; 
  signal in2_and000221_0 : STD_LOGIC; 
  signal N300_0 : STD_LOGIC; 
  signal in2_and000552_0 : STD_LOGIC; 
  signal reg_EX_overflow_0_7655 : STD_LOGIC; 
  signal N297_0 : STD_LOGIC; 
  signal reg_EX_overflow_1_7658 : STD_LOGIC; 
  signal N294_0 : STD_LOGIC; 
  signal reg_EX_overflow_2_7661 : STD_LOGIC; 
  signal N291_0 : STD_LOGIC; 
  signal reg_EX_overflow_3_7664 : STD_LOGIC; 
  signal in2_and0005_0 : STD_LOGIC; 
  signal reg_EX_overflow_4_7666 : STD_LOGIC; 
  signal reg_ID_data2_4_7667 : STD_LOGIC; 
  signal reg_EX_overflow_5_7668 : STD_LOGIC; 
  signal reg_ID_data2_5_7669 : STD_LOGIC; 
  signal reg_EX_overflow_6_7670 : STD_LOGIC; 
  signal reg_ID_data2_6_7671 : STD_LOGIC; 
  signal reg_EX_overflow_7_7672 : STD_LOGIC; 
  signal reg_ID_data2_7_7673 : STD_LOGIC; 
  signal reg_EX_overflow_8_7674 : STD_LOGIC; 
  signal reg_ID_data2_8_7675 : STD_LOGIC; 
  signal reg_EX_overflow_9_7676 : STD_LOGIC; 
  signal reg_ID_data2_9_7677 : STD_LOGIC; 
  signal N234_0 : STD_LOGIC; 
  signal N280 : STD_LOGIC; 
  signal N236_0 : STD_LOGIC; 
  signal N278 : STD_LOGIC; 
  signal N238_0 : STD_LOGIC; 
  signal N276 : STD_LOGIC; 
  signal N246_0 : STD_LOGIC; 
  signal N274 : STD_LOGIC; 
  signal N244_0 : STD_LOGIC; 
  signal N228_0 : STD_LOGIC; 
  signal N242_0 : STD_LOGIC; 
  signal N226_0 : STD_LOGIC; 
  signal N240_0 : STD_LOGIC; 
  signal N224_0 : STD_LOGIC; 
  signal N252_0 : STD_LOGIC; 
  signal N222_0 : STD_LOGIC; 
  signal N250_0 : STD_LOGIC; 
  signal N220_0 : STD_LOGIC; 
  signal N248_0 : STD_LOGIC; 
  signal N218_0 : STD_LOGIC; 
  signal reg_ID_data2_10_7698 : STD_LOGIC; 
  signal reg_ID_data2_11_7699 : STD_LOGIC; 
  signal reg_EX_overflow_12_7700 : STD_LOGIC; 
  signal reg_ID_data2_12_7701 : STD_LOGIC; 
  signal reg_EX_overflow_13_7702 : STD_LOGIC; 
  signal reg_ID_data2_13_7703 : STD_LOGIC; 
  signal reg_EX_overflow_14_7704 : STD_LOGIC; 
  signal reg_ID_data2_14_7705 : STD_LOGIC; 
  signal reg_EX_overflow_15_7706 : STD_LOGIC; 
  signal reg_ID_data2_15_7707 : STD_LOGIC; 
  signal reg_ID_data2_0_7708 : STD_LOGIC; 
  signal in1_cmp_eq0014_0 : STD_LOGIC; 
  signal N379_0 : STD_LOGIC; 
  signal reg_ID_data2_1_7711 : STD_LOGIC; 
  signal N377_0 : STD_LOGIC; 
  signal reg_ID_data2_2_7713 : STD_LOGIC; 
  signal N375_0 : STD_LOGIC; 
  signal reg_ID_data2_3_7715 : STD_LOGIC; 
  signal N373_0 : STD_LOGIC; 
  signal in1_cmp_eq0013_0 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_10_SW2_O_0 : STD_LOGIC; 
  signal reg_ID_instr_8_7719 : STD_LOGIC; 
  signal reg_ID_instr_2_7720 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_11_SW2_O_0 : STD_LOGIC; 
  signal reg_ID_instr_3_7722 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_12_SW0_O_0 : STD_LOGIC; 
  signal reg_ID_instr_4_7724 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_13_SW0_O_0 : STD_LOGIC; 
  signal reg_ID_instr_5_7726 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_14_SW0_O_0 : STD_LOGIC; 
  signal reg_ID_instr_6_7728 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_15_SW0_O_0 : STD_LOGIC; 
  signal reg_ID_instr_7_7730 : STD_LOGIC; 
  signal branch_trigger_cmp_eq0002_0 : STD_LOGIC; 
  signal reg_EX_instr_10_7732 : STD_LOGIC; 
  signal reg_EX_instr_11_7733 : STD_LOGIC; 
  signal reg_EX_instr_9_7734 : STD_LOGIC; 
  signal N96_0 : STD_LOGIC; 
  signal rd_index1_or0003_0 : STD_LOGIC; 
  signal rd_index1_or0004_0 : STD_LOGIC; 
  signal reg_IF_instr_3_7738 : STD_LOGIC; 
  signal reg_IF_instr_6_7739 : STD_LOGIC; 
  signal reg_IF_instr_9_7740 : STD_LOGIC; 
  signal N16_0 : STD_LOGIC; 
  signal reg_IF_instr_10_7742 : STD_LOGIC; 
  signal rd_index1_or0006_0 : STD_LOGIC; 
  signal N13_0 : STD_LOGIC; 
  signal reg_ID_instr_15_7745 : STD_LOGIC; 
  signal reg_ID_instr_13_7746 : STD_LOGIC; 
  signal N102_0 : STD_LOGIC; 
  signal in1_or0009_0 : STD_LOGIC; 
  signal wr_enable_or000185_0 : STD_LOGIC; 
  signal reg_EX_instr_13_7750 : STD_LOGIC; 
  signal in1_or0003_SW0_O_0 : STD_LOGIC; 
  signal reg_EX_instr_12_7752 : STD_LOGIC; 
  signal reg_EX_instr_14_7753 : STD_LOGIC; 
  signal reg_EX_instr_15_7754 : STD_LOGIC; 
  signal in1_or0003_0 : STD_LOGIC; 
  signal reg_ID_data1_0_7756 : STD_LOGIC; 
  signal in1_and0007101_0 : STD_LOGIC; 
  signal reg_ID_data1_1_7758 : STD_LOGIC; 
  signal reg_ID_data1_2_7759 : STD_LOGIC; 
  signal reg_ID_data1_3_7760 : STD_LOGIC; 
  signal reg_ID_data1_4_7761 : STD_LOGIC; 
  signal reg_ID_data1_5_7762 : STD_LOGIC; 
  signal reg_ID_data1_6_7763 : STD_LOGIC; 
  signal reg_ID_data1_7_7764 : STD_LOGIC; 
  signal reg_ID_data1_8_7765 : STD_LOGIC; 
  signal reg_ID_data1_9_7766 : STD_LOGIC; 
  signal wr_enable_or000181_0 : STD_LOGIC; 
  signal wr_enable_or000160_0 : STD_LOGIC; 
  signal wr_enable_or000134_0 : STD_LOGIC; 
  signal N88_0 : STD_LOGIC; 
  signal reg_ID_instr_12_7771 : STD_LOGIC; 
  signal reg_ID_instr_14_7772 : STD_LOGIC; 
  signal in1_and0008_0 : STD_LOGIC; 
  signal in1_or00091_SW0_O_0 : STD_LOGIC; 
  signal wr_overflow_or000031_0 : STD_LOGIC; 
  signal wr_overflow_or000017_0 : STD_LOGIC; 
  signal wr_overflow_or000034_SW0_O_0 : STD_LOGIC; 
  signal reg_ID_data1_10_7778 : STD_LOGIC; 
  signal reg_ID_data1_11_7779 : STD_LOGIC; 
  signal in1_12_SW2_O_0 : STD_LOGIC; 
  signal reg_ID_data1_12_7781 : STD_LOGIC; 
  signal in1_13_SW2_O_0 : STD_LOGIC; 
  signal reg_ID_data1_13_7783 : STD_LOGIC; 
  signal in1_14_SW2_O_0 : STD_LOGIC; 
  signal reg_ID_data1_14_7785 : STD_LOGIC; 
  signal in1_15_SW2_O_0 : STD_LOGIC; 
  signal reg_ID_data1_15_7787 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_146_0 : STD_LOGIC; 
  signal reg_IF_instr_11_7789 : STD_LOGIC; 
  signal reg_IF_instr_15_7790 : STD_LOGIC; 
  signal reg_IF_instr_14_7791 : STD_LOGIC; 
  signal reg_IF_instr_13_7792 : STD_LOGIC; 
  signal reg_IF_instr_12_7793 : STD_LOGIC; 
  signal N11_0 : STD_LOGIC; 
  signal alu_mode_0_4_O_0 : STD_LOGIC; 
  signal alu_mode_0_15_0 : STD_LOGIC; 
  signal N15_0 : STD_LOGIC; 
  signal in1_and000772_0 : STD_LOGIC; 
  signal in1_or0008_0 : STD_LOGIC; 
  signal in1_and000728_O_0 : STD_LOGIC; 
  signal in1_and00075_0 : STD_LOGIC; 
  signal in1_and000710_0 : STD_LOGIC; 
  signal in2_and00028_0 : STD_LOGIC; 
  signal in2_and00025_0 : STD_LOGIC; 
  signal rd_index1_or0005_0 : STD_LOGIC; 
  signal rd_index1_or000629_0 : STD_LOGIC; 
  signal rd_index1_or000638_0 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_0_SW2_O_0 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_1_SW2_O_0 : STD_LOGIC; 
  signal reg_ID_instr_1_7810 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_2_SW2_O_0 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_3_SW2_O_0 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_4_SW2_O_0 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_5_SW2_O_0 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_6_SW2_O_0 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_7_SW2_O_0 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_8_SW2_O_0 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_9_SW2_O_0 : STD_LOGIC; 
  signal alu_mode_0_1_SW0_O_0 : STD_LOGIC; 
  signal in1_and000312_0 : STD_LOGIC; 
  signal in1_and000318_SW0_O_0 : STD_LOGIC; 
  signal N282_0 : STD_LOGIC; 
  signal N268_0 : STD_LOGIC; 
  signal in1_and000771_O_0 : STD_LOGIC; 
  signal reg_EX_instr_7_7825 : STD_LOGIC; 
  signal reg_EX_instr_8_7826 : STD_LOGIC; 
  signal in1_cmp_eq00131_SW0_O_0 : STD_LOGIC; 
  signal in1_cmp_eq00143_SW0_O_0 : STD_LOGIC; 
  signal in1_or000821_O_0 : STD_LOGIC; 
  signal in1_or000829_0 : STD_LOGIC; 
  signal in1_or000892_0 : STD_LOGIC; 
  signal in1_or000861_O_0 : STD_LOGIC; 
  signal in1_and0008_SW3_O_0 : STD_LOGIC; 
  signal branch_trigger_0 : STD_LOGIC; 
  signal reg_IF_instr_1_7835 : STD_LOGIC; 
  signal reg_IF_instr_0_7836 : STD_LOGIC; 
  signal reg_IF_instr_2_7837 : STD_LOGIC; 
  signal reg_IF_instr_5_7838 : STD_LOGIC; 
  signal reg_IF_instr_4_7839 : STD_LOGIC; 
  signal reg_IF_instr_7_7840 : STD_LOGIC; 
  signal reg_IF_instr_8_7841 : STD_LOGIC; 
  signal N35_0 : STD_LOGIC; 
  signal N31_0 : STD_LOGIC; 
  signal N29_0 : STD_LOGIC; 
  signal Madd_PC_next_addsub0000_cy_3_0 : STD_LOGIC; 
  signal outport_cmp_eq0000_0 : STD_LOGIC; 
  signal N33_0 : STD_LOGIC; 
  signal in1_cmp_eq0008_0 : STD_LOGIC; 
  signal N22_0 : STD_LOGIC; 
  signal reg_IF_inport_11_7850 : STD_LOGIC; 
  signal N02_0 : STD_LOGIC; 
  signal reg_IF_inport_10_7852 : STD_LOGIC; 
  signal reg_IF_inport_13_7853 : STD_LOGIC; 
  signal reg_IF_inport_12_7854 : STD_LOGIC; 
  signal reg_IF_inport_15_7855 : STD_LOGIC; 
  signal reg_IF_inport_14_7856 : STD_LOGIC; 
  signal N18_0 : STD_LOGIC; 
  signal N2_0 : STD_LOGIC; 
  signal N95_0 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_1_6_0 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_0_6_0 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_3_6_0 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_2_6_0 : STD_LOGIC; 
  signal N151_0 : STD_LOGIC; 
  signal N131_0 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_5_6_0 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_4_6_0 : STD_LOGIC; 
  signal N191_0 : STD_LOGIC; 
  signal N17_0 : STD_LOGIC; 
  signal reg_IF_inport_7_7870 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_6_6_0 : STD_LOGIC; 
  signal reg_IF_inport_8_7872 : STD_LOGIC; 
  signal N23_0 : STD_LOGIC; 
  signal N211_0 : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal N19_0 : STD_LOGIC; 
  signal N1011_0 : STD_LOGIC; 
  signal N5_0 : STD_LOGIC; 
  signal rd_index1_or0007_0 : STD_LOGIC; 
  signal N8_0 : STD_LOGIC; 
  signal or0000_0_or0000_0 : STD_LOGIC; 
  signal N21_0 : STD_LOGIC; 
  signal reg_EX_n_flag_7883 : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal N811_0 : STD_LOGIC; 
  signal N9_0 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_13_0 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_2_0 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_11_13_0 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_11_2_0 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_7_0 : STD_LOGIC; 
  signal reg_EX_z_flag_7892 : STD_LOGIC; 
  signal N7_0 : STD_LOGIC; 
  signal N388_0 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_120_0 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_134_0 : STD_LOGIC; 
  signal reg_IF_inport_9_7897 : STD_LOGIC; 
  signal reg_IF_inport_1_7898 : STD_LOGIC; 
  signal reg_IF_inport_0_7899 : STD_LOGIC; 
  signal reg_IF_inport_3_7900 : STD_LOGIC; 
  signal reg_IF_inport_2_7901 : STD_LOGIC; 
  signal reg_IF_inport_5_7902 : STD_LOGIC; 
  signal reg_IF_inport_4_7903 : STD_LOGIC; 
  signal reg_IF_inport_6_7904 : STD_LOGIC; 
  signal N38_0 : STD_LOGIC; 
  signal reg_EX_PC_0_7906 : STD_LOGIC; 
  signal reg_EX_PC_1_7907 : STD_LOGIC; 
  signal reg_EX_PC_2_7908 : STD_LOGIC; 
  signal reg_EX_PC_3_7909 : STD_LOGIC; 
  signal reg_EX_PC_4_7910 : STD_LOGIC; 
  signal reg_EX_PC_5_7911 : STD_LOGIC; 
  signal reg_EX_PC_6_7912 : STD_LOGIC; 
  signal N37_0 : STD_LOGIC; 
  signal N01_0 : STD_LOGIC; 
  signal N25_0 : STD_LOGIC; 
  signal reg_IF_PC_0_7916 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_0_0_0 : STD_LOGIC; 
  signal reg_IF_PC_1_7918 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_1_0_0 : STD_LOGIC; 
  signal reg_IF_PC_2_7920 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_2_0_0 : STD_LOGIC; 
  signal reg_IF_PC_3_7922 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_3_0_0 : STD_LOGIC; 
  signal reg_IF_PC_4_7924 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_4_0_0 : STD_LOGIC; 
  signal reg_IF_PC_5_7926 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_5_0_0 : STD_LOGIC; 
  signal reg_IF_PC_6_7928 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_6_0_0 : STD_LOGIC; 
  signal in2_and000536_0 : STD_LOGIC; 
  signal reg_ID_PC_1_7931 : STD_LOGIC; 
  signal reg_ID_PC_0_7932 : STD_LOGIC; 
  signal reg_ID_PC_3_7933 : STD_LOGIC; 
  signal reg_ID_PC_2_7934 : STD_LOGIC; 
  signal reg_ID_PC_5_7935 : STD_LOGIC; 
  signal reg_ID_PC_4_7936 : STD_LOGIC; 
  signal reg_ID_PC_6_7937 : STD_LOGIC; 
  signal inport_0_INBUF : STD_LOGIC; 
  signal inport_1_INBUF : STD_LOGIC; 
  signal inport_2_INBUF : STD_LOGIC; 
  signal inport_3_INBUF : STD_LOGIC; 
  signal inport_4_INBUF : STD_LOGIC; 
  signal inport_5_INBUF : STD_LOGIC; 
  signal inport_6_INBUF : STD_LOGIC; 
  signal inport_7_INBUF : STD_LOGIC; 
  signal inport_8_INBUF : STD_LOGIC; 
  signal inport_9_INBUF : STD_LOGIC; 
  signal inport_10_INBUF : STD_LOGIC; 
  signal inport_11_INBUF : STD_LOGIC; 
  signal inport_12_INBUF : STD_LOGIC; 
  signal inport_13_INBUF : STD_LOGIC; 
  signal inport_14_INBUF : STD_LOGIC; 
  signal inport_15_INBUF : STD_LOGIC; 
  signal proc_ram_addr_10_F5MUX_19265 : STD_LOGIC; 
  signal N369 : STD_LOGIC; 
  signal proc_ram_addr_10_BXINV_19258 : STD_LOGIC; 
  signal N368 : STD_LOGIC; 
  signal proc_ram_addr_11_F5MUX_19290 : STD_LOGIC; 
  signal N367 : STD_LOGIC; 
  signal proc_ram_addr_11_BXINV_19283 : STD_LOGIC; 
  signal N366 : STD_LOGIC; 
  signal proc_N288_F5MUX_19315 : STD_LOGIC; 
  signal N371 : STD_LOGIC; 
  signal proc_N288_BXINV_19308 : STD_LOGIC; 
  signal N370 : STD_LOGIC; 
  signal proc_in2_0_F5MUX_19340 : STD_LOGIC; 
  signal N397 : STD_LOGIC; 
  signal proc_in2_0_BXINV_19333 : STD_LOGIC; 
  signal N396 : STD_LOGIC; 
  signal proc_in2_1_F5MUX_19365 : STD_LOGIC; 
  signal N395 : STD_LOGIC; 
  signal proc_in2_1_BXINV_19358 : STD_LOGIC; 
  signal N394 : STD_LOGIC; 
  signal proc_in2_2_F5MUX_19390 : STD_LOGIC; 
  signal N393 : STD_LOGIC; 
  signal proc_in2_2_BXINV_19383 : STD_LOGIC; 
  signal N392 : STD_LOGIC; 
  signal proc_in2_3_F5MUX_19415 : STD_LOGIC; 
  signal N391 : STD_LOGIC; 
  signal proc_in2_3_BXINV_19408 : STD_LOGIC; 
  signal N390 : STD_LOGIC; 
  signal proc_in2_4_F5MUX_19440 : STD_LOGIC; 
  signal N421 : STD_LOGIC; 
  signal proc_in2_4_BXINV_19432 : STD_LOGIC; 
  signal N420 : STD_LOGIC; 
  signal proc_in2_5_F5MUX_19465 : STD_LOGIC; 
  signal N413 : STD_LOGIC; 
  signal proc_in2_5_BXINV_19457 : STD_LOGIC; 
  signal N412 : STD_LOGIC; 
  signal proc_in2_6_F5MUX_19490 : STD_LOGIC; 
  signal N417 : STD_LOGIC; 
  signal proc_in2_6_BXINV_19482 : STD_LOGIC; 
  signal N416 : STD_LOGIC; 
  signal proc_in2_7_F5MUX_19515 : STD_LOGIC; 
  signal N405 : STD_LOGIC; 
  signal proc_in2_7_BXINV_19507 : STD_LOGIC; 
  signal N404 : STD_LOGIC; 
  signal proc_in2_8_F5MUX_19540 : STD_LOGIC; 
  signal N415 : STD_LOGIC; 
  signal proc_in2_8_BXINV_19532 : STD_LOGIC; 
  signal N414 : STD_LOGIC; 
  signal proc_in2_9_F5MUX_19565 : STD_LOGIC; 
  signal N419 : STD_LOGIC; 
  signal proc_in2_9_BXINV_19557 : STD_LOGIC; 
  signal N418 : STD_LOGIC; 
  signal proc_ram_addr_0_F5MUX_19590 : STD_LOGIC; 
  signal N387 : STD_LOGIC; 
  signal proc_ram_addr_0_BXINV_19583 : STD_LOGIC; 
  signal N386 : STD_LOGIC; 
  signal proc_ram_addr_1_F5MUX_19615 : STD_LOGIC; 
  signal N385 : STD_LOGIC; 
  signal proc_ram_addr_1_BXINV_19608 : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal proc_ram_addr_2_F5MUX_19640 : STD_LOGIC; 
  signal N383 : STD_LOGIC; 
  signal proc_ram_addr_2_BXINV_19633 : STD_LOGIC; 
  signal N382 : STD_LOGIC; 
  signal proc_ram_addr_3_F5MUX_19665 : STD_LOGIC; 
  signal N381 : STD_LOGIC; 
  signal proc_ram_addr_3_BXINV_19658 : STD_LOGIC; 
  signal N380 : STD_LOGIC; 
  signal proc_ram_addr_4_F5MUX_19690 : STD_LOGIC; 
  signal N365 : STD_LOGIC; 
  signal proc_ram_addr_4_BXINV_19683 : STD_LOGIC; 
  signal N364 : STD_LOGIC; 
  signal proc_ram_addr_5_F5MUX_19715 : STD_LOGIC; 
  signal N363 : STD_LOGIC; 
  signal proc_ram_addr_5_BXINV_19708 : STD_LOGIC; 
  signal N362 : STD_LOGIC; 
  signal proc_ram_addr_6_F5MUX_19740 : STD_LOGIC; 
  signal N361 : STD_LOGIC; 
  signal proc_ram_addr_6_BXINV_19733 : STD_LOGIC; 
  signal N360 : STD_LOGIC; 
  signal proc_ram_addr_7_F5MUX_19765 : STD_LOGIC; 
  signal N359 : STD_LOGIC; 
  signal proc_ram_addr_7_BXINV_19758 : STD_LOGIC; 
  signal N358 : STD_LOGIC; 
  signal proc_ram_addr_8_F5MUX_19790 : STD_LOGIC; 
  signal N357 : STD_LOGIC; 
  signal proc_ram_addr_8_BXINV_19783 : STD_LOGIC; 
  signal N356 : STD_LOGIC; 
  signal proc_ram_addr_9_F5MUX_19815 : STD_LOGIC; 
  signal N355 : STD_LOGIC; 
  signal proc_ram_addr_9_BXINV_19808 : STD_LOGIC; 
  signal N354 : STD_LOGIC; 
  signal proc_in2_10_F5MUX_19840 : STD_LOGIC; 
  signal N411 : STD_LOGIC; 
  signal proc_in2_10_BXINV_19832 : STD_LOGIC; 
  signal N410 : STD_LOGIC; 
  signal proc_in2_11_F5MUX_19865 : STD_LOGIC; 
  signal N409 : STD_LOGIC; 
  signal proc_in2_11_BXINV_19857 : STD_LOGIC; 
  signal N408 : STD_LOGIC; 
  signal proc_in2_12_F5MUX_19890 : STD_LOGIC; 
  signal N403 : STD_LOGIC; 
  signal proc_in2_12_BXINV_19882 : STD_LOGIC; 
  signal N402 : STD_LOGIC; 
  signal proc_in2_13_F5MUX_19915 : STD_LOGIC; 
  signal N407 : STD_LOGIC; 
  signal proc_in2_13_BXINV_19907 : STD_LOGIC; 
  signal N406 : STD_LOGIC; 
  signal proc_in2_14_F5MUX_19940 : STD_LOGIC; 
  signal N401 : STD_LOGIC; 
  signal proc_in2_14_BXINV_19932 : STD_LOGIC; 
  signal N400 : STD_LOGIC; 
  signal proc_in2_15_F5MUX_19965 : STD_LOGIC; 
  signal N399 : STD_LOGIC; 
  signal proc_in2_15_BXINV_19957 : STD_LOGIC; 
  signal N398 : STD_LOGIC; 
  signal proc_N280_F5MUX_19990 : STD_LOGIC; 
  signal N429 : STD_LOGIC; 
  signal proc_N280_BXINV_19982 : STD_LOGIC; 
  signal N428 : STD_LOGIC; 
  signal proc_N278_F5MUX_20015 : STD_LOGIC; 
  signal N427 : STD_LOGIC; 
  signal proc_N278_BXINV_20007 : STD_LOGIC; 
  signal N426 : STD_LOGIC; 
  signal proc_N276_F5MUX_20040 : STD_LOGIC; 
  signal N425 : STD_LOGIC; 
  signal proc_N276_BXINV_20032 : STD_LOGIC; 
  signal N424 : STD_LOGIC; 
  signal proc_N274_F5MUX_20065 : STD_LOGIC; 
  signal N423 : STD_LOGIC; 
  signal proc_N274_BXINV_20057 : STD_LOGIC; 
  signal N422 : STD_LOGIC; 
  signal proc_reg_EX_overflow_10_DXMUX_20095 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_10_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_10_CLKINV_20077 : STD_LOGIC; 
  signal proc_reg_EX_overflow_11_FFX_RST : STD_LOGIC; 
  signal proc_reg_EX_overflow_11_DXMUX_20130 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_11_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_11_CLKINV_20112 : STD_LOGIC; 
  signal proc_reg_EX_overflow_12_FFX_RST : STD_LOGIC; 
  signal proc_reg_EX_overflow_12_DXMUX_20165 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_12_SW0_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_12_CLKINV_20147 : STD_LOGIC; 
  signal proc_reg_EX_overflow_13_FFX_RST : STD_LOGIC; 
  signal proc_reg_EX_overflow_13_DXMUX_20200 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_13_SW0_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_13_CLKINV_20182 : STD_LOGIC; 
  signal proc_reg_EX_overflow_14_FFX_RST : STD_LOGIC; 
  signal proc_reg_EX_overflow_14_DXMUX_20235 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_14_SW0_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_14_CLKINV_20217 : STD_LOGIC; 
  signal proc_reg_EX_overflow_15_FFX_RST : STD_LOGIC; 
  signal proc_reg_EX_overflow_15_DXMUX_20270 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_15_SW0_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_15_CLKINV_20252 : STD_LOGIC; 
  signal branch_trigger_cmp_eq0002 : STD_LOGIC; 
  signal rd_index1_or0003 : STD_LOGIC; 
  signal ram_addr_and0000 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N290 : STD_LOGIC; 
  signal N373 : STD_LOGIC; 
  signal N293 : STD_LOGIC; 
  signal N375 : STD_LOGIC; 
  signal N296 : STD_LOGIC; 
  signal N377 : STD_LOGIC; 
  signal N299 : STD_LOGIC; 
  signal N379 : STD_LOGIC; 
  signal in1_or0003_20466 : STD_LOGIC; 
  signal in1_or0003_SW0_O : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N238 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal N242 : STD_LOGIC; 
  signal N240 : STD_LOGIC; 
  signal N252 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal wr_enable_or000185_20730 : STD_LOGIC; 
  signal wr_enable_or000160_20723 : STD_LOGIC; 
  signal in1_and0008_20754 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal in1_or0009 : STD_LOGIC; 
  signal in1_or00091_SW0_O : STD_LOGIC; 
  signal wr_overflow : STD_LOGIC; 
  signal wr_overflow_or000034_SW0_O : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal in1_12_SW2_O : STD_LOGIC; 
  signal in1_13_SW2_O : STD_LOGIC; 
  signal in1_14_SW2_O : STD_LOGIC; 
  signal in1_15_SW2_O : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_146_20961 : STD_LOGIC; 
  signal alu_mode_0_4_O : STD_LOGIC; 
  signal in1_and0007101_21018 : STD_LOGIC; 
  signal in1_and000728_O : STD_LOGIC; 
  signal in2_and000221_21042 : STD_LOGIC; 
  signal in2_and00028_21035 : STD_LOGIC; 
  signal rd_index1_or0006 : STD_LOGIC; 
  signal rd_index1_or0005 : STD_LOGIC; 
  signal proc_reg_EX_overflow_0_DXMUX_21097 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_0_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_0_CLKINV_21079 : STD_LOGIC; 
  signal proc_reg_EX_overflow_1_DXMUX_21132 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_1_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_1_CLKINV_21114 : STD_LOGIC; 
  signal proc_reg_EX_overflow_2_DXMUX_21167 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_2_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_2_CLKINV_21149 : STD_LOGIC; 
  signal proc_reg_EX_overflow_3_DXMUX_21202 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_3_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_3_CLKINV_21184 : STD_LOGIC; 
  signal proc_reg_EX_overflow_4_DXMUX_21237 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_4_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_4_CLKINV_21219 : STD_LOGIC; 
  signal proc_reg_EX_overflow_5_DXMUX_21272 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_5_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_5_CLKINV_21254 : STD_LOGIC; 
  signal proc_reg_EX_overflow_6_DXMUX_21307 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_6_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_6_CLKINV_21289 : STD_LOGIC; 
  signal proc_reg_EX_overflow_7_DXMUX_21342 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_7_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_7_CLKINV_21324 : STD_LOGIC; 
  signal proc_reg_EX_overflow_8_DXMUX_21377 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_8_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_8_CLKINV_21359 : STD_LOGIC; 
  signal proc_reg_EX_overflow_9_DXMUX_21412 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_9_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_9_CLKINV_21394 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal alu_mode_0_1_SW0_O : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal in1_and0003 : STD_LOGIC; 
  signal in1_and000318_SW0_O : STD_LOGIC; 
  signal in1_and000772_21512 : STD_LOGIC; 
  signal in1_and000771_O : STD_LOGIC; 
  signal in1_cmp_eq0013 : STD_LOGIC; 
  signal in1_cmp_eq00131_SW0_O : STD_LOGIC; 
  signal in1_cmp_eq0014 : STD_LOGIC; 
  signal in1_cmp_eq00143_SW0_O : STD_LOGIC; 
  signal wr_enable : STD_LOGIC; 
  signal wr_enable_or000181 : STD_LOGIC; 
  signal in1_or000829_21608 : STD_LOGIC; 
  signal in1_or000821_O : STD_LOGIC; 
  signal in1_or0008 : STD_LOGIC; 
  signal in1_or000861_O : STD_LOGIC; 
  signal in2_and00025_21656 : STD_LOGIC; 
  signal in1_and0008_SW3_O : STD_LOGIC; 
  signal proc_reg_ID_instr_1_FFY_RST : STD_LOGIC; 
  signal proc_reg_ID_instr_1_FFX_RST : STD_LOGIC; 
  signal proc_reg_ID_instr_1_DXMUX_21694 : STD_LOGIC; 
  signal proc_reg_ID_instr_1_DYMUX_21678 : STD_LOGIC; 
  signal proc_reg_ID_instr_1_SRINV_21668 : STD_LOGIC; 
  signal proc_reg_ID_instr_1_CLKINV_21667 : STD_LOGIC; 
  signal proc_reg_ID_instr_3_FFY_RST : STD_LOGIC; 
  signal proc_reg_ID_instr_3_FFX_RST : STD_LOGIC; 
  signal proc_reg_ID_instr_3_DXMUX_21736 : STD_LOGIC; 
  signal proc_reg_ID_instr_3_DYMUX_21720 : STD_LOGIC; 
  signal proc_reg_ID_instr_3_SRINV_21710 : STD_LOGIC; 
  signal proc_reg_ID_instr_3_CLKINV_21709 : STD_LOGIC; 
  signal proc_reg_ID_instr_5_FFY_RST : STD_LOGIC; 
  signal proc_reg_ID_instr_5_DXMUX_21778 : STD_LOGIC; 
  signal proc_reg_ID_instr_5_DYMUX_21762 : STD_LOGIC; 
  signal proc_reg_ID_instr_5_SRINV_21752 : STD_LOGIC; 
  signal proc_reg_ID_instr_5_CLKINV_21751 : STD_LOGIC; 
  signal proc_reg_ID_instr_7_DXMUX_21820 : STD_LOGIC; 
  signal proc_reg_ID_instr_7_DYMUX_21804 : STD_LOGIC; 
  signal proc_reg_ID_instr_7_SRINV_21794 : STD_LOGIC; 
  signal proc_reg_ID_instr_7_CLKINV_21793 : STD_LOGIC; 
  signal proc_reg_ID_instr_9_DXMUX_21862 : STD_LOGIC; 
  signal proc_reg_ID_instr_9_DYMUX_21846 : STD_LOGIC; 
  signal proc_reg_ID_instr_9_SRINV_21836 : STD_LOGIC; 
  signal proc_reg_ID_instr_9_CLKINV_21835 : STD_LOGIC; 
  signal proc_reg_IF_instr_1_DXMUX_21904 : STD_LOGIC; 
  signal proc_reg_IF_instr_1_DYMUX_21888 : STD_LOGIC; 
  signal proc_reg_IF_instr_1_SRINV_21878 : STD_LOGIC; 
  signal proc_reg_IF_instr_1_CLKINV_21877 : STD_LOGIC; 
  signal proc_reg_IF_instr_3_DXMUX_21946 : STD_LOGIC; 
  signal proc_reg_IF_instr_3_DYMUX_21930 : STD_LOGIC; 
  signal proc_reg_IF_instr_3_SRINV_21920 : STD_LOGIC; 
  signal proc_reg_IF_instr_3_CLKINV_21919 : STD_LOGIC; 
  signal proc_reg_IF_instr_5_DXMUX_21988 : STD_LOGIC; 
  signal proc_reg_IF_instr_5_DYMUX_21972 : STD_LOGIC; 
  signal proc_reg_IF_instr_5_SRINV_21962 : STD_LOGIC; 
  signal proc_reg_IF_instr_5_CLKINV_21961 : STD_LOGIC; 
  signal proc_reg_IF_instr_7_DYMUX_22011 : STD_LOGIC; 
  signal proc_reg_IF_instr_7_CLKINV_22000 : STD_LOGIC; 
  signal proc_reg_IF_instr_9_DXMUX_22053 : STD_LOGIC; 
  signal proc_reg_IF_instr_9_DYMUX_22037 : STD_LOGIC; 
  signal proc_reg_IF_instr_9_SRINV_22027 : STD_LOGIC; 
  signal proc_reg_IF_instr_9_CLKINV_22026 : STD_LOGIC; 
  signal proc_reg_ID_instr_11_DXMUX_22095 : STD_LOGIC; 
  signal proc_reg_ID_instr_11_DYMUX_22079 : STD_LOGIC; 
  signal proc_reg_ID_instr_11_SRINV_22069 : STD_LOGIC; 
  signal proc_reg_ID_instr_11_CLKINV_22068 : STD_LOGIC; 
  signal proc_reg_ID_instr_13_DXMUX_22137 : STD_LOGIC; 
  signal proc_reg_ID_instr_13_DYMUX_22121 : STD_LOGIC; 
  signal proc_reg_ID_instr_13_SRINV_22111 : STD_LOGIC; 
  signal proc_reg_ID_instr_13_CLKINV_22110 : STD_LOGIC; 
  signal proc_reg_ID_instr_15_DXMUX_22179 : STD_LOGIC; 
  signal proc_reg_ID_instr_15_DYMUX_22163 : STD_LOGIC; 
  signal proc_reg_ID_instr_15_SRINV_22153 : STD_LOGIC; 
  signal proc_reg_ID_instr_15_CLKINV_22152 : STD_LOGIC; 
  signal proc_reg_IF_instr_11_DXMUX_22221 : STD_LOGIC; 
  signal proc_reg_IF_instr_11_DYMUX_22205 : STD_LOGIC; 
  signal proc_reg_IF_instr_11_SRINV_22195 : STD_LOGIC; 
  signal proc_reg_IF_instr_11_CLKINV_22194 : STD_LOGIC; 
  signal proc_reg_IF_instr_13_DXMUX_22263 : STD_LOGIC; 
  signal proc_reg_IF_instr_13_DYMUX_22247 : STD_LOGIC; 
  signal proc_reg_IF_instr_13_SRINV_22237 : STD_LOGIC; 
  signal proc_reg_IF_instr_13_CLKINV_22236 : STD_LOGIC; 
  signal proc_reg_IF_instr_15_DXMUX_22305 : STD_LOGIC; 
  signal proc_reg_IF_instr_15_DYMUX_22289 : STD_LOGIC; 
  signal proc_reg_IF_instr_15_SRINV_22279 : STD_LOGIC; 
  signal proc_reg_IF_instr_15_CLKINV_22278 : STD_LOGIC; 
  signal proc_reg_EX_instr_7_DXMUX_22347 : STD_LOGIC; 
  signal proc_reg_EX_instr_7_DYMUX_22331 : STD_LOGIC; 
  signal proc_reg_EX_instr_7_SRINV_22321 : STD_LOGIC; 
  signal proc_reg_EX_instr_7_CLKINV_22320 : STD_LOGIC; 
  signal proc_reg_EX_instr_9_DXMUX_22389 : STD_LOGIC; 
  signal proc_reg_EX_instr_9_DYMUX_22373 : STD_LOGIC; 
  signal proc_reg_EX_instr_9_SRINV_22363 : STD_LOGIC; 
  signal proc_reg_EX_instr_9_CLKINV_22362 : STD_LOGIC; 
  signal proc_PC_1_DXMUX_22431 : STD_LOGIC; 
  signal proc_PC_1_DYMUX_22417 : STD_LOGIC; 
  signal proc_PC_1_SRINV_22408 : STD_LOGIC; 
  signal proc_PC_1_CLKINVNOT : STD_LOGIC; 
  signal proc_PC_3_DXMUX_22473 : STD_LOGIC; 
  signal proc_PC_3_DYMUX_22459 : STD_LOGIC; 
  signal proc_PC_3_SRINV_22451 : STD_LOGIC; 
  signal proc_PC_3_CLKINVNOT : STD_LOGIC; 
  signal proc_PC_5_DXMUX_22515 : STD_LOGIC; 
  signal proc_PC_5_DYMUX_22501 : STD_LOGIC; 
  signal proc_PC_5_SRINV_22493 : STD_LOGIC; 
  signal proc_PC_5_CLKINVNOT : STD_LOGIC; 
  signal proc_PC_6_F : STD_LOGIC; 
  signal proc_PC_6_DYMUX_22541 : STD_LOGIC; 
  signal proc_PC_6_CLKINVNOT : STD_LOGIC; 
  signal proc_reg_EX_result_11_DXMUX_22592 : STD_LOGIC; 
  signal proc_reg_EX_result_11_DYMUX_22577 : STD_LOGIC; 
  signal proc_reg_EX_result_11_SRINV_22568 : STD_LOGIC; 
  signal proc_reg_EX_result_11_CLKINV_22567 : STD_LOGIC; 
  signal proc_reg_EX_result_13_DYMUX_22615 : STD_LOGIC; 
  signal proc_reg_EX_result_13_CLKINV_22605 : STD_LOGIC; 
  signal proc_reg_EX_result_15_DXMUX_22657 : STD_LOGIC; 
  signal proc_reg_EX_result_15_DYMUX_22642 : STD_LOGIC; 
  signal proc_reg_EX_result_15_SRINV_22633 : STD_LOGIC; 
  signal proc_reg_EX_result_15_CLKINV_22632 : STD_LOGIC; 
  signal proc_reg_EX_instr_11_DXMUX_22699 : STD_LOGIC; 
  signal proc_reg_EX_instr_11_DYMUX_22683 : STD_LOGIC; 
  signal proc_reg_EX_instr_11_SRINV_22673 : STD_LOGIC; 
  signal proc_reg_EX_instr_11_CLKINV_22672 : STD_LOGIC; 
  signal proc_reg_EX_instr_13_FFY_RST : STD_LOGIC; 
  signal proc_reg_EX_instr_13_FFX_RST : STD_LOGIC; 
  signal proc_reg_EX_instr_13_DXMUX_22741 : STD_LOGIC; 
  signal proc_reg_EX_instr_13_DYMUX_22725 : STD_LOGIC; 
  signal proc_reg_EX_instr_13_SRINV_22715 : STD_LOGIC; 
  signal proc_reg_EX_instr_13_CLKINV_22714 : STD_LOGIC; 
  signal proc_reg_EX_instr_15_FFY_RST : STD_LOGIC; 
  signal proc_reg_EX_instr_15_FFX_RST : STD_LOGIC; 
  signal proc_reg_EX_instr_15_DXMUX_22783 : STD_LOGIC; 
  signal proc_reg_EX_instr_15_DYMUX_22767 : STD_LOGIC; 
  signal proc_reg_EX_instr_15_SRINV_22757 : STD_LOGIC; 
  signal proc_reg_EX_instr_15_CLKINV_22756 : STD_LOGIC; 
  signal proc_reg_EX_result_1_FFY_RST : STD_LOGIC; 
  signal proc_reg_EX_result_1_FFX_RST : STD_LOGIC; 
  signal proc_reg_EX_result_1_DXMUX_22825 : STD_LOGIC; 
  signal proc_reg_EX_result_1_DYMUX_22810 : STD_LOGIC; 
  signal proc_reg_EX_result_1_SRINV_22801 : STD_LOGIC; 
  signal proc_reg_EX_result_1_CLKINV_22800 : STD_LOGIC; 
  signal proc_reg_EX_result_3_DXMUX_22867 : STD_LOGIC; 
  signal proc_reg_EX_result_3_DYMUX_22852 : STD_LOGIC; 
  signal proc_reg_EX_result_3_SRINV_22843 : STD_LOGIC; 
  signal proc_reg_EX_result_3_CLKINV_22842 : STD_LOGIC; 
  signal proc_reg_EX_result_5_DXMUX_22909 : STD_LOGIC; 
  signal proc_reg_EX_result_5_DYMUX_22894 : STD_LOGIC; 
  signal proc_reg_EX_result_5_SRINV_22885 : STD_LOGIC; 
  signal proc_reg_EX_result_5_CLKINV_22884 : STD_LOGIC; 
  signal proc_reg_EX_result_7_DXMUX_22951 : STD_LOGIC; 
  signal proc_reg_EX_result_7_DYMUX_22936 : STD_LOGIC; 
  signal proc_reg_EX_result_7_SRINV_22927 : STD_LOGIC; 
  signal proc_reg_EX_result_7_CLKINV_22926 : STD_LOGIC; 
  signal proc_reg_EX_result_9_DXMUX_22993 : STD_LOGIC; 
  signal proc_reg_EX_result_9_DYMUX_22978 : STD_LOGIC; 
  signal proc_reg_EX_result_9_SRINV_22969 : STD_LOGIC; 
  signal proc_reg_EX_result_9_CLKINV_22968 : STD_LOGIC; 
  signal proc_reg_ID_data1_11_DXMUX_23035 : STD_LOGIC; 
  signal proc_reg_ID_data1_11_DYMUX_23021 : STD_LOGIC; 
  signal proc_reg_ID_data1_11_SRINV_23013 : STD_LOGIC; 
  signal proc_reg_ID_data1_11_CLKINV_23012 : STD_LOGIC; 
  signal proc_reg_ID_data1_13_DXMUX_23077 : STD_LOGIC; 
  signal proc_reg_ID_data1_13_DYMUX_23063 : STD_LOGIC; 
  signal proc_reg_ID_data1_13_SRINV_23055 : STD_LOGIC; 
  signal proc_reg_ID_data1_13_CLKINV_23054 : STD_LOGIC; 
  signal proc_reg_ID_data1_15_DXMUX_23119 : STD_LOGIC; 
  signal proc_reg_ID_data1_15_DYMUX_23105 : STD_LOGIC; 
  signal proc_reg_ID_data1_15_SRINV_23097 : STD_LOGIC; 
  signal proc_reg_ID_data1_15_CLKINV_23096 : STD_LOGIC; 
  signal proc_reg_ID_data2_11_DXMUX_23161 : STD_LOGIC; 
  signal proc_reg_ID_data2_11_DYMUX_23147 : STD_LOGIC; 
  signal proc_reg_ID_data2_11_SRINV_23139 : STD_LOGIC; 
  signal proc_reg_ID_data2_11_CLKINV_23138 : STD_LOGIC; 
  signal proc_reg_ID_data2_13_DXMUX_23203 : STD_LOGIC; 
  signal proc_reg_ID_data2_13_DYMUX_23189 : STD_LOGIC; 
  signal proc_reg_ID_data2_13_SRINV_23181 : STD_LOGIC; 
  signal proc_reg_ID_data2_13_CLKINV_23180 : STD_LOGIC; 
  signal proc_reg_ID_data2_15_DXMUX_23245 : STD_LOGIC; 
  signal proc_reg_ID_data2_15_DYMUX_23231 : STD_LOGIC; 
  signal proc_reg_ID_data2_15_SRINV_23223 : STD_LOGIC; 
  signal proc_reg_ID_data2_15_CLKINV_23222 : STD_LOGIC; 
  signal proc_reg_ID_data1_1_DXMUX_23287 : STD_LOGIC; 
  signal proc_reg_ID_data1_1_DYMUX_23272 : STD_LOGIC; 
  signal proc_reg_ID_data1_1_SRINV_23263 : STD_LOGIC; 
  signal proc_reg_ID_data1_1_CLKINV_23262 : STD_LOGIC; 
  signal proc_reg_ID_data1_3_DXMUX_23329 : STD_LOGIC; 
  signal proc_reg_ID_data1_3_DYMUX_23314 : STD_LOGIC; 
  signal proc_reg_ID_data1_3_SRINV_23305 : STD_LOGIC; 
  signal proc_reg_ID_data1_3_CLKINV_23304 : STD_LOGIC; 
  signal proc_reg_ID_data2_1_DXMUX_23371 : STD_LOGIC; 
  signal proc_reg_ID_data2_1_DYMUX_23357 : STD_LOGIC; 
  signal proc_reg_ID_data2_1_SRINV_23349 : STD_LOGIC; 
  signal proc_reg_ID_data2_1_CLKINV_23348 : STD_LOGIC; 
  signal proc_reg_ID_data1_5_DXMUX_23413 : STD_LOGIC; 
  signal proc_reg_ID_data1_5_DYMUX_23398 : STD_LOGIC; 
  signal proc_reg_ID_data1_5_SRINV_23389 : STD_LOGIC; 
  signal proc_reg_ID_data1_5_CLKINV_23388 : STD_LOGIC; 
  signal proc_reg_ID_data2_3_DXMUX_23455 : STD_LOGIC; 
  signal proc_reg_ID_data2_3_DYMUX_23441 : STD_LOGIC; 
  signal proc_reg_ID_data2_3_SRINV_23433 : STD_LOGIC; 
  signal proc_reg_ID_data2_3_CLKINV_23432 : STD_LOGIC; 
  signal proc_reg_ID_data1_7_DXMUX_23497 : STD_LOGIC; 
  signal proc_reg_ID_data1_7_DYMUX_23483 : STD_LOGIC; 
  signal proc_reg_ID_data1_7_SRINV_23474 : STD_LOGIC; 
  signal proc_reg_ID_data1_7_CLKINV_23473 : STD_LOGIC; 
  signal proc_reg_ID_data1_8_DYMUX_23520 : STD_LOGIC; 
  signal proc_reg_ID_data1_8_CLKINV_23511 : STD_LOGIC; 
  signal proc_reg_ID_data2_7_DXMUX_23562 : STD_LOGIC; 
  signal proc_reg_ID_data2_7_DYMUX_23548 : STD_LOGIC; 
  signal proc_reg_ID_data2_7_SRINV_23540 : STD_LOGIC; 
  signal proc_reg_ID_data2_7_CLKINV_23539 : STD_LOGIC; 
  signal proc_reg_ID_data2_9_DYMUX_23585 : STD_LOGIC; 
  signal proc_reg_ID_data2_9_CLKINV_23576 : STD_LOGIC; 
  signal outport_9_F : STD_LOGIC; 
  signal outport_cmp_eq0000_23628 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal or0000_0_or0000 : STD_LOGIC; 
  signal N191 : STD_LOGIC; 
  signal N2_23769 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal proc_reg_EX_n_flag_DYMUX_23779 : STD_LOGIC; 
  signal proc_reg_EX_n_flag_CLKINV_23776 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal in1_and000710_23831 : STD_LOGIC; 
  signal N811 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal proc_reg_ID_data2_5_FFX_RST : STD_LOGIC; 
  signal proc_reg_ID_data2_5_DXMUX_23886 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_2_23876 : STD_LOGIC; 
  signal proc_reg_ID_data2_5_CLKINV_23869 : STD_LOGIC; 
  signal proc_reg_ID_data2_4_FFX_RST : STD_LOGIC; 
  signal proc_reg_ID_data2_4_DXMUX_23921 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_11_2_23911 : STD_LOGIC; 
  signal proc_reg_ID_data2_4_CLKINV_23904 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_11_13_23949 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_7 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal proc_reg_EX_z_flag_FFY_RST : STD_LOGIC; 
  signal proc_reg_EX_z_flag_DYMUX_23983 : STD_LOGIC; 
  signal proc_reg_EX_z_flag_CLKINV_23980 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_120_24004 : STD_LOGIC; 
  signal rd_index1_or000629_24035 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_134_24028 : STD_LOGIC; 
  signal proc_reg_ID_data1_9_DXMUX_24066 : STD_LOGIC; 
  signal N02 : STD_LOGIC; 
  signal proc_reg_ID_data1_9_CLKINV_24050 : STD_LOGIC; 
  signal alu_mode_0_15_24094 : STD_LOGIC; 
  signal N268 : STD_LOGIC; 
  signal proc_reg_IF_inport_1_DXMUX_24114 : STD_LOGIC; 
  signal proc_reg_IF_inport_1_DYMUX_24106 : STD_LOGIC; 
  signal proc_reg_IF_inport_1_SRINV_24104 : STD_LOGIC; 
  signal proc_reg_IF_inport_1_CLKINV_24103 : STD_LOGIC; 
  signal proc_reg_IF_inport_3_DXMUX_24138 : STD_LOGIC; 
  signal proc_reg_IF_inport_3_DYMUX_24130 : STD_LOGIC; 
  signal proc_reg_IF_inport_3_SRINV_24128 : STD_LOGIC; 
  signal proc_reg_IF_inport_3_CLKINV_24127 : STD_LOGIC; 
  signal proc_reg_IF_inport_5_DXMUX_24162 : STD_LOGIC; 
  signal proc_reg_IF_inport_5_DYMUX_24154 : STD_LOGIC; 
  signal proc_reg_IF_inport_5_SRINV_24152 : STD_LOGIC; 
  signal proc_reg_IF_inport_5_CLKINV_24151 : STD_LOGIC; 
  signal proc_reg_IF_inport_7_DXMUX_24186 : STD_LOGIC; 
  signal proc_reg_IF_inport_7_DYMUX_24178 : STD_LOGIC; 
  signal proc_reg_IF_inport_7_SRINV_24176 : STD_LOGIC; 
  signal proc_reg_IF_inport_7_CLKINV_24175 : STD_LOGIC; 
  signal proc_reg_IF_inport_9_DXMUX_24210 : STD_LOGIC; 
  signal proc_reg_IF_inport_9_DYMUX_24202 : STD_LOGIC; 
  signal proc_reg_IF_inport_9_SRINV_24200 : STD_LOGIC; 
  signal proc_reg_IF_inport_9_CLKINV_24199 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal rd_index1_or0004_24267 : STD_LOGIC; 
  signal proc_reg_ID_data2_8_DXMUX_24305 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal proc_reg_ID_data2_8_CLKINV_24289 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_13_24321 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N282 : STD_LOGIC; 
  signal outport_10_F : STD_LOGIC; 
  signal outport_10_G : STD_LOGIC; 
  signal outport_11_F : STD_LOGIC; 
  signal outport_11_G : STD_LOGIC; 
  signal outport_12_F : STD_LOGIC; 
  signal outport_12_G : STD_LOGIC; 
  signal outport_13_F : STD_LOGIC; 
  signal outport_13_G : STD_LOGIC; 
  signal outport_14_F : STD_LOGIC; 
  signal outport_14_G : STD_LOGIC; 
  signal outport_6_F : STD_LOGIC; 
  signal outport_6_G : STD_LOGIC; 
  signal wr_enable_or000134_24525 : STD_LOGIC; 
  signal wr_overflow_or000031_24518 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal wr_overflow_or000017_24542 : STD_LOGIC; 
  signal outport_8_F : STD_LOGIC; 
  signal outport_8_G : STD_LOGIC; 
  signal N230 : STD_LOGIC; 
  signal N232 : STD_LOGIC; 
  signal N300 : STD_LOGIC; 
  signal N291 : STD_LOGIC; 
  signal N297 : STD_LOGIC; 
  signal N294 : STD_LOGIC; 
  signal proc_reg_IF_instr_6_DXMUX_24868 : STD_LOGIC; 
  signal branch_trigger : STD_LOGIC; 
  signal proc_reg_IF_instr_6_CLKINV_24850 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal proc_reg_IF_inport_11_DXMUX_24916 : STD_LOGIC; 
  signal proc_reg_IF_inport_11_DYMUX_24908 : STD_LOGIC; 
  signal proc_reg_IF_inport_11_SRINV_24906 : STD_LOGIC; 
  signal proc_reg_IF_inport_11_CLKINV_24905 : STD_LOGIC; 
  signal proc_reg_IF_inport_13_DXMUX_24940 : STD_LOGIC; 
  signal proc_reg_IF_inport_13_DYMUX_24932 : STD_LOGIC; 
  signal proc_reg_IF_inport_13_SRINV_24930 : STD_LOGIC; 
  signal proc_reg_IF_inport_13_CLKINV_24929 : STD_LOGIC; 
  signal proc_reg_IF_inport_15_DXMUX_24964 : STD_LOGIC; 
  signal proc_reg_IF_inport_15_DYMUX_24956 : STD_LOGIC; 
  signal proc_reg_IF_inport_15_SRINV_24954 : STD_LOGIC; 
  signal proc_reg_IF_inport_15_CLKINV_24953 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N1011 : STD_LOGIC; 
  signal rd_index1_or000638_25009 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal in1_and00075_25064 : STD_LOGIC; 
  signal in1_and000312_25076 : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N228 : STD_LOGIC; 
  signal proc_reg_EX_result_12_FFX_RST : STD_LOGIC; 
  signal proc_reg_EX_result_12_DXMUX_25131 : STD_LOGIC; 
  signal in1_cmp_eq0008 : STD_LOGIC; 
  signal proc_reg_EX_result_12_CLKINV_25113 : STD_LOGIC; 
  signal rd_index1_or0007 : STD_LOGIC; 
  signal N222 : STD_LOGIC; 
  signal N224 : STD_LOGIC; 
  signal N220 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_0_6_25255 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_0_0_25248 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_1_6_25279 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_1_0_25272 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_2_6_25303 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_2_0_25296 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_3_6_25327 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_3_0_25320 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_4_6_25351 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_4_0_25344 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_5_6_25375 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_5_0_25368 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_6_6_25399 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_6_0_25392 : STD_LOGIC; 
  signal in2_and0002 : STD_LOGIC; 
  signal in2_and000552_25423 : STD_LOGIC; 
  signal in2_and000536_25435 : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal in2_and0005 : STD_LOGIC; 
  signal in1_or000892_25471 : STD_LOGIC; 
  signal proc_reg_ID_PC_1_FFX_RST : STD_LOGIC; 
  signal proc_reg_ID_PC_1_DXMUX_25491 : STD_LOGIC; 
  signal proc_reg_ID_PC_1_DYMUX_25483 : STD_LOGIC; 
  signal proc_reg_ID_PC_1_SRINV_25481 : STD_LOGIC; 
  signal proc_reg_ID_PC_1_CLKINV_25480 : STD_LOGIC; 
  signal proc_reg_ID_PC_3_DXMUX_25515 : STD_LOGIC; 
  signal proc_reg_ID_PC_3_DYMUX_25507 : STD_LOGIC; 
  signal proc_reg_ID_PC_3_SRINV_25505 : STD_LOGIC; 
  signal proc_reg_ID_PC_3_CLKINV_25504 : STD_LOGIC; 
  signal proc_reg_ID_PC_5_DXMUX_25539 : STD_LOGIC; 
  signal proc_reg_ID_PC_5_DYMUX_25531 : STD_LOGIC; 
  signal proc_reg_ID_PC_5_SRINV_25529 : STD_LOGIC; 
  signal proc_reg_ID_PC_5_CLKINV_25528 : STD_LOGIC; 
  signal proc_reg_ID_PC_6_DYMUX_25553 : STD_LOGIC; 
  signal proc_reg_ID_PC_6_CLKINV_25550 : STD_LOGIC; 
  signal N388 : STD_LOGIC; 
  signal proc_reg_IF_PC_1_FFX_RST : STD_LOGIC; 
  signal proc_reg_IF_PC_1_DXMUX_25589 : STD_LOGIC; 
  signal proc_reg_IF_PC_1_DYMUX_25581 : STD_LOGIC; 
  signal proc_reg_IF_PC_1_SRINV_25579 : STD_LOGIC; 
  signal proc_reg_IF_PC_1_CLKINV_25578 : STD_LOGIC; 
  signal proc_reg_IF_PC_3_DXMUX_25613 : STD_LOGIC; 
  signal proc_reg_IF_PC_3_DYMUX_25605 : STD_LOGIC; 
  signal proc_reg_IF_PC_3_SRINV_25603 : STD_LOGIC; 
  signal proc_reg_IF_PC_3_CLKINV_25602 : STD_LOGIC; 
  signal proc_reg_IF_PC_5_DXMUX_25637 : STD_LOGIC; 
  signal proc_reg_IF_PC_5_DYMUX_25629 : STD_LOGIC; 
  signal proc_reg_IF_PC_5_SRINV_25627 : STD_LOGIC; 
  signal proc_reg_IF_PC_5_CLKINV_25626 : STD_LOGIC; 
  signal proc_reg_IF_PC_6_DYMUX_25651 : STD_LOGIC; 
  signal proc_reg_IF_PC_6_CLKINV_25648 : STD_LOGIC; 
  signal proc_reg_EX_PC_1_DXMUX_25675 : STD_LOGIC; 
  signal proc_reg_EX_PC_1_DYMUX_25667 : STD_LOGIC; 
  signal proc_reg_EX_PC_1_SRINV_25665 : STD_LOGIC; 
  signal proc_reg_EX_PC_1_CLKINV_25664 : STD_LOGIC; 
  signal proc_reg_EX_PC_3_DXMUX_25699 : STD_LOGIC; 
  signal proc_reg_EX_PC_3_DYMUX_25691 : STD_LOGIC; 
  signal proc_reg_EX_PC_3_SRINV_25689 : STD_LOGIC; 
  signal proc_reg_EX_PC_3_CLKINV_25688 : STD_LOGIC; 
  signal proc_reg_EX_PC_5_DXMUX_25723 : STD_LOGIC; 
  signal proc_reg_EX_PC_5_DYMUX_25715 : STD_LOGIC; 
  signal proc_reg_EX_PC_5_SRINV_25713 : STD_LOGIC; 
  signal proc_reg_EX_PC_5_CLKINV_25712 : STD_LOGIC; 
  signal proc_reg_EX_PC_6_DYMUX_25737 : STD_LOGIC; 
  signal proc_reg_EX_PC_6_CLKINV_25734 : STD_LOGIC; 
  signal proc_reg_EX_overflow_10_FFX_RSTAND_20100 : STD_LOGIC; 
  signal proc_reg_ID_data1_9_FFX_RSTAND_24071 : STD_LOGIC; 
  signal proc_reg_ID_data2_8_FFX_RSTAND_24310 : STD_LOGIC; 
  signal proc_reg_IF_instr_6_FFX_RSTAND_24873 : STD_LOGIC; 
  signal proc_reg_EX_overflow_0_FFX_RSTAND_21102 : STD_LOGIC; 
  signal proc_reg_EX_overflow_1_FFX_RSTAND_21137 : STD_LOGIC; 
  signal proc_reg_EX_overflow_2_FFX_RSTAND_21172 : STD_LOGIC; 
  signal proc_reg_EX_overflow_3_FFX_RSTAND_21207 : STD_LOGIC; 
  signal proc_reg_EX_overflow_4_FFX_RSTAND_21242 : STD_LOGIC; 
  signal proc_reg_EX_overflow_5_FFX_RSTAND_21277 : STD_LOGIC; 
  signal proc_reg_EX_overflow_6_FFX_RSTAND_21312 : STD_LOGIC; 
  signal proc_reg_EX_overflow_7_FFX_RSTAND_21347 : STD_LOGIC; 
  signal proc_reg_EX_overflow_8_FFX_RSTAND_21382 : STD_LOGIC; 
  signal proc_reg_EX_overflow_9_FFX_RSTAND_21417 : STD_LOGIC; 
  signal proc_reg_IF_instr_7_FFY_RSTAND_22016 : STD_LOGIC; 
  signal proc_PC_6_FFY_RSTAND_22546 : STD_LOGIC; 
  signal proc_reg_EX_result_13_FFY_RSTAND_22620 : STD_LOGIC; 
  signal proc_reg_ID_data1_8_FFY_RSTAND_23525 : STD_LOGIC; 
  signal proc_reg_ID_data2_9_FFY_RSTAND_23590 : STD_LOGIC; 
  signal proc_reg_EX_n_flag_FFY_RSTAND_23784 : STD_LOGIC; 
  signal proc_reg_ID_PC_6_FFY_RSTAND_25558 : STD_LOGIC; 
  signal proc_reg_IF_PC_6_FFY_RSTAND_25656 : STD_LOGIC; 
  signal proc_reg_EX_PC_6_FFY_RSTAND_25742 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal PC : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal rom_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ram_addr : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal in2 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ram_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal rd_data1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal rd_data2 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal alu_result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal overflow : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal reg_EX_overflow_mux0001 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal wr_index : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal rd_index1 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal in1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal alu_mode : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal reg_ID_instr_mux0001 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal reg_IF_instr_mux0001 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal reg_EX_instr_mux0001 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal PC_next : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal reg_ID_data1_mux0007 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal reg_ID_data2_mux0007 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal rd_index2 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Madd_PC_next_addsub0000_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal wr_overflow_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ram_wr_enable : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  rom0 : ROM_VHDL
    port map (
      clk => clk,
      addr(6) => PC(6),
      addr(5) => PC(5),
      addr(4) => PC(4),
      addr(3) => PC(3),
      addr(2) => PC(2),
      addr(1) => PC(1),
      addr(0) => PC(0),
      data(15) => rom_data(15),
      data(14) => rom_data(14),
      data(13) => rom_data(13),
      data(12) => rom_data(12),
      data(11) => rom_data(11),
      data(10) => rom_data(10),
      data(9) => rom_data(9),
      data(8) => rom_data(8),
      data(7) => rom_data(7),
      data(6) => rom_data(6),
      data(5) => rom_data(5),
      data(4) => rom_data(4),
      data(3) => rom_data(3),
      data(2) => rom_data(2),
      data(1) => rom_data(1),
      data(0) => rom_data(0)
    );
  ram0 : ram
    port map (
      clk => clk,
      addr(11) => ram_addr(11),
      addr(10) => ram_addr(10),
      addr(9) => ram_addr(9),
      addr(8) => ram_addr(8),
      addr(7) => ram_addr(7),
      addr(6) => ram_addr(6),
      addr(5) => ram_addr(5),
      addr(4) => ram_addr(4),
      addr(3) => ram_addr(3),
      addr(2) => ram_addr(2),
      addr(1) => ram_addr(1),
      addr(0) => ram_addr(0),
      din(15) => in2(15),
      din(14) => in2(14),
      din(13) => in2(13),
      din(12) => in2(12),
      din(11) => in2(11),
      din(10) => in2(10),
      din(9) => in2(9),
      din(8) => in2(8),
      din(7) => in2(7),
      din(6) => in2(6),
      din(5) => in2(5),
      din(4) => in2(4),
      din(3) => in2(3),
      din(2) => in2(2),
      din(1) => in2(1),
      din(0) => in2(0),
      we(1) => ram_wr_enable_0_0,
      we(0) => ram_wr_enable_0_0,
      dout(15) => ram_data(15),
      dout(14) => ram_data(14),
      dout(13) => ram_data(13),
      dout(12) => ram_data(12),
      dout(11) => ram_data(11),
      dout(10) => ram_data(10),
      dout(9) => ram_data(9),
      dout(8) => ram_data(8),
      dout(7) => ram_data(7),
      dout(6) => ram_data(6),
      dout(5) => ram_data(5),
      dout(4) => ram_data(4),
      dout(3) => ram_data(3),
      dout(2) => ram_data(2),
      dout(1) => ram_data(1),
      dout(0) => ram_data(0)
    );
  rf0 : register_file
    port map (
      clk => clk,
      rst => rst,
      wr_overflow => wr_overflow_0,
      wr_enable => wr_enable_0,
      rd_index1(2) => rd_index1_2_0,
      rd_index1(1) => rd_index1_1_0,
      rd_index1(0) => rd_index1_0_0,
      rd_index2(2) => rd_index2_2_0,
      rd_index2(1) => rd_index2_1_0,
      rd_index2(0) => rd_index2_0_0,
      wr_data(15) => reg_EX_result_15_7500,
      wr_data(14) => reg_EX_result_14_7501,
      wr_data(13) => reg_EX_result_13_7502,
      wr_data(12) => reg_EX_result_12_7503,
      wr_data(11) => reg_EX_result_11_7504,
      wr_data(10) => reg_EX_result_10_7505,
      wr_data(9) => reg_EX_result_9_7506,
      wr_data(8) => reg_EX_result_8_7507,
      wr_data(7) => reg_EX_result_7_7508,
      wr_data(6) => reg_EX_result_6_7509,
      wr_data(5) => reg_EX_result_5_7510,
      wr_data(4) => reg_EX_result_4_7511,
      wr_data(3) => reg_EX_result_3_7512,
      wr_data(2) => reg_EX_result_2_7513,
      wr_data(1) => reg_EX_result_1_7514,
      wr_data(0) => reg_EX_result_0_7515,
      wr_index(2) => wr_index_2_0,
      wr_index(1) => wr_index_1_0,
      wr_index(0) => wr_index_0_0,
      wr_overflow_data(15) => wr_overflow_data_15_0,
      wr_overflow_data(14) => wr_overflow_data_14_0,
      wr_overflow_data(13) => wr_overflow_data_13_0,
      wr_overflow_data(12) => wr_overflow_data_12_0,
      wr_overflow_data(11) => wr_overflow_data_11_0,
      wr_overflow_data(10) => wr_overflow_data_10_0,
      wr_overflow_data(9) => wr_overflow_data_9_0,
      wr_overflow_data(8) => wr_overflow_data_8_0,
      wr_overflow_data(7) => wr_overflow_data_7_0,
      wr_overflow_data(6) => wr_overflow_data_6_0,
      wr_overflow_data(5) => wr_overflow_data_5_0,
      wr_overflow_data(4) => wr_overflow_data_4_0,
      wr_overflow_data(3) => wr_overflow_data_3_0,
      wr_overflow_data(2) => wr_overflow_data_2_0,
      wr_overflow_data(1) => wr_overflow_data_1_0,
      wr_overflow_data(0) => wr_overflow_data_0_0,
      rd_data1(15) => rd_data1(15),
      rd_data1(14) => rd_data1(14),
      rd_data1(13) => rd_data1(13),
      rd_data1(12) => rd_data1(12),
      rd_data1(11) => rd_data1(11),
      rd_data1(10) => rd_data1(10),
      rd_data1(9) => rd_data1(9),
      rd_data1(8) => rd_data1(8),
      rd_data1(7) => rd_data1(7),
      rd_data1(6) => rd_data1(6),
      rd_data1(5) => rd_data1(5),
      rd_data1(4) => rd_data1(4),
      rd_data1(3) => rd_data1(3),
      rd_data1(2) => rd_data1(2),
      rd_data1(1) => rd_data1(1),
      rd_data1(0) => rd_data1(0),
      rd_data2(15) => rd_data2(15),
      rd_data2(14) => rd_data2(14),
      rd_data2(13) => rd_data2(13),
      rd_data2(12) => rd_data2(12),
      rd_data2(11) => rd_data2(11),
      rd_data2(10) => rd_data2(10),
      rd_data2(9) => rd_data2(9),
      rd_data2(8) => rd_data2(8),
      rd_data2(7) => rd_data2(7),
      rd_data2(6) => rd_data2(6),
      rd_data2(5) => rd_data2(5),
      rd_data2(4) => rd_data2(4),
      rd_data2(3) => rd_data2(3),
      rd_data2(2) => rd_data2(2),
      rd_data2(1) => rd_data2(1),
      rd_data2(0) => rd_data2(0)
    );
  alu0 : alu
    port map (
      clk => clk,
      rst => rst,
      z_flag => z_flag,
      n_flag => n_flag,
      alu_mode(2) => alu_mode_2_0,
      alu_mode(1) => alu_mode_1_0,
      alu_mode(0) => alu_mode_0_0,
      in1(15) => in1_15_0,
      in1(14) => in1_14_0,
      in1(13) => in1_13_0,
      in1(12) => in1_12_0,
      in1(11) => in1_11_0,
      in1(10) => in1_10_0,
      in1(9) => in1_9_0,
      in1(8) => in1_8_0,
      in1(7) => in1_7_0,
      in1(6) => in1_6_0,
      in1(5) => in1_5_0,
      in1(4) => in1_4_0,
      in1(3) => in1_3_0,
      in1(2) => in1_2_0,
      in1(1) => in1_1_0,
      in1(0) => in1_0_0,
      in2(15) => in2(15),
      in2(14) => in2(14),
      in2(13) => in2(13),
      in2(12) => in2(12),
      in2(11) => in2(11),
      in2(10) => in2(10),
      in2(9) => in2(9),
      in2(8) => in2(8),
      in2(7) => in2(7),
      in2(6) => in2(6),
      in2(5) => in2(5),
      in2(4) => in2(4),
      in2(3) => in2(3),
      in2(2) => in2(2),
      in2(1) => in2(1),
      in2(0) => in2(0),
      result(15) => alu_result(15),
      result(14) => alu_result(14),
      result(13) => alu_result(13),
      result(12) => alu_result(12),
      result(11) => alu_result(11),
      result(10) => alu_result(10),
      result(9) => alu_result(9),
      result(8) => alu_result(8),
      result(7) => alu_result(7),
      result(6) => alu_result(6),
      result(5) => alu_result(5),
      result(4) => alu_result(4),
      result(3) => alu_result(3),
      result(2) => alu_result(2),
      result(1) => alu_result(1),
      result(0) => alu_result(0),
      overflow(15) => overflow(15),
      overflow(14) => overflow(14),
      overflow(13) => overflow(13),
      overflow(12) => overflow(12),
      overflow(11) => overflow(11),
      overflow(10) => overflow(10),
      overflow(9) => overflow(9),
      overflow(8) => overflow(8),
      overflow(7) => overflow(7),
      overflow(6) => overflow(6),
      overflow(5) => overflow(5),
      overflow(4) => overflow(4),
      overflow(3) => overflow(3),
      overflow(2) => overflow(2),
      overflow(1) => overflow(1),
      overflow(0) => overflow(0)
    );
  inport_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD106",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(0),
      O => inport_0_INBUF
    );
  inport_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD111",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(1),
      O => inport_1_INBUF
    );
  inport_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD116",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(2),
      O => inport_2_INBUF
    );
  inport_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD121",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(3),
      O => inport_3_INBUF
    );
  inport_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD131",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(4),
      O => inport_4_INBUF
    );
  inport_5_IBUF : X_BUF
    generic map(
      LOC => "IPAD126",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(5),
      O => inport_5_INBUF
    );
  inport_6_IBUF : X_BUF
    generic map(
      LOC => "IPAD136",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(6),
      O => inport_6_INBUF
    );
  inport_7_IBUF : X_BUF
    generic map(
      LOC => "IPAD148",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(7),
      O => inport_7_INBUF
    );
  inport_8_IBUF : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(8),
      O => inport_8_INBUF
    );
  inport_9_IBUF : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(9),
      O => inport_9_INBUF
    );
  inport_10_IBUF : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(10),
      O => inport_10_INBUF
    );
  inport_11_IBUF : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(11),
      O => inport_11_INBUF
    );
  inport_12_IBUF : X_BUF
    generic map(
      LOC => "IPAD75",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(12),
      O => inport_12_INBUF
    );
  inport_13_IBUF : X_BUF
    generic map(
      LOC => "PAD73",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(13),
      O => inport_13_INBUF
    );
  inport_14_IBUF : X_BUF
    generic map(
      LOC => "IPAD74",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(14),
      O => inport_14_INBUF
    );
  inport_15_IBUF : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(15),
      O => inport_15_INBUF
    );
  proc_ram_addr_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_10_F5MUX_19265,
      O => ram_addr(10)
    );
  proc_ram_addr_10_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X78Y70"
    )
    port map (
      IA => N368,
      IB => N369,
      SEL => proc_ram_addr_10_BXINV_19258,
      O => proc_ram_addr_10_F5MUX_19265
    );
  proc_ram_addr_10_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7636,
      O => proc_ram_addr_10_BXINV_19258
    );
  proc_ram_addr_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_11_F5MUX_19290,
      O => ram_addr(11)
    );
  proc_ram_addr_11_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X76Y71"
    )
    port map (
      IA => N366,
      IB => N367,
      SEL => proc_ram_addr_11_BXINV_19283,
      O => proc_ram_addr_11_F5MUX_19290
    );
  proc_ram_addr_11_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7636,
      O => proc_ram_addr_11_BXINV_19283
    );
  proc_N288_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_N288_F5MUX_19315,
      O => N288
    );
  proc_N288_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X78Y40"
    )
    port map (
      IA => N370,
      IB => N371,
      SEL => proc_N288_BXINV_19308,
      O => proc_N288_F5MUX_19315
    );
  proc_N288_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_11_7646,
      O => proc_N288_BXINV_19308
    );
  proc_in2_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_0_F5MUX_19340,
      O => in2(0)
    );
  proc_in2_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X78Y63"
    )
    port map (
      IA => N396,
      IB => N397,
      SEL => proc_in2_0_BXINV_19333,
      O => proc_in2_0_F5MUX_19340
    );
  proc_in2_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => N299,
      O => proc_in2_0_BXINV_19333
    );
  proc_in2_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_1_F5MUX_19365,
      O => in2(1)
    );
  proc_in2_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X79Y60"
    )
    port map (
      IA => N394,
      IB => N395,
      SEL => proc_in2_1_BXINV_19358,
      O => proc_in2_1_F5MUX_19365
    );
  proc_in2_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => N296,
      O => proc_in2_1_BXINV_19358
    );
  proc_in2_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_2_F5MUX_19390,
      O => in2(2)
    );
  proc_in2_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y60"
    )
    port map (
      IA => N392,
      IB => N393,
      SEL => proc_in2_2_BXINV_19383,
      O => proc_in2_2_F5MUX_19390
    );
  proc_in2_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => N293,
      O => proc_in2_2_BXINV_19383
    );
  proc_in2_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_3_F5MUX_19415,
      O => in2(3)
    );
  proc_in2_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X66Y58"
    )
    port map (
      IA => N390,
      IB => N391,
      SEL => proc_in2_3_BXINV_19408,
      O => proc_in2_3_F5MUX_19415
    );
  proc_in2_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => N290,
      O => proc_in2_3_BXINV_19408
    );
  proc_in2_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_4_F5MUX_19440,
      O => in2(4)
    );
  proc_in2_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y52"
    )
    port map (
      IA => N420,
      IB => N421,
      SEL => proc_in2_4_BXINV_19432,
      O => proc_in2_4_F5MUX_19440
    );
  proc_in2_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005_0,
      O => proc_in2_4_BXINV_19432
    );
  proc_in2_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_5_F5MUX_19465,
      O => in2(5)
    );
  proc_in2_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y62"
    )
    port map (
      IA => N412,
      IB => N413,
      SEL => proc_in2_5_BXINV_19457,
      O => proc_in2_5_F5MUX_19465
    );
  proc_in2_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005_0,
      O => proc_in2_5_BXINV_19457
    );
  proc_in2_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_6_F5MUX_19490,
      O => in2(6)
    );
  proc_in2_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X76Y58"
    )
    port map (
      IA => N416,
      IB => N417,
      SEL => proc_in2_6_BXINV_19482,
      O => proc_in2_6_F5MUX_19490
    );
  proc_in2_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005_0,
      O => proc_in2_6_BXINV_19482
    );
  proc_in2_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_7_F5MUX_19515,
      O => in2(7)
    );
  proc_in2_7_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X77Y53"
    )
    port map (
      IA => N404,
      IB => N405,
      SEL => proc_in2_7_BXINV_19507,
      O => proc_in2_7_F5MUX_19515
    );
  proc_in2_7_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005_0,
      O => proc_in2_7_BXINV_19507
    );
  proc_in2_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_8_F5MUX_19540,
      O => in2(8)
    );
  proc_in2_8_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X77Y61"
    )
    port map (
      IA => N414,
      IB => N415,
      SEL => proc_in2_8_BXINV_19532,
      O => proc_in2_8_F5MUX_19540
    );
  proc_in2_8_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005_0,
      O => proc_in2_8_BXINV_19532
    );
  proc_in2_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_9_F5MUX_19565,
      O => in2(9)
    );
  proc_in2_9_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X76Y65"
    )
    port map (
      IA => N418,
      IB => N419,
      SEL => proc_in2_9_BXINV_19557,
      O => proc_in2_9_F5MUX_19565
    );
  proc_in2_9_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005_0,
      O => proc_in2_9_BXINV_19557
    );
  proc_ram_addr_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_0_F5MUX_19590,
      O => ram_addr(0)
    );
  proc_ram_addr_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X78Y73"
    )
    port map (
      IA => N386,
      IB => N387,
      SEL => proc_ram_addr_0_BXINV_19583,
      O => proc_ram_addr_0_F5MUX_19590
    );
  proc_ram_addr_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7636,
      O => proc_ram_addr_0_BXINV_19583
    );
  proc_ram_addr_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_1_F5MUX_19615,
      O => ram_addr(1)
    );
  proc_ram_addr_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y61"
    )
    port map (
      IA => N384,
      IB => N385,
      SEL => proc_ram_addr_1_BXINV_19608,
      O => proc_ram_addr_1_F5MUX_19615
    );
  proc_ram_addr_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7636,
      O => proc_ram_addr_1_BXINV_19608
    );
  proc_ram_addr_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_2_F5MUX_19640,
      O => ram_addr(2)
    );
  proc_ram_addr_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X89Y63"
    )
    port map (
      IA => N382,
      IB => N383,
      SEL => proc_ram_addr_2_BXINV_19633,
      O => proc_ram_addr_2_F5MUX_19640
    );
  proc_ram_addr_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7636,
      O => proc_ram_addr_2_BXINV_19633
    );
  proc_ram_addr_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_3_F5MUX_19665,
      O => ram_addr(3)
    );
  proc_ram_addr_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X78Y61"
    )
    port map (
      IA => N380,
      IB => N381,
      SEL => proc_ram_addr_3_BXINV_19658,
      O => proc_ram_addr_3_F5MUX_19665
    );
  proc_ram_addr_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7636,
      O => proc_ram_addr_3_BXINV_19658
    );
  proc_ram_addr_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_4_F5MUX_19690,
      O => ram_addr(4)
    );
  proc_ram_addr_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X78Y58"
    )
    port map (
      IA => N364,
      IB => N365,
      SEL => proc_ram_addr_4_BXINV_19683,
      O => proc_ram_addr_4_F5MUX_19690
    );
  proc_ram_addr_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7636,
      O => proc_ram_addr_4_BXINV_19683
    );
  proc_ram_addr_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_5_F5MUX_19715,
      O => ram_addr(5)
    );
  proc_ram_addr_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X79Y56"
    )
    port map (
      IA => N362,
      IB => N363,
      SEL => proc_ram_addr_5_BXINV_19708,
      O => proc_ram_addr_5_F5MUX_19715
    );
  proc_ram_addr_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7636,
      O => proc_ram_addr_5_BXINV_19708
    );
  proc_ram_addr_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_6_F5MUX_19740,
      O => ram_addr(6)
    );
  proc_ram_addr_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X76Y53"
    )
    port map (
      IA => N360,
      IB => N361,
      SEL => proc_ram_addr_6_BXINV_19733,
      O => proc_ram_addr_6_F5MUX_19740
    );
  proc_ram_addr_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7636,
      O => proc_ram_addr_6_BXINV_19733
    );
  proc_ram_addr_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_7_F5MUX_19765,
      O => ram_addr(7)
    );
  proc_ram_addr_7_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X79Y55"
    )
    port map (
      IA => N358,
      IB => N359,
      SEL => proc_ram_addr_7_BXINV_19758,
      O => proc_ram_addr_7_F5MUX_19765
    );
  proc_ram_addr_7_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7636,
      O => proc_ram_addr_7_BXINV_19758
    );
  proc_ram_addr_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_8_F5MUX_19790,
      O => ram_addr(8)
    );
  proc_ram_addr_8_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X78Y68"
    )
    port map (
      IA => N356,
      IB => N357,
      SEL => proc_ram_addr_8_BXINV_19783,
      O => proc_ram_addr_8_F5MUX_19790
    );
  proc_ram_addr_8_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7636,
      O => proc_ram_addr_8_BXINV_19783
    );
  proc_ram_addr_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_9_F5MUX_19815,
      O => ram_addr(9)
    );
  proc_ram_addr_9_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X79Y72"
    )
    port map (
      IA => N354,
      IB => N355,
      SEL => proc_ram_addr_9_BXINV_19808,
      O => proc_ram_addr_9_F5MUX_19815
    );
  proc_ram_addr_9_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7636,
      O => proc_ram_addr_9_BXINV_19808
    );
  proc_in2_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X69Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_10_F5MUX_19840,
      O => in2(10)
    );
  proc_in2_10_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X69Y70"
    )
    port map (
      IA => N410,
      IB => N411,
      SEL => proc_in2_10_BXINV_19832,
      O => proc_in2_10_F5MUX_19840
    );
  proc_in2_10_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X69Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005_0,
      O => proc_in2_10_BXINV_19832
    );
  proc_in2_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_11_F5MUX_19865,
      O => in2(11)
    );
  proc_in2_11_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X78Y64"
    )
    port map (
      IA => N408,
      IB => N409,
      SEL => proc_in2_11_BXINV_19857,
      O => proc_in2_11_F5MUX_19865
    );
  proc_in2_11_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005_0,
      O => proc_in2_11_BXINV_19857
    );
  proc_in2_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_12_F5MUX_19890,
      O => in2(12)
    );
  proc_in2_12_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X60Y60"
    )
    port map (
      IA => N402,
      IB => N403,
      SEL => proc_in2_12_BXINV_19882,
      O => proc_in2_12_F5MUX_19890
    );
  proc_in2_12_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005_0,
      O => proc_in2_12_BXINV_19882
    );
  proc_in2_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X68Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_13_F5MUX_19915,
      O => in2(13)
    );
  proc_in2_13_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X68Y69"
    )
    port map (
      IA => N406,
      IB => N407,
      SEL => proc_in2_13_BXINV_19907,
      O => proc_in2_13_F5MUX_19915
    );
  proc_in2_13_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X68Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005_0,
      O => proc_in2_13_BXINV_19907
    );
  proc_in2_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X71Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_14_F5MUX_19940,
      O => in2(14)
    );
  proc_in2_14_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X71Y51"
    )
    port map (
      IA => N400,
      IB => N401,
      SEL => proc_in2_14_BXINV_19932,
      O => proc_in2_14_F5MUX_19940
    );
  proc_in2_14_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X71Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005_0,
      O => proc_in2_14_BXINV_19932
    );
  proc_in2_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_15_F5MUX_19965,
      O => in2(15)
    );
  proc_in2_15_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X79Y54"
    )
    port map (
      IA => N398,
      IB => N399,
      SEL => proc_in2_15_BXINV_19957,
      O => proc_in2_15_F5MUX_19965
    );
  proc_in2_15_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005_0,
      O => proc_in2_15_BXINV_19957
    );
  proc_N280_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_N280_F5MUX_19990,
      O => N280
    );
  proc_N280_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X78Y69"
    )
    port map (
      IA => N428,
      IB => N429,
      SEL => proc_N280_BXINV_19982,
      O => proc_N280_F5MUX_19990
    );
  proc_N280_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_0,
      O => proc_N280_BXINV_19982
    );
  proc_N278_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_N278_F5MUX_20015,
      O => N278
    );
  proc_N278_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X88Y67"
    )
    port map (
      IA => N426,
      IB => N427,
      SEL => proc_N278_BXINV_20007,
      O => proc_N278_F5MUX_20015
    );
  proc_N278_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_0,
      O => proc_N278_BXINV_20007
    );
  proc_N276_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_N276_F5MUX_20040,
      O => N276
    );
  proc_N276_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X89Y59"
    )
    port map (
      IA => N424,
      IB => N425,
      SEL => proc_N276_BXINV_20032,
      O => proc_N276_F5MUX_20040
    );
  proc_N276_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_0,
      O => proc_N276_BXINV_20032
    );
  proc_N274_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_N274_F5MUX_20065,
      O => N274
    );
  proc_N274_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X88Y57"
    )
    port map (
      IA => N422,
      IB => N423,
      SEL => proc_N274_BXINV_20057,
      O => proc_N274_F5MUX_20065
    );
  proc_N274_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_0,
      O => proc_N274_BXINV_20057
    );
  proc_reg_EX_overflow_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(10),
      O => proc_reg_EX_overflow_10_DXMUX_20095
    );
  proc_reg_EX_overflow_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_10_SW2_O,
      O => reg_EX_overflow_mux0001_10_SW2_O_0
    );
  proc_reg_EX_overflow_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_10_CLKINV_20077
    );
  proc_reg_EX_overflow_11_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X88Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_11_FFX_RST
    );
  reg_EX_overflow_11 : X_FF
    generic map(
      LOC => "SLICE_X88Y61",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_11_DXMUX_20130,
      CE => VCC,
      CLK => proc_reg_EX_overflow_11_CLKINV_20112,
      SET => GND,
      RST => proc_reg_EX_overflow_11_FFX_RST,
      O => reg_EX_overflow_11_7643
    );
  proc_reg_EX_overflow_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(11),
      O => proc_reg_EX_overflow_11_DXMUX_20130
    );
  proc_reg_EX_overflow_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_11_SW2_O,
      O => reg_EX_overflow_mux0001_11_SW2_O_0
    );
  proc_reg_EX_overflow_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_11_CLKINV_20112
    );
  reg_EX_overflow_mux0001_11_Q : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X88Y61"
    )
    port map (
      ADR0 => overflow(11),
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => reg_EX_overflow_mux0001_11_SW2_O_0,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001(11)
    );
  reg_EX_overflow_mux0001_12_SW0 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X91Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_8_7719,
      ADR2 => reg_ID_instr_4_7724,
      ADR3 => in1_12_0,
      O => reg_EX_overflow_mux0001_12_SW0_O
    );
  reg_EX_overflow_mux0001_12_Q : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X91Y56"
    )
    port map (
      ADR0 => overflow(12),
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => reg_EX_overflow_mux0001_12_SW0_O_0,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001(12)
    );
  proc_reg_EX_overflow_12_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X91Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_12_FFX_RST
    );
  reg_EX_overflow_12 : X_FF
    generic map(
      LOC => "SLICE_X91Y56",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_12_DXMUX_20165,
      CE => VCC,
      CLK => proc_reg_EX_overflow_12_CLKINV_20147,
      SET => GND,
      RST => proc_reg_EX_overflow_12_FFX_RST,
      O => reg_EX_overflow_12_7700
    );
  proc_reg_EX_overflow_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(12),
      O => proc_reg_EX_overflow_12_DXMUX_20165
    );
  proc_reg_EX_overflow_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_12_SW0_O,
      O => reg_EX_overflow_mux0001_12_SW0_O_0
    );
  proc_reg_EX_overflow_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_12_CLKINV_20147
    );
  reg_EX_overflow_mux0001_13_SW0 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X88Y55"
    )
    port map (
      ADR0 => in1_13_0,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_5_7726,
      ADR3 => reg_ID_instr_8_7719,
      O => reg_EX_overflow_mux0001_13_SW0_O
    );
  reg_EX_overflow_mux0001_13_Q : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X88Y55"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_mux0001_13_SW0_O_0,
      ADR3 => overflow(13),
      O => reg_EX_overflow_mux0001(13)
    );
  proc_reg_EX_overflow_13_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X88Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_13_FFX_RST
    );
  reg_EX_overflow_13 : X_FF
    generic map(
      LOC => "SLICE_X88Y55",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_13_DXMUX_20200,
      CE => VCC,
      CLK => proc_reg_EX_overflow_13_CLKINV_20182,
      SET => GND,
      RST => proc_reg_EX_overflow_13_FFX_RST,
      O => reg_EX_overflow_13_7702
    );
  proc_reg_EX_overflow_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(13),
      O => proc_reg_EX_overflow_13_DXMUX_20200
    );
  proc_reg_EX_overflow_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_13_SW0_O,
      O => reg_EX_overflow_mux0001_13_SW0_O_0
    );
  proc_reg_EX_overflow_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_13_CLKINV_20182
    );
  reg_EX_overflow_mux0001_14_SW0 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X89Y48"
    )
    port map (
      ADR0 => reg_ID_instr_6_7728,
      ADR1 => in1_14_0,
      ADR2 => reg_ID_instr_8_7719,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001_14_SW0_O
    );
  reg_EX_overflow_mux0001_14_Q : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X89Y48"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_mux0001_14_SW0_O_0,
      ADR3 => overflow(14),
      O => reg_EX_overflow_mux0001(14)
    );
  proc_reg_EX_overflow_14_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X89Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_14_FFX_RST
    );
  reg_EX_overflow_14 : X_FF
    generic map(
      LOC => "SLICE_X89Y48",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_14_DXMUX_20235,
      CE => VCC,
      CLK => proc_reg_EX_overflow_14_CLKINV_20217,
      SET => GND,
      RST => proc_reg_EX_overflow_14_FFX_RST,
      O => reg_EX_overflow_14_7704
    );
  proc_reg_EX_overflow_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(14),
      O => proc_reg_EX_overflow_14_DXMUX_20235
    );
  proc_reg_EX_overflow_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_14_SW0_O,
      O => reg_EX_overflow_mux0001_14_SW0_O_0
    );
  proc_reg_EX_overflow_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_14_CLKINV_20217
    );
  reg_EX_overflow_mux0001_15_SW0 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X79Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_7_7730,
      ADR2 => reg_ID_instr_8_7719,
      ADR3 => in1_15_0,
      O => reg_EX_overflow_mux0001_15_SW0_O
    );
  reg_EX_overflow_mux0001_15_Q : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X79Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => overflow(15),
      ADR2 => in1_cmp_eq0013_0,
      ADR3 => reg_EX_overflow_mux0001_15_SW0_O_0,
      O => reg_EX_overflow_mux0001(15)
    );
  proc_reg_EX_overflow_15_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X79Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_15_FFX_RST
    );
  reg_EX_overflow_15 : X_FF
    generic map(
      LOC => "SLICE_X79Y31",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_15_DXMUX_20270,
      CE => VCC,
      CLK => proc_reg_EX_overflow_15_CLKINV_20252,
      SET => GND,
      RST => proc_reg_EX_overflow_15_FFX_RST,
      O => reg_EX_overflow_15_7706
    );
  proc_reg_EX_overflow_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(15),
      O => proc_reg_EX_overflow_15_DXMUX_20270
    );
  proc_reg_EX_overflow_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_15_SW0_O,
      O => reg_EX_overflow_mux0001_15_SW0_O_0
    );
  proc_reg_EX_overflow_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_15_CLKINV_20252
    );
  wr_index_0_1 : X_LUT4
    generic map(
      INIT => X"FCFC",
      LOC => "SLICE_X90Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_instr_6_7648,
      ADR2 => branch_trigger_cmp_eq0002_0,
      ADR3 => VCC,
      O => wr_index(0)
    );
  proc_wr_index_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_index(0),
      O => wr_index_0_0
    );
  proc_wr_index_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => branch_trigger_cmp_eq0002,
      O => branch_trigger_cmp_eq0002_0
    );
  branch_trigger_cmp_eq00021 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X90Y67"
    )
    port map (
      ADR0 => reg_EX_instr_9_7734,
      ADR1 => reg_EX_instr_11_7733,
      ADR2 => reg_EX_instr_10_7732,
      ADR3 => N96_0,
      O => branch_trigger_cmp_eq0002
    );
  rd_index1_0_1 : X_LUT4
    generic map(
      INIT => X"CFCA",
      LOC => "SLICE_X89Y38"
    )
    port map (
      ADR0 => rd_index1_or0004_0,
      ADR1 => reg_IF_instr_6_7739,
      ADR2 => rd_index1_or0003_0,
      ADR3 => reg_IF_instr_3_7738,
      O => rd_index1(0)
    );
  proc_rd_index1_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1(0),
      O => rd_index1_0_0
    );
  proc_rd_index1_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0003,
      O => rd_index1_or0003_0
    );
  rd_index1_or00031 : X_LUT4
    generic map(
      INIT => X"FBF0",
      LOC => "SLICE_X89Y38"
    )
    port map (
      ADR0 => reg_IF_instr_9_7740,
      ADR1 => reg_IF_instr_10_7742,
      ADR2 => rd_index1_or0006_0,
      ADR3 => N16_0,
      O => rd_index1_or0003
    );
  ram_addr_and00001 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X78Y47"
    )
    port map (
      ADR0 => reg_ID_instr_10_7647,
      ADR1 => VCC,
      ADR2 => N13_0,
      ADR3 => VCC,
      O => ram_addr_and0000
    );
  proc_ram_addr_and0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_and0000,
      O => ram_addr_and0000_0
    );
  proc_ram_addr_and0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N13,
      O => N13_0
    );
  in1_cmp_eq000811 : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X78Y47"
    )
    port map (
      ADR0 => reg_ID_instr_15_7745,
      ADR1 => reg_ID_instr_13_7746,
      ADR2 => reg_ID_instr_11_7646,
      ADR3 => N102_0,
      O => N13
    );
  in2_and000578_SW01 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X78Y57"
    )
    port map (
      ADR0 => N373_0,
      ADR1 => VCC,
      ADR2 => in1_cmp_eq0014_0,
      ADR3 => reg_ID_data2_3_7715,
      O => N290
    );
  proc_N290_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N373,
      O => N373_0
    );
  in2_and000578_SW0_G : X_LUT4
    generic map(
      INIT => X"E4CC",
      LOC => "SLICE_X78Y57"
    )
    port map (
      ADR0 => wr_enable_or000185_0,
      ADR1 => reg_ID_data2_3_7715,
      ADR2 => reg_EX_result_3_7512,
      ADR3 => in1_or0009_0,
      O => N373
    );
  in2_and000578_SW21 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X79Y58"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => N375_0,
      ADR3 => reg_ID_data2_2_7713,
      O => N293
    );
  proc_N293_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => N375,
      O => N375_0
    );
  in2_and000578_SW2_G : X_LUT4
    generic map(
      INIT => X"E4CC",
      LOC => "SLICE_X79Y58"
    )
    port map (
      ADR0 => in1_or0009_0,
      ADR1 => reg_ID_data2_2_7713,
      ADR2 => reg_EX_result_2_7513,
      ADR3 => wr_enable_or000185_0,
      O => N375
    );
  in2_and000578_SW41 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X78Y67"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => reg_ID_data2_1_7711,
      ADR2 => N377_0,
      ADR3 => VCC,
      O => N296
    );
  proc_N296_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => N377,
      O => N377_0
    );
  in2_and000578_SW4_G : X_LUT4
    generic map(
      INIT => X"EA2A",
      LOC => "SLICE_X78Y67"
    )
    port map (
      ADR0 => reg_ID_data2_1_7711,
      ADR1 => wr_enable_or000185_0,
      ADR2 => in1_or0009_0,
      ADR3 => reg_EX_result_1_7514,
      O => N377
    );
  in2_and000578_SW61 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X76Y60"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => reg_ID_data2_0_7708,
      ADR2 => VCC,
      ADR3 => N379_0,
      O => N299
    );
  proc_N299_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => N379,
      O => N379_0
    );
  in2_and000578_SW6_G : X_LUT4
    generic map(
      INIT => X"CAAA",
      LOC => "SLICE_X76Y60"
    )
    port map (
      ADR0 => reg_ID_data2_0_7708,
      ADR1 => reg_EX_result_0_7515,
      ADR2 => wr_enable_or000185_0,
      ADR3 => in1_or0009_0,
      O => N379
    );
  in1_or0003 : X_LUT4
    generic map(
      INIT => X"0006",
      LOC => "SLICE_X90Y60"
    )
    port map (
      ADR0 => reg_EX_instr_9_7734,
      ADR1 => reg_EX_instr_13_7750,
      ADR2 => reg_EX_instr_11_7733,
      ADR3 => in1_or0003_SW0_O_0,
      O => in1_or0003_20466
    );
  proc_in1_or0003_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or0003_20466,
      O => in1_or0003_0
    );
  proc_in1_or0003_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or0003_SW0_O,
      O => in1_or0003_SW0_O_0
    );
  proc_in1_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(0),
      O => in1_0_0
    );
  proc_in1_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => N234,
      O => N234_0
    );
  proc_in1_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(1),
      O => in1_1_0
    );
  proc_in1_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => N236,
      O => N236_0
    );
  proc_in1_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(2),
      O => in1_2_0
    );
  proc_in1_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => N238,
      O => N238_0
    );
  proc_in1_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(3),
      O => in1_3_0
    );
  proc_in1_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N246,
      O => N246_0
    );
  proc_in1_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(4),
      O => in1_4_0
    );
  proc_in1_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N244,
      O => N244_0
    );
  proc_in1_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(5),
      O => in1_5_0
    );
  proc_in1_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => N242,
      O => N242_0
    );
  proc_in1_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(6),
      O => in1_6_0
    );
  proc_in1_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => N240,
      O => N240_0
    );
  proc_in1_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(7),
      O => in1_7_0
    );
  proc_in1_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N252,
      O => N252_0
    );
  proc_in1_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(8),
      O => in1_8_0
    );
  proc_in1_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => N250,
      O => N250_0
    );
  proc_in1_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(9),
      O => in1_9_0
    );
  proc_in1_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => N248,
      O => N248_0
    );
  proc_wr_enable_or000185_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable_or000185_20730,
      O => wr_enable_or000185_0
    );
  proc_wr_enable_or000185_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable_or000160_20723,
      O => wr_enable_or000160_0
    );
  proc_in1_and0008_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and0008_20754,
      O => in1_and0008_0
    );
  proc_in1_and0008_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => N88,
      O => N88_0
    );
  proc_in1_or0009_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or0009,
      O => in1_or0009_0
    );
  proc_in1_or0009_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or00091_SW0_O,
      O => in1_or00091_SW0_O_0
    );
  proc_wr_overflow_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow,
      O => wr_overflow_0
    );
  proc_wr_overflow_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_or000034_SW0_O,
      O => wr_overflow_or000034_SW0_O_0
    );
  proc_in1_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(10),
      O => in1_10_0
    );
  proc_in1_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => N256,
      O => N256_0
    );
  proc_in1_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(11),
      O => in1_11_0
    );
  proc_in1_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => N254,
      O => N254_0
    );
  proc_in1_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X74Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(12),
      O => in1_12_0
    );
  proc_in1_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X74Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_12_SW2_O,
      O => in1_12_SW2_O_0
    );
  proc_in1_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X70Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(13),
      O => in1_13_0
    );
  proc_in1_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X70Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_13_SW2_O,
      O => in1_13_SW2_O_0
    );
  proc_in1_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X69Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(14),
      O => in1_14_0
    );
  proc_in1_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X69Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_14_SW2_O,
      O => in1_14_SW2_O_0
    );
  proc_in1_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X74Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(15),
      O => in1_15_0
    );
  proc_in1_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X74Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_15_SW2_O,
      O => in1_15_SW2_O_0
    );
  proc_N11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => N11,
      O => N11_0
    );
  proc_N11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_10_146_20961,
      O => reg_ID_data1_mux0007_10_146_0
    );
  proc_alu_mode_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode(0),
      O => alu_mode_0_0
    );
  proc_alu_mode_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode_0_4_O,
      O => alu_mode_0_4_O_0
    );
  proc_in1_and0007101_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and0007101_21018,
      O => in1_and0007101_0
    );
  proc_in1_and0007101_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000728_O,
      O => in1_and000728_O_0
    );
  proc_in2_and000221_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000221_21042,
      O => in2_and000221_0
    );
  proc_in2_and000221_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and00028_21035,
      O => in2_and00028_0
    );
  proc_rd_index1_or0006_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0006,
      O => rd_index1_or0006_0
    );
  proc_rd_index1_or0006_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0005,
      O => rd_index1_or0005_0
    );
  proc_reg_EX_overflow_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(0),
      O => proc_reg_EX_overflow_0_DXMUX_21097
    );
  proc_reg_EX_overflow_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_0_SW2_O,
      O => reg_EX_overflow_mux0001_0_SW2_O_0
    );
  proc_reg_EX_overflow_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_0_CLKINV_21079
    );
  proc_reg_EX_overflow_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(1),
      O => proc_reg_EX_overflow_1_DXMUX_21132
    );
  proc_reg_EX_overflow_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_1_SW2_O,
      O => reg_EX_overflow_mux0001_1_SW2_O_0
    );
  proc_reg_EX_overflow_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_1_CLKINV_21114
    );
  proc_reg_EX_overflow_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(2),
      O => proc_reg_EX_overflow_2_DXMUX_21167
    );
  proc_reg_EX_overflow_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_2_SW2_O,
      O => reg_EX_overflow_mux0001_2_SW2_O_0
    );
  proc_reg_EX_overflow_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_2_CLKINV_21149
    );
  proc_reg_EX_overflow_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(3),
      O => proc_reg_EX_overflow_3_DXMUX_21202
    );
  proc_reg_EX_overflow_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_3_SW2_O,
      O => reg_EX_overflow_mux0001_3_SW2_O_0
    );
  proc_reg_EX_overflow_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_3_CLKINV_21184
    );
  proc_reg_EX_overflow_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(4),
      O => proc_reg_EX_overflow_4_DXMUX_21237
    );
  proc_reg_EX_overflow_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_4_SW2_O,
      O => reg_EX_overflow_mux0001_4_SW2_O_0
    );
  proc_reg_EX_overflow_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_4_CLKINV_21219
    );
  proc_reg_EX_overflow_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(5),
      O => proc_reg_EX_overflow_5_DXMUX_21272
    );
  proc_reg_EX_overflow_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_5_SW2_O,
      O => reg_EX_overflow_mux0001_5_SW2_O_0
    );
  proc_reg_EX_overflow_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_5_CLKINV_21254
    );
  proc_reg_EX_overflow_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(6),
      O => proc_reg_EX_overflow_6_DXMUX_21307
    );
  proc_reg_EX_overflow_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_6_SW2_O,
      O => reg_EX_overflow_mux0001_6_SW2_O_0
    );
  proc_reg_EX_overflow_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_6_CLKINV_21289
    );
  proc_reg_EX_overflow_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(7),
      O => proc_reg_EX_overflow_7_DXMUX_21342
    );
  proc_reg_EX_overflow_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_7_SW2_O,
      O => reg_EX_overflow_mux0001_7_SW2_O_0
    );
  proc_reg_EX_overflow_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_7_CLKINV_21324
    );
  proc_reg_EX_overflow_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(8),
      O => proc_reg_EX_overflow_8_DXMUX_21377
    );
  proc_reg_EX_overflow_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_8_SW2_O,
      O => reg_EX_overflow_mux0001_8_SW2_O_0
    );
  proc_reg_EX_overflow_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_8_CLKINV_21359
    );
  proc_reg_EX_overflow_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(9),
      O => proc_reg_EX_overflow_9_DXMUX_21412
    );
  proc_reg_EX_overflow_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_9_SW2_O,
      O => reg_EX_overflow_mux0001_9_SW2_O_0
    );
  proc_reg_EX_overflow_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_9_CLKINV_21394
    );
  proc_N15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => N15,
      O => N15_0
    );
  proc_N15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode_0_1_SW0_O,
      O => alu_mode_0_1_SW0_O_0
    );
  proc_alu_mode_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode(2),
      O => alu_mode_2_0
    );
  proc_alu_mode_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N102,
      O => N102_0
    );
  proc_in1_and0003_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and0003,
      O => in1_and0003_0
    );
  proc_in1_and0003_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000318_SW0_O,
      O => in1_and000318_SW0_O_0
    );
  proc_in1_and000772_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000772_21512,
      O => in1_and000772_0
    );
  proc_in1_and000772_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000771_O,
      O => in1_and000771_O_0
    );
  proc_in1_cmp_eq0013_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq0013,
      O => in1_cmp_eq0013_0
    );
  proc_in1_cmp_eq0013_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq00131_SW0_O,
      O => in1_cmp_eq00131_SW0_O_0
    );
  proc_in1_cmp_eq0014_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq0014,
      O => in1_cmp_eq0014_0
    );
  proc_in1_cmp_eq0014_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq00143_SW0_O,
      O => in1_cmp_eq00143_SW0_O_0
    );
  proc_wr_enable_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable,
      O => wr_enable_0
    );
  proc_wr_enable_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable_or000181,
      O => wr_enable_or000181_0
    );
  proc_in1_or000829_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or000829_21608,
      O => in1_or000829_0
    );
  proc_in1_or000829_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or000821_O,
      O => in1_or000821_O_0
    );
  in1_or000894 : X_LUT4
    generic map(
      INIT => X"F020",
      LOC => "SLICE_X78Y42"
    )
    port map (
      ADR0 => in1_or000861_O_0,
      ADR1 => reg_ID_instr_11_7646,
      ADR2 => in1_or000892_0,
      ADR3 => in1_or000829_0,
      O => in1_or0008
    );
  proc_in1_or0008_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or0008,
      O => in1_or0008_0
    );
  proc_in1_or0008_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or000861_O,
      O => in1_or000861_O_0
    );
  in1_or000861 : X_LUT4
    generic map(
      INIT => X"0180",
      LOC => "SLICE_X78Y42"
    )
    port map (
      ADR0 => reg_ID_instr_15_7745,
      ADR1 => reg_ID_instr_10_7647,
      ADR2 => reg_ID_instr_9_7636,
      ADR3 => reg_ID_instr_14_7772,
      O => in1_or000861_O
    );
  in2_and00025 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X78Y37"
    )
    port map (
      ADR0 => reg_ID_instr_0_7649,
      ADR1 => reg_ID_instr_2_7720,
      ADR2 => in1_and0008_SW3_O_0,
      ADR3 => N88_0,
      O => in2_and00025_21656
    );
  proc_in2_and00025_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and00025_21656,
      O => in2_and00025_0
    );
  proc_in2_and00025_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and0008_SW3_O,
      O => in1_and0008_SW3_O_0
    );
  in1_and0008_SW3 : X_LUT4
    generic map(
      INIT => X"EF1F",
      LOC => "SLICE_X78Y37"
    )
    port map (
      ADR0 => reg_ID_instr_9_7636,
      ADR1 => reg_ID_instr_10_7647,
      ADR2 => reg_ID_instr_1_7810,
      ADR3 => reg_ID_instr_11_7646,
      O => in1_and0008_SW3_O
    );
  proc_reg_ID_instr_1_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X79Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_instr_1_SRINV_21668,
      O => proc_reg_ID_instr_1_FFY_RST
    );
  reg_ID_instr_0 : X_FF
    generic map(
      LOC => "SLICE_X79Y36",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_1_DYMUX_21678,
      CE => VCC,
      CLK => proc_reg_ID_instr_1_CLKINV_21667,
      SET => GND,
      RST => proc_reg_ID_instr_1_FFY_RST,
      O => reg_ID_instr_0_7649
    );
  reg_ID_instr_mux0001_15_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X79Y36"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => VCC,
      ADR2 => reg_IF_instr_0_7836,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(15)
    );
  reg_ID_instr_mux0001_14_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X79Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_1_7835,
      ADR2 => branch_trigger_0,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(14)
    );
  proc_reg_ID_instr_1_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X79Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_instr_1_SRINV_21668,
      O => proc_reg_ID_instr_1_FFX_RST
    );
  reg_ID_instr_1 : X_FF
    generic map(
      LOC => "SLICE_X79Y36",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_1_DXMUX_21694,
      CE => VCC,
      CLK => proc_reg_ID_instr_1_CLKINV_21667,
      SET => GND,
      RST => proc_reg_ID_instr_1_FFX_RST,
      O => reg_ID_instr_1_7810
    );
  proc_reg_ID_instr_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(14),
      O => proc_reg_ID_instr_1_DXMUX_21694
    );
  proc_reg_ID_instr_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(15),
      O => proc_reg_ID_instr_1_DYMUX_21678
    );
  proc_reg_ID_instr_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_instr_1_SRINV_21668
    );
  proc_reg_ID_instr_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_instr_1_CLKINV_21667
    );
  reg_ID_instr_mux0001_13_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X79Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_2_7837,
      O => reg_ID_instr_mux0001(13)
    );
  proc_reg_ID_instr_3_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X79Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_instr_3_SRINV_21710,
      O => proc_reg_ID_instr_3_FFY_RST
    );
  reg_ID_instr_2 : X_FF
    generic map(
      LOC => "SLICE_X79Y38",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_3_DYMUX_21720,
      CE => VCC,
      CLK => proc_reg_ID_instr_3_CLKINV_21709,
      SET => GND,
      RST => proc_reg_ID_instr_3_FFY_RST,
      O => reg_ID_instr_2_7720
    );
  reg_ID_instr_mux0001_12_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X79Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_3_7738,
      O => reg_ID_instr_mux0001(12)
    );
  proc_reg_ID_instr_3_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X79Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_instr_3_SRINV_21710,
      O => proc_reg_ID_instr_3_FFX_RST
    );
  reg_ID_instr_3 : X_FF
    generic map(
      LOC => "SLICE_X79Y38",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_3_DXMUX_21736,
      CE => VCC,
      CLK => proc_reg_ID_instr_3_CLKINV_21709,
      SET => GND,
      RST => proc_reg_ID_instr_3_FFX_RST,
      O => reg_ID_instr_3_7722
    );
  proc_reg_ID_instr_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(12),
      O => proc_reg_ID_instr_3_DXMUX_21736
    );
  proc_reg_ID_instr_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(13),
      O => proc_reg_ID_instr_3_DYMUX_21720
    );
  proc_reg_ID_instr_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_instr_3_SRINV_21710
    );
  proc_reg_ID_instr_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_instr_3_CLKINV_21709
    );
  reg_ID_instr_mux0001_11_1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X79Y40"
    )
    port map (
      ADR0 => reg_IF_instr_4_7839,
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(11)
    );
  proc_reg_ID_instr_5_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X79Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_instr_5_SRINV_21752,
      O => proc_reg_ID_instr_5_FFY_RST
    );
  reg_ID_instr_4 : X_FF
    generic map(
      LOC => "SLICE_X79Y40",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_5_DYMUX_21762,
      CE => VCC,
      CLK => proc_reg_ID_instr_5_CLKINV_21751,
      SET => GND,
      RST => proc_reg_ID_instr_5_FFY_RST,
      O => reg_ID_instr_4_7724
    );
  reg_ID_instr_mux0001_10_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X79Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_IF_instr_5_7838,
      ADR3 => branch_trigger_0,
      O => reg_ID_instr_mux0001(10)
    );
  proc_reg_ID_instr_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(10),
      O => proc_reg_ID_instr_5_DXMUX_21778
    );
  proc_reg_ID_instr_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(11),
      O => proc_reg_ID_instr_5_DYMUX_21762
    );
  proc_reg_ID_instr_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_instr_5_SRINV_21752
    );
  proc_reg_ID_instr_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_instr_5_CLKINV_21751
    );
  proc_reg_ID_instr_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(8),
      O => proc_reg_ID_instr_7_DXMUX_21820
    );
  proc_reg_ID_instr_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(9),
      O => proc_reg_ID_instr_7_DYMUX_21804
    );
  proc_reg_ID_instr_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_instr_7_SRINV_21794
    );
  proc_reg_ID_instr_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_instr_7_CLKINV_21793
    );
  proc_reg_ID_instr_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(6),
      O => proc_reg_ID_instr_9_DXMUX_21862
    );
  proc_reg_ID_instr_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(7),
      O => proc_reg_ID_instr_9_DYMUX_21846
    );
  proc_reg_ID_instr_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_instr_9_SRINV_21836
    );
  proc_reg_ID_instr_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_instr_9_CLKINV_21835
    );
  proc_reg_IF_instr_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(14),
      O => proc_reg_IF_instr_1_DXMUX_21904
    );
  proc_reg_IF_instr_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(15),
      O => proc_reg_IF_instr_1_DYMUX_21888
    );
  proc_reg_IF_instr_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_instr_1_SRINV_21878
    );
  proc_reg_IF_instr_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_instr_1_CLKINV_21877
    );
  proc_reg_IF_instr_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(12),
      O => proc_reg_IF_instr_3_DXMUX_21946
    );
  proc_reg_IF_instr_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(13),
      O => proc_reg_IF_instr_3_DYMUX_21930
    );
  proc_reg_IF_instr_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_instr_3_SRINV_21920
    );
  proc_reg_IF_instr_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_instr_3_CLKINV_21919
    );
  proc_reg_IF_instr_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(10),
      O => proc_reg_IF_instr_5_DXMUX_21988
    );
  proc_reg_IF_instr_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(11),
      O => proc_reg_IF_instr_5_DYMUX_21972
    );
  proc_reg_IF_instr_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_instr_5_SRINV_21962
    );
  proc_reg_IF_instr_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_instr_5_CLKINV_21961
    );
  proc_reg_IF_instr_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X85Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(8),
      O => proc_reg_IF_instr_7_DYMUX_22011
    );
  proc_reg_IF_instr_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X85Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_instr_7_CLKINV_22000
    );
  proc_reg_IF_instr_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(6),
      O => proc_reg_IF_instr_9_DXMUX_22053
    );
  proc_reg_IF_instr_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(7),
      O => proc_reg_IF_instr_9_DYMUX_22037
    );
  proc_reg_IF_instr_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_instr_9_SRINV_22027
    );
  proc_reg_IF_instr_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_instr_9_CLKINV_22026
    );
  proc_reg_ID_instr_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(4),
      O => proc_reg_ID_instr_11_DXMUX_22095
    );
  proc_reg_ID_instr_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(5),
      O => proc_reg_ID_instr_11_DYMUX_22079
    );
  proc_reg_ID_instr_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_instr_11_SRINV_22069
    );
  proc_reg_ID_instr_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_instr_11_CLKINV_22068
    );
  proc_reg_ID_instr_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(2),
      O => proc_reg_ID_instr_13_DXMUX_22137
    );
  proc_reg_ID_instr_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(3),
      O => proc_reg_ID_instr_13_DYMUX_22121
    );
  proc_reg_ID_instr_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_instr_13_SRINV_22111
    );
  proc_reg_ID_instr_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_instr_13_CLKINV_22110
    );
  proc_reg_ID_instr_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(0),
      O => proc_reg_ID_instr_15_DXMUX_22179
    );
  proc_reg_ID_instr_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(1),
      O => proc_reg_ID_instr_15_DYMUX_22163
    );
  proc_reg_ID_instr_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_instr_15_SRINV_22153
    );
  proc_reg_ID_instr_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_instr_15_CLKINV_22152
    );
  proc_reg_IF_instr_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(4),
      O => proc_reg_IF_instr_11_DXMUX_22221
    );
  proc_reg_IF_instr_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(5),
      O => proc_reg_IF_instr_11_DYMUX_22205
    );
  proc_reg_IF_instr_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_instr_11_SRINV_22195
    );
  proc_reg_IF_instr_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_instr_11_CLKINV_22194
    );
  proc_reg_IF_instr_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(2),
      O => proc_reg_IF_instr_13_DXMUX_22263
    );
  proc_reg_IF_instr_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(3),
      O => proc_reg_IF_instr_13_DYMUX_22247
    );
  proc_reg_IF_instr_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_instr_13_SRINV_22237
    );
  proc_reg_IF_instr_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_instr_13_CLKINV_22236
    );
  proc_reg_IF_instr_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(0),
      O => proc_reg_IF_instr_15_DXMUX_22305
    );
  proc_reg_IF_instr_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(1),
      O => proc_reg_IF_instr_15_DYMUX_22289
    );
  proc_reg_IF_instr_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_instr_15_SRINV_22279
    );
  proc_reg_IF_instr_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_instr_15_CLKINV_22278
    );
  proc_reg_EX_instr_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(8),
      O => proc_reg_EX_instr_7_DXMUX_22347
    );
  proc_reg_EX_instr_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(9),
      O => proc_reg_EX_instr_7_DYMUX_22331
    );
  proc_reg_EX_instr_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_instr_7_SRINV_22321
    );
  proc_reg_EX_instr_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_instr_7_CLKINV_22320
    );
  proc_reg_EX_instr_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(6),
      O => proc_reg_EX_instr_9_DXMUX_22389
    );
  proc_reg_EX_instr_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(7),
      O => proc_reg_EX_instr_9_DYMUX_22373
    );
  proc_reg_EX_instr_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_instr_9_SRINV_22363
    );
  proc_reg_EX_instr_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_instr_9_CLKINV_22362
    );
  proc_PC_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(1),
      O => proc_PC_1_DXMUX_22431
    );
  proc_PC_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(0),
      O => proc_PC_1_DYMUX_22417
    );
  proc_PC_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_PC_1_SRINV_22408
    );
  proc_PC_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X91Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_PC_1_CLKINVNOT
    );
  proc_PC_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(3),
      O => proc_PC_3_DXMUX_22473
    );
  proc_PC_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(2),
      O => proc_PC_3_DYMUX_22459
    );
  proc_PC_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_PC_3_SRINV_22451
    );
  proc_PC_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X88Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_PC_3_CLKINVNOT
    );
  proc_PC_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(5),
      O => proc_PC_5_DXMUX_22515
    );
  proc_PC_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(4),
      O => proc_PC_5_DYMUX_22501
    );
  proc_PC_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_PC_5_SRINV_22493
    );
  proc_PC_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X89Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_PC_5_CLKINVNOT
    );
  proc_PC_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_PC_6_F,
      O => outport(15)
    );
  proc_PC_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(6),
      O => proc_PC_6_DYMUX_22541
    );
  proc_PC_6_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X89Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_PC_6_CLKINVNOT
    );
  proc_reg_EX_result_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(11),
      O => proc_reg_EX_result_11_DXMUX_22592
    );
  proc_reg_EX_result_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(10),
      O => proc_reg_EX_result_11_DYMUX_22577
    );
  proc_reg_EX_result_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_result_11_SRINV_22568
    );
  proc_reg_EX_result_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_result_11_CLKINV_22567
    );
  proc_reg_EX_result_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(13),
      O => proc_reg_EX_result_13_DYMUX_22615
    );
  proc_reg_EX_result_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_result_13_CLKINV_22605
    );
  proc_reg_EX_result_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(15),
      O => proc_reg_EX_result_15_DXMUX_22657
    );
  proc_reg_EX_result_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(14),
      O => proc_reg_EX_result_15_DYMUX_22642
    );
  proc_reg_EX_result_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_result_15_SRINV_22633
    );
  proc_reg_EX_result_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_result_15_CLKINV_22632
    );
  proc_reg_EX_instr_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(4),
      O => proc_reg_EX_instr_11_DXMUX_22699
    );
  proc_reg_EX_instr_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(5),
      O => proc_reg_EX_instr_11_DYMUX_22683
    );
  proc_reg_EX_instr_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_instr_11_SRINV_22673
    );
  proc_reg_EX_instr_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_instr_11_CLKINV_22672
    );
  reg_EX_instr_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X90Y65"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => reg_ID_instr_12_7771,
      ADR3 => VCC,
      O => reg_EX_instr_mux0001(3)
    );
  proc_reg_EX_instr_13_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X90Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_EX_instr_13_SRINV_22715,
      O => proc_reg_EX_instr_13_FFY_RST
    );
  reg_EX_instr_12 : X_FF
    generic map(
      LOC => "SLICE_X90Y65",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_13_DYMUX_22725,
      CE => VCC,
      CLK => proc_reg_EX_instr_13_CLKINV_22714,
      SET => GND,
      RST => proc_reg_EX_instr_13_FFY_RST,
      O => reg_EX_instr_12_7752
    );
  reg_EX_instr_mux0001_2_1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X90Y65"
    )
    port map (
      ADR0 => reg_ID_instr_13_7746,
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_EX_instr_mux0001(2)
    );
  proc_reg_EX_instr_13_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X90Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_EX_instr_13_SRINV_22715,
      O => proc_reg_EX_instr_13_FFX_RST
    );
  reg_EX_instr_13 : X_FF
    generic map(
      LOC => "SLICE_X90Y65",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_13_DXMUX_22741,
      CE => VCC,
      CLK => proc_reg_EX_instr_13_CLKINV_22714,
      SET => GND,
      RST => proc_reg_EX_instr_13_FFX_RST,
      O => reg_EX_instr_13_7750
    );
  proc_reg_EX_instr_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(2),
      O => proc_reg_EX_instr_13_DXMUX_22741
    );
  proc_reg_EX_instr_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(3),
      O => proc_reg_EX_instr_13_DYMUX_22725
    );
  proc_reg_EX_instr_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_instr_13_SRINV_22715
    );
  proc_reg_EX_instr_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_instr_13_CLKINV_22714
    );
  proc_reg_EX_instr_15_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X90Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_EX_instr_15_SRINV_22757,
      O => proc_reg_EX_instr_15_FFY_RST
    );
  reg_EX_instr_14 : X_FF
    generic map(
      LOC => "SLICE_X90Y64",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_15_DYMUX_22767,
      CE => VCC,
      CLK => proc_reg_EX_instr_15_CLKINV_22756,
      SET => GND,
      RST => proc_reg_EX_instr_15_FFY_RST,
      O => reg_EX_instr_14_7753
    );
  reg_EX_instr_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X90Y64"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_14_7772,
      O => reg_EX_instr_mux0001(1)
    );
  reg_EX_instr_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X90Y64"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_15_7745,
      O => reg_EX_instr_mux0001(0)
    );
  proc_reg_EX_instr_15_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X90Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_EX_instr_15_SRINV_22757,
      O => proc_reg_EX_instr_15_FFX_RST
    );
  reg_EX_instr_15 : X_FF
    generic map(
      LOC => "SLICE_X90Y64",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_15_DXMUX_22783,
      CE => VCC,
      CLK => proc_reg_EX_instr_15_CLKINV_22756,
      SET => GND,
      RST => proc_reg_EX_instr_15_FFX_RST,
      O => reg_EX_instr_15_7754
    );
  proc_reg_EX_instr_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(0),
      O => proc_reg_EX_instr_15_DXMUX_22783
    );
  proc_reg_EX_instr_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(1),
      O => proc_reg_EX_instr_15_DYMUX_22767
    );
  proc_reg_EX_instr_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_instr_15_SRINV_22757
    );
  proc_reg_EX_instr_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_instr_15_CLKINV_22756
    );
  result_0_1 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X73Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => alu_result(0),
      ADR2 => ram_data(0),
      ADR3 => in1_cmp_eq0008_0,
      O => result(0)
    );
  proc_reg_EX_result_1_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X73Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_EX_result_1_SRINV_22801,
      O => proc_reg_EX_result_1_FFY_RST
    );
  reg_EX_result_0 : X_FF
    generic map(
      LOC => "SLICE_X73Y68",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_1_DYMUX_22810,
      CE => VCC,
      CLK => proc_reg_EX_result_1_CLKINV_22800,
      SET => GND,
      RST => proc_reg_EX_result_1_FFY_RST,
      O => reg_EX_result_0_7515
    );
  result_1_1 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X73Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => alu_result(1),
      ADR2 => ram_data(1),
      ADR3 => in1_cmp_eq0008_0,
      O => result(1)
    );
  proc_reg_EX_result_1_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X73Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_EX_result_1_SRINV_22801,
      O => proc_reg_EX_result_1_FFX_RST
    );
  reg_EX_result_1 : X_FF
    generic map(
      LOC => "SLICE_X73Y68",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_1_DXMUX_22825,
      CE => VCC,
      CLK => proc_reg_EX_result_1_CLKINV_22800,
      SET => GND,
      RST => proc_reg_EX_result_1_FFX_RST,
      O => reg_EX_result_1_7514
    );
  proc_reg_EX_result_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X73Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(1),
      O => proc_reg_EX_result_1_DXMUX_22825
    );
  proc_reg_EX_result_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X73Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(0),
      O => proc_reg_EX_result_1_DYMUX_22810
    );
  proc_reg_EX_result_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X73Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_result_1_SRINV_22801
    );
  proc_reg_EX_result_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X73Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_result_1_CLKINV_22800
    );
  proc_reg_EX_result_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(3),
      O => proc_reg_EX_result_3_DXMUX_22867
    );
  proc_reg_EX_result_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(2),
      O => proc_reg_EX_result_3_DYMUX_22852
    );
  proc_reg_EX_result_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_result_3_SRINV_22843
    );
  proc_reg_EX_result_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_result_3_CLKINV_22842
    );
  result_3_1 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X65Y62"
    )
    port map (
      ADR0 => VCC,
      ADR1 => alu_result(3),
      ADR2 => ram_data(3),
      ADR3 => in1_cmp_eq0008_0,
      O => result(3)
    );
  proc_reg_EX_result_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(5),
      O => proc_reg_EX_result_5_DXMUX_22909
    );
  proc_reg_EX_result_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(4),
      O => proc_reg_EX_result_5_DYMUX_22894
    );
  proc_reg_EX_result_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_result_5_SRINV_22885
    );
  proc_reg_EX_result_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_result_5_CLKINV_22884
    );
  proc_reg_EX_result_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(7),
      O => proc_reg_EX_result_7_DXMUX_22951
    );
  proc_reg_EX_result_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(6),
      O => proc_reg_EX_result_7_DYMUX_22936
    );
  proc_reg_EX_result_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_result_7_SRINV_22927
    );
  proc_reg_EX_result_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_result_7_CLKINV_22926
    );
  proc_reg_EX_result_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(9),
      O => proc_reg_EX_result_9_DXMUX_22993
    );
  proc_reg_EX_result_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(8),
      O => proc_reg_EX_result_9_DYMUX_22978
    );
  proc_reg_EX_result_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_result_9_SRINV_22969
    );
  proc_reg_EX_result_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_result_9_CLKINV_22968
    );
  proc_reg_ID_data1_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y106",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(11),
      O => proc_reg_ID_data1_11_DXMUX_23035
    );
  proc_reg_ID_data1_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y106",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(10),
      O => proc_reg_ID_data1_11_DYMUX_23021
    );
  proc_reg_ID_data1_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y106",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data1_11_SRINV_23013
    );
  proc_reg_ID_data1_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y106",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data1_11_CLKINV_23012
    );
  proc_reg_ID_data1_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X74Y105",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(13),
      O => proc_reg_ID_data1_13_DXMUX_23077
    );
  proc_reg_ID_data1_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X74Y105",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(12),
      O => proc_reg_ID_data1_13_DYMUX_23063
    );
  proc_reg_ID_data1_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X74Y105",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data1_13_SRINV_23055
    );
  proc_reg_ID_data1_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X74Y105",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data1_13_CLKINV_23054
    );
  proc_reg_ID_data1_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X75Y92",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(15),
      O => proc_reg_ID_data1_15_DXMUX_23119
    );
  proc_reg_ID_data1_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X75Y92",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(14),
      O => proc_reg_ID_data1_15_DYMUX_23105
    );
  proc_reg_ID_data1_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X75Y92",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data1_15_SRINV_23097
    );
  proc_reg_ID_data1_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X75Y92",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data1_15_CLKINV_23096
    );
  proc_reg_ID_data2_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(4),
      O => proc_reg_ID_data2_11_DXMUX_23161
    );
  proc_reg_ID_data2_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(5),
      O => proc_reg_ID_data2_11_DYMUX_23147
    );
  proc_reg_ID_data2_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_11_SRINV_23139
    );
  proc_reg_ID_data2_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_11_CLKINV_23138
    );
  proc_reg_ID_data2_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X71Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(2),
      O => proc_reg_ID_data2_13_DXMUX_23203
    );
  proc_reg_ID_data2_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X71Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(3),
      O => proc_reg_ID_data2_13_DYMUX_23189
    );
  proc_reg_ID_data2_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X71Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_13_SRINV_23181
    );
  proc_reg_ID_data2_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X71Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_13_CLKINV_23180
    );
  proc_reg_ID_data2_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X71Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(0),
      O => proc_reg_ID_data2_15_DXMUX_23245
    );
  proc_reg_ID_data2_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X71Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(1),
      O => proc_reg_ID_data2_15_DYMUX_23231
    );
  proc_reg_ID_data2_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X71Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_15_SRINV_23223
    );
  proc_reg_ID_data2_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X71Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_15_CLKINV_23222
    );
  proc_reg_ID_data1_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(1),
      O => proc_reg_ID_data1_1_DXMUX_23287
    );
  proc_reg_ID_data1_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(0),
      O => proc_reg_ID_data1_1_DYMUX_23272
    );
  proc_reg_ID_data1_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data1_1_SRINV_23263
    );
  proc_reg_ID_data1_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data1_1_CLKINV_23262
    );
  proc_reg_ID_data1_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(3),
      O => proc_reg_ID_data1_3_DXMUX_23329
    );
  proc_reg_ID_data1_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(2),
      O => proc_reg_ID_data1_3_DYMUX_23314
    );
  proc_reg_ID_data1_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data1_3_SRINV_23305
    );
  proc_reg_ID_data1_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data1_3_CLKINV_23304
    );
  proc_reg_ID_data2_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(14),
      O => proc_reg_ID_data2_1_DXMUX_23371
    );
  proc_reg_ID_data2_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(15),
      O => proc_reg_ID_data2_1_DYMUX_23357
    );
  proc_reg_ID_data2_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_1_SRINV_23349
    );
  proc_reg_ID_data2_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_1_CLKINV_23348
    );
  proc_reg_ID_data1_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(5),
      O => proc_reg_ID_data1_5_DXMUX_23413
    );
  proc_reg_ID_data1_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(4),
      O => proc_reg_ID_data1_5_DYMUX_23398
    );
  proc_reg_ID_data1_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data1_5_SRINV_23389
    );
  proc_reg_ID_data1_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data1_5_CLKINV_23388
    );
  proc_reg_ID_data2_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(12),
      O => proc_reg_ID_data2_3_DXMUX_23455
    );
  proc_reg_ID_data2_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(13),
      O => proc_reg_ID_data2_3_DYMUX_23441
    );
  proc_reg_ID_data2_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_3_SRINV_23433
    );
  proc_reg_ID_data2_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_3_CLKINV_23432
    );
  proc_reg_ID_data1_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(7),
      O => proc_reg_ID_data1_7_DXMUX_23497
    );
  proc_reg_ID_data1_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(6),
      O => proc_reg_ID_data1_7_DYMUX_23483
    );
  proc_reg_ID_data1_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data1_7_SRINV_23474
    );
  proc_reg_ID_data1_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data1_7_CLKINV_23473
    );
  proc_reg_ID_data1_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y98",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(8),
      O => proc_reg_ID_data1_8_DYMUX_23520
    );
  proc_reg_ID_data1_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y98",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data1_8_CLKINV_23511
    );
  proc_reg_ID_data2_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(8),
      O => proc_reg_ID_data2_7_DXMUX_23562
    );
  proc_reg_ID_data2_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(9),
      O => proc_reg_ID_data2_7_DYMUX_23548
    );
  proc_reg_ID_data2_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_7_SRINV_23540
    );
  proc_reg_ID_data2_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_7_CLKINV_23539
    );
  proc_reg_ID_data2_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X73Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(6),
      O => proc_reg_ID_data2_9_DYMUX_23585
    );
  proc_reg_ID_data2_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X73Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_9_CLKINV_23576
    );
  proc_wr_index_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_index(2),
      O => wr_index_2_0
    );
  proc_wr_index_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_index(1),
      O => wr_index_1_0
    );
  outport_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_9_F,
      O => outport(9)
    );
  outport_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_cmp_eq0000_23628,
      O => outport_cmp_eq0000_0
    );
  proc_N23_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => N23,
      O => N23_0
    );
  proc_N23_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1(1),
      O => rd_index1_1_0
    );
  proc_N151_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => N151,
      O => N151_0
    );
  proc_N151_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index2(1),
      O => rd_index2_1_0
    );
  proc_N17_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => N17,
      O => N17_0
    );
  proc_N17_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index2(2),
      O => rd_index2_2_0
    );
  proc_N8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => N8,
      O => N8_0
    );
  proc_N8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => or0000_0_or0000,
      O => or0000_0_or0000_0
    );
  proc_N191_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => N191,
      O => N191_0
    );
  proc_N2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => N2_23769,
      O => N2_0
    );
  proc_N2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => N21,
      O => N21_0
    );
  proc_reg_EX_n_flag_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => n_flag,
      O => proc_reg_EX_n_flag_DYMUX_23779
    );
  proc_reg_EX_n_flag_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_n_flag_CLKINV_23776
    );
  proc_N4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => N4,
      O => N4_0
    );
  proc_N4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => N96,
      O => N96_0
    );
  proc_in1_and000710_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000710_23831,
      O => in1_and000710_0
    );
  proc_in1_and000710_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N811,
      O => N811_0
    );
  reg_ID_data2_mux0007_15_SW0 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X89Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_0_7836,
      ADR2 => VCC,
      ADR3 => N5_0,
      O => N131
    );
  proc_N131_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => N131,
      O => N131_0
    );
  proc_N131_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => N5,
      O => N5_0
    );
  reg_ID_data2_mux0006_12_1 : X_LUT4
    generic map(
      INIT => X"FCAC",
      LOC => "SLICE_X89Y39"
    )
    port map (
      ADR0 => reg_ID_instr_9_7636,
      ADR1 => N8_0,
      ADR2 => rd_index1_or0006_0,
      ADR3 => N9_0,
      O => N5
    );
  reg_ID_data2_mux0007_10_2 : X_LUT4
    generic map(
      INIT => X"FF88",
      LOC => "SLICE_X78Y33"
    )
    port map (
      ADR0 => rd_index1_or0005_0,
      ADR1 => reg_IF_instr_5_7838,
      ADR2 => VCC,
      ADR3 => N811_0,
      O => reg_ID_data2_mux0007_10_2_23876
    );
  reg_ID_data2_mux0007_10_37 : X_LUT4
    generic map(
      INIT => X"C0C8",
      LOC => "SLICE_X78Y33"
    )
    port map (
      ADR0 => reg_ID_data2_mux0007_10_13_0,
      ADR1 => N2_0,
      ADR2 => reg_ID_data2_mux0007_10_2_0,
      ADR3 => rd_index1_or0006_0,
      O => reg_ID_data2_mux0007(10)
    );
  proc_reg_ID_data2_5_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X78Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_5_FFX_RST
    );
  reg_ID_data2_5 : X_FF
    generic map(
      LOC => "SLICE_X78Y33",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_5_DXMUX_23886,
      CE => VCC,
      CLK => proc_reg_ID_data2_5_CLKINV_23869,
      SET => GND,
      RST => proc_reg_ID_data2_5_FFX_RST,
      O => reg_ID_data2_5_7669
    );
  proc_reg_ID_data2_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(10),
      O => proc_reg_ID_data2_5_DXMUX_23886
    );
  proc_reg_ID_data2_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007_10_2_23876,
      O => reg_ID_data2_mux0007_10_2_0
    );
  proc_reg_ID_data2_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_5_CLKINV_23869
    );
  reg_ID_data2_mux0007_11_2 : X_LUT4
    generic map(
      INIT => X"FAAA",
      LOC => "SLICE_X79Y32"
    )
    port map (
      ADR0 => N811_0,
      ADR1 => VCC,
      ADR2 => reg_IF_instr_4_7839,
      ADR3 => rd_index1_or0005_0,
      O => reg_ID_data2_mux0007_11_2_23911
    );
  reg_ID_data2_mux0007_11_37 : X_LUT4
    generic map(
      INIT => X"D0C0",
      LOC => "SLICE_X79Y32"
    )
    port map (
      ADR0 => rd_index1_or0006_0,
      ADR1 => reg_ID_data2_mux0007_11_2_0,
      ADR2 => N2_0,
      ADR3 => reg_ID_data2_mux0007_11_13_0,
      O => reg_ID_data2_mux0007(11)
    );
  proc_reg_ID_data2_4_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X79Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_4_FFX_RST
    );
  reg_ID_data2_4 : X_FF
    generic map(
      LOC => "SLICE_X79Y32",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_4_DXMUX_23921,
      CE => VCC,
      CLK => proc_reg_ID_data2_4_CLKINV_23904,
      SET => GND,
      RST => proc_reg_ID_data2_4_FFX_RST,
      O => reg_ID_data2_4_7667
    );
  proc_reg_ID_data2_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(11),
      O => proc_reg_ID_data2_4_DXMUX_23921
    );
  proc_reg_ID_data2_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007_11_2_23911,
      O => reg_ID_data2_mux0007_11_2_0
    );
  proc_reg_ID_data2_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_4_CLKINV_23904
    );
  reg_ID_data2_mux0007_11_13 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X78Y27"
    )
    port map (
      ADR0 => reg_IF_instr_4_7839,
      ADR1 => rd_data2(4),
      ADR2 => reg_ID_data2_mux0007_10_7_0,
      ADR3 => or0000_0_or0000_0,
      O => reg_ID_data2_mux0007_11_13_23949
    );
  proc_reg_ID_data2_mux0007_11_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007_11_13_23949,
      O => reg_ID_data2_mux0007_11_13_0
    );
  proc_reg_ID_data2_mux0007_11_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007_10_7,
      O => reg_ID_data2_mux0007_10_7_0
    );
  reg_ID_data2_mux0007_11_7 : X_LUT4
    generic map(
      INIT => X"B333",
      LOC => "SLICE_X78Y27"
    )
    port map (
      ADR0 => reg_IF_instr_10_7742,
      ADR1 => reg_ID_data1_mux0007_10_146_0,
      ADR2 => reg_IF_instr_11_7789,
      ADR3 => reg_IF_instr_9_7740,
      O => reg_ID_data2_mux0007_10_7
    );
  reg_ID_data2_mux0006_0_21 : X_LUT4
    generic map(
      INIT => X"EEAA",
      LOC => "SLICE_X88Y32"
    )
    port map (
      ADR0 => N19_0,
      ADR1 => N1011_0,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_8_7841,
      O => N18
    );
  proc_N18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N18,
      O => N18_0
    );
  proc_N18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N19,
      O => N19_0
    );
  reg_ID_data2_mux0006_8_11 : X_LUT4
    generic map(
      INIT => X"F4F0",
      LOC => "SLICE_X88Y32"
    )
    port map (
      ADR0 => or0000_0_or0000_0,
      ADR1 => rd_index1_or0005_0,
      ADR2 => N811_0,
      ADR3 => reg_IF_instr_5_7838,
      O => N19
    );
  proc_reg_EX_z_flag_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X68Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_z_flag_FFY_RST
    );
  reg_EX_z_flag : X_FF
    generic map(
      LOC => "SLICE_X68Y39",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_z_flag_DYMUX_23983,
      CE => VCC,
      CLK => proc_reg_EX_z_flag_CLKINV_23980,
      SET => GND,
      RST => proc_reg_EX_z_flag_FFY_RST,
      O => reg_EX_z_flag_7892
    );
  proc_reg_EX_z_flag_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X68Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => z_flag,
      O => proc_reg_EX_z_flag_DYMUX_23983
    );
  proc_reg_EX_z_flag_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X68Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_z_flag_CLKINV_23980
    );
  reg_ID_data2_mux0006_12_1_SW1 : X_LUT4
    generic map(
      INIT => X"9F0F",
      LOC => "SLICE_X89Y32"
    )
    port map (
      ADR0 => reg_IF_instr_11_7789,
      ADR1 => N7_0,
      ADR2 => N15_0,
      ADR3 => reg_ID_data1_mux0007_10_146_0,
      O => N9
    );
  proc_N9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N9,
      O => N9_0
    );
  proc_N9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_10_120_24004,
      O => reg_ID_data1_mux0007_10_120_0
    );
  reg_ID_data1_mux0007_10_120 : X_LUT4
    generic map(
      INIT => X"FF3D",
      LOC => "SLICE_X89Y32"
    )
    port map (
      ADR0 => N16_0,
      ADR1 => N7_0,
      ADR2 => N388_0,
      ADR3 => rd_index1_or0006_0,
      O => reg_ID_data1_mux0007_10_120_24004
    );
  proc_rd_index1_or000629_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or000629_24035,
      O => rd_index1_or000629_0
    );
  proc_rd_index1_or000629_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_10_134_24028,
      O => reg_ID_data1_mux0007_10_134_0
    );
  proc_reg_ID_data1_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(9),
      O => proc_reg_ID_data1_9_DXMUX_24066
    );
  proc_reg_ID_data1_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => N02,
      O => N02_0
    );
  proc_reg_ID_data1_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data1_9_CLKINV_24050
    );
  alu_mode_0_15 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X78Y44"
    )
    port map (
      ADR0 => reg_ID_instr_9_7636,
      ADR1 => reg_ID_instr_11_7646,
      ADR2 => reg_ID_instr_10_7647,
      ADR3 => reg_ID_instr_15_7745,
      O => alu_mode_0_15_24094
    );
  proc_alu_mode_0_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode_0_15_24094,
      O => alu_mode_0_15_0
    );
  proc_alu_mode_0_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => N268,
      O => N268_0
    );
  in1_and0008_SW1 : X_LUT4
    generic map(
      INIT => X"FB37",
      LOC => "SLICE_X78Y44"
    )
    port map (
      ADR0 => reg_ID_instr_10_7647,
      ADR1 => reg_ID_instr_5_7726,
      ADR2 => reg_ID_instr_9_7636,
      ADR3 => reg_ID_instr_11_7646,
      O => N268
    );
  proc_reg_IF_inport_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_1_INBUF,
      O => proc_reg_IF_inport_1_DXMUX_24114
    );
  proc_reg_IF_inport_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_0_INBUF,
      O => proc_reg_IF_inport_1_DYMUX_24106
    );
  proc_reg_IF_inport_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_inport_1_SRINV_24104
    );
  proc_reg_IF_inport_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_inport_1_CLKINV_24103
    );
  proc_reg_IF_inport_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_3_INBUF,
      O => proc_reg_IF_inport_3_DXMUX_24138
    );
  proc_reg_IF_inport_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_2_INBUF,
      O => proc_reg_IF_inport_3_DYMUX_24130
    );
  proc_reg_IF_inport_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_inport_3_SRINV_24128
    );
  proc_reg_IF_inport_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_inport_3_CLKINV_24127
    );
  proc_reg_IF_inport_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_5_INBUF,
      O => proc_reg_IF_inport_5_DXMUX_24162
    );
  proc_reg_IF_inport_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_4_INBUF,
      O => proc_reg_IF_inport_5_DYMUX_24154
    );
  proc_reg_IF_inport_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_inport_5_SRINV_24152
    );
  proc_reg_IF_inport_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_inport_5_CLKINV_24151
    );
  proc_reg_IF_inport_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_7_INBUF,
      O => proc_reg_IF_inport_7_DXMUX_24186
    );
  proc_reg_IF_inport_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_6_INBUF,
      O => proc_reg_IF_inport_7_DYMUX_24178
    );
  proc_reg_IF_inport_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_inport_7_SRINV_24176
    );
  proc_reg_IF_inport_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_inport_7_CLKINV_24175
    );
  proc_reg_IF_inport_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y114",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_9_INBUF,
      O => proc_reg_IF_inport_9_DXMUX_24210
    );
  proc_reg_IF_inport_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y114",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_8_INBUF,
      O => proc_reg_IF_inport_9_DYMUX_24202
    );
  proc_reg_IF_inport_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y114",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_inport_9_SRINV_24200
    );
  proc_reg_IF_inport_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y114",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_inport_9_CLKINV_24199
    );
  proc_N35_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => N35,
      O => N35_0
    );
  proc_N35_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => N31,
      O => N31_0
    );
  proc_N33_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => N33,
      O => N33_0
    );
  proc_rd_index1_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1(2),
      O => rd_index1_2_0
    );
  proc_rd_index1_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0004_24267,
      O => rd_index1_or0004_0
    );
  proc_reg_ID_data2_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(7),
      O => proc_reg_ID_data2_8_DXMUX_24305
    );
  proc_reg_ID_data2_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N95,
      O => N95_0
    );
  proc_reg_ID_data2_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_8_CLKINV_24289
    );
  proc_reg_ID_data2_mux0007_10_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007_10_13_24321,
      O => reg_ID_data2_mux0007_10_13_0
    );
  proc_N29_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => N29,
      O => N29_0
    );
  proc_N29_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_PC_next_addsub0000_cy(3),
      O => Madd_PC_next_addsub0000_cy_3_0
    );
  proc_N282_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N282,
      O => N282_0
    );
  outport_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y117",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_10_F,
      O => outport(10)
    );
  outport_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y117",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_10_G,
      O => outport(0)
    );
  outport_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y119",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_11_F,
      O => outport(11)
    );
  outport_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y119",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_11_G,
      O => outport(1)
    );
  outport_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y115",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_12_F,
      O => outport(12)
    );
  outport_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y115",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_12_G,
      O => outport(2)
    );
  outport_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y115",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_13_F,
      O => outport(13)
    );
  outport_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y115",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_13_G,
      O => outport(3)
    );
  outport_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_14_F,
      O => outport(14)
    );
  outport_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_14_G,
      O => outport(4)
    );
  outport_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y108",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_6_F,
      O => outport(6)
    );
  outport_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y108",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_6_G,
      O => outport(5)
    );
  proc_wr_enable_or000134_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable_or000134_24525,
      O => wr_enable_or000134_0
    );
  proc_wr_enable_or000134_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_or000031_24518,
      O => wr_overflow_or000031_0
    );
  proc_N38_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => N38,
      O => N38_0
    );
  proc_N38_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_or000017_24542,
      O => wr_overflow_or000017_0
    );
  outport_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y106",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_8_F,
      O => outport(8)
    );
  outport_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y106",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_8_G,
      O => outport(7)
    );
  proc_N230_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => N230,
      O => N230_0
    );
  proc_N230_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => N232,
      O => N232_0
    );
  proc_wr_overflow_data_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(10),
      O => wr_overflow_data_10_0
    );
  proc_wr_overflow_data_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(0),
      O => wr_overflow_data_0_0
    );
  proc_wr_overflow_data_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(11),
      O => wr_overflow_data_11_0
    );
  proc_wr_overflow_data_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(1),
      O => wr_overflow_data_1_0
    );
  proc_wr_overflow_data_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(12),
      O => wr_overflow_data_12_0
    );
  proc_wr_overflow_data_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(2),
      O => wr_overflow_data_2_0
    );
  proc_wr_overflow_data_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(13),
      O => wr_overflow_data_13_0
    );
  proc_wr_overflow_data_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(3),
      O => wr_overflow_data_3_0
    );
  proc_wr_overflow_data_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(14),
      O => wr_overflow_data_14_0
    );
  proc_wr_overflow_data_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(4),
      O => wr_overflow_data_4_0
    );
  proc_wr_overflow_data_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(15),
      O => wr_overflow_data_15_0
    );
  proc_wr_overflow_data_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(5),
      O => wr_overflow_data_5_0
    );
  proc_wr_overflow_data_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(7),
      O => wr_overflow_data_7_0
    );
  proc_wr_overflow_data_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(6),
      O => wr_overflow_data_6_0
    );
  proc_wr_overflow_data_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(9),
      O => wr_overflow_data_9_0
    );
  proc_wr_overflow_data_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(8),
      O => wr_overflow_data_8_0
    );
  proc_N300_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => N300,
      O => N300_0
    );
  proc_N300_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => N291,
      O => N291_0
    );
  proc_N297_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => N297,
      O => N297_0
    );
  proc_N297_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => N294,
      O => N294_0
    );
  proc_reg_IF_instr_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(9),
      O => proc_reg_IF_instr_6_DXMUX_24868
    );
  proc_reg_IF_instr_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => branch_trigger,
      O => branch_trigger_0
    );
  proc_reg_IF_instr_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_instr_6_CLKINV_24850
    );
  proc_N22_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => N22,
      O => N22_0
    );
  proc_N22_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => N01,
      O => N01_0
    );
  proc_reg_IF_inport_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X83Y119",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_11_INBUF,
      O => proc_reg_IF_inport_11_DXMUX_24916
    );
  proc_reg_IF_inport_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X83Y119",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_10_INBUF,
      O => proc_reg_IF_inport_11_DYMUX_24908
    );
  proc_reg_IF_inport_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X83Y119",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_inport_11_SRINV_24906
    );
  proc_reg_IF_inport_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X83Y119",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_inport_11_CLKINV_24905
    );
  proc_reg_IF_inport_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y116",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_13_INBUF,
      O => proc_reg_IF_inport_13_DXMUX_24940
    );
  proc_reg_IF_inport_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y116",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_12_INBUF,
      O => proc_reg_IF_inport_13_DYMUX_24932
    );
  proc_reg_IF_inport_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y116",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_inport_13_SRINV_24930
    );
  proc_reg_IF_inport_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y116",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_inport_13_CLKINV_24929
    );
  proc_reg_IF_inport_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_15_INBUF,
      O => proc_reg_IF_inport_15_DXMUX_24964
    );
  proc_reg_IF_inport_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_14_INBUF,
      O => proc_reg_IF_inport_15_DYMUX_24956
    );
  proc_reg_IF_inport_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_inport_15_SRINV_24954
    );
  proc_reg_IF_inport_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_inport_15_CLKINV_24953
    );
  proc_N6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N6,
      O => N6_0
    );
  proc_N6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N7,
      O => N7_0
    );
  proc_N1011_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => N1011,
      O => N1011_0
    );
  proc_N1011_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or000638_25009,
      O => rd_index1_or000638_0
    );
  proc_N211_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => N211,
      O => N211_0
    );
  proc_N37_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N37,
      O => N37_0
    );
  proc_in1_and00075_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and00075_25064,
      O => in1_and00075_0
    );
  proc_in1_and00075_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode(1),
      O => alu_mode_1_0
    );
  proc_in1_and000312_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000312_25076,
      O => in1_and000312_0
    );
  in2_5_SW2 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X78Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_data2_5_7669,
      ADR2 => reg_EX_result_5_7510,
      ADR3 => in2_and0005_0,
      O => N226
    );
  proc_N226_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N226,
      O => N226_0
    );
  proc_N226_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N228,
      O => N228_0
    );
  in1_cmp_eq00082 : X_LUT4
    generic map(
      INIT => X"0030",
      LOC => "SLICE_X68Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_10_7647,
      ADR2 => N13_0,
      ADR3 => reg_ID_instr_9_7636,
      O => in1_cmp_eq0008
    );
  result_12_1 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X68Y71"
    )
    port map (
      ADR0 => alu_result(12),
      ADR1 => ram_data(12),
      ADR2 => in1_cmp_eq0008_0,
      ADR3 => VCC,
      O => result(12)
    );
  proc_reg_EX_result_12_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X68Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_result_12_FFX_RST
    );
  reg_EX_result_12 : X_FF
    generic map(
      LOC => "SLICE_X68Y71",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_12_DXMUX_25131,
      CE => VCC,
      CLK => proc_reg_EX_result_12_CLKINV_25113,
      SET => GND,
      RST => proc_reg_EX_result_12_FFX_RST,
      O => reg_EX_result_12_7503
    );
  proc_reg_EX_result_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X68Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(12),
      O => proc_reg_EX_result_12_DXMUX_25131
    );
  proc_reg_EX_result_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X68Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq0008,
      O => in1_cmp_eq0008_0
    );
  proc_reg_EX_result_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X68Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_result_12_CLKINV_25113
    );
  in1_cmp_eq00091 : X_LUT4
    generic map(
      INIT => X"00A0",
      LOC => "SLICE_X76Y32"
    )
    port map (
      ADR0 => N13_0,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_9_7636,
      ADR3 => reg_ID_instr_10_7647,
      O => ram_wr_enable(0)
    );
  proc_ram_wr_enable_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_wr_enable(0),
      O => ram_wr_enable_0_0
    );
  rd_index2_0_1 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X88Y40"
    )
    port map (
      ADR0 => reg_IF_instr_3_7738,
      ADR1 => reg_IF_instr_0_7836,
      ADR2 => VCC,
      ADR3 => rd_index1_or0007_0,
      O => rd_index2(0)
    );
  proc_rd_index2_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index2(0),
      O => rd_index2_0_0
    );
  proc_rd_index2_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0007,
      O => rd_index1_or0007_0
    );
  rd_index1_or00071 : X_LUT4
    generic map(
      INIT => X"D0D0",
      LOC => "SLICE_X88Y40"
    )
    port map (
      ADR0 => reg_IF_instr_10_7742,
      ADR1 => reg_IF_instr_9_7740,
      ADR2 => N16_0,
      ADR3 => VCC,
      O => rd_index1_or0007
    );
  in2_7_SW2 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X76Y52"
    )
    port map (
      ADR0 => reg_ID_data2_7_7673,
      ADR1 => in2_and0005_0,
      ADR2 => reg_EX_result_7_7508,
      ADR3 => VCC,
      O => N222
    );
  proc_N222_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N222,
      O => N222_0
    );
  proc_N222_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N224,
      O => N224_0
    );
  in2_6_SW2 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X76Y52"
    )
    port map (
      ADR0 => reg_ID_data2_6_7671,
      ADR1 => in2_and0005_0,
      ADR2 => VCC,
      ADR3 => reg_EX_result_6_7509,
      O => N224
    );
  in2_8_SW2 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X78Y71"
    )
    port map (
      ADR0 => in2_and0005_0,
      ADR1 => reg_EX_result_8_7507,
      ADR2 => reg_ID_data2_8_7675,
      ADR3 => VCC,
      O => N220
    );
  proc_N220_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => N220,
      O => N220_0
    );
  rd_index1_or00041 : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X89Y33"
    )
    port map (
      ADR0 => reg_IF_instr_14_7791,
      ADR1 => reg_IF_instr_15_7790,
      ADR2 => N25_0,
      ADR3 => reg_IF_instr_13_7792,
      O => N16
    );
  proc_N16_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => N16,
      O => N16_0
    );
  proc_N16_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => N25,
      O => N25_0
    );
  rd_index1_or00041_SW0 : X_LUT4
    generic map(
      INIT => X"FAFA",
      LOC => "SLICE_X89Y33"
    )
    port map (
      ADR0 => reg_IF_instr_11_7789,
      ADR1 => VCC,
      ADR2 => reg_IF_instr_12_7793,
      ADR3 => VCC,
      O => N25
    );
  reg_ID_data1_mux0007_0_6 : X_LUT4
    generic map(
      INIT => X"F8F0",
      LOC => "SLICE_X90Y69"
    )
    port map (
      ADR0 => reg_IF_PC_0_7916,
      ADR1 => N1011_0,
      ADR2 => reg_ID_data1_mux0007_0_0_0,
      ADR3 => N2_0,
      O => reg_ID_data1_mux0007_0_6_25255
    );
  proc_reg_ID_data1_mux0007_0_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_0_6_25255,
      O => reg_ID_data1_mux0007_0_6_0
    );
  proc_reg_ID_data1_mux0007_0_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_0_0_25248,
      O => reg_ID_data1_mux0007_0_0_0
    );
  reg_ID_data1_mux0007_0_0 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X90Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N22_0,
      ADR2 => VCC,
      ADR3 => reg_IF_inport_0_7899,
      O => reg_ID_data1_mux0007_0_0_25248
    );
  proc_reg_ID_data1_mux0007_1_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_1_6_25279,
      O => reg_ID_data1_mux0007_1_6_0
    );
  proc_reg_ID_data1_mux0007_1_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_1_0_25272,
      O => reg_ID_data1_mux0007_1_0_0
    );
  proc_reg_ID_data1_mux0007_2_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_2_6_25303,
      O => reg_ID_data1_mux0007_2_6_0
    );
  proc_reg_ID_data1_mux0007_2_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_2_0_25296,
      O => reg_ID_data1_mux0007_2_0_0
    );
  proc_reg_ID_data1_mux0007_3_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_3_6_25327,
      O => reg_ID_data1_mux0007_3_6_0
    );
  proc_reg_ID_data1_mux0007_3_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_3_0_25320,
      O => reg_ID_data1_mux0007_3_0_0
    );
  proc_reg_ID_data1_mux0007_4_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_4_6_25351,
      O => reg_ID_data1_mux0007_4_6_0
    );
  proc_reg_ID_data1_mux0007_4_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_4_0_25344,
      O => reg_ID_data1_mux0007_4_0_0
    );
  proc_reg_ID_data1_mux0007_5_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_5_6_25375,
      O => reg_ID_data1_mux0007_5_6_0
    );
  proc_reg_ID_data1_mux0007_5_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_5_0_25368,
      O => reg_ID_data1_mux0007_5_0_0
    );
  proc_reg_ID_data1_mux0007_6_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_6_6_25399,
      O => reg_ID_data1_mux0007_6_6_0
    );
  proc_reg_ID_data1_mux0007_6_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_6_0_25392,
      O => reg_ID_data1_mux0007_6_0_0
    );
  in2_and000221 : X_LUT4
    generic map(
      INIT => X"E0A0",
      LOC => "SLICE_X79Y51"
    )
    port map (
      ADR0 => in2_and00025_0,
      ADR1 => in2_and00028_0,
      ADR2 => in1_or0003_0,
      ADR3 => in1_or0009_0,
      O => in2_and0002
    );
  proc_in2_and0002_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0002,
      O => in2_and0002_0
    );
  in2_and000552 : X_LUT4
    generic map(
      INIT => X"1010",
      LOC => "SLICE_X78Y41"
    )
    port map (
      ADR0 => N288,
      ADR1 => N88_0,
      ADR2 => in2_and000536_0,
      ADR3 => VCC,
      O => in2_and000552_25423
    );
  proc_in2_and000552_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_25423,
      O => in2_and000552_0
    );
  proc_in2_and000536_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000536_25435,
      O => in2_and000536_0
    );
  proc_N218_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N218,
      O => N218_0
    );
  proc_N218_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005,
      O => in2_and0005_0
    );
  proc_in1_or000892_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or000892_25471,
      O => in1_or000892_0
    );
  proc_reg_ID_PC_1_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X90Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_PC_1_SRINV_25481,
      O => proc_reg_ID_PC_1_FFX_RST
    );
  reg_ID_PC_1 : X_FF
    generic map(
      LOC => "SLICE_X90Y77",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_PC_1_DXMUX_25491,
      CE => VCC,
      CLK => proc_reg_ID_PC_1_CLKINV_25480,
      SET => GND,
      RST => proc_reg_ID_PC_1_FFX_RST,
      O => reg_ID_PC_1_7931
    );
  proc_reg_ID_PC_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_1_7918,
      O => proc_reg_ID_PC_1_DXMUX_25491
    );
  proc_reg_ID_PC_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_0_7916,
      O => proc_reg_ID_PC_1_DYMUX_25483
    );
  proc_reg_ID_PC_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_PC_1_SRINV_25481
    );
  proc_reg_ID_PC_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_PC_1_CLKINV_25480
    );
  proc_reg_ID_PC_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_3_7922,
      O => proc_reg_ID_PC_3_DXMUX_25515
    );
  proc_reg_ID_PC_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_2_7920,
      O => proc_reg_ID_PC_3_DYMUX_25507
    );
  proc_reg_ID_PC_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_PC_3_SRINV_25505
    );
  proc_reg_ID_PC_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_PC_3_CLKINV_25504
    );
  proc_reg_ID_PC_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X84Y1",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_5_7926,
      O => proc_reg_ID_PC_5_DXMUX_25539
    );
  proc_reg_ID_PC_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X84Y1",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_4_7924,
      O => proc_reg_ID_PC_5_DYMUX_25531
    );
  proc_reg_ID_PC_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X84Y1",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_PC_5_SRINV_25529
    );
  proc_reg_ID_PC_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X84Y1",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_PC_5_CLKINV_25528
    );
  proc_reg_ID_PC_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X84Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_6_7928,
      O => proc_reg_ID_PC_6_DYMUX_25553
    );
  proc_reg_ID_PC_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X84Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_PC_6_CLKINV_25550
    );
  proc_N388_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => N388,
      O => N388_0
    );
  proc_reg_IF_PC_1_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X90Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_IF_PC_1_SRINV_25579,
      O => proc_reg_IF_PC_1_FFX_RST
    );
  reg_IF_PC_1 : X_FF
    generic map(
      LOC => "SLICE_X90Y62",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_PC_1_DXMUX_25589,
      CE => VCC,
      CLK => proc_reg_IF_PC_1_CLKINV_25578,
      SET => GND,
      RST => proc_reg_IF_PC_1_FFX_RST,
      O => reg_IF_PC_1_7918
    );
  proc_reg_IF_PC_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(1),
      O => proc_reg_IF_PC_1_DXMUX_25589
    );
  proc_reg_IF_PC_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(0),
      O => proc_reg_IF_PC_1_DYMUX_25581
    );
  proc_reg_IF_PC_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_PC_1_SRINV_25579
    );
  proc_reg_IF_PC_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_PC_1_CLKINV_25578
    );
  proc_reg_IF_PC_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(3),
      O => proc_reg_IF_PC_3_DXMUX_25613
    );
  proc_reg_IF_PC_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(2),
      O => proc_reg_IF_PC_3_DYMUX_25605
    );
  proc_reg_IF_PC_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_PC_3_SRINV_25603
    );
  proc_reg_IF_PC_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_PC_3_CLKINV_25602
    );
  proc_reg_IF_PC_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X85Y1",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(5),
      O => proc_reg_IF_PC_5_DXMUX_25637
    );
  proc_reg_IF_PC_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X85Y1",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(4),
      O => proc_reg_IF_PC_5_DYMUX_25629
    );
  proc_reg_IF_PC_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X85Y1",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_PC_5_SRINV_25627
    );
  proc_reg_IF_PC_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X85Y1",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_PC_5_CLKINV_25626
    );
  proc_reg_IF_PC_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(6),
      O => proc_reg_IF_PC_6_DYMUX_25651
    );
  proc_reg_IF_PC_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_PC_6_CLKINV_25648
    );
  proc_reg_EX_PC_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_1_7931,
      O => proc_reg_EX_PC_1_DXMUX_25675
    );
  proc_reg_EX_PC_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_0_7932,
      O => proc_reg_EX_PC_1_DYMUX_25667
    );
  proc_reg_EX_PC_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_PC_1_SRINV_25665
    );
  proc_reg_EX_PC_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_PC_1_CLKINV_25664
    );
  proc_reg_EX_PC_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_3_7933,
      O => proc_reg_EX_PC_3_DXMUX_25699
    );
  proc_reg_EX_PC_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_2_7934,
      O => proc_reg_EX_PC_3_DYMUX_25691
    );
  proc_reg_EX_PC_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_PC_3_SRINV_25689
    );
  proc_reg_EX_PC_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_PC_3_CLKINV_25688
    );
  proc_reg_EX_PC_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X82Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_5_7935,
      O => proc_reg_EX_PC_5_DXMUX_25723
    );
  proc_reg_EX_PC_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X82Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_4_7936,
      O => proc_reg_EX_PC_5_DYMUX_25715
    );
  proc_reg_EX_PC_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X82Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_PC_5_SRINV_25713
    );
  proc_reg_EX_PC_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X82Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_PC_5_CLKINV_25712
    );
  proc_reg_EX_PC_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X82Y1",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_6_7937,
      O => proc_reg_EX_PC_6_DYMUX_25737
    );
  proc_reg_EX_PC_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X82Y1",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_PC_6_CLKINV_25734
    );
  reg_EX_overflow_mux0001_11_SW2 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X88Y61"
    )
    port map (
      ADR0 => reg_ID_instr_3_7722,
      ADR1 => in1_11_0,
      ADR2 => reg_ID_instr_8_7719,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001_11_SW2_O
    );
  reg_EX_overflow_10 : X_FF
    generic map(
      LOC => "SLICE_X79Y62",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_10_DXMUX_20095,
      CE => VCC,
      CLK => proc_reg_EX_overflow_10_CLKINV_20077,
      SET => GND,
      RST => proc_reg_EX_overflow_10_FFX_RSTAND_20100,
      O => reg_EX_overflow_10_7637
    );
  proc_reg_EX_overflow_10_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X79Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_10_FFX_RSTAND_20100
    );
  reg_EX_overflow_mux0001_10_Q : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X79Y62"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => overflow(10),
      ADR2 => reg_EX_overflow_mux0001_10_SW2_O_0,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001(10)
    );
  reg_EX_overflow_mux0001_10_SW2 : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X79Y62"
    )
    port map (
      ADR0 => in1_10_0,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_8_7719,
      ADR3 => reg_ID_instr_2_7720,
      O => reg_EX_overflow_mux0001_10_SW2_O
    );
  in2_3_SW2_G : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X88Y57"
    )
    port map (
      ADR0 => reg_ID_data2_3_7715,
      ADR1 => reg_EX_result_3_7512,
      ADR2 => VCC,
      ADR3 => wr_enable_0,
      O => N423
    );
  in2_2_SW2_G : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X89Y59"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_ID_data2_2_7713,
      ADR2 => reg_EX_result_2_7513,
      ADR3 => VCC,
      O => N425
    );
  in2_2_SW2_F : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X89Y59"
    )
    port map (
      ADR0 => reg_ID_data2_2_7713,
      ADR1 => N375_0,
      ADR2 => in1_cmp_eq0014_0,
      ADR3 => VCC,
      O => N424
    );
  in2_3_SW2_F : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X88Y57"
    )
    port map (
      ADR0 => reg_ID_data2_3_7715,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => N373_0,
      ADR3 => VCC,
      O => N422
    );
  in1_or0003_SW0 : X_LUT4
    generic map(
      INIT => X"FFFB",
      LOC => "SLICE_X90Y60"
    )
    port map (
      ADR0 => reg_EX_instr_15_7754,
      ADR1 => reg_EX_instr_10_7732,
      ADR2 => reg_EX_instr_12_7752,
      ADR3 => reg_EX_instr_14_7753,
      O => in1_or0003_SW0_O
    );
  reg_ID_instr_6 : X_FF
    generic map(
      LOC => "SLICE_X78Y35",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_7_DYMUX_21804,
      CE => VCC,
      CLK => proc_reg_ID_instr_7_CLKINV_21793,
      SET => GND,
      RST => proc_reg_ID_instr_7_SRINV_21794,
      O => reg_ID_instr_6_7728
    );
  reg_ID_instr_5 : X_FF
    generic map(
      LOC => "SLICE_X79Y40",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_5_DXMUX_21778,
      CE => VCC,
      CLK => proc_reg_ID_instr_5_CLKINV_21751,
      SET => GND,
      RST => proc_reg_ID_instr_5_SRINV_21752,
      O => reg_ID_instr_5_7726
    );
  reg_ID_instr_mux0001_9_1 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X78Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => reg_IF_instr_6_7739,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(9)
    );
  reg_EX_result_2 : X_FF
    generic map(
      LOC => "SLICE_X65Y62",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_3_DYMUX_22852,
      CE => VCC,
      CLK => proc_reg_EX_result_3_CLKINV_22842,
      SET => GND,
      RST => proc_reg_EX_result_3_SRINV_22843,
      O => reg_EX_result_2_7513
    );
  reg_EX_instr_11 : X_FF
    generic map(
      LOC => "SLICE_X89Y61",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_11_DXMUX_22699,
      CE => VCC,
      CLK => proc_reg_EX_instr_11_CLKINV_22672,
      SET => GND,
      RST => proc_reg_EX_instr_11_SRINV_22673,
      O => reg_EX_instr_11_7733
    );
  reg_EX_instr_mux0001_4_1 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X89Y61"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_11_7646,
      O => reg_EX_instr_mux0001(4)
    );
  reg_EX_instr_10 : X_FF
    generic map(
      LOC => "SLICE_X89Y61",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_11_DYMUX_22683,
      CE => VCC,
      CLK => proc_reg_EX_instr_11_CLKINV_22672,
      SET => GND,
      RST => proc_reg_EX_instr_11_SRINV_22673,
      O => reg_EX_instr_10_7732
    );
  reg_EX_instr_mux0001_5_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X89Y61"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_10_7647,
      ADR3 => VCC,
      O => reg_EX_instr_mux0001(5)
    );
  result_2_1 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X65Y62"
    )
    port map (
      ADR0 => in1_cmp_eq0008_0,
      ADR1 => VCC,
      ADR2 => ram_data(2),
      ADR3 => alu_result(2),
      O => result(2)
    );
  reg_ID_data1_9 : X_FF
    generic map(
      LOC => "SLICE_X78Y77",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_9_DXMUX_24066,
      CE => VCC,
      CLK => proc_reg_ID_data1_9_CLKINV_24050,
      SET => GND,
      RST => proc_reg_ID_data1_9_FFX_RSTAND_24071,
      O => reg_ID_data1_9_7766
    );
  proc_reg_ID_data1_9_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X78Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data1_9_FFX_RSTAND_24071
    );
  reg_ID_data1_mux0007_9_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X78Y77"
    )
    port map (
      ADR0 => reg_IF_inport_9_7897,
      ADR1 => N22_0,
      ADR2 => N02_0,
      ADR3 => rd_data1(9),
      O => reg_ID_data1_mux0007(9)
    );
  reg_ID_data1_mux0007_10_156 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X78Y77"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => reg_ID_data1_mux0007_10_146_0,
      ADR2 => reg_ID_data1_mux0007_10_120_0,
      ADR3 => reg_ID_data1_mux0007_10_134_0,
      O => N02
    );
  rd_index1_or000629 : X_LUT4
    generic map(
      INIT => X"01A8",
      LOC => "SLICE_X88Y39"
    )
    port map (
      ADR0 => reg_IF_instr_11_7789,
      ADR1 => reg_IF_instr_9_7740,
      ADR2 => reg_IF_instr_10_7742,
      ADR3 => reg_IF_instr_14_7791,
      O => rd_index1_or000629_24035
    );
  reg_ID_data1_mux0007_10_134 : X_LUT4
    generic map(
      INIT => X"8080",
      LOC => "SLICE_X88Y39"
    )
    port map (
      ADR0 => reg_IF_instr_11_7789,
      ADR1 => reg_IF_instr_9_7740,
      ADR2 => reg_IF_instr_10_7742,
      ADR3 => VCC,
      O => reg_ID_data1_mux0007_10_134_24028
    );
  reg_IF_inport_0 : X_FF
    generic map(
      LOC => "SLICE_X91Y68",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_1_DYMUX_24106,
      CE => VCC,
      CLK => proc_reg_IF_inport_1_CLKINV_24103,
      SET => GND,
      RST => proc_reg_IF_inport_1_SRINV_24104,
      O => reg_IF_inport_0_7899
    );
  reg_IF_inport_1 : X_FF
    generic map(
      LOC => "SLICE_X91Y68",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_1_DXMUX_24114,
      CE => VCC,
      CLK => proc_reg_IF_inport_1_CLKINV_24103,
      SET => GND,
      RST => proc_reg_IF_inport_1_SRINV_24104,
      O => reg_IF_inport_1_7898
    );
  reg_IF_inport_2 : X_FF
    generic map(
      LOC => "SLICE_X90Y46",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_3_DYMUX_24130,
      CE => VCC,
      CLK => proc_reg_IF_inport_3_CLKINV_24127,
      SET => GND,
      RST => proc_reg_IF_inport_3_SRINV_24128,
      O => reg_IF_inport_2_7901
    );
  reg_IF_inport_3 : X_FF
    generic map(
      LOC => "SLICE_X90Y46",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_3_DXMUX_24138,
      CE => VCC,
      CLK => proc_reg_IF_inport_3_CLKINV_24127,
      SET => GND,
      RST => proc_reg_IF_inport_3_SRINV_24128,
      O => reg_IF_inport_3_7900
    );
  reg_IF_inport_4 : X_FF
    generic map(
      LOC => "SLICE_X90Y19",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_5_DYMUX_24154,
      CE => VCC,
      CLK => proc_reg_IF_inport_5_CLKINV_24151,
      SET => GND,
      RST => proc_reg_IF_inport_5_SRINV_24152,
      O => reg_IF_inport_4_7903
    );
  reg_IF_inport_5 : X_FF
    generic map(
      LOC => "SLICE_X90Y19",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_5_DXMUX_24162,
      CE => VCC,
      CLK => proc_reg_IF_inport_5_CLKINV_24151,
      SET => GND,
      RST => proc_reg_IF_inport_5_SRINV_24152,
      O => reg_IF_inport_5_7902
    );
  reg_IF_inport_6 : X_FF
    generic map(
      LOC => "SLICE_X90Y12",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_7_DYMUX_24178,
      CE => VCC,
      CLK => proc_reg_IF_inport_7_CLKINV_24175,
      SET => GND,
      RST => proc_reg_IF_inport_7_SRINV_24176,
      O => reg_IF_inport_6_7904
    );
  reg_IF_inport_7 : X_FF
    generic map(
      LOC => "SLICE_X90Y12",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_7_DXMUX_24186,
      CE => VCC,
      CLK => proc_reg_IF_inport_7_CLKINV_24175,
      SET => GND,
      RST => proc_reg_IF_inport_7_SRINV_24176,
      O => reg_IF_inport_7_7870
    );
  reg_IF_inport_8 : X_FF
    generic map(
      LOC => "SLICE_X78Y114",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_9_DYMUX_24202,
      CE => VCC,
      CLK => proc_reg_IF_inport_9_CLKINV_24199,
      SET => GND,
      RST => proc_reg_IF_inport_9_SRINV_24200,
      O => reg_IF_inport_8_7872
    );
  reg_IF_inport_9 : X_FF
    generic map(
      LOC => "SLICE_X78Y114",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_9_DXMUX_24210,
      CE => VCC,
      CLK => proc_reg_IF_inport_9_CLKINV_24199,
      SET => GND,
      RST => proc_reg_IF_inport_9_SRINV_24200,
      O => reg_IF_inport_9_7897
    );
  PC_next_2_SW0 : X_LUT4
    generic map(
      INIT => X"0FFF",
      LOC => "SLICE_X89Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => PC(1),
      ADR3 => PC(0),
      O => N31
    );
  PC_next_3_SW0 : X_LUT4
    generic map(
      INIT => X"5FFF",
      LOC => "SLICE_X89Y31"
    )
    port map (
      ADR0 => PC(2),
      ADR1 => VCC,
      ADR2 => PC(1),
      ADR3 => PC(0),
      O => N35
    );
  PC_next_6_SW0 : X_LUT4
    generic map(
      INIT => X"77FF",
      LOC => "SLICE_X89Y24"
    )
    port map (
      ADR0 => Madd_PC_next_addsub0000_cy_3_0,
      ADR1 => PC(5),
      ADR2 => VCC,
      ADR3 => PC(4),
      O => N33
    );
  rd_index1_or0004 : X_LUT4
    generic map(
      INIT => X"B080",
      LOC => "SLICE_X88Y34"
    )
    port map (
      ADR0 => N11_0,
      ADR1 => reg_IF_instr_9_7740,
      ADR2 => reg_IF_instr_10_7742,
      ADR3 => N16_0,
      O => rd_index1_or0004_24267
    );
  rd_index1_2_1 : X_LUT4
    generic map(
      INIT => X"CFCA",
      LOC => "SLICE_X88Y34"
    )
    port map (
      ADR0 => reg_IF_instr_5_7838,
      ADR1 => reg_IF_instr_8_7841,
      ADR2 => rd_index1_or0003_0,
      ADR3 => rd_index1_or0004_0,
      O => rd_index1(2)
    );
  reg_ID_data2_mux0006_10_41 : X_LUT4
    generic map(
      INIT => X"004F",
      LOC => "SLICE_X76Y48"
    )
    port map (
      ADR0 => N7_0,
      ADR1 => reg_IF_instr_11_7789,
      ADR2 => reg_ID_data1_mux0007_10_146_0,
      ADR3 => rd_index1_or0006_0,
      O => N95
    );
  reg_ID_data2_mux0007_7_1 : X_LUT4
    generic map(
      INIT => X"A888",
      LOC => "SLICE_X76Y48"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => N18_0,
      ADR2 => rd_data2(8),
      ADR3 => N95_0,
      O => reg_ID_data2_mux0007(7)
    );
  reg_ID_data2_8 : X_FF
    generic map(
      LOC => "SLICE_X76Y48",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_8_DXMUX_24305,
      CE => VCC,
      CLK => proc_reg_ID_data2_8_CLKINV_24289,
      SET => GND,
      RST => proc_reg_ID_data2_8_FFX_RSTAND_24310,
      O => reg_ID_data2_8_7675
    );
  proc_reg_ID_data2_8_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X76Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_8_FFX_RSTAND_24310
    );
  reg_ID_data2_mux0007_10_13 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X78Y25"
    )
    port map (
      ADR0 => reg_IF_instr_5_7838,
      ADR1 => reg_ID_data2_mux0007_10_7_0,
      ADR2 => rd_data2(5),
      ADR3 => or0000_0_or0000_0,
      O => reg_ID_data2_mux0007_10_13_24321
    );
  Madd_PC_next_addsub0000_cy_3_11 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X88Y24"
    )
    port map (
      ADR0 => PC(1),
      ADR1 => PC(2),
      ADR2 => PC(0),
      ADR3 => PC(3),
      O => Madd_PC_next_addsub0000_cy(3)
    );
  PC_next_5_SW0 : X_LUT4
    generic map(
      INIT => X"55FF",
      LOC => "SLICE_X88Y24"
    )
    port map (
      ADR0 => PC(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => Madd_PC_next_addsub0000_cy_3_0,
      O => N29
    );
  in1_and00035_SW0 : X_LUT4
    generic map(
      INIT => X"3F3F",
      LOC => "SLICE_X78Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_4_7724,
      ADR2 => reg_ID_instr_3_7722,
      ADR3 => VCC,
      O => N282
    );
  outport_0_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X89Y117"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_0_7515,
      ADR2 => outport_cmp_eq0000_0,
      ADR3 => VCC,
      O => outport_10_G
    );
  outport_10_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X89Y117"
    )
    port map (
      ADR0 => reg_EX_result_10_7505,
      ADR1 => VCC,
      ADR2 => outport_cmp_eq0000_0,
      ADR3 => VCC,
      O => outport_10_F
    );
  outport_1_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X91Y119"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_1_7514,
      ADR2 => outport_cmp_eq0000_0,
      ADR3 => VCC,
      O => outport_11_G
    );
  outport_11_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X91Y119"
    )
    port map (
      ADR0 => reg_EX_result_11_7504,
      ADR1 => VCC,
      ADR2 => outport_cmp_eq0000_0,
      ADR3 => VCC,
      O => outport_11_F
    );
  outport_2_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X89Y115"
    )
    port map (
      ADR0 => outport_cmp_eq0000_0,
      ADR1 => reg_EX_result_2_7513,
      ADR2 => VCC,
      ADR3 => VCC,
      O => outport_12_G
    );
  outport_12_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X89Y115"
    )
    port map (
      ADR0 => outport_cmp_eq0000_0,
      ADR1 => VCC,
      ADR2 => reg_EX_result_12_7503,
      ADR3 => VCC,
      O => outport_12_F
    );
  outport_3_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X91Y115"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_3_7512,
      ADR2 => outport_cmp_eq0000_0,
      ADR3 => VCC,
      O => outport_13_G
    );
  outport_13_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X91Y115"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => outport_cmp_eq0000_0,
      ADR3 => reg_EX_result_13_7502,
      O => outport_13_F
    );
  outport_4_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X88Y113"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outport_cmp_eq0000_0,
      ADR2 => reg_EX_result_4_7511,
      ADR3 => VCC,
      O => outport_14_G
    );
  outport_14_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X88Y113"
    )
    port map (
      ADR0 => reg_EX_result_14_7501,
      ADR1 => outport_cmp_eq0000_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => outport_14_F
    );
  outport_5_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X89Y108"
    )
    port map (
      ADR0 => reg_EX_result_5_7510,
      ADR1 => VCC,
      ADR2 => outport_cmp_eq0000_0,
      ADR3 => VCC,
      O => outport_6_G
    );
  outport_6_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X89Y108"
    )
    port map (
      ADR0 => outport_cmp_eq0000_0,
      ADR1 => VCC,
      ADR2 => reg_EX_result_6_7509,
      ADR3 => VCC,
      O => outport_6_F
    );
  wr_overflow_or000031 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X88Y63"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_instr_10_7732,
      ADR2 => reg_EX_instr_11_7733,
      ADR3 => VCC,
      O => wr_overflow_or000031_24518
    );
  wr_enable_or000134 : X_LUT4
    generic map(
      INIT => X"0D7C",
      LOC => "SLICE_X88Y63"
    )
    port map (
      ADR0 => reg_EX_instr_9_7734,
      ADR1 => reg_EX_instr_10_7732,
      ADR2 => reg_EX_instr_11_7733,
      ADR3 => reg_EX_instr_13_7750,
      O => wr_enable_or000134_24525
    );
  wr_overflow_or000017 : X_LUT4
    generic map(
      INIT => X"0200",
      LOC => "SLICE_X88Y60"
    )
    port map (
      ADR0 => wr_enable_or000181_0,
      ADR1 => reg_EX_instr_14_7753,
      ADR2 => reg_EX_instr_9_7734,
      ADR3 => reg_EX_instr_13_7750,
      O => wr_overflow_or000017_24542
    );
  branch_trigger_or0002_SW1 : X_LUT4
    generic map(
      INIT => X"FEFB",
      LOC => "SLICE_X88Y60"
    )
    port map (
      ADR0 => reg_EX_n_flag_7883,
      ADR1 => reg_EX_instr_9_7734,
      ADR2 => reg_EX_instr_10_7732,
      ADR3 => reg_EX_instr_11_7733,
      O => N38
    );
  outport_7_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X89Y106"
    )
    port map (
      ADR0 => outport_cmp_eq0000_0,
      ADR1 => reg_EX_result_7_7508,
      ADR2 => VCC,
      ADR3 => VCC,
      O => outport_8_G
    );
  outport_8_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X89Y106"
    )
    port map (
      ADR0 => reg_EX_result_8_7507,
      ADR1 => VCC,
      ADR2 => outport_cmp_eq0000_0,
      ADR3 => VCC,
      O => outport_8_F
    );
  in2_10_SW2 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X76Y70"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_data2_10_7698,
      ADR2 => in2_and0005_0,
      ADR3 => reg_EX_result_10_7505,
      O => N232
    );
  in2_11_SW2 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X76Y70"
    )
    port map (
      ADR0 => reg_EX_result_11_7504,
      ADR1 => VCC,
      ADR2 => in2_and0005_0,
      ADR3 => reg_ID_data2_11_7699,
      O => N230
    );
  wr_overflow_data_0_1 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X88Y88"
    )
    port map (
      ADR0 => branch_trigger_cmp_eq0002_0,
      ADR1 => reg_EX_PC_0_7906,
      ADR2 => reg_EX_overflow_0_7655,
      ADR3 => VCC,
      O => wr_overflow_data(0)
    );
  wr_overflow_data_10_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X88Y88"
    )
    port map (
      ADR0 => branch_trigger_cmp_eq0002_0,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_10_7637,
      ADR3 => VCC,
      O => wr_overflow_data(10)
    );
  wr_overflow_data_1_1 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X89Y88"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_PC_1_7907,
      ADR2 => branch_trigger_cmp_eq0002_0,
      ADR3 => reg_EX_overflow_1_7658,
      O => wr_overflow_data(1)
    );
  wr_overflow_data_11_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X89Y88"
    )
    port map (
      ADR0 => reg_EX_overflow_11_7643,
      ADR1 => VCC,
      ADR2 => branch_trigger_cmp_eq0002_0,
      ADR3 => VCC,
      O => wr_overflow_data(11)
    );
  wr_overflow_data_2_1 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X77Y60"
    )
    port map (
      ADR0 => reg_EX_overflow_2_7661,
      ADR1 => branch_trigger_cmp_eq0002_0,
      ADR2 => reg_EX_PC_2_7908,
      ADR3 => VCC,
      O => wr_overflow_data(2)
    );
  wr_overflow_data_12_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X77Y60"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_12_7700,
      ADR3 => branch_trigger_cmp_eq0002_0,
      O => wr_overflow_data(12)
    );
  wr_overflow_data_3_1 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X90Y55"
    )
    port map (
      ADR0 => reg_EX_PC_3_7909,
      ADR1 => VCC,
      ADR2 => branch_trigger_cmp_eq0002_0,
      ADR3 => reg_EX_overflow_3_7664,
      O => wr_overflow_data(3)
    );
  wr_overflow_data_13_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X90Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_13_7702,
      ADR2 => branch_trigger_cmp_eq0002_0,
      ADR3 => VCC,
      O => wr_overflow_data(13)
    );
  wr_overflow_data_4_1 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X77Y33"
    )
    port map (
      ADR0 => reg_EX_overflow_4_7666,
      ADR1 => reg_EX_PC_4_7910,
      ADR2 => branch_trigger_cmp_eq0002_0,
      ADR3 => VCC,
      O => wr_overflow_data(4)
    );
  wr_overflow_data_14_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X77Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_14_7704,
      ADR3 => branch_trigger_cmp_eq0002_0,
      O => wr_overflow_data(14)
    );
  wr_overflow_data_5_1 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X79Y27"
    )
    port map (
      ADR0 => reg_EX_overflow_5_7668,
      ADR1 => branch_trigger_cmp_eq0002_0,
      ADR2 => reg_EX_PC_5_7911,
      ADR3 => VCC,
      O => wr_overflow_data(5)
    );
  wr_overflow_data_15_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X79Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_15_7706,
      ADR3 => branch_trigger_cmp_eq0002_0,
      O => wr_overflow_data(15)
    );
  wr_overflow_data_6_1 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X76Y12"
    )
    port map (
      ADR0 => reg_EX_overflow_6_7670,
      ADR1 => branch_trigger_cmp_eq0002_0,
      ADR2 => VCC,
      ADR3 => reg_EX_PC_6_7912,
      O => wr_overflow_data(6)
    );
  wr_overflow_data_7_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X76Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_cmp_eq0002_0,
      ADR2 => VCC,
      ADR3 => reg_EX_overflow_7_7672,
      O => wr_overflow_data(7)
    );
  wr_overflow_data_8_1 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X79Y86"
    )
    port map (
      ADR0 => reg_EX_overflow_8_7674,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => branch_trigger_cmp_eq0002_0,
      O => wr_overflow_data(8)
    );
  wr_overflow_data_9_1 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X79Y86"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_cmp_eq0002_0,
      ADR2 => reg_EX_overflow_9_7676,
      ADR3 => VCC,
      O => wr_overflow_data(9)
    );
  in2_and000578_SW1 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X78Y60"
    )
    port map (
      ADR0 => reg_EX_result_3_7512,
      ADR1 => reg_ID_data2_3_7715,
      ADR2 => VCC,
      ADR3 => wr_enable_or000185_0,
      O => N291
    );
  in2_and000578_SW7 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X78Y60"
    )
    port map (
      ADR0 => reg_ID_data2_0_7708,
      ADR1 => reg_EX_result_0_7515,
      ADR2 => VCC,
      ADR3 => wr_enable_or000185_0,
      O => N300
    );
  in2_and000578_SW3 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X78Y62"
    )
    port map (
      ADR0 => reg_ID_data2_2_7713,
      ADR1 => wr_enable_or000185_0,
      ADR2 => VCC,
      ADR3 => reg_EX_result_2_7513,
      O => N294
    );
  in2_and000578_SW5 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X78Y62"
    )
    port map (
      ADR0 => VCC,
      ADR1 => wr_enable_or000185_0,
      ADR2 => reg_EX_result_1_7514,
      ADR3 => reg_ID_data2_1_7711,
      O => N297
    );
  branch_trigger_or0002 : X_LUT4
    generic map(
      INIT => X"8A80",
      LOC => "SLICE_X78Y39"
    )
    port map (
      ADR0 => N96_0,
      ADR1 => N38_0,
      ADR2 => reg_EX_z_flag_7892,
      ADR3 => N37_0,
      O => branch_trigger
    );
  reg_IF_instr_mux0001_9_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X78Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => branch_trigger_0,
      ADR3 => rom_data(6),
      O => reg_IF_instr_mux0001(9)
    );
  reg_IF_instr_6 : X_FF
    generic map(
      LOC => "SLICE_X78Y39",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_6_DXMUX_24868,
      CE => VCC,
      CLK => proc_reg_IF_instr_6_CLKINV_24850,
      SET => GND,
      RST => proc_reg_IF_instr_6_FFX_RSTAND_24873,
      O => reg_IF_instr_6_7739
    );
  proc_reg_IF_instr_6_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X78Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_instr_6_FFX_RSTAND_24873
    );
  reg_ID_data1_mux0007_0_2_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X88Y38"
    )
    port map (
      ADR0 => reg_IF_instr_13_7792,
      ADR1 => reg_IF_instr_12_7793,
      ADR2 => reg_IF_instr_10_7742,
      ADR3 => reg_IF_instr_11_7789,
      O => N01
    );
  reg_ID_data1_mux0007_0_2 : X_LUT4
    generic map(
      INIT => X"0040",
      LOC => "SLICE_X88Y38"
    )
    port map (
      ADR0 => N01_0,
      ADR1 => reg_IF_instr_9_7740,
      ADR2 => reg_IF_instr_14_7791,
      ADR3 => reg_IF_instr_15_7790,
      O => N22
    );
  reg_IF_inport_10 : X_FF
    generic map(
      LOC => "SLICE_X83Y119",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_11_DYMUX_24908,
      CE => VCC,
      CLK => proc_reg_IF_inport_11_CLKINV_24905,
      SET => GND,
      RST => proc_reg_IF_inport_11_SRINV_24906,
      O => reg_IF_inport_10_7852
    );
  reg_IF_inport_11 : X_FF
    generic map(
      LOC => "SLICE_X83Y119",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_11_DXMUX_24916,
      CE => VCC,
      CLK => proc_reg_IF_inport_11_CLKINV_24905,
      SET => GND,
      RST => proc_reg_IF_inport_11_SRINV_24906,
      O => reg_IF_inport_11_7850
    );
  reg_IF_inport_12 : X_FF
    generic map(
      LOC => "SLICE_X78Y116",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_13_DYMUX_24932,
      CE => VCC,
      CLK => proc_reg_IF_inport_13_CLKINV_24929,
      SET => GND,
      RST => proc_reg_IF_inport_13_SRINV_24930,
      O => reg_IF_inport_12_7854
    );
  reg_IF_inport_13 : X_FF
    generic map(
      LOC => "SLICE_X78Y116",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_13_DXMUX_24940,
      CE => VCC,
      CLK => proc_reg_IF_inport_13_CLKINV_24929,
      SET => GND,
      RST => proc_reg_IF_inport_13_SRINV_24930,
      O => reg_IF_inport_13_7853
    );
  reg_IF_inport_14 : X_FF
    generic map(
      LOC => "SLICE_X79Y113",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_15_DYMUX_24956,
      CE => VCC,
      CLK => proc_reg_IF_inport_15_CLKINV_24953,
      SET => GND,
      RST => proc_reg_IF_inport_15_SRINV_24954,
      O => reg_IF_inport_14_7856
    );
  reg_IF_inport_15 : X_FF
    generic map(
      LOC => "SLICE_X79Y113",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_15_DXMUX_24964,
      CE => VCC,
      CLK => proc_reg_IF_inport_15_CLKINV_24953,
      SET => GND,
      RST => proc_reg_IF_inport_15_SRINV_24954,
      O => reg_IF_inport_15_7855
    );
  rd_index1_or000511 : X_LUT4
    generic map(
      INIT => X"3F3F",
      LOC => "SLICE_X77Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_10_7742,
      ADR2 => reg_IF_instr_9_7740,
      ADR3 => VCC,
      O => N7
    );
  reg_ID_data2_mux0006_10_3_SW0 : X_LUT4
    generic map(
      INIT => X"B33B",
      LOC => "SLICE_X77Y32"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_10_146_0,
      ADR1 => reg_IF_instr_3_7738,
      ADR2 => N7_0,
      ADR3 => reg_IF_instr_11_7789,
      O => N6
    );
  rd_index1_or000638 : X_LUT4
    generic map(
      INIT => X"0011",
      LOC => "SLICE_X88Y37"
    )
    port map (
      ADR0 => reg_IF_instr_13_7792,
      ADR1 => reg_IF_instr_12_7793,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_15_7790,
      O => rd_index1_or000638_25009
    );
  reg_ID_data2_mux0006_8_41 : X_LUT4
    generic map(
      INIT => X"AA2A",
      LOC => "SLICE_X88Y37"
    )
    port map (
      ADR0 => or0000_0_or0000_0,
      ADR1 => rd_index1_or000629_0,
      ADR2 => rd_index1_or000638_0,
      ADR3 => rd_index1_or0005_0,
      O => N1011
    );
  reg_ID_data2_mux0007_9_SW0 : X_LUT4
    generic map(
      INIT => X"EEAA",
      LOC => "SLICE_X79Y34"
    )
    port map (
      ADR0 => N19_0,
      ADR1 => reg_IF_instr_6_7739,
      ADR2 => VCC,
      ADR3 => N1011_0,
      O => N211
    );
  branch_trigger_or0002_SW0 : X_LUT4
    generic map(
      INIT => X"F2CB",
      LOC => "SLICE_X78Y53"
    )
    port map (
      ADR0 => reg_EX_n_flag_7883,
      ADR1 => reg_EX_instr_11_7733,
      ADR2 => reg_EX_instr_10_7732,
      ADR3 => reg_EX_instr_9_7734,
      O => N37
    );
  alu_mode_1_1 : X_LUT4
    generic map(
      INIT => X"0040",
      LOC => "SLICE_X77Y54"
    )
    port map (
      ADR0 => reg_ID_instr_15_7745,
      ADR1 => N102_0,
      ADR2 => reg_ID_instr_10_7647,
      ADR3 => reg_ID_instr_13_7746,
      O => alu_mode(1)
    );
  in1_and00075 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X77Y54"
    )
    port map (
      ADR0 => reg_ID_instr_15_7745,
      ADR1 => reg_ID_instr_14_7772,
      ADR2 => reg_ID_instr_10_7647,
      ADR3 => reg_ID_instr_12_7771,
      O => in1_and00075_25064
    );
  in1_and000312 : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "SLICE_X77Y42"
    )
    port map (
      ADR0 => reg_ID_instr_6_7728,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_8_7719,
      ADR3 => reg_ID_instr_7_7730,
      O => in1_and000312_25076
    );
  in2_4_SW2 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X78Y55"
    )
    port map (
      ADR0 => reg_EX_result_4_7511,
      ADR1 => reg_ID_data2_4_7667,
      ADR2 => VCC,
      ADR3 => in2_and0005_0,
      O => N228
    );
  ram_addr_10_1_F : X_LUT4
    generic map(
      INIT => X"D800",
      LOC => "SLICE_X78Y70"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => reg_EX_overflow_10_7637,
      ADR2 => N232_0,
      ADR3 => ram_addr_and0000_0,
      O => N368
    );
  ram_addr_10_1_G : X_LUT4
    generic map(
      INIT => X"C480",
      LOC => "SLICE_X78Y70"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => ram_addr_and0000_0,
      ADR2 => reg_EX_overflow_10_7637,
      ADR3 => N256_0,
      O => N369
    );
  ram_addr_11_1_F : X_LUT4
    generic map(
      INIT => X"C808",
      LOC => "SLICE_X76Y71"
    )
    port map (
      ADR0 => N230_0,
      ADR1 => ram_addr_and0000_0,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_11_7643,
      O => N366
    );
  ram_addr_11_1_G : X_LUT4
    generic map(
      INIT => X"8C80",
      LOC => "SLICE_X76Y71"
    )
    port map (
      ADR0 => reg_EX_overflow_11_7643,
      ADR1 => ram_addr_and0000_0,
      ADR2 => in1_and0003_0,
      ADR3 => N254_0,
      O => N367
    );
  in1_and0008_SW2_F : X_LUT4
    generic map(
      INIT => X"57AB",
      LOC => "SLICE_X78Y40"
    )
    port map (
      ADR0 => reg_EX_instr_6_7648,
      ADR1 => reg_ID_instr_10_7647,
      ADR2 => reg_ID_instr_9_7636,
      ADR3 => reg_ID_instr_0_7649,
      O => N370
    );
  in1_and0008_SW2_G : X_LUT4
    generic map(
      INIT => X"FDFE",
      LOC => "SLICE_X78Y40"
    )
    port map (
      ADR0 => reg_EX_instr_6_7648,
      ADR1 => reg_ID_instr_10_7647,
      ADR2 => reg_ID_instr_9_7636,
      ADR3 => reg_ID_instr_0_7649,
      O => N371
    );
  in2_0_F : X_LUT4
    generic map(
      INIT => X"CCA0",
      LOC => "SLICE_X78Y63"
    )
    port map (
      ADR0 => N300_0,
      ADR1 => reg_EX_overflow_0_7655,
      ADR2 => in2_and000552_0,
      ADR3 => in2_and000221_0,
      O => N396
    );
  in2_0_G : X_LUT4
    generic map(
      INIT => X"CCAF",
      LOC => "SLICE_X78Y63"
    )
    port map (
      ADR0 => N300_0,
      ADR1 => reg_EX_overflow_0_7655,
      ADR2 => in2_and000552_0,
      ADR3 => in2_and000221_0,
      O => N397
    );
  in2_1_F : X_LUT4
    generic map(
      INIT => X"E2C0",
      LOC => "SLICE_X79Y60"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => in2_and000221_0,
      ADR2 => reg_EX_overflow_1_7658,
      ADR3 => N297_0,
      O => N394
    );
  in2_1_G : X_LUT4
    generic map(
      INIT => X"F3D1",
      LOC => "SLICE_X79Y60"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => in2_and000221_0,
      ADR2 => reg_EX_overflow_1_7658,
      ADR3 => N297_0,
      O => N395
    );
  in2_2_F : X_LUT4
    generic map(
      INIT => X"F808",
      LOC => "SLICE_X67Y60"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => N294_0,
      ADR2 => in2_and000221_0,
      ADR3 => reg_EX_overflow_2_7661,
      O => N392
    );
  in2_2_G : X_LUT4
    generic map(
      INIT => X"FD0D",
      LOC => "SLICE_X67Y60"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => N294_0,
      ADR2 => in2_and000221_0,
      ADR3 => reg_EX_overflow_2_7661,
      O => N393
    );
  in2_3_F : X_LUT4
    generic map(
      INIT => X"AAC0",
      LOC => "SLICE_X66Y58"
    )
    port map (
      ADR0 => reg_EX_overflow_3_7664,
      ADR1 => N291_0,
      ADR2 => in2_and000552_0,
      ADR3 => in2_and000221_0,
      O => N390
    );
  in2_3_G : X_LUT4
    generic map(
      INIT => X"AACF",
      LOC => "SLICE_X66Y58"
    )
    port map (
      ADR0 => reg_EX_overflow_3_7664,
      ADR1 => N291_0,
      ADR2 => in2_and000552_0,
      ADR3 => in2_and000221_0,
      O => N391
    );
  in2_4_F : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X67Y52"
    )
    port map (
      ADR0 => reg_EX_overflow_4_7666,
      ADR1 => VCC,
      ADR2 => reg_ID_data2_4_7667,
      ADR3 => in2_and000221_0,
      O => N420
    );
  in2_4_G : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X67Y52"
    )
    port map (
      ADR0 => reg_EX_result_4_7511,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_4_7666,
      ADR3 => in2_and000221_0,
      O => N421
    );
  in2_5_F : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X67Y62"
    )
    port map (
      ADR0 => reg_EX_overflow_5_7668,
      ADR1 => reg_ID_data2_5_7669,
      ADR2 => in2_and000221_0,
      ADR3 => VCC,
      O => N412
    );
  in2_5_G : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X67Y62"
    )
    port map (
      ADR0 => reg_EX_overflow_5_7668,
      ADR1 => VCC,
      ADR2 => in2_and000221_0,
      ADR3 => reg_EX_result_5_7510,
      O => N413
    );
  in2_6_F : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X76Y58"
    )
    port map (
      ADR0 => in2_and000221_0,
      ADR1 => reg_EX_overflow_6_7670,
      ADR2 => VCC,
      ADR3 => reg_ID_data2_6_7671,
      O => N416
    );
  in2_6_G : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X76Y58"
    )
    port map (
      ADR0 => in2_and000221_0,
      ADR1 => reg_EX_overflow_6_7670,
      ADR2 => reg_EX_result_6_7509,
      ADR3 => VCC,
      O => N417
    );
  in2_7_F : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X77Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in2_and000221_0,
      ADR2 => reg_EX_overflow_7_7672,
      ADR3 => reg_ID_data2_7_7673,
      O => N404
    );
  in2_7_G : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X77Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_7_7508,
      ADR2 => reg_EX_overflow_7_7672,
      ADR3 => in2_and000221_0,
      O => N405
    );
  in2_8_F : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X77Y61"
    )
    port map (
      ADR0 => reg_EX_overflow_8_7674,
      ADR1 => VCC,
      ADR2 => reg_ID_data2_8_7675,
      ADR3 => in2_and000221_0,
      O => N414
    );
  in2_8_G : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X77Y61"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_8_7507,
      ADR2 => reg_EX_overflow_8_7674,
      ADR3 => in2_and000221_0,
      O => N415
    );
  in2_9_F : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X76Y65"
    )
    port map (
      ADR0 => reg_EX_overflow_9_7676,
      ADR1 => VCC,
      ADR2 => reg_ID_data2_9_7677,
      ADR3 => in2_and000221_0,
      O => N418
    );
  in2_9_G : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X76Y65"
    )
    port map (
      ADR0 => reg_EX_overflow_9_7676,
      ADR1 => VCC,
      ADR2 => reg_EX_result_9_7506,
      ADR3 => in2_and000221_0,
      O => N419
    );
  ram_addr_0_1_F : X_LUT4
    generic map(
      INIT => X"A820",
      LOC => "SLICE_X78Y73"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => in2_and0002_0,
      ADR2 => N280,
      ADR3 => reg_EX_overflow_0_7655,
      O => N386
    );
  ram_addr_0_1_G : X_LUT4
    generic map(
      INIT => X"C840",
      LOC => "SLICE_X78Y73"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => ram_addr_and0000_0,
      ADR2 => N234_0,
      ADR3 => reg_EX_overflow_0_7655,
      O => N387
    );
  ram_addr_1_1_F : X_LUT4
    generic map(
      INIT => X"88A0",
      LOC => "SLICE_X90Y61"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => reg_EX_overflow_1_7658,
      ADR2 => N278,
      ADR3 => in2_and0002_0,
      O => N384
    );
  ram_addr_1_1_G : X_LUT4
    generic map(
      INIT => X"A280",
      LOC => "SLICE_X90Y61"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => in1_and0003_0,
      ADR2 => reg_EX_overflow_1_7658,
      ADR3 => N236_0,
      O => N385
    );
  ram_addr_2_1_F : X_LUT4
    generic map(
      INIT => X"C808",
      LOC => "SLICE_X89Y63"
    )
    port map (
      ADR0 => N276,
      ADR1 => ram_addr_and0000_0,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_2_7661,
      O => N382
    );
  ram_addr_2_1_G : X_LUT4
    generic map(
      INIT => X"A820",
      LOC => "SLICE_X89Y63"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => in1_and0003_0,
      ADR2 => N238_0,
      ADR3 => reg_EX_overflow_2_7661,
      O => N383
    );
  ram_addr_3_1_F : X_LUT4
    generic map(
      INIT => X"B800",
      LOC => "SLICE_X78Y61"
    )
    port map (
      ADR0 => reg_EX_overflow_3_7664,
      ADR1 => in2_and0002_0,
      ADR2 => N274,
      ADR3 => ram_addr_and0000_0,
      O => N380
    );
  ram_addr_3_1_G : X_LUT4
    generic map(
      INIT => X"8C80",
      LOC => "SLICE_X78Y61"
    )
    port map (
      ADR0 => reg_EX_overflow_3_7664,
      ADR1 => ram_addr_and0000_0,
      ADR2 => in1_and0003_0,
      ADR3 => N246_0,
      O => N381
    );
  ram_addr_4_1_F : X_LUT4
    generic map(
      INIT => X"A820",
      LOC => "SLICE_X78Y58"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => in2_and0002_0,
      ADR2 => N228_0,
      ADR3 => reg_EX_overflow_4_7666,
      O => N364
    );
  ram_addr_4_1_G : X_LUT4
    generic map(
      INIT => X"8A80",
      LOC => "SLICE_X78Y58"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => reg_EX_overflow_4_7666,
      ADR2 => in1_and0003_0,
      ADR3 => N244_0,
      O => N365
    );
  ram_addr_5_1_F : X_LUT4
    generic map(
      INIT => X"8C80",
      LOC => "SLICE_X79Y56"
    )
    port map (
      ADR0 => reg_EX_overflow_5_7668,
      ADR1 => ram_addr_and0000_0,
      ADR2 => in2_and0002_0,
      ADR3 => N226_0,
      O => N362
    );
  ram_addr_5_1_G : X_LUT4
    generic map(
      INIT => X"8C80",
      LOC => "SLICE_X79Y56"
    )
    port map (
      ADR0 => reg_EX_overflow_5_7668,
      ADR1 => ram_addr_and0000_0,
      ADR2 => in1_and0003_0,
      ADR3 => N242_0,
      O => N363
    );
  ram_addr_6_1_F : X_LUT4
    generic map(
      INIT => X"B080",
      LOC => "SLICE_X76Y53"
    )
    port map (
      ADR0 => reg_EX_overflow_6_7670,
      ADR1 => in2_and0002_0,
      ADR2 => ram_addr_and0000_0,
      ADR3 => N224_0,
      O => N360
    );
  ram_addr_6_1_G : X_LUT4
    generic map(
      INIT => X"88C0",
      LOC => "SLICE_X76Y53"
    )
    port map (
      ADR0 => reg_EX_overflow_6_7670,
      ADR1 => ram_addr_and0000_0,
      ADR2 => N240_0,
      ADR3 => in1_and0003_0,
      O => N361
    );
  ram_addr_7_1_F : X_LUT4
    generic map(
      INIT => X"C840",
      LOC => "SLICE_X79Y55"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => ram_addr_and0000_0,
      ADR2 => N222_0,
      ADR3 => reg_EX_overflow_7_7672,
      O => N358
    );
  ram_addr_7_1_G : X_LUT4
    generic map(
      INIT => X"C480",
      LOC => "SLICE_X79Y55"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => ram_addr_and0000_0,
      ADR2 => reg_EX_overflow_7_7672,
      ADR3 => N252_0,
      O => N359
    );
  ram_addr_8_1_F : X_LUT4
    generic map(
      INIT => X"A820",
      LOC => "SLICE_X78Y68"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => in2_and0002_0,
      ADR2 => N220_0,
      ADR3 => reg_EX_overflow_8_7674,
      O => N356
    );
  ram_addr_8_1_G : X_LUT4
    generic map(
      INIT => X"C480",
      LOC => "SLICE_X78Y68"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => ram_addr_and0000_0,
      ADR2 => reg_EX_overflow_8_7674,
      ADR3 => N250_0,
      O => N357
    );
  ram_addr_9_1_F : X_LUT4
    generic map(
      INIT => X"B080",
      LOC => "SLICE_X79Y72"
    )
    port map (
      ADR0 => reg_EX_overflow_9_7676,
      ADR1 => in2_and0002_0,
      ADR2 => ram_addr_and0000_0,
      ADR3 => N218_0,
      O => N354
    );
  ram_addr_9_1_G : X_LUT4
    generic map(
      INIT => X"88C0",
      LOC => "SLICE_X79Y72"
    )
    port map (
      ADR0 => reg_EX_overflow_9_7676,
      ADR1 => ram_addr_and0000_0,
      ADR2 => N248_0,
      ADR3 => in1_and0003_0,
      O => N355
    );
  in2_10_F : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X69Y70"
    )
    port map (
      ADR0 => reg_EX_overflow_10_7637,
      ADR1 => reg_ID_data2_10_7698,
      ADR2 => VCC,
      ADR3 => in2_and000221_0,
      O => N410
    );
  in2_10_G : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X69Y70"
    )
    port map (
      ADR0 => reg_EX_overflow_10_7637,
      ADR1 => VCC,
      ADR2 => in2_and000221_0,
      ADR3 => reg_EX_result_10_7505,
      O => N411
    );
  in2_11_F : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X78Y64"
    )
    port map (
      ADR0 => reg_ID_data2_11_7699,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_11_7643,
      ADR3 => in2_and000221_0,
      O => N408
    );
  in2_11_G : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X78Y64"
    )
    port map (
      ADR0 => reg_EX_result_11_7504,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_11_7643,
      ADR3 => in2_and000221_0,
      O => N409
    );
  in2_12_F : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X60Y60"
    )
    port map (
      ADR0 => reg_ID_data2_12_7701,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_12_7700,
      ADR3 => in2_and000221_0,
      O => N402
    );
  in2_12_G : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X60Y60"
    )
    port map (
      ADR0 => reg_EX_result_12_7503,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_12_7700,
      ADR3 => in2_and000221_0,
      O => N403
    );
  in2_13_F : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X68Y69"
    )
    port map (
      ADR0 => reg_ID_data2_13_7703,
      ADR1 => reg_EX_overflow_13_7702,
      ADR2 => in2_and000221_0,
      ADR3 => VCC,
      O => N406
    );
  in2_13_G : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X68Y69"
    )
    port map (
      ADR0 => reg_EX_result_13_7502,
      ADR1 => reg_EX_overflow_13_7702,
      ADR2 => in2_and000221_0,
      ADR3 => VCC,
      O => N407
    );
  in2_14_F : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X71Y51"
    )
    port map (
      ADR0 => reg_EX_overflow_14_7704,
      ADR1 => in2_and000221_0,
      ADR2 => reg_ID_data2_14_7705,
      ADR3 => VCC,
      O => N400
    );
  in2_14_G : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X71Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_14_7501,
      ADR2 => reg_EX_overflow_14_7704,
      ADR3 => in2_and000221_0,
      O => N401
    );
  in2_15_F : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X79Y54"
    )
    port map (
      ADR0 => reg_EX_overflow_15_7706,
      ADR1 => reg_ID_data2_15_7707,
      ADR2 => VCC,
      ADR3 => in2_and000221_0,
      O => N398
    );
  in2_15_G : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X79Y54"
    )
    port map (
      ADR0 => reg_EX_result_15_7500,
      ADR1 => reg_EX_overflow_15_7706,
      ADR2 => VCC,
      ADR3 => in2_and000221_0,
      O => N399
    );
  in2_0_SW2_F : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X78Y69"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => VCC,
      ADR2 => N379_0,
      ADR3 => reg_ID_data2_0_7708,
      O => N428
    );
  in2_0_SW2_G : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X78Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_0_7515,
      ADR2 => wr_enable_0,
      ADR3 => reg_ID_data2_0_7708,
      O => N429
    );
  in2_1_SW2_F : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X88Y67"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => reg_ID_data2_1_7711,
      ADR2 => N377_0,
      ADR3 => VCC,
      O => N426
    );
  in2_1_SW2_G : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X88Y67"
    )
    port map (
      ADR0 => reg_EX_result_1_7514,
      ADR1 => reg_ID_data2_1_7711,
      ADR2 => wr_enable_0,
      ADR3 => VCC,
      O => N427
    );
  in1_0_SW2 : X_LUT4
    generic map(
      INIT => X"EC4C",
      LOC => "SLICE_X78Y75"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_ID_data1_0_7756,
      ADR2 => in1_and0007101_0,
      ADR3 => reg_EX_result_0_7515,
      O => N234
    );
  in1_0_Q : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X78Y75"
    )
    port map (
      ADR0 => reg_EX_overflow_0_7655,
      ADR1 => in1_and0003_0,
      ADR2 => N234_0,
      ADR3 => VCC,
      O => in1(0)
    );
  in1_1_SW2 : X_LUT4
    generic map(
      INIT => X"B8F0",
      LOC => "SLICE_X88Y59"
    )
    port map (
      ADR0 => reg_EX_result_1_7514,
      ADR1 => in1_and0007101_0,
      ADR2 => reg_ID_data1_1_7758,
      ADR3 => wr_enable_0,
      O => N236
    );
  in1_1_Q : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X88Y59"
    )
    port map (
      ADR0 => reg_EX_overflow_1_7658,
      ADR1 => VCC,
      ADR2 => N236_0,
      ADR3 => in1_and0003_0,
      O => in1(1)
    );
  in1_2_SW2 : X_LUT4
    generic map(
      INIT => X"CAAA",
      LOC => "SLICE_X91Y61"
    )
    port map (
      ADR0 => reg_ID_data1_2_7759,
      ADR1 => reg_EX_result_2_7513,
      ADR2 => in1_and0007101_0,
      ADR3 => wr_enable_0,
      O => N238
    );
  in1_2_Q : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X91Y61"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_2_7661,
      ADR2 => in1_and0003_0,
      ADR3 => N238_0,
      O => in1(2)
    );
  in1_3_SW2 : X_LUT4
    generic map(
      INIT => X"E2AA",
      LOC => "SLICE_X79Y53"
    )
    port map (
      ADR0 => reg_ID_data1_3_7760,
      ADR1 => in1_and0007101_0,
      ADR2 => reg_EX_result_3_7512,
      ADR3 => wr_enable_0,
      O => N246
    );
  in1_3_Q : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X79Y53"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_3_7664,
      ADR3 => N246_0,
      O => in1(3)
    );
  in1_4_SW2 : X_LUT4
    generic map(
      INIT => X"ACCC",
      LOC => "SLICE_X78Y56"
    )
    port map (
      ADR0 => reg_EX_result_4_7511,
      ADR1 => reg_ID_data1_4_7761,
      ADR2 => wr_enable_0,
      ADR3 => in1_and0007101_0,
      O => N244
    );
  in1_4_Q : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X78Y56"
    )
    port map (
      ADR0 => reg_EX_overflow_4_7666,
      ADR1 => in1_and0003_0,
      ADR2 => VCC,
      ADR3 => N244_0,
      O => in1(4)
    );
  in1_5_SW2 : X_LUT4
    generic map(
      INIT => X"DF80",
      LOC => "SLICE_X79Y59"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_EX_result_5_7510,
      ADR2 => in1_and0007101_0,
      ADR3 => reg_ID_data1_5_7762,
      O => N242
    );
  in1_5_Q : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X79Y59"
    )
    port map (
      ADR0 => reg_EX_overflow_5_7668,
      ADR1 => in1_and0003_0,
      ADR2 => VCC,
      ADR3 => N242_0,
      O => in1(5)
    );
  in1_6_SW2 : X_LUT4
    generic map(
      INIT => X"E2AA",
      LOC => "SLICE_X78Y59"
    )
    port map (
      ADR0 => reg_ID_data1_6_7763,
      ADR1 => wr_enable_0,
      ADR2 => reg_EX_result_6_7509,
      ADR3 => in1_and0007101_0,
      O => N240
    );
  in1_6_Q : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X78Y59"
    )
    port map (
      ADR0 => reg_EX_overflow_6_7670,
      ADR1 => VCC,
      ADR2 => in1_and0003_0,
      ADR3 => N240_0,
      O => in1(6)
    );
  in1_7_SW2 : X_LUT4
    generic map(
      INIT => X"F780",
      LOC => "SLICE_X79Y57"
    )
    port map (
      ADR0 => in1_and0007101_0,
      ADR1 => wr_enable_0,
      ADR2 => reg_EX_result_7_7508,
      ADR3 => reg_ID_data1_7_7764,
      O => N252
    );
  in1_7_Q : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X79Y57"
    )
    port map (
      ADR0 => reg_EX_overflow_7_7672,
      ADR1 => VCC,
      ADR2 => in1_and0003_0,
      ADR3 => N252_0,
      O => in1(7)
    );
  in1_8_SW2 : X_LUT4
    generic map(
      INIT => X"EC4C",
      LOC => "SLICE_X78Y72"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_ID_data1_8_7765,
      ADR2 => in1_and0007101_0,
      ADR3 => reg_EX_result_8_7507,
      O => N250
    );
  in1_8_Q : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X78Y72"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_8_7674,
      ADR3 => N250_0,
      O => in1(8)
    );
  in1_9_SW2 : X_LUT4
    generic map(
      INIT => X"DF80",
      LOC => "SLICE_X78Y74"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_EX_result_9_7506,
      ADR2 => in1_and0007101_0,
      ADR3 => reg_ID_data1_9_7766,
      O => N248
    );
  in1_9_Q : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X78Y74"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => N248_0,
      ADR2 => reg_EX_overflow_9_7676,
      ADR3 => VCC,
      O => in1(9)
    );
  wr_enable_or000160 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X88Y62"
    )
    port map (
      ADR0 => reg_EX_instr_9_7734,
      ADR1 => reg_EX_instr_10_7732,
      ADR2 => reg_EX_instr_11_7733,
      ADR3 => reg_EX_instr_13_7750,
      O => wr_enable_or000160_20723
    );
  wr_enable_or000185_1 : X_LUT4
    generic map(
      INIT => X"F040",
      LOC => "SLICE_X88Y62"
    )
    port map (
      ADR0 => reg_EX_instr_14_7753,
      ADR1 => wr_enable_or000134_0,
      ADR2 => wr_enable_or000181_0,
      ADR3 => wr_enable_or000160_0,
      O => wr_enable_or000185_20730
    );
  in1_and0008_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X79Y39"
    )
    port map (
      ADR0 => reg_ID_instr_15_7745,
      ADR1 => reg_ID_instr_13_7746,
      ADR2 => reg_ID_instr_12_7771,
      ADR3 => reg_ID_instr_14_7772,
      O => N88
    );
  in1_and0008 : X_LUT4
    generic map(
      INIT => X"0056",
      LOC => "SLICE_X79Y39"
    )
    port map (
      ADR0 => reg_ID_instr_11_7646,
      ADR1 => reg_ID_instr_9_7636,
      ADR2 => reg_ID_instr_10_7647,
      ADR3 => N88_0,
      O => in1_and0008_20754
    );
  in1_or00091_SW0 : X_LUT4
    generic map(
      INIT => X"FFBA",
      LOC => "SLICE_X79Y45"
    )
    port map (
      ADR0 => reg_ID_instr_11_7646,
      ADR1 => reg_ID_instr_9_7636,
      ADR2 => reg_ID_instr_10_7647,
      ADR3 => reg_ID_instr_12_7771,
      O => in1_or00091_SW0_O
    );
  in1_or00091 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X79Y45"
    )
    port map (
      ADR0 => reg_ID_instr_13_7746,
      ADR1 => reg_ID_instr_15_7745,
      ADR2 => reg_ID_instr_14_7772,
      ADR3 => in1_or00091_SW0_O_0,
      O => in1_or0009
    );
  wr_overflow_or000034_SW0 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X88Y65"
    )
    port map (
      ADR0 => wr_enable_or000185_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_EX_instr_9_7734,
      O => wr_overflow_or000034_SW0_O
    );
  wr_overflow_or000044 : X_LUT4
    generic map(
      INIT => X"FEAA",
      LOC => "SLICE_X88Y65"
    )
    port map (
      ADR0 => branch_trigger_cmp_eq0002_0,
      ADR1 => wr_overflow_or000017_0,
      ADR2 => wr_overflow_or000034_SW0_O_0,
      ADR3 => wr_overflow_or000031_0,
      O => wr_overflow
    );
  in1_10_SW2 : X_LUT4
    generic map(
      INIT => X"E2AA",
      LOC => "SLICE_X79Y73"
    )
    port map (
      ADR0 => reg_ID_data1_10_7778,
      ADR1 => in1_and0007101_0,
      ADR2 => reg_EX_result_10_7505,
      ADR3 => wr_enable_0,
      O => N256
    );
  in1_10_Q : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X79Y73"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N256_0,
      ADR2 => reg_EX_overflow_10_7637,
      ADR3 => in1_and0003_0,
      O => in1(10)
    );
  in1_11_SW2 : X_LUT4
    generic map(
      INIT => X"BF80",
      LOC => "SLICE_X79Y74"
    )
    port map (
      ADR0 => reg_EX_result_11_7504,
      ADR1 => in1_and0007101_0,
      ADR2 => wr_enable_0,
      ADR3 => reg_ID_data1_11_7779,
      O => N254
    );
  in1_11_Q : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X79Y74"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_11_7643,
      ADR2 => N254_0,
      ADR3 => in1_and0003_0,
      O => in1(11)
    );
  in1_12_SW2 : X_LUT4
    generic map(
      INIT => X"DF80",
      LOC => "SLICE_X74Y73"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_EX_result_12_7503,
      ADR2 => in1_and0007101_0,
      ADR3 => reg_ID_data1_12_7781,
      O => in1_12_SW2_O
    );
  in1_12_Q : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X74Y73"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => VCC,
      ADR2 => in1_12_SW2_O_0,
      ADR3 => reg_EX_overflow_12_7700,
      O => in1(12)
    );
  in1_13_SW2 : X_LUT4
    generic map(
      INIT => X"E4CC",
      LOC => "SLICE_X70Y69"
    )
    port map (
      ADR0 => in1_and0007101_0,
      ADR1 => reg_ID_data1_13_7783,
      ADR2 => reg_EX_result_13_7502,
      ADR3 => wr_enable_0,
      O => in1_13_SW2_O
    );
  in1_13_Q : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X70Y69"
    )
    port map (
      ADR0 => reg_EX_overflow_13_7702,
      ADR1 => in1_and0003_0,
      ADR2 => in1_13_SW2_O_0,
      ADR3 => VCC,
      O => in1(13)
    );
  in1_14_SW2 : X_LUT4
    generic map(
      INIT => X"E4CC",
      LOC => "SLICE_X69Y71"
    )
    port map (
      ADR0 => in1_and0007101_0,
      ADR1 => reg_ID_data1_14_7785,
      ADR2 => reg_EX_result_14_7501,
      ADR3 => wr_enable_0,
      O => in1_14_SW2_O
    );
  in1_14_Q : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X69Y71"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_14_7704,
      ADR3 => in1_14_SW2_O_0,
      O => in1(14)
    );
  in1_15_SW2 : X_LUT4
    generic map(
      INIT => X"E4CC",
      LOC => "SLICE_X74Y69"
    )
    port map (
      ADR0 => in1_and0007101_0,
      ADR1 => reg_ID_data1_15_7787,
      ADR2 => reg_EX_result_15_7500,
      ADR3 => wr_enable_0,
      O => in1_15_SW2_O
    );
  in1_15_Q : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X74Y69"
    )
    port map (
      ADR0 => reg_EX_overflow_15_7706,
      ADR1 => in1_15_SW2_O_0,
      ADR2 => in1_and0003_0,
      ADR3 => VCC,
      O => in1(15)
    );
  reg_ID_data1_mux0007_10_146 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X88Y30"
    )
    port map (
      ADR0 => reg_IF_instr_15_7790,
      ADR1 => reg_IF_instr_13_7792,
      ADR2 => reg_IF_instr_14_7791,
      ADR3 => reg_IF_instr_12_7793,
      O => reg_ID_data1_mux0007_10_146_20961
    );
  rd_index1_or0004_SW0 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X88Y30"
    )
    port map (
      ADR0 => reg_IF_instr_11_7789,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_ID_data1_mux0007_10_146_0,
      O => N11
    );
  alu_mode_0_4 : X_LUT4
    generic map(
      INIT => X"00FC",
      LOC => "SLICE_X76Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_15_7745,
      ADR2 => reg_ID_instr_9_7636,
      ADR3 => reg_ID_instr_13_7746,
      O => alu_mode_0_4_O
    );
  alu_mode_0_37 : X_LUT4
    generic map(
      INIT => X"FCF8",
      LOC => "SLICE_X76Y42"
    )
    port map (
      ADR0 => alu_mode_0_15_0,
      ADR1 => N102_0,
      ADR2 => N15_0,
      ADR3 => alu_mode_0_4_O_0,
      O => alu_mode(0)
    );
  in1_and000728 : X_LUT4
    generic map(
      INIT => X"A8A0",
      LOC => "SLICE_X79Y47"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => in1_and00075_0,
      ADR2 => in1_and0008_0,
      ADR3 => in1_and000710_0,
      O => in1_and000728_O
    );
  in1_and0007101 : X_LUT4
    generic map(
      INIT => X"FFE0",
      LOC => "SLICE_X79Y47"
    )
    port map (
      ADR0 => in1_or0009_0,
      ADR1 => in1_or0008_0,
      ADR2 => in1_and000772_0,
      ADR3 => in1_and000728_O_0,
      O => in1_and0007101_21018
    );
  in2_and00028 : X_LUT4
    generic map(
      INIT => X"8080",
      LOC => "SLICE_X78Y54"
    )
    port map (
      ADR0 => reg_ID_instr_5_7726,
      ADR1 => reg_ID_instr_4_7724,
      ADR2 => reg_ID_instr_3_7722,
      ADR3 => VCC,
      O => in2_and00028_21035
    );
  in2_and000221_1 : X_LUT4
    generic map(
      INIT => X"A8A0",
      LOC => "SLICE_X78Y54"
    )
    port map (
      ADR0 => in1_or0003_0,
      ADR1 => in2_and00028_0,
      ADR2 => in2_and00025_0,
      ADR3 => in1_or0009_0,
      O => in2_and000221_21042
    );
  rd_index1_or00051 : X_LUT4
    generic map(
      INIT => X"2888",
      LOC => "SLICE_X88Y36"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_10_146_0,
      ADR1 => reg_IF_instr_11_7789,
      ADR2 => reg_IF_instr_10_7742,
      ADR3 => reg_IF_instr_9_7740,
      O => rd_index1_or0005
    );
  rd_index1_or000655 : X_LUT4
    generic map(
      INIT => X"FFC0",
      LOC => "SLICE_X88Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rd_index1_or000629_0,
      ADR2 => rd_index1_or000638_0,
      ADR3 => rd_index1_or0005_0,
      O => rd_index1_or0006
    );
  reg_EX_overflow_mux0001_0_SW2 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X89Y57"
    )
    port map (
      ADR0 => reg_ID_instr_8_7719,
      ADR1 => VCC,
      ADR2 => in1_0_0,
      ADR3 => reg_ID_instr_0_7649,
      O => reg_EX_overflow_mux0001_0_SW2_O
    );
  reg_EX_overflow_mux0001_0_Q : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X89Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => overflow(0),
      ADR3 => reg_EX_overflow_mux0001_0_SW2_O_0,
      O => reg_EX_overflow_mux0001(0)
    );
  reg_EX_overflow_0 : X_FF
    generic map(
      LOC => "SLICE_X89Y57",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_0_DXMUX_21097,
      CE => VCC,
      CLK => proc_reg_EX_overflow_0_CLKINV_21079,
      SET => GND,
      RST => proc_reg_EX_overflow_0_FFX_RSTAND_21102,
      O => reg_EX_overflow_0_7655
    );
  proc_reg_EX_overflow_0_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X89Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_0_FFX_RSTAND_21102
    );
  reg_EX_overflow_mux0001_1_SW2 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X91Y62"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_1_7810,
      ADR2 => in1_1_0,
      ADR3 => reg_ID_instr_8_7719,
      O => reg_EX_overflow_mux0001_1_SW2_O
    );
  reg_EX_overflow_mux0001_1_Q : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X91Y62"
    )
    port map (
      ADR0 => overflow(1),
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_mux0001_1_SW2_O_0,
      ADR3 => in1_cmp_eq0013_0,
      O => reg_EX_overflow_mux0001(1)
    );
  reg_EX_overflow_1 : X_FF
    generic map(
      LOC => "SLICE_X91Y62",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_1_DXMUX_21132,
      CE => VCC,
      CLK => proc_reg_EX_overflow_1_CLKINV_21114,
      SET => GND,
      RST => proc_reg_EX_overflow_1_FFX_RSTAND_21137,
      O => reg_EX_overflow_1_7658
    );
  proc_reg_EX_overflow_1_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X91Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_1_FFX_RSTAND_21137
    );
  reg_EX_overflow_mux0001_2_SW2 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X89Y56"
    )
    port map (
      ADR0 => reg_ID_instr_8_7719,
      ADR1 => reg_ID_instr_2_7720,
      ADR2 => in1_2_0,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001_2_SW2_O
    );
  reg_EX_overflow_mux0001_2_Q : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X89Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => reg_EX_overflow_mux0001_2_SW2_O_0,
      ADR3 => overflow(2),
      O => reg_EX_overflow_mux0001(2)
    );
  reg_EX_overflow_2 : X_FF
    generic map(
      LOC => "SLICE_X89Y56",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_2_DXMUX_21167,
      CE => VCC,
      CLK => proc_reg_EX_overflow_2_CLKINV_21149,
      SET => GND,
      RST => proc_reg_EX_overflow_2_FFX_RSTAND_21172,
      O => reg_EX_overflow_2_7661
    );
  proc_reg_EX_overflow_2_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X89Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_2_FFX_RSTAND_21172
    );
  reg_EX_overflow_mux0001_3_SW2 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X89Y54"
    )
    port map (
      ADR0 => in1_3_0,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_8_7719,
      ADR3 => reg_ID_instr_3_7722,
      O => reg_EX_overflow_mux0001_3_SW2_O
    );
  reg_EX_overflow_mux0001_3_Q : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X89Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => reg_EX_overflow_mux0001_3_SW2_O_0,
      ADR3 => overflow(3),
      O => reg_EX_overflow_mux0001(3)
    );
  reg_EX_overflow_3 : X_FF
    generic map(
      LOC => "SLICE_X89Y54",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_3_DXMUX_21202,
      CE => VCC,
      CLK => proc_reg_EX_overflow_3_CLKINV_21184,
      SET => GND,
      RST => proc_reg_EX_overflow_3_FFX_RSTAND_21207,
      O => reg_EX_overflow_3_7664
    );
  proc_reg_EX_overflow_3_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X89Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_3_FFX_RSTAND_21207
    );
  reg_EX_overflow_mux0001_4_SW2 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X78Y52"
    )
    port map (
      ADR0 => in1_4_0,
      ADR1 => reg_ID_instr_4_7724,
      ADR2 => reg_ID_instr_8_7719,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001_4_SW2_O
    );
  reg_EX_overflow_mux0001_4_Q : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X78Y52"
    )
    port map (
      ADR0 => overflow(4),
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => VCC,
      ADR3 => reg_EX_overflow_mux0001_4_SW2_O_0,
      O => reg_EX_overflow_mux0001(4)
    );
  reg_EX_overflow_4 : X_FF
    generic map(
      LOC => "SLICE_X78Y52",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_4_DXMUX_21237,
      CE => VCC,
      CLK => proc_reg_EX_overflow_4_CLKINV_21219,
      SET => GND,
      RST => proc_reg_EX_overflow_4_FFX_RSTAND_21242,
      O => reg_EX_overflow_4_7666
    );
  proc_reg_EX_overflow_4_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X78Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_4_FFX_RSTAND_21242
    );
  reg_EX_overflow_mux0001_5_SW2 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X79Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_5_0,
      ADR2 => reg_ID_instr_5_7726,
      ADR3 => reg_ID_instr_8_7719,
      O => reg_EX_overflow_mux0001_5_SW2_O
    );
  reg_EX_overflow_mux0001_5_Q : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X79Y48"
    )
    port map (
      ADR0 => overflow(5),
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => reg_EX_overflow_mux0001_5_SW2_O_0,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001(5)
    );
  reg_EX_overflow_5 : X_FF
    generic map(
      LOC => "SLICE_X79Y48",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_5_DXMUX_21272,
      CE => VCC,
      CLK => proc_reg_EX_overflow_5_CLKINV_21254,
      SET => GND,
      RST => proc_reg_EX_overflow_5_FFX_RSTAND_21277,
      O => reg_EX_overflow_5_7668
    );
  proc_reg_EX_overflow_5_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X79Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_5_FFX_RSTAND_21277
    );
  reg_EX_overflow_mux0001_6_SW2 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X78Y31"
    )
    port map (
      ADR0 => in1_6_0,
      ADR1 => reg_ID_instr_8_7719,
      ADR2 => reg_ID_instr_6_7728,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001_6_SW2_O
    );
  reg_EX_overflow_mux0001_6_Q : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X78Y31"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => overflow(6),
      ADR2 => reg_EX_overflow_mux0001_6_SW2_O_0,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001(6)
    );
  reg_EX_overflow_6 : X_FF
    generic map(
      LOC => "SLICE_X78Y31",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_6_DXMUX_21307,
      CE => VCC,
      CLK => proc_reg_EX_overflow_6_CLKINV_21289,
      SET => GND,
      RST => proc_reg_EX_overflow_6_FFX_RSTAND_21312,
      O => reg_EX_overflow_6_7670
    );
  proc_reg_EX_overflow_6_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X78Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_6_FFX_RSTAND_21312
    );
  reg_EX_overflow_mux0001_7_SW2 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X79Y52"
    )
    port map (
      ADR0 => in1_7_0,
      ADR1 => reg_ID_instr_8_7719,
      ADR2 => reg_ID_instr_7_7730,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001_7_SW2_O
    );
  reg_EX_overflow_mux0001_7_Q : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X79Y52"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => overflow(7),
      ADR2 => reg_EX_overflow_mux0001_7_SW2_O_0,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001(7)
    );
  reg_EX_overflow_7 : X_FF
    generic map(
      LOC => "SLICE_X79Y52",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_7_DXMUX_21342,
      CE => VCC,
      CLK => proc_reg_EX_overflow_7_CLKINV_21324,
      SET => GND,
      RST => proc_reg_EX_overflow_7_FFX_RSTAND_21347,
      O => reg_EX_overflow_7_7672
    );
  proc_reg_EX_overflow_7_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X79Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_7_FFX_RSTAND_21347
    );
  reg_EX_overflow_mux0001_8_SW2 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X88Y52"
    )
    port map (
      ADR0 => reg_ID_instr_8_7719,
      ADR1 => in1_8_0,
      ADR2 => reg_ID_instr_0_7649,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001_8_SW2_O
    );
  reg_EX_overflow_mux0001_8_Q : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X88Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => overflow(8),
      ADR2 => in1_cmp_eq0013_0,
      ADR3 => reg_EX_overflow_mux0001_8_SW2_O_0,
      O => reg_EX_overflow_mux0001(8)
    );
  reg_EX_overflow_8 : X_FF
    generic map(
      LOC => "SLICE_X88Y52",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_8_DXMUX_21377,
      CE => VCC,
      CLK => proc_reg_EX_overflow_8_CLKINV_21359,
      SET => GND,
      RST => proc_reg_EX_overflow_8_FFX_RSTAND_21382,
      O => reg_EX_overflow_8_7674
    );
  proc_reg_EX_overflow_8_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X88Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_8_FFX_RSTAND_21382
    );
  reg_EX_overflow_mux0001_9_SW2 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X90Y63"
    )
    port map (
      ADR0 => reg_ID_instr_8_7719,
      ADR1 => in1_9_0,
      ADR2 => reg_ID_instr_1_7810,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001_9_SW2_O
    );
  reg_EX_overflow_mux0001_9_Q : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X90Y63"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => reg_EX_overflow_mux0001_9_SW2_O_0,
      ADR3 => overflow(9),
      O => reg_EX_overflow_mux0001(9)
    );
  reg_EX_overflow_9 : X_FF
    generic map(
      LOC => "SLICE_X90Y63",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_9_DXMUX_21412,
      CE => VCC,
      CLK => proc_reg_EX_overflow_9_CLKINV_21394,
      SET => GND,
      RST => proc_reg_EX_overflow_9_FFX_RSTAND_21417,
      O => reg_EX_overflow_9_7676
    );
  proc_reg_EX_overflow_9_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X90Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_9_FFX_RSTAND_21417
    );
  alu_mode_0_1_SW0 : X_LUT4
    generic map(
      INIT => X"FFFC",
      LOC => "SLICE_X88Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_13_7746,
      ADR2 => reg_ID_instr_11_7646,
      ADR3 => reg_ID_instr_10_7647,
      O => alu_mode_0_1_SW0_O
    );
  alu_mode_0_1 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X88Y33"
    )
    port map (
      ADR0 => reg_ID_instr_15_7745,
      ADR1 => reg_ID_instr_14_7772,
      ADR2 => alu_mode_0_1_SW0_O_0,
      ADR3 => reg_ID_instr_12_7771,
      O => N15
    );
  in1_or000831 : X_LUT4
    generic map(
      INIT => X"0505",
      LOC => "SLICE_X78Y46"
    )
    port map (
      ADR0 => reg_ID_instr_12_7771,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_14_7772,
      ADR3 => VCC,
      O => N102
    );
  alu_mode_2_1 : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X78Y46"
    )
    port map (
      ADR0 => reg_ID_instr_15_7745,
      ADR1 => reg_ID_instr_13_7746,
      ADR2 => reg_ID_instr_11_7646,
      ADR3 => N102_0,
      O => alu_mode(2)
    );
  in1_and000318_SW0 : X_LUT4
    generic map(
      INIT => X"FF01",
      LOC => "SLICE_X78Y45"
    )
    port map (
      ADR0 => N282_0,
      ADR1 => N88_0,
      ADR2 => N268_0,
      ADR3 => in1_cmp_eq0013_0,
      O => in1_and000318_SW0_O
    );
  in1_and000324 : X_LUT4
    generic map(
      INIT => X"F800",
      LOC => "SLICE_X78Y45"
    )
    port map (
      ADR0 => in1_or0008_0,
      ADR1 => in1_and000312_0,
      ADR2 => in1_and000318_SW0_O_0,
      ADR3 => in1_or0003_0,
      O => in1_and0003
    );
  in1_and000771 : X_LUT4
    generic map(
      INIT => X"8241",
      LOC => "SLICE_X79Y43"
    )
    port map (
      ADR0 => reg_EX_instr_7_7825,
      ADR1 => reg_EX_instr_8_7826,
      ADR2 => reg_ID_instr_8_7719,
      ADR3 => reg_ID_instr_7_7730,
      O => in1_and000771_O
    );
  in1_and000772 : X_LUT4
    generic map(
      INIT => X"A500",
      LOC => "SLICE_X79Y43"
    )
    port map (
      ADR0 => reg_ID_instr_6_7728,
      ADR1 => VCC,
      ADR2 => reg_EX_instr_6_7648,
      ADR3 => in1_and000771_O_0,
      O => in1_and000772_21512
    );
  in1_cmp_eq00131_SW0 : X_LUT4
    generic map(
      INIT => X"FFEF",
      LOC => "SLICE_X79Y33"
    )
    port map (
      ADR0 => reg_ID_instr_11_7646,
      ADR1 => reg_ID_instr_9_7636,
      ADR2 => reg_ID_instr_10_7647,
      ADR3 => reg_ID_instr_12_7771,
      O => in1_cmp_eq00131_SW0_O
    );
  in1_cmp_eq00131 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X79Y33"
    )
    port map (
      ADR0 => reg_ID_instr_13_7746,
      ADR1 => reg_ID_instr_15_7745,
      ADR2 => reg_ID_instr_14_7772,
      ADR3 => in1_cmp_eq00131_SW0_O_0,
      O => in1_cmp_eq0013
    );
  in1_cmp_eq00143_SW0 : X_LUT4
    generic map(
      INIT => X"7DBE",
      LOC => "SLICE_X79Y46"
    )
    port map (
      ADR0 => reg_EX_instr_6_7648,
      ADR1 => reg_ID_instr_4_7724,
      ADR2 => reg_EX_instr_7_7825,
      ADR3 => reg_ID_instr_3_7722,
      O => in1_cmp_eq00143_SW0_O
    );
  in1_cmp_eq00143 : X_LUT4
    generic map(
      INIT => X"0C03",
      LOC => "SLICE_X79Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_5_7726,
      ADR2 => in1_cmp_eq00143_SW0_O_0,
      ADR3 => reg_EX_instr_8_7826,
      O => in1_cmp_eq0014
    );
  wr_overflow_or000012 : X_LUT4
    generic map(
      INIT => X"0033",
      LOC => "SLICE_X89Y62"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_instr_12_7752,
      ADR2 => VCC,
      ADR3 => reg_EX_instr_15_7754,
      O => wr_enable_or000181
    );
  wr_enable_or000185 : X_LUT4
    generic map(
      INIT => X"B0A0",
      LOC => "SLICE_X89Y62"
    )
    port map (
      ADR0 => wr_enable_or000160_0,
      ADR1 => reg_EX_instr_14_7753,
      ADR2 => wr_enable_or000181_0,
      ADR3 => wr_enable_or000134_0,
      O => wr_enable
    );
  in1_or000821 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X77Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_11_7646,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_14_7772,
      O => in1_or000821_O
    );
  in1_or000829 : X_LUT4
    generic map(
      INIT => X"70E0",
      LOC => "SLICE_X77Y40"
    )
    port map (
      ADR0 => reg_ID_instr_10_7647,
      ADR1 => reg_ID_instr_15_7745,
      ADR2 => in1_or000821_O_0,
      ADR3 => reg_ID_instr_9_7636,
      O => in1_or000829_21608
    );
  reg_ID_instr_mux0001_8_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X78Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_7_7840,
      O => reg_ID_instr_mux0001(8)
    );
  reg_ID_instr_7 : X_FF
    generic map(
      LOC => "SLICE_X78Y35",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_7_DXMUX_21820,
      CE => VCC,
      CLK => proc_reg_ID_instr_7_CLKINV_21793,
      SET => GND,
      RST => proc_reg_ID_instr_7_SRINV_21794,
      O => reg_ID_instr_7_7730
    );
  reg_ID_instr_mux0001_7_1 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X78Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => reg_IF_instr_8_7841,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(7)
    );
  reg_ID_instr_8 : X_FF
    generic map(
      LOC => "SLICE_X78Y34",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_9_DYMUX_21846,
      CE => VCC,
      CLK => proc_reg_ID_instr_9_CLKINV_21835,
      SET => GND,
      RST => proc_reg_ID_instr_9_SRINV_21836,
      O => reg_ID_instr_8_7719
    );
  reg_ID_instr_mux0001_6_1 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X78Y34"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => reg_IF_instr_9_7740,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(6)
    );
  reg_ID_instr_9 : X_FF
    generic map(
      LOC => "SLICE_X78Y34",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_9_DXMUX_21862,
      CE => VCC,
      CLK => proc_reg_ID_instr_9_CLKINV_21835,
      SET => GND,
      RST => proc_reg_ID_instr_9_SRINV_21836,
      O => reg_ID_instr_9_7636
    );
  reg_IF_instr_mux0001_15_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X78Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rom_data(0),
      ADR2 => VCC,
      ADR3 => branch_trigger_0,
      O => reg_IF_instr_mux0001(15)
    );
  reg_IF_instr_0 : X_FF
    generic map(
      LOC => "SLICE_X78Y29",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_1_DYMUX_21888,
      CE => VCC,
      CLK => proc_reg_IF_instr_1_CLKINV_21877,
      SET => GND,
      RST => proc_reg_IF_instr_1_SRINV_21878,
      O => reg_IF_instr_0_7836
    );
  reg_IF_instr_mux0001_14_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X78Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => rom_data(1),
      O => reg_IF_instr_mux0001(14)
    );
  reg_IF_instr_1 : X_FF
    generic map(
      LOC => "SLICE_X78Y29",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_1_DXMUX_21904,
      CE => VCC,
      CLK => proc_reg_IF_instr_1_CLKINV_21877,
      SET => GND,
      RST => proc_reg_IF_instr_1_SRINV_21878,
      O => reg_IF_instr_1_7835
    );
  reg_IF_instr_mux0001_13_1 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X91Y28"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => rom_data(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(13)
    );
  reg_IF_instr_2 : X_FF
    generic map(
      LOC => "SLICE_X91Y28",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_3_DYMUX_21930,
      CE => VCC,
      CLK => proc_reg_IF_instr_3_CLKINV_21919,
      SET => GND,
      RST => proc_reg_IF_instr_3_SRINV_21920,
      O => reg_IF_instr_2_7837
    );
  reg_IF_instr_mux0001_12_1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X91Y28"
    )
    port map (
      ADR0 => rom_data(3),
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(12)
    );
  reg_IF_instr_3 : X_FF
    generic map(
      LOC => "SLICE_X91Y28",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_3_DXMUX_21946,
      CE => VCC,
      CLK => proc_reg_IF_instr_3_CLKINV_21919,
      SET => GND,
      RST => proc_reg_IF_instr_3_SRINV_21920,
      O => reg_IF_instr_3_7738
    );
  reg_IF_instr_mux0001_11_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X79Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rom_data(4),
      ADR2 => branch_trigger_0,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(11)
    );
  reg_IF_instr_4 : X_FF
    generic map(
      LOC => "SLICE_X79Y28",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_5_DYMUX_21972,
      CE => VCC,
      CLK => proc_reg_IF_instr_5_CLKINV_21961,
      SET => GND,
      RST => proc_reg_IF_instr_5_SRINV_21962,
      O => reg_IF_instr_4_7839
    );
  reg_IF_instr_mux0001_10_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X79Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => branch_trigger_0,
      ADR3 => rom_data(5),
      O => reg_IF_instr_mux0001(10)
    );
  reg_IF_instr_5 : X_FF
    generic map(
      LOC => "SLICE_X79Y28",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_5_DXMUX_21988,
      CE => VCC,
      CLK => proc_reg_IF_instr_5_CLKINV_21961,
      SET => GND,
      RST => proc_reg_IF_instr_5_SRINV_21962,
      O => reg_IF_instr_5_7838
    );
  reg_IF_instr_mux0001_8_1 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X85Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => rom_data(7),
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(8)
    );
  reg_IF_instr_7 : X_FF
    generic map(
      LOC => "SLICE_X85Y0",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_7_DYMUX_22011,
      CE => VCC,
      CLK => proc_reg_IF_instr_7_CLKINV_22000,
      SET => GND,
      RST => proc_reg_IF_instr_7_FFY_RSTAND_22016,
      O => reg_IF_instr_7_7840
    );
  proc_reg_IF_instr_7_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X85Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_instr_7_FFY_RSTAND_22016
    );
  reg_IF_instr_mux0001_7_1 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X89Y29"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => rom_data(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(7)
    );
  reg_IF_instr_8 : X_FF
    generic map(
      LOC => "SLICE_X89Y29",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_9_DYMUX_22037,
      CE => VCC,
      CLK => proc_reg_IF_instr_9_CLKINV_22026,
      SET => GND,
      RST => proc_reg_IF_instr_9_SRINV_22027,
      O => reg_IF_instr_8_7841
    );
  reg_IF_instr_mux0001_6_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X89Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => rom_data(9),
      O => reg_IF_instr_mux0001(6)
    );
  reg_IF_instr_9 : X_FF
    generic map(
      LOC => "SLICE_X89Y29",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_9_DXMUX_22053,
      CE => VCC,
      CLK => proc_reg_IF_instr_9_CLKINV_22026,
      SET => GND,
      RST => proc_reg_IF_instr_9_SRINV_22027,
      O => reg_IF_instr_9_7740
    );
  reg_ID_instr_mux0001_5_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X79Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_10_7742,
      ADR2 => VCC,
      ADR3 => branch_trigger_0,
      O => reg_ID_instr_mux0001(5)
    );
  reg_ID_instr_10 : X_FF
    generic map(
      LOC => "SLICE_X79Y41",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_11_DYMUX_22079,
      CE => VCC,
      CLK => proc_reg_ID_instr_11_CLKINV_22068,
      SET => GND,
      RST => proc_reg_ID_instr_11_SRINV_22069,
      O => reg_ID_instr_10_7647
    );
  reg_ID_instr_mux0001_4_1 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X79Y41"
    )
    port map (
      ADR0 => reg_IF_instr_11_7789,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => branch_trigger_0,
      O => reg_ID_instr_mux0001(4)
    );
  reg_ID_instr_11 : X_FF
    generic map(
      LOC => "SLICE_X79Y41",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_11_DXMUX_22095,
      CE => VCC,
      CLK => proc_reg_ID_instr_11_CLKINV_22068,
      SET => GND,
      RST => proc_reg_ID_instr_11_SRINV_22069,
      O => reg_ID_instr_11_7646
    );
  reg_ID_instr_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X78Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_12_7793,
      ADR2 => branch_trigger_0,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(3)
    );
  reg_ID_instr_12 : X_FF
    generic map(
      LOC => "SLICE_X78Y38",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_13_DYMUX_22121,
      CE => VCC,
      CLK => proc_reg_ID_instr_13_CLKINV_22110,
      SET => GND,
      RST => proc_reg_ID_instr_13_SRINV_22111,
      O => reg_ID_instr_12_7771
    );
  reg_ID_instr_mux0001_2_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X78Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => branch_trigger_0,
      ADR3 => reg_IF_instr_13_7792,
      O => reg_ID_instr_mux0001(2)
    );
  reg_ID_instr_13 : X_FF
    generic map(
      LOC => "SLICE_X78Y38",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_13_DXMUX_22137,
      CE => VCC,
      CLK => proc_reg_ID_instr_13_CLKINV_22110,
      SET => GND,
      RST => proc_reg_ID_instr_13_SRINV_22111,
      O => reg_ID_instr_13_7746
    );
  reg_ID_instr_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X77Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_IF_instr_14_7791,
      ADR3 => branch_trigger_0,
      O => reg_ID_instr_mux0001(1)
    );
  reg_ID_instr_14 : X_FF
    generic map(
      LOC => "SLICE_X77Y45",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_15_DYMUX_22163,
      CE => VCC,
      CLK => proc_reg_ID_instr_15_CLKINV_22152,
      SET => GND,
      RST => proc_reg_ID_instr_15_SRINV_22153,
      O => reg_ID_instr_14_7772
    );
  reg_ID_instr_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X77Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_15_7790,
      ADR2 => VCC,
      ADR3 => branch_trigger_0,
      O => reg_ID_instr_mux0001(0)
    );
  reg_ID_instr_15 : X_FF
    generic map(
      LOC => "SLICE_X77Y45",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_15_DXMUX_22179,
      CE => VCC,
      CLK => proc_reg_ID_instr_15_CLKINV_22152,
      SET => GND,
      RST => proc_reg_ID_instr_15_SRINV_22153,
      O => reg_ID_instr_15_7745
    );
  reg_IF_instr_mux0001_5_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X88Y28"
    )
    port map (
      ADR0 => rom_data(10),
      ADR1 => VCC,
      ADR2 => branch_trigger_0,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(5)
    );
  reg_IF_instr_10 : X_FF
    generic map(
      LOC => "SLICE_X88Y28",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_11_DYMUX_22205,
      CE => VCC,
      CLK => proc_reg_IF_instr_11_CLKINV_22194,
      SET => GND,
      RST => proc_reg_IF_instr_11_SRINV_22195,
      O => reg_IF_instr_10_7742
    );
  reg_IF_instr_mux0001_4_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X88Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => rom_data(11),
      ADR3 => branch_trigger_0,
      O => reg_IF_instr_mux0001(4)
    );
  reg_IF_instr_11 : X_FF
    generic map(
      LOC => "SLICE_X88Y28",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_11_DXMUX_22221,
      CE => VCC,
      CLK => proc_reg_IF_instr_11_CLKINV_22194,
      SET => GND,
      RST => proc_reg_IF_instr_11_SRINV_22195,
      O => reg_IF_instr_11_7789
    );
  reg_IF_instr_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X89Y26"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => rom_data(12),
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(3)
    );
  reg_IF_instr_12 : X_FF
    generic map(
      LOC => "SLICE_X89Y26",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_13_DYMUX_22247,
      CE => VCC,
      CLK => proc_reg_IF_instr_13_CLKINV_22236,
      SET => GND,
      RST => proc_reg_IF_instr_13_SRINV_22237,
      O => reg_IF_instr_12_7793
    );
  reg_IF_instr_mux0001_2_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X89Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => rom_data(13),
      O => reg_IF_instr_mux0001(2)
    );
  reg_IF_instr_13 : X_FF
    generic map(
      LOC => "SLICE_X89Y26",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_13_DXMUX_22263,
      CE => VCC,
      CLK => proc_reg_IF_instr_13_CLKINV_22236,
      SET => GND,
      RST => proc_reg_IF_instr_13_SRINV_22237,
      O => reg_IF_instr_13_7792
    );
  reg_IF_instr_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X88Y27"
    )
    port map (
      ADR0 => rom_data(14),
      ADR1 => VCC,
      ADR2 => branch_trigger_0,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(1)
    );
  reg_IF_instr_14 : X_FF
    generic map(
      LOC => "SLICE_X88Y27",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_15_DYMUX_22289,
      CE => VCC,
      CLK => proc_reg_IF_instr_15_CLKINV_22278,
      SET => GND,
      RST => proc_reg_IF_instr_15_SRINV_22279,
      O => reg_IF_instr_14_7791
    );
  reg_IF_instr_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X88Y27"
    )
    port map (
      ADR0 => rom_data(15),
      ADR1 => VCC,
      ADR2 => branch_trigger_0,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(0)
    );
  reg_IF_instr_15 : X_FF
    generic map(
      LOC => "SLICE_X88Y27",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_15_DXMUX_22305,
      CE => VCC,
      CLK => proc_reg_IF_instr_15_CLKINV_22278,
      SET => GND,
      RST => proc_reg_IF_instr_15_SRINV_22279,
      O => reg_IF_instr_15_7790
    );
  reg_EX_instr_mux0001_9_1 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X79Y50"
    )
    port map (
      ADR0 => reg_ID_instr_6_7728,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => branch_trigger_0,
      O => reg_EX_instr_mux0001(9)
    );
  reg_EX_instr_6 : X_FF
    generic map(
      LOC => "SLICE_X79Y50",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_7_DYMUX_22331,
      CE => VCC,
      CLK => proc_reg_EX_instr_7_CLKINV_22320,
      SET => GND,
      RST => proc_reg_EX_instr_7_SRINV_22321,
      O => reg_EX_instr_6_7648
    );
  reg_EX_instr_mux0001_8_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X79Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_7_7730,
      ADR3 => branch_trigger_0,
      O => reg_EX_instr_mux0001(8)
    );
  reg_EX_instr_7 : X_FF
    generic map(
      LOC => "SLICE_X79Y50",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_7_DXMUX_22347,
      CE => VCC,
      CLK => proc_reg_EX_instr_7_CLKINV_22320,
      SET => GND,
      RST => proc_reg_EX_instr_7_SRINV_22321,
      O => reg_EX_instr_7_7825
    );
  reg_EX_instr_mux0001_7_1 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X89Y60"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => reg_ID_instr_8_7719,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_EX_instr_mux0001(7)
    );
  reg_EX_instr_8 : X_FF
    generic map(
      LOC => "SLICE_X89Y60",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_9_DYMUX_22373,
      CE => VCC,
      CLK => proc_reg_EX_instr_9_CLKINV_22362,
      SET => GND,
      RST => proc_reg_EX_instr_9_SRINV_22363,
      O => reg_EX_instr_8_7826
    );
  reg_EX_instr_mux0001_6_1 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X89Y60"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_9_7636,
      O => reg_EX_instr_mux0001(6)
    );
  reg_EX_instr_9 : X_FF
    generic map(
      LOC => "SLICE_X89Y60",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_9_DXMUX_22389,
      CE => VCC,
      CLK => proc_reg_EX_instr_9_CLKINV_22362,
      SET => GND,
      RST => proc_reg_EX_instr_9_SRINV_22363,
      O => reg_EX_instr_9_7734
    );
  PC_next_0_1 : X_LUT4
    generic map(
      INIT => X"F505",
      LOC => "SLICE_X91Y60"
    )
    port map (
      ADR0 => PC(0),
      ADR1 => VCC,
      ADR2 => branch_trigger_0,
      ADR3 => reg_EX_result_0_7515,
      O => PC_next(0)
    );
  PC_0 : X_FF
    generic map(
      LOC => "SLICE_X91Y60",
      INIT => '0'
    )
    port map (
      I => proc_PC_1_DYMUX_22417,
      CE => VCC,
      CLK => proc_PC_1_CLKINVNOT,
      SET => GND,
      RST => proc_PC_1_SRINV_22408,
      O => PC(0)
    );
  PC_next_1_1 : X_LUT4
    generic map(
      INIT => X"B1E4",
      LOC => "SLICE_X91Y60"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => PC(1),
      ADR2 => reg_EX_result_1_7514,
      ADR3 => PC(0),
      O => PC_next(1)
    );
  PC_1 : X_FF
    generic map(
      LOC => "SLICE_X91Y60",
      INIT => '0'
    )
    port map (
      I => proc_PC_1_DXMUX_22431,
      CE => VCC,
      CLK => proc_PC_1_CLKINVNOT,
      SET => GND,
      RST => proc_PC_1_SRINV_22408,
      O => PC(1)
    );
  PC_2 : X_FF
    generic map(
      LOC => "SLICE_X88Y31",
      INIT => '0'
    )
    port map (
      I => proc_PC_3_DYMUX_22459,
      CE => VCC,
      CLK => proc_PC_3_CLKINVNOT,
      SET => GND,
      RST => proc_PC_3_SRINV_22451,
      O => PC(2)
    );
  PC_next_2_Q : X_LUT4
    generic map(
      INIT => X"F909",
      LOC => "SLICE_X88Y31"
    )
    port map (
      ADR0 => N31_0,
      ADR1 => PC(2),
      ADR2 => branch_trigger_0,
      ADR3 => reg_EX_result_2_7513,
      O => PC_next(2)
    );
  PC_next_3_Q : X_LUT4
    generic map(
      INIT => X"CAC5",
      LOC => "SLICE_X88Y31"
    )
    port map (
      ADR0 => PC(3),
      ADR1 => reg_EX_result_3_7512,
      ADR2 => branch_trigger_0,
      ADR3 => N35_0,
      O => PC_next(3)
    );
  PC_3 : X_FF
    generic map(
      LOC => "SLICE_X88Y31",
      INIT => '0'
    )
    port map (
      I => proc_PC_3_DXMUX_22473,
      CE => VCC,
      CLK => proc_PC_3_CLKINVNOT,
      SET => GND,
      RST => proc_PC_3_SRINV_22451,
      O => PC(3)
    );
  PC_4 : X_FF
    generic map(
      LOC => "SLICE_X89Y25",
      INIT => '0'
    )
    port map (
      I => proc_PC_5_DYMUX_22501,
      CE => VCC,
      CLK => proc_PC_5_CLKINVNOT,
      SET => GND,
      RST => proc_PC_5_SRINV_22493,
      O => PC(4)
    );
  PC_next_4_1 : X_LUT4
    generic map(
      INIT => X"8DD8",
      LOC => "SLICE_X89Y25"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => reg_EX_result_4_7511,
      ADR2 => Madd_PC_next_addsub0000_cy_3_0,
      ADR3 => PC(4),
      O => PC_next(4)
    );
  PC_next_5_Q : X_LUT4
    generic map(
      INIT => X"E2D1",
      LOC => "SLICE_X89Y25"
    )
    port map (
      ADR0 => PC(5),
      ADR1 => branch_trigger_0,
      ADR2 => reg_EX_result_5_7510,
      ADR3 => N29_0,
      O => PC_next(5)
    );
  PC_5 : X_FF
    generic map(
      LOC => "SLICE_X89Y25",
      INIT => '0'
    )
    port map (
      I => proc_PC_5_DXMUX_22515,
      CE => VCC,
      CLK => proc_PC_5_CLKINVNOT,
      SET => GND,
      RST => proc_PC_5_SRINV_22493,
      O => PC(5)
    );
  PC_next_6_Q : X_LUT4
    generic map(
      INIT => X"F909",
      LOC => "SLICE_X89Y44"
    )
    port map (
      ADR0 => PC(6),
      ADR1 => N33_0,
      ADR2 => branch_trigger_0,
      ADR3 => reg_EX_result_15_7500,
      O => PC_next(6)
    );
  PC_6 : X_FF
    generic map(
      LOC => "SLICE_X89Y44",
      INIT => '0'
    )
    port map (
      I => proc_PC_6_DYMUX_22541,
      CE => VCC,
      CLK => proc_PC_6_CLKINVNOT,
      SET => GND,
      RST => proc_PC_6_FFY_RSTAND_22546,
      O => PC(6)
    );
  proc_PC_6_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X89Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_PC_6_FFY_RSTAND_22546
    );
  outport_15_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X89Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outport_cmp_eq0000_0,
      ADR2 => VCC,
      ADR3 => reg_EX_result_15_7500,
      O => proc_PC_6_F
    );
  result_10_1 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X66Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ram_data(10),
      ADR2 => in1_cmp_eq0008_0,
      ADR3 => alu_result(10),
      O => result(10)
    );
  reg_EX_result_10 : X_FF
    generic map(
      LOC => "SLICE_X66Y71",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_11_DYMUX_22577,
      CE => VCC,
      CLK => proc_reg_EX_result_11_CLKINV_22567,
      SET => GND,
      RST => proc_reg_EX_result_11_SRINV_22568,
      O => reg_EX_result_10_7505
    );
  result_11_1 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X66Y71"
    )
    port map (
      ADR0 => alu_result(11),
      ADR1 => VCC,
      ADR2 => ram_data(11),
      ADR3 => in1_cmp_eq0008_0,
      O => result(11)
    );
  reg_EX_result_11 : X_FF
    generic map(
      LOC => "SLICE_X66Y71",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_11_DXMUX_22592,
      CE => VCC,
      CLK => proc_reg_EX_result_11_CLKINV_22567,
      SET => GND,
      RST => proc_reg_EX_result_11_SRINV_22568,
      O => reg_EX_result_11_7504
    );
  result_13_1 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X67Y70"
    )
    port map (
      ADR0 => in1_cmp_eq0008_0,
      ADR1 => VCC,
      ADR2 => alu_result(13),
      ADR3 => ram_data(13),
      O => result(13)
    );
  reg_EX_result_13 : X_FF
    generic map(
      LOC => "SLICE_X67Y70",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_13_DYMUX_22615,
      CE => VCC,
      CLK => proc_reg_EX_result_13_CLKINV_22605,
      SET => GND,
      RST => proc_reg_EX_result_13_FFY_RSTAND_22620,
      O => reg_EX_result_13_7502
    );
  proc_reg_EX_result_13_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X67Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_result_13_FFY_RSTAND_22620
    );
  result_14_1 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X61Y70"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ram_data(14),
      ADR2 => in1_cmp_eq0008_0,
      ADR3 => alu_result(14),
      O => result(14)
    );
  reg_EX_result_14 : X_FF
    generic map(
      LOC => "SLICE_X61Y70",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_15_DYMUX_22642,
      CE => VCC,
      CLK => proc_reg_EX_result_15_CLKINV_22632,
      SET => GND,
      RST => proc_reg_EX_result_15_SRINV_22633,
      O => reg_EX_result_14_7501
    );
  result_15_1 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X61Y70"
    )
    port map (
      ADR0 => in1_cmp_eq0008_0,
      ADR1 => VCC,
      ADR2 => alu_result(15),
      ADR3 => ram_data(15),
      O => result(15)
    );
  reg_EX_result_15 : X_FF
    generic map(
      LOC => "SLICE_X61Y70",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_15_DXMUX_22657,
      CE => VCC,
      CLK => proc_reg_EX_result_15_CLKINV_22632,
      SET => GND,
      RST => proc_reg_EX_result_15_SRINV_22633,
      O => reg_EX_result_15_7500
    );
  reg_EX_result_3 : X_FF
    generic map(
      LOC => "SLICE_X65Y62",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_3_DXMUX_22867,
      CE => VCC,
      CLK => proc_reg_EX_result_3_CLKINV_22842,
      SET => GND,
      RST => proc_reg_EX_result_3_SRINV_22843,
      O => reg_EX_result_3_7512
    );
  result_4_1 : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X67Y61"
    )
    port map (
      ADR0 => alu_result(4),
      ADR1 => VCC,
      ADR2 => in1_cmp_eq0008_0,
      ADR3 => ram_data(4),
      O => result(4)
    );
  reg_EX_result_4 : X_FF
    generic map(
      LOC => "SLICE_X67Y61",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_5_DYMUX_22894,
      CE => VCC,
      CLK => proc_reg_EX_result_5_CLKINV_22884,
      SET => GND,
      RST => proc_reg_EX_result_5_SRINV_22885,
      O => reg_EX_result_4_7511
    );
  result_5_1 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X67Y61"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ram_data(5),
      ADR2 => alu_result(5),
      ADR3 => in1_cmp_eq0008_0,
      O => result(5)
    );
  reg_EX_result_5 : X_FF
    generic map(
      LOC => "SLICE_X67Y61",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_5_DXMUX_22909,
      CE => VCC,
      CLK => proc_reg_EX_result_5_CLKINV_22884,
      SET => GND,
      RST => proc_reg_EX_result_5_SRINV_22885,
      O => reg_EX_result_5_7510
    );
  result_6_1 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X60Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ram_data(6),
      ADR2 => in1_cmp_eq0008_0,
      ADR3 => alu_result(6),
      O => result(6)
    );
  reg_EX_result_6 : X_FF
    generic map(
      LOC => "SLICE_X60Y55",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_7_DYMUX_22936,
      CE => VCC,
      CLK => proc_reg_EX_result_7_CLKINV_22926,
      SET => GND,
      RST => proc_reg_EX_result_7_SRINV_22927,
      O => reg_EX_result_6_7509
    );
  result_7_1 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X60Y55"
    )
    port map (
      ADR0 => alu_result(7),
      ADR1 => ram_data(7),
      ADR2 => in1_cmp_eq0008_0,
      ADR3 => VCC,
      O => result(7)
    );
  reg_EX_result_7 : X_FF
    generic map(
      LOC => "SLICE_X60Y55",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_7_DXMUX_22951,
      CE => VCC,
      CLK => proc_reg_EX_result_7_CLKINV_22926,
      SET => GND,
      RST => proc_reg_EX_result_7_SRINV_22927,
      O => reg_EX_result_7_7508
    );
  result_8_1 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X66Y69"
    )
    port map (
      ADR0 => alu_result(8),
      ADR1 => VCC,
      ADR2 => ram_data(8),
      ADR3 => in1_cmp_eq0008_0,
      O => result(8)
    );
  reg_EX_result_8 : X_FF
    generic map(
      LOC => "SLICE_X66Y69",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_9_DYMUX_22978,
      CE => VCC,
      CLK => proc_reg_EX_result_9_CLKINV_22968,
      SET => GND,
      RST => proc_reg_EX_result_9_SRINV_22969,
      O => reg_EX_result_8_7507
    );
  result_9_1 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X66Y69"
    )
    port map (
      ADR0 => in1_cmp_eq0008_0,
      ADR1 => ram_data(9),
      ADR2 => alu_result(9),
      ADR3 => VCC,
      O => result(9)
    );
  reg_EX_result_9 : X_FF
    generic map(
      LOC => "SLICE_X66Y69",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_9_DXMUX_22993,
      CE => VCC,
      CLK => proc_reg_EX_result_9_CLKINV_22968,
      SET => GND,
      RST => proc_reg_EX_result_9_SRINV_22969,
      O => reg_EX_result_9_7506
    );
  reg_ID_data1_10 : X_FF
    generic map(
      LOC => "SLICE_X78Y106",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_11_DYMUX_23021,
      CE => VCC,
      CLK => proc_reg_ID_data1_11_CLKINV_23012,
      SET => GND,
      RST => proc_reg_ID_data1_11_SRINV_23013,
      O => reg_ID_data1_10_7778
    );
  reg_ID_data1_mux0007_10_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X78Y106"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => reg_IF_inport_10_7852,
      ADR2 => rd_data1(10),
      ADR3 => N02_0,
      O => reg_ID_data1_mux0007(10)
    );
  reg_ID_data1_mux0007_11_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X78Y106"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => reg_IF_inport_11_7850,
      ADR2 => rd_data1(11),
      ADR3 => N02_0,
      O => reg_ID_data1_mux0007(11)
    );
  reg_ID_data1_11 : X_FF
    generic map(
      LOC => "SLICE_X78Y106",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_11_DXMUX_23035,
      CE => VCC,
      CLK => proc_reg_ID_data1_11_CLKINV_23012,
      SET => GND,
      RST => proc_reg_ID_data1_11_SRINV_23013,
      O => reg_ID_data1_11_7779
    );
  reg_ID_data1_12 : X_FF
    generic map(
      LOC => "SLICE_X74Y105",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_13_DYMUX_23063,
      CE => VCC,
      CLK => proc_reg_ID_data1_13_CLKINV_23054,
      SET => GND,
      RST => proc_reg_ID_data1_13_SRINV_23055,
      O => reg_ID_data1_12_7781
    );
  reg_ID_data1_mux0007_12_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X74Y105"
    )
    port map (
      ADR0 => reg_IF_inport_12_7854,
      ADR1 => rd_data1(12),
      ADR2 => N02_0,
      ADR3 => N22_0,
      O => reg_ID_data1_mux0007(12)
    );
  reg_ID_data1_mux0007_13_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X74Y105"
    )
    port map (
      ADR0 => reg_IF_inport_13_7853,
      ADR1 => N22_0,
      ADR2 => rd_data1(13),
      ADR3 => N02_0,
      O => reg_ID_data1_mux0007(13)
    );
  reg_ID_data1_13 : X_FF
    generic map(
      LOC => "SLICE_X74Y105",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_13_DXMUX_23077,
      CE => VCC,
      CLK => proc_reg_ID_data1_13_CLKINV_23054,
      SET => GND,
      RST => proc_reg_ID_data1_13_SRINV_23055,
      O => reg_ID_data1_13_7783
    );
  reg_ID_data1_14 : X_FF
    generic map(
      LOC => "SLICE_X75Y92",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_15_DYMUX_23105,
      CE => VCC,
      CLK => proc_reg_ID_data1_15_CLKINV_23096,
      SET => GND,
      RST => proc_reg_ID_data1_15_SRINV_23097,
      O => reg_ID_data1_14_7785
    );
  reg_ID_data1_mux0007_14_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X75Y92"
    )
    port map (
      ADR0 => reg_IF_inport_14_7856,
      ADR1 => N22_0,
      ADR2 => N02_0,
      ADR3 => rd_data1(14),
      O => reg_ID_data1_mux0007(14)
    );
  reg_ID_data1_mux0007_15_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X75Y92"
    )
    port map (
      ADR0 => N02_0,
      ADR1 => rd_data1(15),
      ADR2 => N22_0,
      ADR3 => reg_IF_inport_15_7855,
      O => reg_ID_data1_mux0007(15)
    );
  reg_ID_data1_15 : X_FF
    generic map(
      LOC => "SLICE_X75Y92",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_15_DXMUX_23119,
      CE => VCC,
      CLK => proc_reg_ID_data1_15_CLKINV_23096,
      SET => GND,
      RST => proc_reg_ID_data1_15_SRINV_23097,
      O => reg_ID_data1_15_7787
    );
  reg_ID_data2_10 : X_FF
    generic map(
      LOC => "SLICE_X77Y75",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_11_DYMUX_23147,
      CE => VCC,
      CLK => proc_reg_ID_data2_11_CLKINV_23138,
      SET => GND,
      RST => proc_reg_ID_data2_11_SRINV_23139,
      O => reg_ID_data2_10_7698
    );
  reg_ID_data2_mux0007_5_1 : X_LUT4
    generic map(
      INIT => X"E0C0",
      LOC => "SLICE_X77Y75"
    )
    port map (
      ADR0 => N95_0,
      ADR1 => N18_0,
      ADR2 => N2_0,
      ADR3 => rd_data2(10),
      O => reg_ID_data2_mux0007(5)
    );
  reg_ID_data2_mux0007_4_1 : X_LUT4
    generic map(
      INIT => X"E0C0",
      LOC => "SLICE_X77Y75"
    )
    port map (
      ADR0 => rd_data2(11),
      ADR1 => N18_0,
      ADR2 => N2_0,
      ADR3 => N95_0,
      O => reg_ID_data2_mux0007(4)
    );
  reg_ID_data2_11 : X_FF
    generic map(
      LOC => "SLICE_X77Y75",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_11_DXMUX_23161,
      CE => VCC,
      CLK => proc_reg_ID_data2_11_CLKINV_23138,
      SET => GND,
      RST => proc_reg_ID_data2_11_SRINV_23139,
      O => reg_ID_data2_11_7699
    );
  reg_ID_data2_12 : X_FF
    generic map(
      LOC => "SLICE_X71Y77",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_13_DYMUX_23189,
      CE => VCC,
      CLK => proc_reg_ID_data2_13_CLKINV_23180,
      SET => GND,
      RST => proc_reg_ID_data2_13_SRINV_23181,
      O => reg_ID_data2_12_7701
    );
  reg_ID_data2_mux0007_3_1 : X_LUT4
    generic map(
      INIT => X"AA80",
      LOC => "SLICE_X71Y77"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => N95_0,
      ADR2 => rd_data2(12),
      ADR3 => N18_0,
      O => reg_ID_data2_mux0007(3)
    );
  reg_ID_data2_mux0007_2_1 : X_LUT4
    generic map(
      INIT => X"F080",
      LOC => "SLICE_X71Y77"
    )
    port map (
      ADR0 => rd_data2(13),
      ADR1 => N95_0,
      ADR2 => N2_0,
      ADR3 => N18_0,
      O => reg_ID_data2_mux0007(2)
    );
  reg_ID_data2_13 : X_FF
    generic map(
      LOC => "SLICE_X71Y77",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_13_DXMUX_23203,
      CE => VCC,
      CLK => proc_reg_ID_data2_13_CLKINV_23180,
      SET => GND,
      RST => proc_reg_ID_data2_13_SRINV_23181,
      O => reg_ID_data2_13_7703
    );
  reg_ID_data2_14 : X_FF
    generic map(
      LOC => "SLICE_X71Y71",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_15_DYMUX_23231,
      CE => VCC,
      CLK => proc_reg_ID_data2_15_CLKINV_23222,
      SET => GND,
      RST => proc_reg_ID_data2_15_SRINV_23223,
      O => reg_ID_data2_14_7705
    );
  reg_ID_data2_mux0007_1_1 : X_LUT4
    generic map(
      INIT => X"C8C0",
      LOC => "SLICE_X71Y71"
    )
    port map (
      ADR0 => N95_0,
      ADR1 => N2_0,
      ADR2 => N18_0,
      ADR3 => rd_data2(14),
      O => reg_ID_data2_mux0007(1)
    );
  reg_ID_data2_mux0007_0_1 : X_LUT4
    generic map(
      INIT => X"CC80",
      LOC => "SLICE_X71Y71"
    )
    port map (
      ADR0 => rd_data2(15),
      ADR1 => N2_0,
      ADR2 => N95_0,
      ADR3 => N18_0,
      O => reg_ID_data2_mux0007(0)
    );
  reg_ID_data2_15 : X_FF
    generic map(
      LOC => "SLICE_X71Y71",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_15_DXMUX_23245,
      CE => VCC,
      CLK => proc_reg_ID_data2_15_CLKINV_23222,
      SET => GND,
      RST => proc_reg_ID_data2_15_SRINV_23223,
      O => reg_ID_data2_15_7707
    );
  reg_ID_data1_mux0007_0_10 : X_LUT4
    generic map(
      INIT => X"FCCC",
      LOC => "SLICE_X91Y75"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_data1_mux0007_0_6_0,
      ADR2 => rd_data1(0),
      ADR3 => N02_0,
      O => reg_ID_data1_mux0007(0)
    );
  reg_ID_data1_0 : X_FF
    generic map(
      LOC => "SLICE_X91Y75",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_1_DYMUX_23272,
      CE => VCC,
      CLK => proc_reg_ID_data1_1_CLKINV_23262,
      SET => GND,
      RST => proc_reg_ID_data1_1_SRINV_23263,
      O => reg_ID_data1_0_7756
    );
  reg_ID_data1_mux0007_1_10 : X_LUT4
    generic map(
      INIT => X"FAAA",
      LOC => "SLICE_X91Y75"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_1_6_0,
      ADR1 => VCC,
      ADR2 => N02_0,
      ADR3 => rd_data1(1),
      O => reg_ID_data1_mux0007(1)
    );
  reg_ID_data1_1 : X_FF
    generic map(
      LOC => "SLICE_X91Y75",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_1_DXMUX_23287,
      CE => VCC,
      CLK => proc_reg_ID_data1_1_CLKINV_23262,
      SET => GND,
      RST => proc_reg_ID_data1_1_SRINV_23263,
      O => reg_ID_data1_1_7758
    );
  reg_ID_data1_mux0007_2_10 : X_LUT4
    generic map(
      INIT => X"ECEC",
      LOC => "SLICE_X90Y40"
    )
    port map (
      ADR0 => N02_0,
      ADR1 => reg_ID_data1_mux0007_2_6_0,
      ADR2 => rd_data1(2),
      ADR3 => VCC,
      O => reg_ID_data1_mux0007(2)
    );
  reg_ID_data1_2 : X_FF
    generic map(
      LOC => "SLICE_X90Y40",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_3_DYMUX_23314,
      CE => VCC,
      CLK => proc_reg_ID_data1_3_CLKINV_23304,
      SET => GND,
      RST => proc_reg_ID_data1_3_SRINV_23305,
      O => reg_ID_data1_2_7759
    );
  reg_ID_data1_mux0007_3_10 : X_LUT4
    generic map(
      INIT => X"ECEC",
      LOC => "SLICE_X90Y40"
    )
    port map (
      ADR0 => rd_data1(3),
      ADR1 => reg_ID_data1_mux0007_3_6_0,
      ADR2 => N02_0,
      ADR3 => VCC,
      O => reg_ID_data1_mux0007(3)
    );
  reg_ID_data1_3 : X_FF
    generic map(
      LOC => "SLICE_X90Y40",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_3_DXMUX_23329,
      CE => VCC,
      CLK => proc_reg_ID_data1_3_CLKINV_23304,
      SET => GND,
      RST => proc_reg_ID_data1_3_SRINV_23305,
      O => reg_ID_data1_3_7760
    );
  reg_ID_data2_0 : X_FF
    generic map(
      LOC => "SLICE_X91Y64",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_1_DYMUX_23357,
      CE => VCC,
      CLK => proc_reg_ID_data2_1_CLKINV_23348,
      SET => GND,
      RST => proc_reg_ID_data2_1_SRINV_23349,
      O => reg_ID_data2_0_7708
    );
  reg_ID_data2_mux0007_15_Q : X_LUT4
    generic map(
      INIT => X"A8A0",
      LOC => "SLICE_X91Y64"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => N95_0,
      ADR2 => N131_0,
      ADR3 => rd_data2(0),
      O => reg_ID_data2_mux0007(15)
    );
  reg_ID_data2_mux0007_14_Q : X_LUT4
    generic map(
      INIT => X"A8A0",
      LOC => "SLICE_X91Y64"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => N95_0,
      ADR2 => N151_0,
      ADR3 => rd_data2(1),
      O => reg_ID_data2_mux0007(14)
    );
  reg_ID_data2_1 : X_FF
    generic map(
      LOC => "SLICE_X91Y64",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_1_DXMUX_23371,
      CE => VCC,
      CLK => proc_reg_ID_data2_1_CLKINV_23348,
      SET => GND,
      RST => proc_reg_ID_data2_1_SRINV_23349,
      O => reg_ID_data2_1_7711
    );
  reg_ID_data1_mux0007_4_10 : X_LUT4
    generic map(
      INIT => X"FFA0",
      LOC => "SLICE_X78Y17"
    )
    port map (
      ADR0 => N02_0,
      ADR1 => VCC,
      ADR2 => rd_data1(4),
      ADR3 => reg_ID_data1_mux0007_4_6_0,
      O => reg_ID_data1_mux0007(4)
    );
  reg_ID_data1_4 : X_FF
    generic map(
      LOC => "SLICE_X78Y17",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_5_DYMUX_23398,
      CE => VCC,
      CLK => proc_reg_ID_data1_5_CLKINV_23388,
      SET => GND,
      RST => proc_reg_ID_data1_5_SRINV_23389,
      O => reg_ID_data1_4_7761
    );
  reg_ID_data1_mux0007_5_10 : X_LUT4
    generic map(
      INIT => X"ECEC",
      LOC => "SLICE_X78Y17"
    )
    port map (
      ADR0 => N02_0,
      ADR1 => reg_ID_data1_mux0007_5_6_0,
      ADR2 => rd_data1(5),
      ADR3 => VCC,
      O => reg_ID_data1_mux0007(5)
    );
  reg_ID_data1_5 : X_FF
    generic map(
      LOC => "SLICE_X78Y17",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_5_DXMUX_23413,
      CE => VCC,
      CLK => proc_reg_ID_data1_5_CLKINV_23388,
      SET => GND,
      RST => proc_reg_ID_data1_5_SRINV_23389,
      O => reg_ID_data1_5_7762
    );
  reg_ID_data2_2 : X_FF
    generic map(
      LOC => "SLICE_X88Y42",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_3_DYMUX_23441,
      CE => VCC,
      CLK => proc_reg_ID_data2_3_CLKINV_23432,
      SET => GND,
      RST => proc_reg_ID_data2_3_SRINV_23433,
      O => reg_ID_data2_2_7713
    );
  reg_ID_data2_mux0007_13_Q : X_LUT4
    generic map(
      INIT => X"F800",
      LOC => "SLICE_X88Y42"
    )
    port map (
      ADR0 => rd_data2(2),
      ADR1 => N95_0,
      ADR2 => N17_0,
      ADR3 => N2_0,
      O => reg_ID_data2_mux0007(13)
    );
  reg_ID_data2_mux0007_12_Q : X_LUT4
    generic map(
      INIT => X"F080",
      LOC => "SLICE_X88Y42"
    )
    port map (
      ADR0 => rd_data2(3),
      ADR1 => N95_0,
      ADR2 => N2_0,
      ADR3 => N191_0,
      O => reg_ID_data2_mux0007(12)
    );
  reg_ID_data2_3 : X_FF
    generic map(
      LOC => "SLICE_X88Y42",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_3_DXMUX_23455,
      CE => VCC,
      CLK => proc_reg_ID_data2_3_CLKINV_23432,
      SET => GND,
      RST => proc_reg_ID_data2_3_SRINV_23433,
      O => reg_ID_data2_3_7715
    );
  reg_ID_data1_mux0007_6_10 : X_LUT4
    generic map(
      INIT => X"FFA0",
      LOC => "SLICE_X79Y15"
    )
    port map (
      ADR0 => N02_0,
      ADR1 => VCC,
      ADR2 => rd_data1(6),
      ADR3 => reg_ID_data1_mux0007_6_6_0,
      O => reg_ID_data1_mux0007(6)
    );
  reg_ID_data1_6 : X_FF
    generic map(
      LOC => "SLICE_X79Y15",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_7_DYMUX_23483,
      CE => VCC,
      CLK => proc_reg_ID_data1_7_CLKINV_23473,
      SET => GND,
      RST => proc_reg_ID_data1_7_SRINV_23474,
      O => reg_ID_data1_6_7763
    );
  reg_ID_data1_mux0007_7_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X79Y15"
    )
    port map (
      ADR0 => reg_IF_inport_7_7870,
      ADR1 => rd_data1(7),
      ADR2 => N02_0,
      ADR3 => N22_0,
      O => reg_ID_data1_mux0007(7)
    );
  reg_ID_data1_7 : X_FF
    generic map(
      LOC => "SLICE_X79Y15",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_7_DXMUX_23497,
      CE => VCC,
      CLK => proc_reg_ID_data1_7_CLKINV_23473,
      SET => GND,
      RST => proc_reg_ID_data1_7_SRINV_23474,
      O => reg_ID_data1_7_7764
    );
  reg_ID_data1_mux0007_8_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X79Y98"
    )
    port map (
      ADR0 => N02_0,
      ADR1 => rd_data1(8),
      ADR2 => N22_0,
      ADR3 => reg_IF_inport_8_7872,
      O => reg_ID_data1_mux0007(8)
    );
  reg_ID_data1_8 : X_FF
    generic map(
      LOC => "SLICE_X79Y98",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_8_DYMUX_23520,
      CE => VCC,
      CLK => proc_reg_ID_data1_8_CLKINV_23511,
      SET => GND,
      RST => proc_reg_ID_data1_8_FFY_RSTAND_23525,
      O => reg_ID_data1_8_7765
    );
  proc_reg_ID_data1_8_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X79Y98",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data1_8_FFY_RSTAND_23525
    );
  reg_ID_data2_6 : X_FF
    generic map(
      LOC => "SLICE_X76Y35",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_7_DYMUX_23548,
      CE => VCC,
      CLK => proc_reg_ID_data2_7_CLKINV_23539,
      SET => GND,
      RST => proc_reg_ID_data2_7_SRINV_23540,
      O => reg_ID_data2_6_7671
    );
  reg_ID_data2_mux0007_9_Q : X_LUT4
    generic map(
      INIT => X"A888",
      LOC => "SLICE_X76Y35"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => N211_0,
      ADR2 => rd_data2(6),
      ADR3 => N95_0,
      O => reg_ID_data2_mux0007(9)
    );
  reg_ID_data2_mux0007_8_Q : X_LUT4
    generic map(
      INIT => X"A888",
      LOC => "SLICE_X76Y35"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => N23_0,
      ADR2 => rd_data2(7),
      ADR3 => N95_0,
      O => reg_ID_data2_mux0007(8)
    );
  reg_ID_data2_7 : X_FF
    generic map(
      LOC => "SLICE_X76Y35",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_7_DXMUX_23562,
      CE => VCC,
      CLK => proc_reg_ID_data2_7_CLKINV_23539,
      SET => GND,
      RST => proc_reg_ID_data2_7_SRINV_23540,
      O => reg_ID_data2_7_7673
    );
  reg_ID_data2_mux0007_6_1 : X_LUT4
    generic map(
      INIT => X"EC00",
      LOC => "SLICE_X73Y75"
    )
    port map (
      ADR0 => N95_0,
      ADR1 => N18_0,
      ADR2 => rd_data2(9),
      ADR3 => N2_0,
      O => reg_ID_data2_mux0007(6)
    );
  reg_ID_data2_9 : X_FF
    generic map(
      LOC => "SLICE_X73Y75",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_9_DYMUX_23585,
      CE => VCC,
      CLK => proc_reg_ID_data2_9_CLKINV_23576,
      SET => GND,
      RST => proc_reg_ID_data2_9_FFY_RSTAND_23590,
      O => reg_ID_data2_9_7677
    );
  proc_reg_ID_data2_9_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X73Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_9_FFY_RSTAND_23590
    );
  wr_index_1_1 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X91Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_instr_7_7825,
      ADR2 => VCC,
      ADR3 => branch_trigger_cmp_eq0002_0,
      O => wr_index(1)
    );
  wr_index_2_1 : X_LUT4
    generic map(
      INIT => X"FFF0",
      LOC => "SLICE_X91Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_instr_8_7826,
      ADR3 => branch_trigger_cmp_eq0002_0,
      O => wr_index(2)
    );
  outport_cmp_eq0000 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X91Y74"
    )
    port map (
      ADR0 => reg_EX_instr_11_7733,
      ADR1 => reg_EX_instr_13_7750,
      ADR2 => reg_EX_instr_9_7734,
      ADR3 => N4_0,
      O => outport_cmp_eq0000_23628
    );
  outport_9_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X91Y74"
    )
    port map (
      ADR0 => reg_EX_result_9_7506,
      ADR1 => VCC,
      ADR2 => outport_cmp_eq0000_0,
      ADR3 => VCC,
      O => outport_9_F
    );
  rd_index1_1_1 : X_LUT4
    generic map(
      INIT => X"AFAC",
      LOC => "SLICE_X89Y35"
    )
    port map (
      ADR0 => reg_IF_instr_7_7840,
      ADR1 => reg_IF_instr_4_7839,
      ADR2 => rd_index1_or0003_0,
      ADR3 => rd_index1_or0004_0,
      O => rd_index1(1)
    );
  reg_ID_data2_mux0007_8_SW0 : X_LUT4
    generic map(
      INIT => X"FF88",
      LOC => "SLICE_X89Y35"
    )
    port map (
      ADR0 => reg_IF_instr_7_7840,
      ADR1 => N1011_0,
      ADR2 => VCC,
      ADR3 => N19_0,
      O => N23
    );
  rd_index2_1_1 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X91Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rd_index1_or0007_0,
      ADR2 => reg_IF_instr_4_7839,
      ADR3 => reg_IF_instr_1_7835,
      O => rd_index2(1)
    );
  reg_ID_data2_mux0007_14_SW0 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X91Y39"
    )
    port map (
      ADR0 => reg_IF_instr_1_7835,
      ADR1 => N5_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N151
    );
  rd_index2_2_1 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X89Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_2_7837,
      ADR2 => reg_IF_instr_5_7838,
      ADR3 => rd_index1_or0007_0,
      O => rd_index2(2)
    );
  reg_ID_data2_mux0007_13_SW0 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X89Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_2_7837,
      ADR2 => VCC,
      ADR3 => N5_0,
      O => N17
    );
  or0000_0_or00001 : X_LUT4
    generic map(
      INIT => X"020A",
      LOC => "SLICE_X78Y28"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_10_146_0,
      ADR1 => reg_IF_instr_10_7742,
      ADR2 => reg_IF_instr_11_7789,
      ADR3 => reg_IF_instr_9_7740,
      O => or0000_0_or0000
    );
  reg_ID_data2_mux0006_12_1_SW0 : X_LUT4
    generic map(
      INIT => X"2AAA",
      LOC => "SLICE_X78Y28"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_10_146_0,
      ADR1 => reg_IF_instr_10_7742,
      ADR2 => reg_IF_instr_11_7789,
      ADR3 => reg_IF_instr_9_7740,
      O => N8
    );
  reg_ID_data2_mux0007_12_SW0 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X91Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_3_7738,
      ADR2 => N5_0,
      ADR3 => VCC,
      O => N191
    );
  N2_SW0 : X_LUT4
    generic map(
      INIT => X"DFFB",
      LOC => "SLICE_X88Y29"
    )
    port map (
      ADR0 => reg_IF_instr_11_7789,
      ADR1 => reg_IF_instr_14_7791,
      ADR2 => reg_IF_instr_15_7790,
      ADR3 => reg_IF_instr_10_7742,
      O => N21
    );
  N2 : X_LUT4
    generic map(
      INIT => X"FFFD",
      LOC => "SLICE_X88Y29"
    )
    port map (
      ADR0 => reg_IF_instr_9_7740,
      ADR1 => reg_IF_instr_13_7792,
      ADR2 => N21_0,
      ADR3 => reg_IF_instr_12_7793,
      O => N2_23769
    );
  reg_EX_n_flag : X_FF
    generic map(
      LOC => "SLICE_X76Y43",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_n_flag_DYMUX_23779,
      CE => VCC,
      CLK => proc_reg_EX_n_flag_CLKINV_23776,
      SET => GND,
      RST => proc_reg_EX_n_flag_FFY_RSTAND_23784,
      O => reg_EX_n_flag_7883
    );
  proc_reg_EX_n_flag_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X76Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_n_flag_FFY_RSTAND_23784
    );
  branch_trigger_cmp_eq000211 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X90Y66"
    )
    port map (
      ADR0 => reg_EX_instr_12_7752,
      ADR1 => reg_EX_instr_13_7750,
      ADR2 => reg_EX_instr_15_7754,
      ADR3 => reg_EX_instr_14_7753,
      O => N96
    );
  outport_cmp_eq0000_SW0 : X_LUT4
    generic map(
      INIT => X"FEFF",
      LOC => "SLICE_X90Y66"
    )
    port map (
      ADR0 => reg_EX_instr_15_7754,
      ADR1 => reg_EX_instr_10_7732,
      ADR2 => reg_EX_instr_12_7752,
      ADR3 => reg_EX_instr_14_7753,
      O => N4
    );
  reg_ID_data2_mux0006_10_3 : X_LUT4
    generic map(
      INIT => X"0B00",
      LOC => "SLICE_X78Y32"
    )
    port map (
      ADR0 => reg_ID_instr_9_7636,
      ADR1 => N15_0,
      ADR2 => N6_0,
      ADR3 => rd_index1_or0006_0,
      O => N811
    );
  in1_and000710 : X_LUT4
    generic map(
      INIT => X"0C00",
      LOC => "SLICE_X78Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_9_7636,
      ADR2 => reg_ID_instr_13_7746,
      ADR3 => reg_ID_instr_11_7646,
      O => in1_and000710_23831
    );
  reg_ID_data1_mux0007_1_0 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X91Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => N22_0,
      ADR3 => reg_IF_inport_1_7898,
      O => reg_ID_data1_mux0007_1_0_25272
    );
  reg_ID_data1_mux0007_1_6 : X_LUT4
    generic map(
      INIT => X"FF80",
      LOC => "SLICE_X91Y69"
    )
    port map (
      ADR0 => reg_IF_PC_1_7918,
      ADR1 => N2_0,
      ADR2 => N1011_0,
      ADR3 => reg_ID_data1_mux0007_1_0_0,
      O => reg_ID_data1_mux0007_1_6_25279
    );
  reg_ID_data1_mux0007_2_0 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X91Y40"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_IF_inport_2_7901,
      O => reg_ID_data1_mux0007_2_0_25296
    );
  reg_ID_data1_mux0007_2_6 : X_LUT4
    generic map(
      INIT => X"F8F0",
      LOC => "SLICE_X91Y40"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => N1011_0,
      ADR2 => reg_ID_data1_mux0007_2_0_0,
      ADR3 => reg_IF_PC_2_7920,
      O => reg_ID_data1_mux0007_2_6_25303
    );
  reg_ID_data1_mux0007_3_0 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X90Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N22_0,
      ADR2 => VCC,
      ADR3 => reg_IF_inport_3_7900,
      O => reg_ID_data1_mux0007_3_0_25320
    );
  reg_ID_data1_mux0007_3_6 : X_LUT4
    generic map(
      INIT => X"F8F0",
      LOC => "SLICE_X90Y41"
    )
    port map (
      ADR0 => reg_IF_PC_3_7922,
      ADR1 => N1011_0,
      ADR2 => reg_ID_data1_mux0007_3_0_0,
      ADR3 => N2_0,
      O => reg_ID_data1_mux0007_3_6_25327
    );
  reg_ID_data1_mux0007_4_0 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X89Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_inport_4_7903,
      ADR2 => VCC,
      ADR3 => N22_0,
      O => reg_ID_data1_mux0007_4_0_25344
    );
  reg_ID_data1_mux0007_4_6 : X_LUT4
    generic map(
      INIT => X"F8F0",
      LOC => "SLICE_X89Y16"
    )
    port map (
      ADR0 => reg_IF_PC_4_7924,
      ADR1 => N2_0,
      ADR2 => reg_ID_data1_mux0007_4_0_0,
      ADR3 => N1011_0,
      O => reg_ID_data1_mux0007_4_6_25351
    );
  reg_ID_data1_mux0007_5_0 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X88Y16"
    )
    port map (
      ADR0 => reg_IF_inport_5_7902,
      ADR1 => VCC,
      ADR2 => N22_0,
      ADR3 => VCC,
      O => reg_ID_data1_mux0007_5_0_25368
    );
  reg_ID_data1_mux0007_5_6 : X_LUT4
    generic map(
      INIT => X"FF80",
      LOC => "SLICE_X88Y16"
    )
    port map (
      ADR0 => reg_IF_PC_5_7926,
      ADR1 => N1011_0,
      ADR2 => N2_0,
      ADR3 => reg_ID_data1_mux0007_5_0_0,
      O => reg_ID_data1_mux0007_5_6_25375
    );
  reg_ID_data1_mux0007_6_0 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X88Y15"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_IF_inport_6_7904,
      O => reg_ID_data1_mux0007_6_0_25392
    );
  reg_ID_data1_mux0007_6_6 : X_LUT4
    generic map(
      INIT => X"F8F0",
      LOC => "SLICE_X88Y15"
    )
    port map (
      ADR0 => N1011_0,
      ADR1 => N2_0,
      ADR2 => reg_ID_data1_mux0007_6_0_0,
      ADR3 => reg_IF_PC_6_7928,
      O => reg_ID_data1_mux0007_6_6_25399
    );
  reg_EX_PC_2 : X_FF
    generic map(
      LOC => "SLICE_X91Y51",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_PC_3_DYMUX_25691,
      CE => VCC,
      CLK => proc_reg_EX_PC_3_CLKINV_25688,
      SET => GND,
      RST => proc_reg_EX_PC_3_SRINV_25689,
      O => reg_EX_PC_2_7908
    );
  in2_and000536 : X_LUT4
    generic map(
      INIT => X"9009",
      LOC => "SLICE_X78Y43"
    )
    port map (
      ADR0 => reg_ID_instr_1_7810,
      ADR1 => reg_EX_instr_7_7825,
      ADR2 => reg_ID_instr_2_7720,
      ADR3 => reg_EX_instr_8_7826,
      O => in2_and000536_25435
    );
  in2_and000578 : X_LUT4
    generic map(
      INIT => X"C888",
      LOC => "SLICE_X77Y52"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => wr_enable_or000185_0,
      ADR2 => in1_or0009_0,
      ADR3 => in1_cmp_eq0014_0,
      O => in2_and0005
    );
  in2_9_SW2 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X77Y52"
    )
    port map (
      ADR0 => reg_EX_result_9_7506,
      ADR1 => reg_ID_data2_9_7677,
      ADR2 => in2_and0005_0,
      ADR3 => VCC,
      O => N218
    );
  in1_or000892 : X_LUT4
    generic map(
      INIT => X"0033",
      LOC => "SLICE_X79Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_13_7746,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_12_7771,
      O => in1_or000892_25471
    );
  reg_ID_PC_0 : X_FF
    generic map(
      LOC => "SLICE_X90Y77",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_PC_1_DYMUX_25483,
      CE => VCC,
      CLK => proc_reg_ID_PC_1_CLKINV_25480,
      SET => GND,
      RST => proc_reg_ID_PC_1_SRINV_25481,
      O => reg_ID_PC_0_7932
    );
  reg_ID_PC_2 : X_FF
    generic map(
      LOC => "SLICE_X91Y49",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_PC_3_DYMUX_25507,
      CE => VCC,
      CLK => proc_reg_ID_PC_3_CLKINV_25504,
      SET => GND,
      RST => proc_reg_ID_PC_3_SRINV_25505,
      O => reg_ID_PC_2_7934
    );
  reg_ID_PC_3 : X_FF
    generic map(
      LOC => "SLICE_X91Y49",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_PC_3_DXMUX_25515,
      CE => VCC,
      CLK => proc_reg_ID_PC_3_CLKINV_25504,
      SET => GND,
      RST => proc_reg_ID_PC_3_SRINV_25505,
      O => reg_ID_PC_3_7933
    );
  reg_ID_PC_4 : X_FF
    generic map(
      LOC => "SLICE_X84Y1",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_PC_5_DYMUX_25531,
      CE => VCC,
      CLK => proc_reg_ID_PC_5_CLKINV_25528,
      SET => GND,
      RST => proc_reg_ID_PC_5_SRINV_25529,
      O => reg_ID_PC_4_7936
    );
  reg_ID_PC_5 : X_FF
    generic map(
      LOC => "SLICE_X84Y1",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_PC_5_DXMUX_25539,
      CE => VCC,
      CLK => proc_reg_ID_PC_5_CLKINV_25528,
      SET => GND,
      RST => proc_reg_ID_PC_5_SRINV_25529,
      O => reg_ID_PC_5_7935
    );
  reg_ID_PC_6 : X_FF
    generic map(
      LOC => "SLICE_X84Y0",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_PC_6_DYMUX_25553,
      CE => VCC,
      CLK => proc_reg_ID_PC_6_CLKINV_25550,
      SET => GND,
      RST => proc_reg_ID_PC_6_FFY_RSTAND_25558,
      O => reg_ID_PC_6_7937
    );
  proc_reg_ID_PC_6_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X84Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_PC_6_FFY_RSTAND_25558
    );
  reg_ID_data1_mux0007_10_120_SW0 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X91Y30"
    )
    port map (
      ADR0 => reg_IF_instr_11_7789,
      ADR1 => VCC,
      ADR2 => reg_ID_data1_mux0007_10_146_0,
      ADR3 => VCC,
      O => N388
    );
  reg_IF_PC_0 : X_FF
    generic map(
      LOC => "SLICE_X90Y62",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_PC_1_DYMUX_25581,
      CE => VCC,
      CLK => proc_reg_IF_PC_1_CLKINV_25578,
      SET => GND,
      RST => proc_reg_IF_PC_1_SRINV_25579,
      O => reg_IF_PC_0_7916
    );
  reg_IF_PC_2 : X_FF
    generic map(
      LOC => "SLICE_X91Y41",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_PC_3_DYMUX_25605,
      CE => VCC,
      CLK => proc_reg_IF_PC_3_CLKINV_25602,
      SET => GND,
      RST => proc_reg_IF_PC_3_SRINV_25603,
      O => reg_IF_PC_2_7920
    );
  reg_IF_PC_3 : X_FF
    generic map(
      LOC => "SLICE_X91Y41",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_PC_3_DXMUX_25613,
      CE => VCC,
      CLK => proc_reg_IF_PC_3_CLKINV_25602,
      SET => GND,
      RST => proc_reg_IF_PC_3_SRINV_25603,
      O => reg_IF_PC_3_7922
    );
  reg_IF_PC_4 : X_FF
    generic map(
      LOC => "SLICE_X85Y1",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_PC_5_DYMUX_25629,
      CE => VCC,
      CLK => proc_reg_IF_PC_5_CLKINV_25626,
      SET => GND,
      RST => proc_reg_IF_PC_5_SRINV_25627,
      O => reg_IF_PC_4_7924
    );
  reg_IF_PC_5 : X_FF
    generic map(
      LOC => "SLICE_X85Y1",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_PC_5_DXMUX_25637,
      CE => VCC,
      CLK => proc_reg_IF_PC_5_CLKINV_25626,
      SET => GND,
      RST => proc_reg_IF_PC_5_SRINV_25627,
      O => reg_IF_PC_5_7926
    );
  reg_IF_PC_6 : X_FF
    generic map(
      LOC => "SLICE_X88Y22",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_PC_6_DYMUX_25651,
      CE => VCC,
      CLK => proc_reg_IF_PC_6_CLKINV_25648,
      SET => GND,
      RST => proc_reg_IF_PC_6_FFY_RSTAND_25656,
      O => reg_IF_PC_6_7928
    );
  proc_reg_IF_PC_6_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X88Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_PC_6_FFY_RSTAND_25656
    );
  reg_EX_PC_0 : X_FF
    generic map(
      LOC => "SLICE_X91Y88",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_PC_1_DYMUX_25667,
      CE => VCC,
      CLK => proc_reg_EX_PC_1_CLKINV_25664,
      SET => GND,
      RST => proc_reg_EX_PC_1_SRINV_25665,
      O => reg_EX_PC_0_7906
    );
  reg_EX_PC_1 : X_FF
    generic map(
      LOC => "SLICE_X91Y88",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_PC_1_DXMUX_25675,
      CE => VCC,
      CLK => proc_reg_EX_PC_1_CLKINV_25664,
      SET => GND,
      RST => proc_reg_EX_PC_1_SRINV_25665,
      O => reg_EX_PC_1_7907
    );
  reg_EX_PC_3 : X_FF
    generic map(
      LOC => "SLICE_X91Y51",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_PC_3_DXMUX_25699,
      CE => VCC,
      CLK => proc_reg_EX_PC_3_CLKINV_25688,
      SET => GND,
      RST => proc_reg_EX_PC_3_SRINV_25689,
      O => reg_EX_PC_3_7909
    );
  reg_EX_PC_4 : X_FF
    generic map(
      LOC => "SLICE_X82Y0",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_PC_5_DYMUX_25715,
      CE => VCC,
      CLK => proc_reg_EX_PC_5_CLKINV_25712,
      SET => GND,
      RST => proc_reg_EX_PC_5_SRINV_25713,
      O => reg_EX_PC_4_7910
    );
  reg_EX_PC_5 : X_FF
    generic map(
      LOC => "SLICE_X82Y0",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_PC_5_DXMUX_25723,
      CE => VCC,
      CLK => proc_reg_EX_PC_5_CLKINV_25712,
      SET => GND,
      RST => proc_reg_EX_PC_5_SRINV_25713,
      O => reg_EX_PC_5_7911
    );
  reg_EX_PC_6 : X_FF
    generic map(
      LOC => "SLICE_X82Y1",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_PC_6_DYMUX_25737,
      CE => VCC,
      CLK => proc_reg_EX_PC_6_CLKINV_25734,
      SET => GND,
      RST => proc_reg_EX_PC_6_FFY_RSTAND_25742,
      O => reg_EX_PC_6_7912
    );
  proc_reg_EX_PC_6_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X82Y1",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_PC_6_FFY_RSTAND_25742
    );
  NlwBlock_proc_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_proc_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

