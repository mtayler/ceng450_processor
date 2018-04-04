--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: processor_sim.vhd
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
  signal reg_EX_result_15_7242 : STD_LOGIC; 
  signal reg_EX_result_14_7243 : STD_LOGIC; 
  signal reg_EX_result_13_7244 : STD_LOGIC; 
  signal reg_EX_result_12_7245 : STD_LOGIC; 
  signal reg_EX_result_11_7246 : STD_LOGIC; 
  signal reg_EX_result_10_7247 : STD_LOGIC; 
  signal reg_EX_result_9_7248 : STD_LOGIC; 
  signal reg_EX_result_8_7249 : STD_LOGIC; 
  signal reg_EX_result_7_7250 : STD_LOGIC; 
  signal reg_EX_result_6_7251 : STD_LOGIC; 
  signal reg_EX_result_5_7252 : STD_LOGIC; 
  signal reg_EX_result_4_7253 : STD_LOGIC; 
  signal reg_EX_result_3_7254 : STD_LOGIC; 
  signal reg_EX_result_2_7255 : STD_LOGIC; 
  signal reg_EX_result_1_7256 : STD_LOGIC; 
  signal reg_EX_result_0_7257 : STD_LOGIC; 
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
  signal reg_ID_instr_9_7378 : STD_LOGIC; 
  signal reg_EX_overflow_10_7379 : STD_LOGIC; 
  signal ram_addr_and0000_0 : STD_LOGIC; 
  signal in1_and0003_0 : STD_LOGIC; 
  signal N256_0 : STD_LOGIC; 
  signal in2_and0002_0 : STD_LOGIC; 
  signal N232_0 : STD_LOGIC; 
  signal reg_EX_overflow_11_7385 : STD_LOGIC; 
  signal N254_0 : STD_LOGIC; 
  signal N230 : STD_LOGIC; 
  signal reg_ID_instr_11_7388 : STD_LOGIC; 
  signal reg_ID_instr_0_7389 : STD_LOGIC; 
  signal reg_EX_instr_6_7390 : STD_LOGIC; 
  signal reg_ID_instr_10_7391 : STD_LOGIC; 
  signal N284 : STD_LOGIC; 
  signal in2_and0005_0 : STD_LOGIC; 
  signal reg_EX_overflow_0_7394 : STD_LOGIC; 
  signal reg_ID_data2_0_7395 : STD_LOGIC; 
  signal reg_EX_overflow_1_7396 : STD_LOGIC; 
  signal reg_ID_data2_1_7397 : STD_LOGIC; 
  signal reg_EX_overflow_2_7398 : STD_LOGIC; 
  signal reg_ID_data2_2_7399 : STD_LOGIC; 
  signal reg_EX_overflow_3_7400 : STD_LOGIC; 
  signal reg_ID_data2_3_7401 : STD_LOGIC; 
  signal N313 : STD_LOGIC; 
  signal in2_and000552_0 : STD_LOGIC; 
  signal reg_EX_overflow_4_7404 : STD_LOGIC; 
  signal N314_0 : STD_LOGIC; 
  signal N310 : STD_LOGIC; 
  signal reg_EX_overflow_5_7407 : STD_LOGIC; 
  signal N311_0 : STD_LOGIC; 
  signal N307 : STD_LOGIC; 
  signal reg_EX_overflow_6_7410 : STD_LOGIC; 
  signal N308_0 : STD_LOGIC; 
  signal N304 : STD_LOGIC; 
  signal reg_EX_overflow_7_7413 : STD_LOGIC; 
  signal N305_0 : STD_LOGIC; 
  signal reg_EX_overflow_8_7416 : STD_LOGIC; 
  signal N302_0 : STD_LOGIC; 
  signal reg_EX_overflow_9_7419 : STD_LOGIC; 
  signal N299_0 : STD_LOGIC; 
  signal reg_ID_data2_11_7421 : STD_LOGIC; 
  signal in1_cmp_eq0014_0 : STD_LOGIC; 
  signal N417_0 : STD_LOGIC; 
  signal N248_0 : STD_LOGIC; 
  signal N280_0 : STD_LOGIC; 
  signal N246_0 : STD_LOGIC; 
  signal N278_0 : STD_LOGIC; 
  signal N244_0 : STD_LOGIC; 
  signal N276_0 : STD_LOGIC; 
  signal N242_0 : STD_LOGIC; 
  signal N274_0 : STD_LOGIC; 
  signal N240_0 : STD_LOGIC; 
  signal N228_0 : STD_LOGIC; 
  signal N238_0 : STD_LOGIC; 
  signal N226_0 : STD_LOGIC; 
  signal N236_0 : STD_LOGIC; 
  signal N224_0 : STD_LOGIC; 
  signal N234_0 : STD_LOGIC; 
  signal N222_0 : STD_LOGIC; 
  signal N252_0 : STD_LOGIC; 
  signal N220 : STD_LOGIC; 
  signal N250_0 : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal N319 : STD_LOGIC; 
  signal N320_0 : STD_LOGIC; 
  signal N317_0 : STD_LOGIC; 
  signal reg_EX_overflow_12_7449 : STD_LOGIC; 
  signal N296_0 : STD_LOGIC; 
  signal reg_EX_overflow_13_7452 : STD_LOGIC; 
  signal N293_0 : STD_LOGIC; 
  signal reg_EX_overflow_14_7455 : STD_LOGIC; 
  signal N290_0 : STD_LOGIC; 
  signal reg_EX_overflow_15_7458 : STD_LOGIC; 
  signal N287_0 : STD_LOGIC; 
  signal reg_ID_data2_7_7460 : STD_LOGIC; 
  signal in1_or0009_0 : STD_LOGIC; 
  signal reg_ID_data2_10_7462 : STD_LOGIC; 
  signal reg_ID_data2_6_7463 : STD_LOGIC; 
  signal reg_ID_data2_5_7464 : STD_LOGIC; 
  signal reg_ID_data2_4_7465 : STD_LOGIC; 
  signal reg_ID_data2_8_7466 : STD_LOGIC; 
  signal N407_0 : STD_LOGIC; 
  signal reg_ID_data2_9_7468 : STD_LOGIC; 
  signal N405_0 : STD_LOGIC; 
  signal in1_cmp_eq0013_0 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_10_SW2_O_0 : STD_LOGIC; 
  signal reg_ID_instr_8_7472 : STD_LOGIC; 
  signal reg_ID_instr_2_7473 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_11_SW2_O_0 : STD_LOGIC; 
  signal reg_ID_instr_3_7475 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_12_SW0_O_0 : STD_LOGIC; 
  signal reg_ID_instr_4_7477 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_13_SW0_O_0 : STD_LOGIC; 
  signal reg_ID_instr_5_7479 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_14_SW0_O_0 : STD_LOGIC; 
  signal reg_ID_instr_6_7481 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_15_SW0_O_0 : STD_LOGIC; 
  signal reg_ID_instr_7_7483 : STD_LOGIC; 
  signal branch_trigger_cmp_eq0001_0 : STD_LOGIC; 
  signal reg_EX_instr_11_7485 : STD_LOGIC; 
  signal reg_EX_instr_10_7486 : STD_LOGIC; 
  signal reg_EX_instr_9_7487 : STD_LOGIC; 
  signal N96_0 : STD_LOGIC; 
  signal N13_0 : STD_LOGIC; 
  signal reg_ID_instr_15_7490 : STD_LOGIC; 
  signal reg_ID_instr_13_7491 : STD_LOGIC; 
  signal N102_0 : STD_LOGIC; 
  signal reg_ID_data2_15_7493 : STD_LOGIC; 
  signal in2_and000578_SW0_G_O_0 : STD_LOGIC; 
  signal reg_ID_data2_14_7495 : STD_LOGIC; 
  signal in2_and000578_SW2_G_O_0 : STD_LOGIC; 
  signal reg_ID_data2_13_7497 : STD_LOGIC; 
  signal in2_and000578_SW4_G_O_0 : STD_LOGIC; 
  signal reg_ID_data2_12_7499 : STD_LOGIC; 
  signal in2_and000578_SW6_G_O_0 : STD_LOGIC; 
  signal reg_EX_instr_13_7501 : STD_LOGIC; 
  signal in1_or0003_SW0_O_0 : STD_LOGIC; 
  signal reg_EX_instr_12_7503 : STD_LOGIC; 
  signal reg_EX_instr_14_7504 : STD_LOGIC; 
  signal reg_EX_instr_15_7505 : STD_LOGIC; 
  signal in1_or0003_0 : STD_LOGIC; 
  signal reg_ID_data1_0_7507 : STD_LOGIC; 
  signal in1_and0007101_0 : STD_LOGIC; 
  signal reg_ID_data1_1_7509 : STD_LOGIC; 
  signal reg_ID_data1_2_7510 : STD_LOGIC; 
  signal reg_ID_data1_3_7511 : STD_LOGIC; 
  signal reg_ID_data1_4_7512 : STD_LOGIC; 
  signal reg_ID_data1_5_7513 : STD_LOGIC; 
  signal reg_ID_data1_6_7514 : STD_LOGIC; 
  signal reg_ID_data1_7_7515 : STD_LOGIC; 
  signal reg_ID_data1_8_7516 : STD_LOGIC; 
  signal reg_ID_data1_9_7517 : STD_LOGIC; 
  signal N88_0 : STD_LOGIC; 
  signal reg_ID_instr_12_7519 : STD_LOGIC; 
  signal reg_ID_instr_14_7520 : STD_LOGIC; 
  signal in1_and0008_0 : STD_LOGIC; 
  signal wr_enable_or000181_0 : STD_LOGIC; 
  signal wr_overflow_or000017_0 : STD_LOGIC; 
  signal wr_overflow_or000031_0 : STD_LOGIC; 
  signal wr_overflow_or000034_SW0_O_0 : STD_LOGIC; 
  signal reg_ID_data1_10_7526 : STD_LOGIC; 
  signal reg_ID_data1_11_7527 : STD_LOGIC; 
  signal in1_12_SW2_O_0 : STD_LOGIC; 
  signal reg_ID_data1_12_7529 : STD_LOGIC; 
  signal in1_13_SW2_O_0 : STD_LOGIC; 
  signal reg_ID_data1_13_7531 : STD_LOGIC; 
  signal in1_14_SW2_O_0 : STD_LOGIC; 
  signal reg_ID_data1_14_7533 : STD_LOGIC; 
  signal in1_15_SW2_O_0 : STD_LOGIC; 
  signal reg_ID_data1_15_7535 : STD_LOGIC; 
  signal alu_mode_0_4_O_0 : STD_LOGIC; 
  signal alu_mode_0_15_0 : STD_LOGIC; 
  signal N15_0 : STD_LOGIC; 
  signal in1_or0008_0 : STD_LOGIC; 
  signal in1_and000772_0 : STD_LOGIC; 
  signal in1_and000728_O_0 : STD_LOGIC; 
  signal in1_and00075_0 : STD_LOGIC; 
  signal in1_and000710_0 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_0_SW2_O_0 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_1_SW2_O_0 : STD_LOGIC; 
  signal reg_ID_instr_1_7546 : STD_LOGIC; 
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
  signal N324_0 : STD_LOGIC; 
  signal N268_0 : STD_LOGIC; 
  signal in1_and000771_O_0 : STD_LOGIC; 
  signal reg_EX_instr_7_7561 : STD_LOGIC; 
  signal reg_EX_instr_8_7562 : STD_LOGIC; 
  signal in1_cmp_eq00131_SW0_O_0 : STD_LOGIC; 
  signal in1_cmp_eq00143_SW0_O_0 : STD_LOGIC; 
  signal wr_enable_or000160_O_0 : STD_LOGIC; 
  signal wr_enable_or000134_0 : STD_LOGIC; 
  signal in2_and00028_0 : STD_LOGIC; 
  signal in2_and00025_0 : STD_LOGIC; 
  signal N322_0 : STD_LOGIC; 
  signal in1_or000821_O_0 : STD_LOGIC; 
  signal in1_or000829_0 : STD_LOGIC; 
  signal in1_or000892_0 : STD_LOGIC; 
  signal in1_or000861_O_0 : STD_LOGIC; 
  signal in1_and0008_SW2_O_0 : STD_LOGIC; 
  signal branch_trigger_0 : STD_LOGIC; 
  signal reg_IF_instr_1_7576 : STD_LOGIC; 
  signal reg_IF_instr_0_7577 : STD_LOGIC; 
  signal reg_IF_instr_3_7578 : STD_LOGIC; 
  signal reg_IF_instr_2_7579 : STD_LOGIC; 
  signal reg_IF_instr_5_7580 : STD_LOGIC; 
  signal reg_IF_instr_4_7581 : STD_LOGIC; 
  signal reg_IF_instr_7_7582 : STD_LOGIC; 
  signal reg_IF_instr_6_7583 : STD_LOGIC; 
  signal reg_IF_instr_9_7584 : STD_LOGIC; 
  signal reg_IF_instr_8_7585 : STD_LOGIC; 
  signal reg_IF_instr_11_7586 : STD_LOGIC; 
  signal reg_IF_instr_10_7587 : STD_LOGIC; 
  signal reg_IF_instr_13_7588 : STD_LOGIC; 
  signal reg_IF_instr_12_7589 : STD_LOGIC; 
  signal reg_IF_instr_15_7590 : STD_LOGIC; 
  signal reg_IF_instr_14_7591 : STD_LOGIC; 
  signal N33_0 : STD_LOGIC; 
  signal N29_0 : STD_LOGIC; 
  signal N271_0 : STD_LOGIC; 
  signal Madd_PC_next_addsub0000_cy_3_0 : STD_LOGIC; 
  signal outport_cmp_eq0000_0 : STD_LOGIC; 
  signal N31_0 : STD_LOGIC; 
  signal in1_cmp_eq0008_0 : STD_LOGIC; 
  signal N22_0 : STD_LOGIC; 
  signal reg_IF_inport_11_7600 : STD_LOGIC; 
  signal N02_0 : STD_LOGIC; 
  signal reg_IF_inport_10_7602 : STD_LOGIC; 
  signal reg_IF_inport_13_7603 : STD_LOGIC; 
  signal reg_IF_inport_12_7604 : STD_LOGIC; 
  signal reg_IF_inport_15_7605 : STD_LOGIC; 
  signal reg_IF_inport_14_7606 : STD_LOGIC; 
  signal N2_0 : STD_LOGIC; 
  signal N18_0 : STD_LOGIC; 
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
  signal reg_IF_inport_7_7620 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_6_6_0 : STD_LOGIC; 
  signal reg_IF_inport_8_7622 : STD_LOGIC; 
  signal N23_0 : STD_LOGIC; 
  signal N211_0 : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal rd_index1_or0003_0 : STD_LOGIC; 
  signal rd_index1_or0004_0 : STD_LOGIC; 
  signal N5_0 : STD_LOGIC; 
  signal rd_index1_or0007_0 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_146_0 : STD_LOGIC; 
  signal N8_0 : STD_LOGIC; 
  signal or0000_0_or0000_0 : STD_LOGIC; 
  signal N21_0 : STD_LOGIC; 
  signal reg_EX_n_flag_7634 : STD_LOGIC; 
  signal rd_index1_or0006_0 : STD_LOGIC; 
  signal N9_0 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_15_0 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_2_0 : STD_LOGIC; 
  signal N811_0 : STD_LOGIC; 
  signal rd_index1_or0005_0 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_11_15_0 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_11_2_0 : STD_LOGIC; 
  signal N19_0 : STD_LOGIC; 
  signal N1011_0 : STD_LOGIC; 
  signal reg_EX_z_flag_7645 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_15_0 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_120_0 : STD_LOGIC; 
  signal rd_index1_or000629_0 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_134_0 : STD_LOGIC; 
  signal reg_IF_inport_9_7650 : STD_LOGIC; 
  signal reg_IF_inport_1_7651 : STD_LOGIC; 
  signal reg_IF_inport_0_7652 : STD_LOGIC; 
  signal reg_IF_inport_3_7653 : STD_LOGIC; 
  signal reg_IF_inport_2_7654 : STD_LOGIC; 
  signal reg_IF_inport_5_7655 : STD_LOGIC; 
  signal reg_IF_inport_4_7656 : STD_LOGIC; 
  signal reg_IF_inport_6_7657 : STD_LOGIC; 
  signal N16_0 : STD_LOGIC; 
  signal N11_0 : STD_LOGIC; 
  signal N7_0 : STD_LOGIC; 
  signal reg_EX_PC_0_7661 : STD_LOGIC; 
  signal reg_EX_PC_1_7662 : STD_LOGIC; 
  signal reg_EX_PC_2_7663 : STD_LOGIC; 
  signal reg_EX_PC_3_7664 : STD_LOGIC; 
  signal reg_EX_PC_4_7665 : STD_LOGIC; 
  signal reg_EX_PC_5_7666 : STD_LOGIC; 
  signal reg_EX_PC_6_7667 : STD_LOGIC; 
  signal N35_0 : STD_LOGIC; 
  signal N36_0 : STD_LOGIC; 
  signal N01_0 : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal rd_index1_or000638_0 : STD_LOGIC; 
  signal N25_0 : STD_LOGIC; 
  signal reg_IF_PC_0_7674 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_0_0_0 : STD_LOGIC; 
  signal reg_IF_PC_1_7676 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_1_0_0 : STD_LOGIC; 
  signal reg_IF_PC_2_7678 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_2_0_0 : STD_LOGIC; 
  signal reg_IF_PC_3_7680 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_3_0_0 : STD_LOGIC; 
  signal reg_IF_PC_4_7682 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_4_0_0 : STD_LOGIC; 
  signal reg_IF_PC_5_7684 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_5_0_0 : STD_LOGIC; 
  signal reg_IF_PC_6_7686 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_6_0_0 : STD_LOGIC; 
  signal in2_and000536_0 : STD_LOGIC; 
  signal reg_ID_PC_1_7689 : STD_LOGIC; 
  signal reg_ID_PC_0_7690 : STD_LOGIC; 
  signal reg_ID_PC_3_7691 : STD_LOGIC; 
  signal reg_ID_PC_2_7692 : STD_LOGIC; 
  signal reg_ID_PC_5_7693 : STD_LOGIC; 
  signal reg_ID_PC_4_7694 : STD_LOGIC; 
  signal reg_ID_PC_6_7695 : STD_LOGIC; 
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
  signal proc_ram_addr_10_F5MUX_17974 : STD_LOGIC; 
  signal N393 : STD_LOGIC; 
  signal proc_ram_addr_10_BXINV_17967 : STD_LOGIC; 
  signal N392 : STD_LOGIC; 
  signal proc_ram_addr_11_F5MUX_17999 : STD_LOGIC; 
  signal N391 : STD_LOGIC; 
  signal proc_ram_addr_11_BXINV_17992 : STD_LOGIC; 
  signal N390 : STD_LOGIC; 
  signal proc_N284_F5MUX_18024 : STD_LOGIC; 
  signal N395 : STD_LOGIC; 
  signal proc_N284_BXINV_18017 : STD_LOGIC; 
  signal N394 : STD_LOGIC; 
  signal proc_in2_0_F5MUX_18049 : STD_LOGIC; 
  signal N453 : STD_LOGIC; 
  signal proc_in2_0_BXINV_18041 : STD_LOGIC; 
  signal N452 : STD_LOGIC; 
  signal proc_in2_1_F5MUX_18074 : STD_LOGIC; 
  signal N455 : STD_LOGIC; 
  signal proc_in2_1_BXINV_18066 : STD_LOGIC; 
  signal N454 : STD_LOGIC; 
  signal proc_in2_2_F5MUX_18099 : STD_LOGIC; 
  signal N459 : STD_LOGIC; 
  signal proc_in2_2_BXINV_18091 : STD_LOGIC; 
  signal N458 : STD_LOGIC; 
  signal proc_in2_3_F5MUX_18124 : STD_LOGIC; 
  signal N457 : STD_LOGIC; 
  signal proc_in2_3_BXINV_18116 : STD_LOGIC; 
  signal N456 : STD_LOGIC; 
  signal proc_in2_4_F5MUX_18149 : STD_LOGIC; 
  signal N447 : STD_LOGIC; 
  signal proc_in2_4_BXINV_18142 : STD_LOGIC; 
  signal N446 : STD_LOGIC; 
  signal proc_in2_5_F5MUX_18174 : STD_LOGIC; 
  signal N445 : STD_LOGIC; 
  signal proc_in2_5_BXINV_18167 : STD_LOGIC; 
  signal N444 : STD_LOGIC; 
  signal proc_in2_6_F5MUX_18199 : STD_LOGIC; 
  signal N443 : STD_LOGIC; 
  signal proc_in2_6_BXINV_18192 : STD_LOGIC; 
  signal N442 : STD_LOGIC; 
  signal proc_in2_7_F5MUX_18224 : STD_LOGIC; 
  signal N441 : STD_LOGIC; 
  signal proc_in2_7_BXINV_18217 : STD_LOGIC; 
  signal N440 : STD_LOGIC; 
  signal proc_in2_8_F5MUX_18249 : STD_LOGIC; 
  signal N439 : STD_LOGIC; 
  signal proc_in2_8_BXINV_18242 : STD_LOGIC; 
  signal N438 : STD_LOGIC; 
  signal proc_in2_9_F5MUX_18274 : STD_LOGIC; 
  signal N437 : STD_LOGIC; 
  signal proc_in2_9_BXINV_18267 : STD_LOGIC; 
  signal N436 : STD_LOGIC; 
  signal proc_N230_F5MUX_18299 : STD_LOGIC; 
  signal N465 : STD_LOGIC; 
  signal proc_N230_BXINV_18291 : STD_LOGIC; 
  signal N464 : STD_LOGIC; 
  signal proc_ram_addr_0_F5MUX_18324 : STD_LOGIC; 
  signal N427 : STD_LOGIC; 
  signal proc_ram_addr_0_BXINV_18317 : STD_LOGIC; 
  signal N426 : STD_LOGIC; 
  signal proc_ram_addr_1_F5MUX_18349 : STD_LOGIC; 
  signal N425 : STD_LOGIC; 
  signal proc_ram_addr_1_BXINV_18342 : STD_LOGIC; 
  signal N424 : STD_LOGIC; 
  signal proc_ram_addr_2_F5MUX_18374 : STD_LOGIC; 
  signal N423 : STD_LOGIC; 
  signal proc_ram_addr_2_BXINV_18367 : STD_LOGIC; 
  signal N422 : STD_LOGIC; 
  signal proc_ram_addr_3_F5MUX_18399 : STD_LOGIC; 
  signal N421 : STD_LOGIC; 
  signal proc_ram_addr_3_BXINV_18392 : STD_LOGIC; 
  signal N420 : STD_LOGIC; 
  signal proc_ram_addr_4_F5MUX_18424 : STD_LOGIC; 
  signal N389 : STD_LOGIC; 
  signal proc_ram_addr_4_BXINV_18417 : STD_LOGIC; 
  signal N388 : STD_LOGIC; 
  signal proc_ram_addr_5_F5MUX_18449 : STD_LOGIC; 
  signal N387 : STD_LOGIC; 
  signal proc_ram_addr_5_BXINV_18442 : STD_LOGIC; 
  signal N386 : STD_LOGIC; 
  signal proc_ram_addr_6_F5MUX_18474 : STD_LOGIC; 
  signal N385 : STD_LOGIC; 
  signal proc_ram_addr_6_BXINV_18467 : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal proc_ram_addr_7_F5MUX_18499 : STD_LOGIC; 
  signal N383 : STD_LOGIC; 
  signal proc_ram_addr_7_BXINV_18492 : STD_LOGIC; 
  signal N382 : STD_LOGIC; 
  signal proc_ram_addr_8_F5MUX_18524 : STD_LOGIC; 
  signal N381 : STD_LOGIC; 
  signal proc_ram_addr_8_BXINV_18517 : STD_LOGIC; 
  signal N380 : STD_LOGIC; 
  signal proc_ram_addr_9_F5MUX_18549 : STD_LOGIC; 
  signal N379 : STD_LOGIC; 
  signal proc_ram_addr_9_BXINV_18542 : STD_LOGIC; 
  signal N378 : STD_LOGIC; 
  signal proc_in2_10_F5MUX_18574 : STD_LOGIC; 
  signal N451 : STD_LOGIC; 
  signal proc_in2_10_BXINV_18567 : STD_LOGIC; 
  signal N450 : STD_LOGIC; 
  signal proc_in2_11_F5MUX_18599 : STD_LOGIC; 
  signal N449 : STD_LOGIC; 
  signal proc_in2_11_BXINV_18592 : STD_LOGIC; 
  signal N448 : STD_LOGIC; 
  signal proc_in2_12_F5MUX_18624 : STD_LOGIC; 
  signal N435 : STD_LOGIC; 
  signal proc_in2_12_BXINV_18617 : STD_LOGIC; 
  signal N434 : STD_LOGIC; 
  signal proc_in2_13_F5MUX_18649 : STD_LOGIC; 
  signal N433 : STD_LOGIC; 
  signal proc_in2_13_BXINV_18642 : STD_LOGIC; 
  signal N432 : STD_LOGIC; 
  signal proc_in2_14_F5MUX_18674 : STD_LOGIC; 
  signal N431 : STD_LOGIC; 
  signal proc_in2_14_BXINV_18667 : STD_LOGIC; 
  signal N430 : STD_LOGIC; 
  signal proc_in2_15_F5MUX_18699 : STD_LOGIC; 
  signal N429 : STD_LOGIC; 
  signal proc_in2_15_BXINV_18692 : STD_LOGIC; 
  signal N428 : STD_LOGIC; 
  signal proc_N304_F5MUX_18724 : STD_LOGIC; 
  signal in2_and000578_SW121 : STD_LOGIC; 
  signal proc_N304_BXINV_18717 : STD_LOGIC; 
  signal reg_ID_data2_7_rt_18715 : STD_LOGIC; 
  signal proc_N319_F5MUX_18749 : STD_LOGIC; 
  signal in2_and000578_SW221 : STD_LOGIC; 
  signal proc_N319_BXINV_18742 : STD_LOGIC; 
  signal reg_ID_data2_10_rt_18740 : STD_LOGIC; 
  signal proc_N307_F5MUX_18774 : STD_LOGIC; 
  signal in2_and000578_SW141 : STD_LOGIC; 
  signal proc_N307_BXINV_18767 : STD_LOGIC; 
  signal reg_ID_data2_6_rt_18765 : STD_LOGIC; 
  signal proc_N310_F5MUX_18799 : STD_LOGIC; 
  signal in2_and000578_SW161 : STD_LOGIC; 
  signal proc_N310_BXINV_18792 : STD_LOGIC; 
  signal reg_ID_data2_5_rt_18790 : STD_LOGIC; 
  signal proc_N313_F5MUX_18824 : STD_LOGIC; 
  signal in2_and000578_SW181 : STD_LOGIC; 
  signal proc_N313_BXINV_18817 : STD_LOGIC; 
  signal reg_ID_data2_4_rt_18815 : STD_LOGIC; 
  signal proc_N220_F5MUX_18849 : STD_LOGIC; 
  signal N463 : STD_LOGIC; 
  signal proc_N220_BXINV_18841 : STD_LOGIC; 
  signal N462 : STD_LOGIC; 
  signal proc_N218_F5MUX_18874 : STD_LOGIC; 
  signal N461 : STD_LOGIC; 
  signal proc_N218_BXINV_18866 : STD_LOGIC; 
  signal N460 : STD_LOGIC; 
  signal proc_reg_EX_overflow_10_DXMUX_18904 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_10_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_10_CLKINV_18886 : STD_LOGIC; 
  signal proc_reg_EX_overflow_11_DXMUX_18939 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_11_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_11_CLKINV_18921 : STD_LOGIC; 
  signal proc_reg_EX_overflow_12_DXMUX_18974 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_12_SW0_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_12_CLKINV_18956 : STD_LOGIC; 
  signal proc_reg_EX_overflow_13_DXMUX_19009 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_13_SW0_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_13_CLKINV_18991 : STD_LOGIC; 
  signal proc_reg_EX_overflow_14_DXMUX_19044 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_14_SW0_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_14_CLKINV_19026 : STD_LOGIC; 
  signal proc_reg_EX_overflow_15_DXMUX_19079 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_15_SW0_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_15_CLKINV_19061 : STD_LOGIC; 
  signal branch_trigger_cmp_eq0001 : STD_LOGIC; 
  signal ram_addr_and0000 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N286 : STD_LOGIC; 
  signal in2_and000578_SW0_G_O : STD_LOGIC; 
  signal N289 : STD_LOGIC; 
  signal in2_and000578_SW2_G_O : STD_LOGIC; 
  signal N292 : STD_LOGIC; 
  signal in2_and000578_SW4_G_O : STD_LOGIC; 
  signal N295 : STD_LOGIC; 
  signal in2_and000578_SW6_G_O : STD_LOGIC; 
  signal N298 : STD_LOGIC; 
  signal N405 : STD_LOGIC; 
  signal in1_or0003_19275 : STD_LOGIC; 
  signal in1_or0003_SW0_O : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal N242 : STD_LOGIC; 
  signal N240 : STD_LOGIC; 
  signal N238 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal N252 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal N301 : STD_LOGIC; 
  signal N407 : STD_LOGIC; 
  signal N316 : STD_LOGIC; 
  signal N417 : STD_LOGIC; 
  signal in1_and0008_19587 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal wr_overflow_or000017_19611 : STD_LOGIC; 
  signal wr_enable_or000181 : STD_LOGIC; 
  signal wr_overflow : STD_LOGIC; 
  signal wr_overflow_or000034_SW0_O : STD_LOGIC; 
  signal N232 : STD_LOGIC; 
  signal N320 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal in1_12_SW2_O : STD_LOGIC; 
  signal in1_13_SW2_O : STD_LOGIC; 
  signal in1_14_SW2_O : STD_LOGIC; 
  signal in1_15_SW2_O : STD_LOGIC; 
  signal alu_mode_0_4_O : STD_LOGIC; 
  signal in1_and0007101_19851 : STD_LOGIC; 
  signal in1_and000728_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_0_FFX_RST : STD_LOGIC; 
  signal proc_reg_EX_overflow_0_DXMUX_19882 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_0_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_0_CLKINV_19864 : STD_LOGIC; 
  signal proc_reg_EX_overflow_1_DXMUX_19917 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_1_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_1_CLKINV_19899 : STD_LOGIC; 
  signal proc_reg_EX_overflow_2_DXMUX_19952 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_2_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_2_CLKINV_19934 : STD_LOGIC; 
  signal proc_reg_EX_overflow_3_DXMUX_19987 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_3_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_3_CLKINV_19969 : STD_LOGIC; 
  signal proc_reg_EX_overflow_4_DXMUX_20022 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_4_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_4_CLKINV_20004 : STD_LOGIC; 
  signal proc_reg_EX_overflow_5_DXMUX_20057 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_5_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_5_CLKINV_20039 : STD_LOGIC; 
  signal proc_reg_EX_overflow_6_DXMUX_20092 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_6_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_6_CLKINV_20074 : STD_LOGIC; 
  signal proc_reg_EX_overflow_7_DXMUX_20127 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_7_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_7_CLKINV_20109 : STD_LOGIC; 
  signal proc_reg_EX_overflow_8_DXMUX_20162 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_8_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_8_CLKINV_20144 : STD_LOGIC; 
  signal proc_reg_EX_overflow_9_DXMUX_20197 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_9_SW2_O : STD_LOGIC; 
  signal proc_reg_EX_overflow_9_CLKINV_20179 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal alu_mode_0_1_SW0_O : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal in1_and0003 : STD_LOGIC; 
  signal in1_and000318_SW0_O : STD_LOGIC; 
  signal in1_and000772_20297 : STD_LOGIC; 
  signal in1_and000771_O : STD_LOGIC; 
  signal N228 : STD_LOGIC; 
  signal N314 : STD_LOGIC; 
  signal in1_cmp_eq0013 : STD_LOGIC; 
  signal in1_cmp_eq00131_SW0_O : STD_LOGIC; 
  signal in1_cmp_eq0014 : STD_LOGIC; 
  signal in1_cmp_eq00143_SW0_O : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N311 : STD_LOGIC; 
  signal N224 : STD_LOGIC; 
  signal N308 : STD_LOGIC; 
  signal N222 : STD_LOGIC; 
  signal N305 : STD_LOGIC; 
  signal wr_enable : STD_LOGIC; 
  signal wr_enable_or000160_O : STD_LOGIC; 
  signal in2_and0002 : STD_LOGIC; 
  signal in1_or0009 : STD_LOGIC; 
  signal in1_or000829_20513 : STD_LOGIC; 
  signal in1_or000821_O : STD_LOGIC; 
  signal in1_or0008 : STD_LOGIC; 
  signal in1_or000861_O : STD_LOGIC; 
  signal in2_and00025_20561 : STD_LOGIC; 
  signal in1_and0008_SW2_O : STD_LOGIC; 
  signal proc_reg_ID_instr_1_DXMUX_20599 : STD_LOGIC; 
  signal proc_reg_ID_instr_1_DYMUX_20583 : STD_LOGIC; 
  signal proc_reg_ID_instr_1_SRINV_20573 : STD_LOGIC; 
  signal proc_reg_ID_instr_1_CLKINV_20572 : STD_LOGIC; 
  signal proc_reg_ID_instr_3_DXMUX_20641 : STD_LOGIC; 
  signal proc_reg_ID_instr_3_DYMUX_20625 : STD_LOGIC; 
  signal proc_reg_ID_instr_3_SRINV_20615 : STD_LOGIC; 
  signal proc_reg_ID_instr_3_CLKINV_20614 : STD_LOGIC; 
  signal proc_reg_ID_instr_5_DXMUX_20683 : STD_LOGIC; 
  signal proc_reg_ID_instr_5_DYMUX_20667 : STD_LOGIC; 
  signal proc_reg_ID_instr_5_SRINV_20657 : STD_LOGIC; 
  signal proc_reg_ID_instr_5_CLKINV_20656 : STD_LOGIC; 
  signal proc_reg_ID_instr_7_DXMUX_20725 : STD_LOGIC; 
  signal proc_reg_ID_instr_7_DYMUX_20709 : STD_LOGIC; 
  signal proc_reg_ID_instr_7_SRINV_20699 : STD_LOGIC; 
  signal proc_reg_ID_instr_7_CLKINV_20698 : STD_LOGIC; 
  signal proc_reg_ID_instr_9_DXMUX_20767 : STD_LOGIC; 
  signal proc_reg_ID_instr_9_DYMUX_20751 : STD_LOGIC; 
  signal proc_reg_ID_instr_9_SRINV_20741 : STD_LOGIC; 
  signal proc_reg_ID_instr_9_CLKINV_20740 : STD_LOGIC; 
  signal proc_reg_IF_instr_1_DXMUX_20809 : STD_LOGIC; 
  signal proc_reg_IF_instr_1_DYMUX_20793 : STD_LOGIC; 
  signal proc_reg_IF_instr_1_SRINV_20783 : STD_LOGIC; 
  signal proc_reg_IF_instr_1_CLKINV_20782 : STD_LOGIC; 
  signal proc_reg_IF_instr_3_DXMUX_20851 : STD_LOGIC; 
  signal proc_reg_IF_instr_3_DYMUX_20835 : STD_LOGIC; 
  signal proc_reg_IF_instr_3_SRINV_20825 : STD_LOGIC; 
  signal proc_reg_IF_instr_3_CLKINV_20824 : STD_LOGIC; 
  signal proc_reg_IF_instr_5_DXMUX_20893 : STD_LOGIC; 
  signal proc_reg_IF_instr_5_DYMUX_20877 : STD_LOGIC; 
  signal proc_reg_IF_instr_5_SRINV_20867 : STD_LOGIC; 
  signal proc_reg_IF_instr_5_CLKINV_20866 : STD_LOGIC; 
  signal proc_reg_IF_instr_7_FFY_RST : STD_LOGIC; 
  signal proc_reg_IF_instr_7_DYMUX_20916 : STD_LOGIC; 
  signal proc_reg_IF_instr_7_CLKINV_20905 : STD_LOGIC; 
  signal proc_reg_IF_instr_9_FFY_RST : STD_LOGIC; 
  signal proc_reg_IF_instr_9_FFX_RST : STD_LOGIC; 
  signal proc_reg_IF_instr_9_DXMUX_20958 : STD_LOGIC; 
  signal proc_reg_IF_instr_9_DYMUX_20942 : STD_LOGIC; 
  signal proc_reg_IF_instr_9_SRINV_20932 : STD_LOGIC; 
  signal proc_reg_IF_instr_9_CLKINV_20931 : STD_LOGIC; 
  signal proc_reg_ID_instr_11_FFY_RST : STD_LOGIC; 
  signal proc_reg_ID_instr_11_FFX_RST : STD_LOGIC; 
  signal proc_reg_ID_instr_11_DXMUX_21000 : STD_LOGIC; 
  signal proc_reg_ID_instr_11_DYMUX_20984 : STD_LOGIC; 
  signal proc_reg_ID_instr_11_SRINV_20974 : STD_LOGIC; 
  signal proc_reg_ID_instr_11_CLKINV_20973 : STD_LOGIC; 
  signal proc_reg_ID_instr_13_FFY_RST : STD_LOGIC; 
  signal proc_reg_ID_instr_13_FFX_RST : STD_LOGIC; 
  signal proc_reg_ID_instr_13_DXMUX_21042 : STD_LOGIC; 
  signal proc_reg_ID_instr_13_DYMUX_21026 : STD_LOGIC; 
  signal proc_reg_ID_instr_13_SRINV_21016 : STD_LOGIC; 
  signal proc_reg_ID_instr_13_CLKINV_21015 : STD_LOGIC; 
  signal proc_reg_ID_instr_15_DXMUX_21084 : STD_LOGIC; 
  signal proc_reg_ID_instr_15_DYMUX_21068 : STD_LOGIC; 
  signal proc_reg_ID_instr_15_SRINV_21058 : STD_LOGIC; 
  signal proc_reg_ID_instr_15_CLKINV_21057 : STD_LOGIC; 
  signal proc_reg_IF_instr_11_DXMUX_21126 : STD_LOGIC; 
  signal proc_reg_IF_instr_11_DYMUX_21110 : STD_LOGIC; 
  signal proc_reg_IF_instr_11_SRINV_21100 : STD_LOGIC; 
  signal proc_reg_IF_instr_11_CLKINV_21099 : STD_LOGIC; 
  signal proc_reg_IF_instr_13_DXMUX_21168 : STD_LOGIC; 
  signal proc_reg_IF_instr_13_DYMUX_21152 : STD_LOGIC; 
  signal proc_reg_IF_instr_13_SRINV_21142 : STD_LOGIC; 
  signal proc_reg_IF_instr_13_CLKINV_21141 : STD_LOGIC; 
  signal proc_reg_IF_instr_15_DXMUX_21210 : STD_LOGIC; 
  signal proc_reg_IF_instr_15_DYMUX_21194 : STD_LOGIC; 
  signal proc_reg_IF_instr_15_SRINV_21184 : STD_LOGIC; 
  signal proc_reg_IF_instr_15_CLKINV_21183 : STD_LOGIC; 
  signal proc_reg_EX_instr_7_DXMUX_21252 : STD_LOGIC; 
  signal proc_reg_EX_instr_7_DYMUX_21236 : STD_LOGIC; 
  signal proc_reg_EX_instr_7_SRINV_21226 : STD_LOGIC; 
  signal proc_reg_EX_instr_7_CLKINV_21225 : STD_LOGIC; 
  signal proc_reg_EX_instr_9_DXMUX_21294 : STD_LOGIC; 
  signal proc_reg_EX_instr_9_DYMUX_21278 : STD_LOGIC; 
  signal proc_reg_EX_instr_9_SRINV_21268 : STD_LOGIC; 
  signal proc_reg_EX_instr_9_CLKINV_21267 : STD_LOGIC; 
  signal proc_PC_1_DXMUX_21336 : STD_LOGIC; 
  signal proc_PC_1_DYMUX_21322 : STD_LOGIC; 
  signal proc_PC_1_SRINV_21313 : STD_LOGIC; 
  signal proc_PC_1_CLKINVNOT : STD_LOGIC; 
  signal proc_PC_3_DXMUX_21378 : STD_LOGIC; 
  signal proc_PC_3_DYMUX_21364 : STD_LOGIC; 
  signal proc_PC_3_SRINV_21356 : STD_LOGIC; 
  signal proc_PC_3_CLKINVNOT : STD_LOGIC; 
  signal proc_PC_5_DXMUX_21420 : STD_LOGIC; 
  signal proc_PC_5_DYMUX_21406 : STD_LOGIC; 
  signal proc_PC_5_SRINV_21398 : STD_LOGIC; 
  signal proc_PC_5_CLKINVNOT : STD_LOGIC; 
  signal proc_PC_6_F : STD_LOGIC; 
  signal proc_PC_6_DYMUX_21446 : STD_LOGIC; 
  signal proc_PC_6_CLKINVNOT : STD_LOGIC; 
  signal proc_reg_EX_result_11_DYMUX_21478 : STD_LOGIC; 
  signal proc_reg_EX_result_11_CLKINV_21468 : STD_LOGIC; 
  signal proc_reg_EX_result_13_DXMUX_21520 : STD_LOGIC; 
  signal proc_reg_EX_result_13_DYMUX_21505 : STD_LOGIC; 
  signal proc_reg_EX_result_13_SRINV_21496 : STD_LOGIC; 
  signal proc_reg_EX_result_13_CLKINV_21495 : STD_LOGIC; 
  signal proc_reg_EX_result_15_DXMUX_21562 : STD_LOGIC; 
  signal proc_reg_EX_result_15_DYMUX_21547 : STD_LOGIC; 
  signal proc_reg_EX_result_15_SRINV_21538 : STD_LOGIC; 
  signal proc_reg_EX_result_15_CLKINV_21537 : STD_LOGIC; 
  signal proc_reg_EX_instr_11_DXMUX_21604 : STD_LOGIC; 
  signal proc_reg_EX_instr_11_DYMUX_21588 : STD_LOGIC; 
  signal proc_reg_EX_instr_11_SRINV_21578 : STD_LOGIC; 
  signal proc_reg_EX_instr_11_CLKINV_21577 : STD_LOGIC; 
  signal proc_reg_EX_instr_13_DXMUX_21646 : STD_LOGIC; 
  signal proc_reg_EX_instr_13_DYMUX_21630 : STD_LOGIC; 
  signal proc_reg_EX_instr_13_SRINV_21620 : STD_LOGIC; 
  signal proc_reg_EX_instr_13_CLKINV_21619 : STD_LOGIC; 
  signal proc_reg_EX_instr_15_DXMUX_21688 : STD_LOGIC; 
  signal proc_reg_EX_instr_15_DYMUX_21672 : STD_LOGIC; 
  signal proc_reg_EX_instr_15_SRINV_21662 : STD_LOGIC; 
  signal proc_reg_EX_instr_15_CLKINV_21661 : STD_LOGIC; 
  signal proc_reg_EX_result_1_DXMUX_21730 : STD_LOGIC; 
  signal proc_reg_EX_result_1_DYMUX_21715 : STD_LOGIC; 
  signal proc_reg_EX_result_1_SRINV_21706 : STD_LOGIC; 
  signal proc_reg_EX_result_1_CLKINV_21705 : STD_LOGIC; 
  signal proc_reg_EX_result_3_DXMUX_21772 : STD_LOGIC; 
  signal proc_reg_EX_result_3_DYMUX_21757 : STD_LOGIC; 
  signal proc_reg_EX_result_3_SRINV_21748 : STD_LOGIC; 
  signal proc_reg_EX_result_3_CLKINV_21747 : STD_LOGIC; 
  signal proc_reg_EX_result_5_DXMUX_21814 : STD_LOGIC; 
  signal proc_reg_EX_result_5_DYMUX_21799 : STD_LOGIC; 
  signal proc_reg_EX_result_5_SRINV_21790 : STD_LOGIC; 
  signal proc_reg_EX_result_5_CLKINV_21789 : STD_LOGIC; 
  signal proc_reg_EX_result_7_DXMUX_21856 : STD_LOGIC; 
  signal proc_reg_EX_result_7_DYMUX_21841 : STD_LOGIC; 
  signal proc_reg_EX_result_7_SRINV_21832 : STD_LOGIC; 
  signal proc_reg_EX_result_7_CLKINV_21831 : STD_LOGIC; 
  signal proc_reg_EX_result_9_DXMUX_21898 : STD_LOGIC; 
  signal proc_reg_EX_result_9_DYMUX_21883 : STD_LOGIC; 
  signal proc_reg_EX_result_9_SRINV_21874 : STD_LOGIC; 
  signal proc_reg_EX_result_9_CLKINV_21873 : STD_LOGIC; 
  signal proc_reg_ID_data1_11_DXMUX_21940 : STD_LOGIC; 
  signal proc_reg_ID_data1_11_DYMUX_21926 : STD_LOGIC; 
  signal proc_reg_ID_data1_11_SRINV_21918 : STD_LOGIC; 
  signal proc_reg_ID_data1_11_CLKINV_21917 : STD_LOGIC; 
  signal proc_reg_ID_data1_13_DXMUX_21982 : STD_LOGIC; 
  signal proc_reg_ID_data1_13_DYMUX_21968 : STD_LOGIC; 
  signal proc_reg_ID_data1_13_SRINV_21960 : STD_LOGIC; 
  signal proc_reg_ID_data1_13_CLKINV_21959 : STD_LOGIC; 
  signal proc_reg_ID_data1_15_FFY_RST : STD_LOGIC; 
  signal proc_reg_ID_data1_15_FFX_RST : STD_LOGIC; 
  signal proc_reg_ID_data1_15_DXMUX_22024 : STD_LOGIC; 
  signal proc_reg_ID_data1_15_DYMUX_22010 : STD_LOGIC; 
  signal proc_reg_ID_data1_15_SRINV_22002 : STD_LOGIC; 
  signal proc_reg_ID_data1_15_CLKINV_22001 : STD_LOGIC; 
  signal proc_reg_ID_data2_11_FFY_RST : STD_LOGIC; 
  signal proc_reg_ID_data2_11_FFX_RST : STD_LOGIC; 
  signal proc_reg_ID_data2_11_DXMUX_22066 : STD_LOGIC; 
  signal proc_reg_ID_data2_11_DYMUX_22052 : STD_LOGIC; 
  signal proc_reg_ID_data2_11_SRINV_22044 : STD_LOGIC; 
  signal proc_reg_ID_data2_11_CLKINV_22043 : STD_LOGIC; 
  signal proc_reg_ID_data2_13_FFY_RST : STD_LOGIC; 
  signal proc_reg_ID_data2_13_FFX_RST : STD_LOGIC; 
  signal proc_reg_ID_data2_13_DXMUX_22108 : STD_LOGIC; 
  signal proc_reg_ID_data2_13_DYMUX_22094 : STD_LOGIC; 
  signal proc_reg_ID_data2_13_SRINV_22086 : STD_LOGIC; 
  signal proc_reg_ID_data2_13_CLKINV_22085 : STD_LOGIC; 
  signal proc_reg_ID_data2_15_DXMUX_22150 : STD_LOGIC; 
  signal proc_reg_ID_data2_15_DYMUX_22136 : STD_LOGIC; 
  signal proc_reg_ID_data2_15_SRINV_22128 : STD_LOGIC; 
  signal proc_reg_ID_data2_15_CLKINV_22127 : STD_LOGIC; 
  signal proc_reg_ID_data1_1_FFX_RST : STD_LOGIC; 
  signal proc_reg_ID_data1_1_DXMUX_22192 : STD_LOGIC; 
  signal proc_reg_ID_data1_1_DYMUX_22177 : STD_LOGIC; 
  signal proc_reg_ID_data1_1_SRINV_22168 : STD_LOGIC; 
  signal proc_reg_ID_data1_1_CLKINV_22167 : STD_LOGIC; 
  signal proc_reg_ID_data1_3_DXMUX_22234 : STD_LOGIC; 
  signal proc_reg_ID_data1_3_DYMUX_22219 : STD_LOGIC; 
  signal proc_reg_ID_data1_3_SRINV_22210 : STD_LOGIC; 
  signal proc_reg_ID_data1_3_CLKINV_22209 : STD_LOGIC; 
  signal proc_reg_ID_data2_1_DXMUX_22276 : STD_LOGIC; 
  signal proc_reg_ID_data2_1_DYMUX_22262 : STD_LOGIC; 
  signal proc_reg_ID_data2_1_SRINV_22254 : STD_LOGIC; 
  signal proc_reg_ID_data2_1_CLKINV_22253 : STD_LOGIC; 
  signal proc_reg_ID_data1_5_DXMUX_22318 : STD_LOGIC; 
  signal proc_reg_ID_data1_5_DYMUX_22303 : STD_LOGIC; 
  signal proc_reg_ID_data1_5_SRINV_22294 : STD_LOGIC; 
  signal proc_reg_ID_data1_5_CLKINV_22293 : STD_LOGIC; 
  signal proc_reg_ID_data2_3_DXMUX_22360 : STD_LOGIC; 
  signal proc_reg_ID_data2_3_DYMUX_22346 : STD_LOGIC; 
  signal proc_reg_ID_data2_3_SRINV_22338 : STD_LOGIC; 
  signal proc_reg_ID_data2_3_CLKINV_22337 : STD_LOGIC; 
  signal proc_reg_ID_data1_7_DXMUX_22402 : STD_LOGIC; 
  signal proc_reg_ID_data1_7_DYMUX_22388 : STD_LOGIC; 
  signal proc_reg_ID_data1_7_SRINV_22379 : STD_LOGIC; 
  signal proc_reg_ID_data1_7_CLKINV_22378 : STD_LOGIC; 
  signal proc_reg_ID_data1_8_DYMUX_22425 : STD_LOGIC; 
  signal proc_reg_ID_data1_8_CLKINV_22416 : STD_LOGIC; 
  signal proc_reg_ID_data2_7_DXMUX_22467 : STD_LOGIC; 
  signal proc_reg_ID_data2_7_DYMUX_22453 : STD_LOGIC; 
  signal proc_reg_ID_data2_7_SRINV_22445 : STD_LOGIC; 
  signal proc_reg_ID_data2_7_CLKINV_22444 : STD_LOGIC; 
  signal proc_reg_ID_data2_9_DYMUX_22490 : STD_LOGIC; 
  signal proc_reg_ID_data2_9_CLKINV_22481 : STD_LOGIC; 
  signal outport_9_F : STD_LOGIC; 
  signal outport_cmp_eq0000_22533 : STD_LOGIC; 
  signal N191 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal or0000_0_or0000 : STD_LOGIC; 
  signal outport_8_F : STD_LOGIC; 
  signal N302 : STD_LOGIC; 
  signal outport_11_F : STD_LOGIC; 
  signal N317 : STD_LOGIC; 
  signal N2_22734 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal proc_reg_EX_n_flag_DYMUX_22744 : STD_LOGIC; 
  signal proc_reg_EX_n_flag_CLKINV_22741 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal proc_reg_ID_data2_5_DXMUX_22827 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_2_22817 : STD_LOGIC; 
  signal proc_reg_ID_data2_5_CLKINV_22810 : STD_LOGIC; 
  signal proc_reg_ID_data2_4_DXMUX_22862 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_11_2_22852 : STD_LOGIC; 
  signal proc_reg_ID_data2_4_CLKINV_22845 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal proc_reg_EX_z_flag_DYMUX_22900 : STD_LOGIC; 
  signal proc_reg_EX_z_flag_CLKINV_22897 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_15_22928 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_120_22921 : STD_LOGIC; 
  signal rd_index1_or000629_22952 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_134_22945 : STD_LOGIC; 
  signal rd_index1_or0005 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_146_22969 : STD_LOGIC; 
  signal proc_reg_ID_data1_9_DXMUX_23007 : STD_LOGIC; 
  signal N02 : STD_LOGIC; 
  signal proc_reg_ID_data1_9_CLKINV_22991 : STD_LOGIC; 
  signal N322 : STD_LOGIC; 
  signal N268 : STD_LOGIC; 
  signal proc_reg_IF_inport_1_DXMUX_23055 : STD_LOGIC; 
  signal proc_reg_IF_inport_1_DYMUX_23047 : STD_LOGIC; 
  signal proc_reg_IF_inport_1_SRINV_23045 : STD_LOGIC; 
  signal proc_reg_IF_inport_1_CLKINV_23044 : STD_LOGIC; 
  signal proc_reg_IF_inport_3_DXMUX_23079 : STD_LOGIC; 
  signal proc_reg_IF_inport_3_DYMUX_23071 : STD_LOGIC; 
  signal proc_reg_IF_inport_3_SRINV_23069 : STD_LOGIC; 
  signal proc_reg_IF_inport_3_CLKINV_23068 : STD_LOGIC; 
  signal proc_reg_IF_inport_5_DXMUX_23103 : STD_LOGIC; 
  signal proc_reg_IF_inport_5_DYMUX_23095 : STD_LOGIC; 
  signal proc_reg_IF_inport_5_SRINV_23093 : STD_LOGIC; 
  signal proc_reg_IF_inport_5_CLKINV_23092 : STD_LOGIC; 
  signal proc_reg_IF_inport_7_DXMUX_23127 : STD_LOGIC; 
  signal proc_reg_IF_inport_7_DYMUX_23119 : STD_LOGIC; 
  signal proc_reg_IF_inport_7_SRINV_23117 : STD_LOGIC; 
  signal proc_reg_IF_inport_7_CLKINV_23116 : STD_LOGIC; 
  signal proc_reg_IF_inport_9_DXMUX_23151 : STD_LOGIC; 
  signal proc_reg_IF_inport_9_DYMUX_23143 : STD_LOGIC; 
  signal proc_reg_IF_inport_9_SRINV_23141 : STD_LOGIC; 
  signal proc_reg_IF_inport_9_CLKINV_23140 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal rd_index1_or0004_23208 : STD_LOGIC; 
  signal proc_reg_ID_data2_8_FFX_RST : STD_LOGIC; 
  signal proc_reg_ID_data2_8_DXMUX_23246 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal proc_reg_ID_data2_8_CLKINV_23230 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_11_15_23262 : STD_LOGIC; 
  signal N271 : STD_LOGIC; 
  signal in2_and00028_23310 : STD_LOGIC; 
  signal N324 : STD_LOGIC; 
  signal outport_10_F : STD_LOGIC; 
  signal outport_10_G : STD_LOGIC; 
  signal outport_12_F : STD_LOGIC; 
  signal outport_12_G : STD_LOGIC; 
  signal outport_13_F : STD_LOGIC; 
  signal outport_13_G : STD_LOGIC; 
  signal outport_14_F : STD_LOGIC; 
  signal outport_14_G : STD_LOGIC; 
  signal outport_5_F : STD_LOGIC; 
  signal outport_5_G : STD_LOGIC; 
  signal wr_enable_or000134_23454 : STD_LOGIC; 
  signal wr_overflow_or000031_23447 : STD_LOGIC; 
  signal outport_7_F : STD_LOGIC; 
  signal outport_7_G : STD_LOGIC; 
  signal N299 : STD_LOGIC; 
  signal N287 : STD_LOGIC; 
  signal N296 : STD_LOGIC; 
  signal N290 : STD_LOGIC; 
  signal N293 : STD_LOGIC; 
  signal alu_mode_0_15_23746 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal proc_reg_IF_instr_6_DXMUX_23809 : STD_LOGIC; 
  signal branch_trigger : STD_LOGIC; 
  signal proc_reg_IF_instr_6_CLKINV_23791 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal proc_reg_IF_inport_11_DXMUX_23857 : STD_LOGIC; 
  signal proc_reg_IF_inport_11_DYMUX_23849 : STD_LOGIC; 
  signal proc_reg_IF_inport_11_SRINV_23847 : STD_LOGIC; 
  signal proc_reg_IF_inport_11_CLKINV_23846 : STD_LOGIC; 
  signal proc_reg_IF_inport_13_DXMUX_23881 : STD_LOGIC; 
  signal proc_reg_IF_inport_13_DYMUX_23873 : STD_LOGIC; 
  signal proc_reg_IF_inport_13_SRINV_23871 : STD_LOGIC; 
  signal proc_reg_IF_inport_13_CLKINV_23870 : STD_LOGIC; 
  signal proc_reg_IF_inport_15_DXMUX_23905 : STD_LOGIC; 
  signal proc_reg_IF_inport_15_DYMUX_23897 : STD_LOGIC; 
  signal proc_reg_IF_inport_15_SRINV_23895 : STD_LOGIC; 
  signal proc_reg_IF_inport_15_CLKINV_23894 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N1011 : STD_LOGIC; 
  signal rd_index1_or000638_23950 : STD_LOGIC; 
  signal N811 : STD_LOGIC; 
  signal rd_index1_or0006 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_15_24041 : STD_LOGIC; 
  signal in1_and00075_24065 : STD_LOGIC; 
  signal N278 : STD_LOGIC; 
  signal N280 : STD_LOGIC; 
  signal in1_and000312_24101 : STD_LOGIC; 
  signal in1_or000892_24125 : STD_LOGIC; 
  signal in1_and000710_24116 : STD_LOGIC; 
  signal N276 : STD_LOGIC; 
  signal proc_reg_EX_result_10_DXMUX_24168 : STD_LOGIC; 
  signal in1_cmp_eq0008 : STD_LOGIC; 
  signal proc_reg_EX_result_10_CLKINV_24150 : STD_LOGIC; 
  signal rd_index1_or0003 : STD_LOGIC; 
  signal rd_index1_or0007 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_0_6_24244 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_0_0_24237 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_1_6_24268 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_1_0_24261 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_2_6_24292 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_2_0_24285 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_3_6_24316 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_3_0_24309 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_4_6_24340 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_4_0_24333 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_5_6_24364 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_5_0_24357 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_6_6_24388 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_6_0_24381 : STD_LOGIC; 
  signal in2_and000552_24400 : STD_LOGIC; 
  signal in2_and000536_24412 : STD_LOGIC; 
  signal N274 : STD_LOGIC; 
  signal in2_and0005 : STD_LOGIC; 
  signal proc_reg_ID_PC_1_DXMUX_24456 : STD_LOGIC; 
  signal proc_reg_ID_PC_1_DYMUX_24448 : STD_LOGIC; 
  signal proc_reg_ID_PC_1_SRINV_24446 : STD_LOGIC; 
  signal proc_reg_ID_PC_1_CLKINV_24445 : STD_LOGIC; 
  signal proc_reg_ID_PC_3_FFY_RST : STD_LOGIC; 
  signal proc_reg_ID_PC_3_FFX_RST : STD_LOGIC; 
  signal proc_reg_ID_PC_3_DXMUX_24480 : STD_LOGIC; 
  signal proc_reg_ID_PC_3_DYMUX_24472 : STD_LOGIC; 
  signal proc_reg_ID_PC_3_SRINV_24470 : STD_LOGIC; 
  signal proc_reg_ID_PC_3_CLKINV_24469 : STD_LOGIC; 
  signal proc_reg_ID_PC_5_FFY_RST : STD_LOGIC; 
  signal proc_reg_ID_PC_5_FFX_RST : STD_LOGIC; 
  signal proc_reg_ID_PC_5_DXMUX_24504 : STD_LOGIC; 
  signal proc_reg_ID_PC_5_DYMUX_24496 : STD_LOGIC; 
  signal proc_reg_ID_PC_5_SRINV_24494 : STD_LOGIC; 
  signal proc_reg_ID_PC_5_CLKINV_24493 : STD_LOGIC; 
  signal proc_reg_ID_PC_6_FFY_RST : STD_LOGIC; 
  signal proc_reg_ID_PC_6_DYMUX_24518 : STD_LOGIC; 
  signal proc_reg_ID_PC_6_CLKINV_24515 : STD_LOGIC; 
  signal proc_reg_IF_PC_1_FFY_RST : STD_LOGIC; 
  signal proc_reg_IF_PC_1_FFX_RST : STD_LOGIC; 
  signal proc_reg_IF_PC_1_DXMUX_24542 : STD_LOGIC; 
  signal proc_reg_IF_PC_1_DYMUX_24534 : STD_LOGIC; 
  signal proc_reg_IF_PC_1_SRINV_24532 : STD_LOGIC; 
  signal proc_reg_IF_PC_1_CLKINV_24531 : STD_LOGIC; 
  signal proc_reg_IF_PC_3_FFY_RST : STD_LOGIC; 
  signal proc_reg_IF_PC_3_DXMUX_24566 : STD_LOGIC; 
  signal proc_reg_IF_PC_3_DYMUX_24558 : STD_LOGIC; 
  signal proc_reg_IF_PC_3_SRINV_24556 : STD_LOGIC; 
  signal proc_reg_IF_PC_3_CLKINV_24555 : STD_LOGIC; 
  signal proc_reg_IF_PC_5_DXMUX_24590 : STD_LOGIC; 
  signal proc_reg_IF_PC_5_DYMUX_24582 : STD_LOGIC; 
  signal proc_reg_IF_PC_5_SRINV_24580 : STD_LOGIC; 
  signal proc_reg_IF_PC_5_CLKINV_24579 : STD_LOGIC; 
  signal proc_reg_IF_PC_6_DYMUX_24604 : STD_LOGIC; 
  signal proc_reg_IF_PC_6_CLKINV_24601 : STD_LOGIC; 
  signal proc_reg_EX_PC_1_DXMUX_24628 : STD_LOGIC; 
  signal proc_reg_EX_PC_1_DYMUX_24620 : STD_LOGIC; 
  signal proc_reg_EX_PC_1_SRINV_24618 : STD_LOGIC; 
  signal proc_reg_EX_PC_1_CLKINV_24617 : STD_LOGIC; 
  signal proc_reg_EX_PC_3_DXMUX_24652 : STD_LOGIC; 
  signal proc_reg_EX_PC_3_DYMUX_24644 : STD_LOGIC; 
  signal proc_reg_EX_PC_3_SRINV_24642 : STD_LOGIC; 
  signal proc_reg_EX_PC_3_CLKINV_24641 : STD_LOGIC; 
  signal proc_reg_EX_PC_5_DXMUX_24676 : STD_LOGIC; 
  signal proc_reg_EX_PC_5_DYMUX_24668 : STD_LOGIC; 
  signal proc_reg_EX_PC_5_SRINV_24666 : STD_LOGIC; 
  signal proc_reg_EX_PC_5_CLKINV_24665 : STD_LOGIC; 
  signal proc_reg_EX_PC_6_DYMUX_24690 : STD_LOGIC; 
  signal proc_reg_EX_PC_6_CLKINV_24687 : STD_LOGIC; 
  signal proc_reg_EX_overflow_1_FFX_RSTAND_19922 : STD_LOGIC; 
  signal proc_reg_EX_overflow_10_FFX_RSTAND_18909 : STD_LOGIC; 
  signal proc_reg_EX_overflow_11_FFX_RSTAND_18944 : STD_LOGIC; 
  signal proc_reg_EX_overflow_12_FFX_RSTAND_18979 : STD_LOGIC; 
  signal proc_reg_EX_overflow_13_FFX_RSTAND_19014 : STD_LOGIC; 
  signal proc_reg_EX_overflow_14_FFX_RSTAND_19049 : STD_LOGIC; 
  signal proc_reg_EX_overflow_15_FFX_RSTAND_19084 : STD_LOGIC; 
  signal proc_reg_EX_overflow_2_FFX_RSTAND_19957 : STD_LOGIC; 
  signal proc_reg_EX_overflow_3_FFX_RSTAND_19992 : STD_LOGIC; 
  signal proc_reg_EX_overflow_4_FFX_RSTAND_20027 : STD_LOGIC; 
  signal proc_reg_EX_overflow_5_FFX_RSTAND_20062 : STD_LOGIC; 
  signal proc_reg_EX_overflow_6_FFX_RSTAND_20097 : STD_LOGIC; 
  signal proc_reg_EX_overflow_7_FFX_RSTAND_20132 : STD_LOGIC; 
  signal proc_reg_EX_overflow_8_FFX_RSTAND_20167 : STD_LOGIC; 
  signal proc_reg_EX_overflow_9_FFX_RSTAND_20202 : STD_LOGIC; 
  signal proc_PC_6_FFY_RSTAND_21451 : STD_LOGIC; 
  signal proc_reg_EX_result_11_FFY_RSTAND_21483 : STD_LOGIC; 
  signal proc_reg_ID_data1_8_FFY_RSTAND_22430 : STD_LOGIC; 
  signal proc_reg_ID_data2_9_FFY_RSTAND_22495 : STD_LOGIC; 
  signal proc_reg_EX_n_flag_FFY_RSTAND_22749 : STD_LOGIC; 
  signal proc_reg_ID_data2_5_FFX_RSTAND_22832 : STD_LOGIC; 
  signal proc_reg_ID_data2_4_FFX_RSTAND_22867 : STD_LOGIC; 
  signal proc_reg_EX_z_flag_FFY_RSTAND_22905 : STD_LOGIC; 
  signal proc_reg_ID_data1_9_FFX_RSTAND_23012 : STD_LOGIC; 
  signal proc_reg_IF_instr_6_FFX_RSTAND_23814 : STD_LOGIC; 
  signal proc_reg_EX_result_10_FFX_RSTAND_24173 : STD_LOGIC; 
  signal proc_reg_IF_PC_6_FFY_RSTAND_24609 : STD_LOGIC; 
  signal proc_reg_EX_PC_6_FFY_RSTAND_24695 : STD_LOGIC; 
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
  signal in1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal alu_mode : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal reg_ID_instr_mux0001 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal reg_IF_instr_mux0001 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal reg_EX_instr_mux0001 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal PC_next : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal reg_ID_data1_mux0007 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal reg_ID_data2_mux0007 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal rd_index1 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
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
      wr_data(15) => reg_EX_result_15_7242,
      wr_data(14) => reg_EX_result_14_7243,
      wr_data(13) => reg_EX_result_13_7244,
      wr_data(12) => reg_EX_result_12_7245,
      wr_data(11) => reg_EX_result_11_7246,
      wr_data(10) => reg_EX_result_10_7247,
      wr_data(9) => reg_EX_result_9_7248,
      wr_data(8) => reg_EX_result_8_7249,
      wr_data(7) => reg_EX_result_7_7250,
      wr_data(6) => reg_EX_result_6_7251,
      wr_data(5) => reg_EX_result_5_7252,
      wr_data(4) => reg_EX_result_4_7253,
      wr_data(3) => reg_EX_result_3_7254,
      wr_data(2) => reg_EX_result_2_7255,
      wr_data(1) => reg_EX_result_1_7256,
      wr_data(0) => reg_EX_result_0_7257,
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
      LOC => "IPAD78",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(0),
      O => inport_0_INBUF
    );
  inport_1_IBUF : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(1),
      O => inport_1_INBUF
    );
  inport_2_IBUF : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(2),
      O => inport_2_INBUF
    );
  inport_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD75",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(3),
      O => inport_3_INBUF
    );
  inport_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD74",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(4),
      O => inport_4_INBUF
    );
  inport_5_IBUF : X_BUF
    generic map(
      LOC => "PAD73",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(5),
      O => inport_5_INBUF
    );
  inport_6_IBUF : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(6),
      O => inport_6_INBUF
    );
  inport_7_IBUF : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(7),
      O => inport_7_INBUF
    );
  inport_8_IBUF : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(8),
      O => inport_8_INBUF
    );
  inport_9_IBUF : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(9),
      O => inport_9_INBUF
    );
  inport_10_IBUF : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(10),
      O => inport_10_INBUF
    );
  inport_11_IBUF : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(11),
      O => inport_11_INBUF
    );
  inport_12_IBUF : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(12),
      O => inport_12_INBUF
    );
  inport_13_IBUF : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(13),
      O => inport_13_INBUF
    );
  inport_14_IBUF : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(14),
      O => inport_14_INBUF
    );
  inport_15_IBUF : X_BUF
    generic map(
      LOC => "IPAD53",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(15),
      O => inport_15_INBUF
    );
  proc_ram_addr_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X70Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_10_F5MUX_17974,
      O => ram_addr(10)
    );
  proc_ram_addr_10_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X70Y50"
    )
    port map (
      IA => N392,
      IB => N393,
      SEL => proc_ram_addr_10_BXINV_17967,
      O => proc_ram_addr_10_F5MUX_17974
    );
  proc_ram_addr_10_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X70Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7378,
      O => proc_ram_addr_10_BXINV_17967
    );
  ram_addr_11_1_G : X_LUT4
    generic map(
      INIT => X"A808",
      LOC => "SLICE_X76Y55"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => N254_0,
      ADR2 => in1_and0003_0,
      ADR3 => reg_EX_overflow_11_7385,
      O => N391
    );
  proc_ram_addr_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_11_F5MUX_17999,
      O => ram_addr(11)
    );
  proc_ram_addr_11_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X76Y55"
    )
    port map (
      IA => N390,
      IB => N391,
      SEL => proc_ram_addr_11_BXINV_17992,
      O => proc_ram_addr_11_F5MUX_17999
    );
  proc_ram_addr_11_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7378,
      O => proc_ram_addr_11_BXINV_17992
    );
  ram_addr_11_1_F : X_LUT4
    generic map(
      INIT => X"A820",
      LOC => "SLICE_X76Y55"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => in2_and0002_0,
      ADR2 => N230,
      ADR3 => reg_EX_overflow_11_7385,
      O => N390
    );
  in1_and0008_SW3_G : X_LUT4
    generic map(
      INIT => X"FDFE",
      LOC => "SLICE_X64Y40"
    )
    port map (
      ADR0 => reg_ID_instr_0_7389,
      ADR1 => reg_ID_instr_9_7378,
      ADR2 => reg_ID_instr_10_7391,
      ADR3 => reg_EX_instr_6_7390,
      O => N395
    );
  proc_N284_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_N284_F5MUX_18024,
      O => N284
    );
  proc_N284_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X64Y40"
    )
    port map (
      IA => N394,
      IB => N395,
      SEL => proc_N284_BXINV_18017,
      O => proc_N284_F5MUX_18024
    );
  proc_N284_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_11_7388,
      O => proc_N284_BXINV_18017
    );
  in1_and0008_SW3_F : X_LUT4
    generic map(
      INIT => X"37CD",
      LOC => "SLICE_X64Y40"
    )
    port map (
      ADR0 => reg_ID_instr_9_7378,
      ADR1 => reg_ID_instr_0_7389,
      ADR2 => reg_ID_instr_10_7391,
      ADR3 => reg_EX_instr_6_7390,
      O => N394
    );
  in2_0_G : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X77Y49"
    )
    port map (
      ADR0 => reg_EX_result_0_7257,
      ADR1 => in2_and0002_0,
      ADR2 => reg_EX_overflow_0_7394,
      ADR3 => VCC,
      O => N453
    );
  proc_in2_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_0_F5MUX_18049,
      O => in2(0)
    );
  proc_in2_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X77Y49"
    )
    port map (
      IA => N452,
      IB => N453,
      SEL => proc_in2_0_BXINV_18041,
      O => proc_in2_0_F5MUX_18049
    );
  proc_in2_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005_0,
      O => proc_in2_0_BXINV_18041
    );
  in2_0_F : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X77Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in2_and0002_0,
      ADR2 => reg_EX_overflow_0_7394,
      ADR3 => reg_ID_data2_0_7395,
      O => N452
    );
  in2_1_G : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X79Y33"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_1_7396,
      ADR3 => reg_EX_result_1_7256,
      O => N455
    );
  proc_in2_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_1_F5MUX_18074,
      O => in2(1)
    );
  proc_in2_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X79Y33"
    )
    port map (
      IA => N454,
      IB => N455,
      SEL => proc_in2_1_BXINV_18066,
      O => proc_in2_1_F5MUX_18074
    );
  proc_in2_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005_0,
      O => proc_in2_1_BXINV_18066
    );
  in2_1_F : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X79Y33"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_1_7396,
      ADR3 => reg_ID_data2_1_7397,
      O => N454
    );
  in2_2_G : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X76Y47"
    )
    port map (
      ADR0 => reg_EX_result_2_7255,
      ADR1 => reg_EX_overflow_2_7398,
      ADR2 => VCC,
      ADR3 => in2_and0002_0,
      O => N459
    );
  proc_in2_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_2_F5MUX_18099,
      O => in2(2)
    );
  proc_in2_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X76Y47"
    )
    port map (
      IA => N458,
      IB => N459,
      SEL => proc_in2_2_BXINV_18091,
      O => proc_in2_2_F5MUX_18099
    );
  proc_in2_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005_0,
      O => proc_in2_2_BXINV_18091
    );
  in2_2_F : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X76Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_2_7398,
      ADR2 => reg_ID_data2_2_7399,
      ADR3 => in2_and0002_0,
      O => N458
    );
  in2_3_G : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X75Y41"
    )
    port map (
      ADR0 => reg_EX_overflow_3_7400,
      ADR1 => reg_EX_result_3_7254,
      ADR2 => VCC,
      ADR3 => in2_and0002_0,
      O => N457
    );
  proc_in2_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X75Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_3_F5MUX_18124,
      O => in2(3)
    );
  proc_in2_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X75Y41"
    )
    port map (
      IA => N456,
      IB => N457,
      SEL => proc_in2_3_BXINV_18116,
      O => proc_in2_3_F5MUX_18124
    );
  proc_in2_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X75Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005_0,
      O => proc_in2_3_BXINV_18116
    );
  in2_3_F : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X75Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_3_7400,
      ADR2 => reg_ID_data2_3_7401,
      ADR3 => in2_and0002_0,
      O => N456
    );
  in2_4_G : X_LUT4
    generic map(
      INIT => X"CFC5",
      LOC => "SLICE_X62Y47"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => reg_EX_overflow_4_7404,
      ADR2 => in2_and0002_0,
      ADR3 => N314_0,
      O => N447
    );
  proc_in2_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X62Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_4_F5MUX_18149,
      O => in2(4)
    );
  proc_in2_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X62Y47"
    )
    port map (
      IA => N446,
      IB => N447,
      SEL => proc_in2_4_BXINV_18142,
      O => proc_in2_4_F5MUX_18149
    );
  proc_in2_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N313,
      O => proc_in2_4_BXINV_18142
    );
  in2_4_F : X_LUT4
    generic map(
      INIT => X"CAC0",
      LOC => "SLICE_X62Y47"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => reg_EX_overflow_4_7404,
      ADR2 => in2_and0002_0,
      ADR3 => N314_0,
      O => N446
    );
  in2_5_G : X_LUT4
    generic map(
      INIT => X"F3D1",
      LOC => "SLICE_X67Y56"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => in2_and0002_0,
      ADR2 => reg_EX_overflow_5_7407,
      ADR3 => N311_0,
      O => N445
    );
  proc_in2_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_5_F5MUX_18174,
      O => in2(5)
    );
  proc_in2_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y56"
    )
    port map (
      IA => N444,
      IB => N445,
      SEL => proc_in2_5_BXINV_18167,
      O => proc_in2_5_F5MUX_18174
    );
  proc_in2_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N310,
      O => proc_in2_5_BXINV_18167
    );
  in2_5_F : X_LUT4
    generic map(
      INIT => X"E2C0",
      LOC => "SLICE_X67Y56"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => in2_and0002_0,
      ADR2 => reg_EX_overflow_5_7407,
      ADR3 => N311_0,
      O => N444
    );
  in2_6_G : X_LUT4
    generic map(
      INIT => X"AAF3",
      LOC => "SLICE_X64Y50"
    )
    port map (
      ADR0 => reg_EX_overflow_6_7410,
      ADR1 => in2_and000552_0,
      ADR2 => N308_0,
      ADR3 => in2_and0002_0,
      O => N443
    );
  proc_in2_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_6_F5MUX_18199,
      O => in2(6)
    );
  proc_in2_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X64Y50"
    )
    port map (
      IA => N442,
      IB => N443,
      SEL => proc_in2_6_BXINV_18192,
      O => proc_in2_6_F5MUX_18199
    );
  proc_in2_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N307,
      O => proc_in2_6_BXINV_18192
    );
  in2_6_F : X_LUT4
    generic map(
      INIT => X"AAC0",
      LOC => "SLICE_X64Y50"
    )
    port map (
      ADR0 => reg_EX_overflow_6_7410,
      ADR1 => in2_and000552_0,
      ADR2 => N308_0,
      ADR3 => in2_and0002_0,
      O => N442
    );
  in2_7_G : X_LUT4
    generic map(
      INIT => X"FD31",
      LOC => "SLICE_X67Y53"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => in2_and0002_0,
      ADR2 => N305_0,
      ADR3 => reg_EX_overflow_7_7413,
      O => N441
    );
  proc_in2_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_7_F5MUX_18224,
      O => in2(7)
    );
  proc_in2_7_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y53"
    )
    port map (
      IA => N440,
      IB => N441,
      SEL => proc_in2_7_BXINV_18217,
      O => proc_in2_7_F5MUX_18224
    );
  proc_in2_7_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N304,
      O => proc_in2_7_BXINV_18217
    );
  in2_7_F : X_LUT4
    generic map(
      INIT => X"EC20",
      LOC => "SLICE_X67Y53"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => in2_and0002_0,
      ADR2 => N305_0,
      ADR3 => reg_EX_overflow_7_7413,
      O => N440
    );
  in2_8_G : X_LUT4
    generic map(
      INIT => X"DD8D",
      LOC => "SLICE_X75Y50"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => reg_EX_overflow_8_7416,
      ADR2 => in2_and000552_0,
      ADR3 => N302_0,
      O => N439
    );
  proc_in2_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X75Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_8_F5MUX_18249,
      O => in2(8)
    );
  proc_in2_8_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X75Y50"
    )
    port map (
      IA => N438,
      IB => N439,
      SEL => proc_in2_8_BXINV_18242,
      O => proc_in2_8_F5MUX_18249
    );
  proc_in2_8_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X75Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N301,
      O => proc_in2_8_BXINV_18242
    );
  in2_8_F : X_LUT4
    generic map(
      INIT => X"E4A0",
      LOC => "SLICE_X75Y50"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => N302_0,
      ADR2 => reg_EX_overflow_8_7416,
      ADR3 => in2_and000552_0,
      O => N438
    );
  in2_9_G : X_LUT4
    generic map(
      INIT => X"AFA3",
      LOC => "SLICE_X73Y48"
    )
    port map (
      ADR0 => reg_EX_overflow_9_7419,
      ADR1 => in2_and000552_0,
      ADR2 => in2_and0002_0,
      ADR3 => N299_0,
      O => N437
    );
  proc_in2_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X73Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_9_F5MUX_18274,
      O => in2(9)
    );
  proc_in2_9_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X73Y48"
    )
    port map (
      IA => N436,
      IB => N437,
      SEL => proc_in2_9_BXINV_18267,
      O => proc_in2_9_F5MUX_18274
    );
  proc_in2_9_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X73Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N298,
      O => proc_in2_9_BXINV_18267
    );
  in2_9_F : X_LUT4
    generic map(
      INIT => X"ACA0",
      LOC => "SLICE_X73Y48"
    )
    port map (
      ADR0 => reg_EX_overflow_9_7419,
      ADR1 => in2_and000552_0,
      ADR2 => in2_and0002_0,
      ADR3 => N299_0,
      O => N436
    );
  proc_N230_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_N230_F5MUX_18299,
      O => N230
    );
  proc_N230_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X65Y48"
    )
    port map (
      IA => N464,
      IB => N465,
      SEL => proc_N230_BXINV_18291,
      O => proc_N230_F5MUX_18299
    );
  proc_N230_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_0,
      O => proc_N230_BXINV_18291
    );
  proc_ram_addr_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_0_F5MUX_18324,
      O => ram_addr(0)
    );
  proc_ram_addr_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X77Y62"
    )
    port map (
      IA => N426,
      IB => N427,
      SEL => proc_ram_addr_0_BXINV_18317,
      O => proc_ram_addr_0_F5MUX_18324
    );
  proc_ram_addr_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7378,
      O => proc_ram_addr_0_BXINV_18317
    );
  ram_addr_1_1_G : X_LUT4
    generic map(
      INIT => X"A280",
      LOC => "SLICE_X77Y60"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => in1_and0003_0,
      ADR2 => reg_EX_overflow_1_7396,
      ADR3 => N246_0,
      O => N425
    );
  proc_ram_addr_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_1_F5MUX_18349,
      O => ram_addr(1)
    );
  proc_ram_addr_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X77Y60"
    )
    port map (
      IA => N424,
      IB => N425,
      SEL => proc_ram_addr_1_BXINV_18342,
      O => proc_ram_addr_1_F5MUX_18349
    );
  proc_ram_addr_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7378,
      O => proc_ram_addr_1_BXINV_18342
    );
  ram_addr_1_1_F : X_LUT4
    generic map(
      INIT => X"C840",
      LOC => "SLICE_X77Y60"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => ram_addr_and0000_0,
      ADR2 => N278_0,
      ADR3 => reg_EX_overflow_1_7396,
      O => N424
    );
  proc_ram_addr_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_2_F5MUX_18374,
      O => ram_addr(2)
    );
  proc_ram_addr_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X78Y61"
    )
    port map (
      IA => N422,
      IB => N423,
      SEL => proc_ram_addr_2_BXINV_18367,
      O => proc_ram_addr_2_F5MUX_18374
    );
  proc_ram_addr_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7378,
      O => proc_ram_addr_2_BXINV_18367
    );
  ram_addr_2_1_G : X_LUT4
    generic map(
      INIT => X"8C80",
      LOC => "SLICE_X78Y61"
    )
    port map (
      ADR0 => reg_EX_overflow_2_7398,
      ADR1 => ram_addr_and0000_0,
      ADR2 => in1_and0003_0,
      ADR3 => N244_0,
      O => N423
    );
  proc_ram_addr_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_3_F5MUX_18399,
      O => ram_addr(3)
    );
  proc_ram_addr_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X76Y51"
    )
    port map (
      IA => N420,
      IB => N421,
      SEL => proc_ram_addr_3_BXINV_18392,
      O => proc_ram_addr_3_F5MUX_18399
    );
  proc_ram_addr_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7378,
      O => proc_ram_addr_3_BXINV_18392
    );
  proc_ram_addr_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_4_F5MUX_18424,
      O => ram_addr(4)
    );
  proc_ram_addr_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X66Y53"
    )
    port map (
      IA => N388,
      IB => N389,
      SEL => proc_ram_addr_4_BXINV_18417,
      O => proc_ram_addr_4_F5MUX_18424
    );
  proc_ram_addr_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7378,
      O => proc_ram_addr_4_BXINV_18417
    );
  proc_ram_addr_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_5_F5MUX_18449,
      O => ram_addr(5)
    );
  proc_ram_addr_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X76Y54"
    )
    port map (
      IA => N386,
      IB => N387,
      SEL => proc_ram_addr_5_BXINV_18442,
      O => proc_ram_addr_5_F5MUX_18449
    );
  proc_ram_addr_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7378,
      O => proc_ram_addr_5_BXINV_18442
    );
  proc_ram_addr_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_6_F5MUX_18474,
      O => ram_addr(6)
    );
  proc_ram_addr_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X77Y59"
    )
    port map (
      IA => N384,
      IB => N385,
      SEL => proc_ram_addr_6_BXINV_18467,
      O => proc_ram_addr_6_F5MUX_18474
    );
  proc_ram_addr_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7378,
      O => proc_ram_addr_6_BXINV_18467
    );
  proc_ram_addr_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_7_F5MUX_18499,
      O => ram_addr(7)
    );
  proc_ram_addr_7_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X77Y56"
    )
    port map (
      IA => N382,
      IB => N383,
      SEL => proc_ram_addr_7_BXINV_18492,
      O => proc_ram_addr_7_F5MUX_18499
    );
  proc_ram_addr_7_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7378,
      O => proc_ram_addr_7_BXINV_18492
    );
  proc_ram_addr_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_8_F5MUX_18524,
      O => ram_addr(8)
    );
  proc_ram_addr_8_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X77Y57"
    )
    port map (
      IA => N380,
      IB => N381,
      SEL => proc_ram_addr_8_BXINV_18517,
      O => proc_ram_addr_8_F5MUX_18524
    );
  proc_ram_addr_8_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7378,
      O => proc_ram_addr_8_BXINV_18517
    );
  proc_ram_addr_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X71Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_ram_addr_9_F5MUX_18549,
      O => ram_addr(9)
    );
  proc_ram_addr_9_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X71Y51"
    )
    port map (
      IA => N378,
      IB => N379,
      SEL => proc_ram_addr_9_BXINV_18542,
      O => proc_ram_addr_9_F5MUX_18549
    );
  proc_ram_addr_9_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X71Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7378,
      O => proc_ram_addr_9_BXINV_18542
    );
  proc_in2_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X71Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_10_F5MUX_18574,
      O => in2(10)
    );
  proc_in2_10_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X71Y47"
    )
    port map (
      IA => N450,
      IB => N451,
      SEL => proc_in2_10_BXINV_18567,
      O => proc_in2_10_F5MUX_18574
    );
  proc_in2_10_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X71Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N319,
      O => proc_in2_10_BXINV_18567
    );
  proc_in2_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_11_F5MUX_18599,
      O => in2(11)
    );
  proc_in2_11_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X77Y48"
    )
    port map (
      IA => N448,
      IB => N449,
      SEL => proc_in2_11_BXINV_18592,
      O => proc_in2_11_F5MUX_18599
    );
  proc_in2_11_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N316,
      O => proc_in2_11_BXINV_18592
    );
  proc_in2_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_12_F5MUX_18624,
      O => in2(12)
    );
  proc_in2_12_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X78Y42"
    )
    port map (
      IA => N434,
      IB => N435,
      SEL => proc_in2_12_BXINV_18617,
      O => proc_in2_12_F5MUX_18624
    );
  proc_in2_12_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => N295,
      O => proc_in2_12_BXINV_18617
    );
  proc_in2_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_13_F5MUX_18649,
      O => in2(13)
    );
  proc_in2_13_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X76Y45"
    )
    port map (
      IA => N432,
      IB => N433,
      SEL => proc_in2_13_BXINV_18642,
      O => proc_in2_13_F5MUX_18649
    );
  proc_in2_13_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => N292,
      O => proc_in2_13_BXINV_18642
    );
  proc_in2_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X72Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_14_F5MUX_18674,
      O => in2(14)
    );
  proc_in2_14_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X72Y43"
    )
    port map (
      IA => N430,
      IB => N431,
      SEL => proc_in2_14_BXINV_18667,
      O => proc_in2_14_F5MUX_18674
    );
  proc_in2_14_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X72Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => N289,
      O => proc_in2_14_BXINV_18667
    );
  proc_in2_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X71Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_in2_15_F5MUX_18699,
      O => in2(15)
    );
  proc_in2_15_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X71Y49"
    )
    port map (
      IA => N428,
      IB => N429,
      SEL => proc_in2_15_BXINV_18692,
      O => proc_in2_15_F5MUX_18699
    );
  proc_in2_15_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X71Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N286,
      O => proc_in2_15_BXINV_18692
    );
  proc_N304_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_N304_F5MUX_18724,
      O => N304
    );
  proc_N304_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X66Y55"
    )
    port map (
      IA => reg_ID_data2_7_rt_18715,
      IB => in2_and000578_SW121,
      SEL => proc_N304_BXINV_18717,
      O => proc_N304_F5MUX_18724
    );
  proc_N304_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable_0,
      O => proc_N304_BXINV_18717
    );
  proc_N319_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X63Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_N319_F5MUX_18749,
      O => N319
    );
  proc_N319_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X63Y44"
    )
    port map (
      IA => reg_ID_data2_10_rt_18740,
      IB => in2_and000578_SW221,
      SEL => proc_N319_BXINV_18742,
      O => proc_N319_F5MUX_18749
    );
  proc_N319_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X63Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable_0,
      O => proc_N319_BXINV_18742
    );
  proc_N307_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_N307_F5MUX_18774,
      O => N307
    );
  proc_N307_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X64Y56"
    )
    port map (
      IA => reg_ID_data2_6_rt_18765,
      IB => in2_and000578_SW141,
      SEL => proc_N307_BXINV_18767,
      O => proc_N307_F5MUX_18774
    );
  proc_N307_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable_0,
      O => proc_N307_BXINV_18767
    );
  proc_N310_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_N310_F5MUX_18799,
      O => N310
    );
  proc_N310_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X66Y57"
    )
    port map (
      IA => reg_ID_data2_5_rt_18790,
      IB => in2_and000578_SW161,
      SEL => proc_N310_BXINV_18792,
      O => proc_N310_F5MUX_18799
    );
  proc_N310_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable_0,
      O => proc_N310_BXINV_18792
    );
  proc_N313_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X62Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_N313_F5MUX_18824,
      O => N313
    );
  proc_N313_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X62Y44"
    )
    port map (
      IA => reg_ID_data2_4_rt_18815,
      IB => in2_and000578_SW181,
      SEL => proc_N313_BXINV_18817,
      O => proc_N313_F5MUX_18824
    );
  proc_N313_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable_0,
      O => proc_N313_BXINV_18817
    );
  proc_N220_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_N220_F5MUX_18849,
      O => N220
    );
  proc_N220_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y54"
    )
    port map (
      IA => N462,
      IB => N463,
      SEL => proc_N220_BXINV_18841,
      O => proc_N220_F5MUX_18849
    );
  proc_N220_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_0,
      O => proc_N220_BXINV_18841
    );
  proc_N218_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X68Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_N218_F5MUX_18874,
      O => N218
    );
  proc_N218_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X68Y48"
    )
    port map (
      IA => N460,
      IB => N461,
      SEL => proc_N218_BXINV_18866,
      O => proc_N218_F5MUX_18874
    );
  proc_N218_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X68Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_0,
      O => proc_N218_BXINV_18866
    );
  proc_reg_EX_overflow_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X69Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(10),
      O => proc_reg_EX_overflow_10_DXMUX_18904
    );
  proc_reg_EX_overflow_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X69Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_10_SW2_O,
      O => reg_EX_overflow_mux0001_10_SW2_O_0
    );
  proc_reg_EX_overflow_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X69Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_10_CLKINV_18886
    );
  proc_reg_EX_overflow_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(11),
      O => proc_reg_EX_overflow_11_DXMUX_18939
    );
  proc_reg_EX_overflow_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_11_SW2_O,
      O => reg_EX_overflow_mux0001_11_SW2_O_0
    );
  proc_reg_EX_overflow_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_11_CLKINV_18921
    );
  proc_reg_EX_overflow_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(12),
      O => proc_reg_EX_overflow_12_DXMUX_18974
    );
  proc_reg_EX_overflow_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_12_SW0_O,
      O => reg_EX_overflow_mux0001_12_SW0_O_0
    );
  proc_reg_EX_overflow_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_12_CLKINV_18956
    );
  proc_reg_EX_overflow_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X68Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(13),
      O => proc_reg_EX_overflow_13_DXMUX_19009
    );
  proc_reg_EX_overflow_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X68Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_13_SW0_O,
      O => reg_EX_overflow_mux0001_13_SW0_O_0
    );
  proc_reg_EX_overflow_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X68Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_13_CLKINV_18991
    );
  proc_reg_EX_overflow_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X69Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(14),
      O => proc_reg_EX_overflow_14_DXMUX_19044
    );
  proc_reg_EX_overflow_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X69Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_14_SW0_O,
      O => reg_EX_overflow_mux0001_14_SW0_O_0
    );
  proc_reg_EX_overflow_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X69Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_14_CLKINV_19026
    );
  proc_reg_EX_overflow_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(15),
      O => proc_reg_EX_overflow_15_DXMUX_19079
    );
  proc_reg_EX_overflow_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_15_SW0_O,
      O => reg_EX_overflow_mux0001_15_SW0_O_0
    );
  proc_reg_EX_overflow_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_15_CLKINV_19061
    );
  proc_wr_index_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_index(0),
      O => wr_index_0_0
    );
  proc_wr_index_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => branch_trigger_cmp_eq0001,
      O => branch_trigger_cmp_eq0001_0
    );
  proc_ram_addr_and0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_and0000,
      O => ram_addr_and0000_0
    );
  proc_ram_addr_and0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N13,
      O => N13_0
    );
  proc_N286_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000578_SW0_G_O,
      O => in2_and000578_SW0_G_O_0
    );
  proc_N289_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X73Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000578_SW2_G_O,
      O => in2_and000578_SW2_G_O_0
    );
  proc_N292_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000578_SW4_G_O,
      O => in2_and000578_SW4_G_O_0
    );
  proc_N295_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000578_SW6_G_O,
      O => in2_and000578_SW6_G_O_0
    );
  proc_N298_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N405,
      O => N405_0
    );
  proc_in1_or0003_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or0003_19275,
      O => in1_or0003_0
    );
  proc_in1_or0003_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or0003_SW0_O,
      O => in1_or0003_SW0_O_0
    );
  proc_in1_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(0),
      O => in1_0_0
    );
  proc_in1_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => N248,
      O => N248_0
    );
  proc_in1_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(1),
      O => in1_1_0
    );
  proc_in1_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => N246,
      O => N246_0
    );
  proc_in1_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(2),
      O => in1_2_0
    );
  proc_in1_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => N244,
      O => N244_0
    );
  proc_in1_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X70Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(3),
      O => in1_3_0
    );
  proc_in1_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X70Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N242,
      O => N242_0
    );
  proc_in1_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(4),
      O => in1_4_0
    );
  proc_in1_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N240,
      O => N240_0
    );
  proc_in1_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(5),
      O => in1_5_0
    );
  proc_in1_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => N238,
      O => N238_0
    );
  proc_in1_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(6),
      O => in1_6_0
    );
  proc_in1_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => N236,
      O => N236_0
    );
  proc_in1_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(7),
      O => in1_7_0
    );
  proc_in1_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N234,
      O => N234_0
    );
  proc_in1_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(8),
      O => in1_8_0
    );
  proc_in1_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N252,
      O => N252_0
    );
  proc_in1_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X69Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(9),
      O => in1_9_0
    );
  proc_in1_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X69Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N250,
      O => N250_0
    );
  proc_N301_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N407,
      O => N407_0
    );
  proc_N316_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N417,
      O => N417_0
    );
  proc_in1_and0008_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and0008_19587,
      O => in1_and0008_0
    );
  proc_in1_and0008_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => N88,
      O => N88_0
    );
  proc_wr_overflow_or000017_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_or000017_19611,
      O => wr_overflow_or000017_0
    );
  proc_wr_overflow_or000017_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable_or000181,
      O => wr_enable_or000181_0
    );
  proc_wr_overflow_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow,
      O => wr_overflow_0
    );
  proc_wr_overflow_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_or000034_SW0_O,
      O => wr_overflow_or000034_SW0_O_0
    );
  wr_overflow_or000044 : X_LUT4
    generic map(
      INIT => X"EEEA",
      LOC => "SLICE_X58Y59"
    )
    port map (
      ADR0 => branch_trigger_cmp_eq0001_0,
      ADR1 => wr_overflow_or000031_0,
      ADR2 => wr_overflow_or000034_SW0_O_0,
      ADR3 => wr_overflow_or000017_0,
      O => wr_overflow
    );
  in2_10_SW2 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X63Y47"
    )
    port map (
      ADR0 => N320_0,
      ADR1 => in2_and000552_0,
      ADR2 => VCC,
      ADR3 => N319,
      O => N232
    );
  proc_N232_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X63Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N232,
      O => N232_0
    );
  proc_N232_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X63Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N320,
      O => N320_0
    );
  in2_and000578_SW23 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X63Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_10_7247,
      ADR2 => wr_enable_0,
      ADR3 => reg_ID_data2_10_7462,
      O => N320
    );
  in1_10_Q : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X68Y50"
    )
    port map (
      ADR0 => reg_EX_overflow_10_7379,
      ADR1 => VCC,
      ADR2 => in1_and0003_0,
      ADR3 => N256_0,
      O => in1(10)
    );
  proc_in1_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X68Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(10),
      O => in1_10_0
    );
  proc_in1_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X68Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N256,
      O => N256_0
    );
  in1_10_SW2 : X_LUT4
    generic map(
      INIT => X"E2AA",
      LOC => "SLICE_X68Y50"
    )
    port map (
      ADR0 => reg_ID_data1_10_7526,
      ADR1 => wr_enable_0,
      ADR2 => reg_EX_result_10_7247,
      ADR3 => in1_and0007101_0,
      O => N256
    );
  in1_11_Q : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X77Y54"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => VCC,
      ADR2 => N254_0,
      ADR3 => reg_EX_overflow_11_7385,
      O => in1(11)
    );
  proc_in1_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(11),
      O => in1_11_0
    );
  proc_in1_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N254,
      O => N254_0
    );
  in1_11_SW2 : X_LUT4
    generic map(
      INIT => X"EA2A",
      LOC => "SLICE_X77Y54"
    )
    port map (
      ADR0 => reg_ID_data1_11_7527,
      ADR1 => in1_and0007101_0,
      ADR2 => wr_enable_0,
      ADR3 => reg_EX_result_11_7246,
      O => N254
    );
  in1_12_Q : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X64Y68"
    )
    port map (
      ADR0 => reg_EX_overflow_12_7449,
      ADR1 => in1_and0003_0,
      ADR2 => VCC,
      ADR3 => in1_12_SW2_O_0,
      O => in1(12)
    );
  proc_in1_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(12),
      O => in1_12_0
    );
  proc_in1_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_12_SW2_O,
      O => in1_12_SW2_O_0
    );
  in1_12_SW2 : X_LUT4
    generic map(
      INIT => X"EC4C",
      LOC => "SLICE_X64Y68"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_ID_data1_12_7529,
      ADR2 => in1_and0007101_0,
      ADR3 => reg_EX_result_12_7245,
      O => in1_12_SW2_O
    );
  in1_13_Q : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X69Y68"
    )
    port map (
      ADR0 => reg_EX_overflow_13_7452,
      ADR1 => VCC,
      ADR2 => in1_13_SW2_O_0,
      ADR3 => in1_and0003_0,
      O => in1(13)
    );
  proc_in1_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X69Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(13),
      O => in1_13_0
    );
  proc_in1_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X69Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_13_SW2_O,
      O => in1_13_SW2_O_0
    );
  in1_13_SW2 : X_LUT4
    generic map(
      INIT => X"F870",
      LOC => "SLICE_X69Y68"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => in1_and0007101_0,
      ADR2 => reg_ID_data1_13_7531,
      ADR3 => reg_EX_result_13_7244,
      O => in1_13_SW2_O
    );
  in1_14_Q : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X64Y63"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => reg_EX_overflow_14_7455,
      ADR2 => in1_14_SW2_O_0,
      ADR3 => VCC,
      O => in1(14)
    );
  proc_in1_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(14),
      O => in1_14_0
    );
  proc_in1_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_14_SW2_O,
      O => in1_14_SW2_O_0
    );
  in1_14_SW2 : X_LUT4
    generic map(
      INIT => X"E2AA",
      LOC => "SLICE_X64Y63"
    )
    port map (
      ADR0 => reg_ID_data1_14_7533,
      ADR1 => wr_enable_0,
      ADR2 => reg_EX_result_14_7243,
      ADR3 => in1_and0007101_0,
      O => in1_14_SW2_O
    );
  in1_15_Q : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X64Y66"
    )
    port map (
      ADR0 => reg_EX_overflow_15_7458,
      ADR1 => VCC,
      ADR2 => in1_and0003_0,
      ADR3 => in1_15_SW2_O_0,
      O => in1(15)
    );
  proc_in1_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(15),
      O => in1_15_0
    );
  proc_in1_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_15_SW2_O,
      O => in1_15_SW2_O_0
    );
  in1_15_SW2 : X_LUT4
    generic map(
      INIT => X"EA2A",
      LOC => "SLICE_X64Y66"
    )
    port map (
      ADR0 => reg_ID_data1_15_7535,
      ADR1 => in1_and0007101_0,
      ADR2 => wr_enable_0,
      ADR3 => reg_EX_result_15_7242,
      O => in1_15_SW2_O
    );
  alu_mode_0_37 : X_LUT4
    generic map(
      INIT => X"FECC",
      LOC => "SLICE_X67Y44"
    )
    port map (
      ADR0 => alu_mode_0_15_0,
      ADR1 => N15_0,
      ADR2 => alu_mode_0_4_O_0,
      ADR3 => N102_0,
      O => alu_mode(0)
    );
  proc_alu_mode_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode(0),
      O => alu_mode_0_0
    );
  proc_alu_mode_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode_0_4_O,
      O => alu_mode_0_4_O_0
    );
  alu_mode_0_4 : X_LUT4
    generic map(
      INIT => X"5454",
      LOC => "SLICE_X67Y44"
    )
    port map (
      ADR0 => reg_ID_instr_13_7491,
      ADR1 => reg_ID_instr_9_7378,
      ADR2 => reg_ID_instr_15_7490,
      ADR3 => VCC,
      O => alu_mode_0_4_O
    );
  in1_and0007101 : X_LUT4
    generic map(
      INIT => X"FAF8",
      LOC => "SLICE_X66Y49"
    )
    port map (
      ADR0 => in1_and000772_0,
      ADR1 => in1_or0009_0,
      ADR2 => in1_and000728_O_0,
      ADR3 => in1_or0008_0,
      O => in1_and0007101_19851
    );
  proc_in1_and0007101_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and0007101_19851,
      O => in1_and0007101_0
    );
  proc_in1_and0007101_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000728_O,
      O => in1_and000728_O_0
    );
  in1_and000728 : X_LUT4
    generic map(
      INIT => X"F080",
      LOC => "SLICE_X66Y49"
    )
    port map (
      ADR0 => in1_and00075_0,
      ADR1 => in1_and000710_0,
      ADR2 => in1_cmp_eq0014_0,
      ADR3 => in1_and0008_0,
      O => in1_and000728_O
    );
  reg_EX_overflow_mux0001_0_SW2 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X77Y45"
    )
    port map (
      ADR0 => in1_0_0,
      ADR1 => reg_ID_instr_8_7472,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_0_7389,
      O => reg_EX_overflow_mux0001_0_SW2_O
    );
  reg_EX_overflow_mux0001_0_Q : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X77Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => overflow(0),
      ADR2 => in1_cmp_eq0013_0,
      ADR3 => reg_EX_overflow_mux0001_0_SW2_O_0,
      O => reg_EX_overflow_mux0001(0)
    );
  proc_reg_EX_overflow_0_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X77Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_0_FFX_RST
    );
  reg_EX_overflow_0 : X_FF
    generic map(
      LOC => "SLICE_X77Y45",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_0_DXMUX_19882,
      CE => VCC,
      CLK => proc_reg_EX_overflow_0_CLKINV_19864,
      SET => GND,
      RST => proc_reg_EX_overflow_0_FFX_RST,
      O => reg_EX_overflow_0_7394
    );
  proc_reg_EX_overflow_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(0),
      O => proc_reg_EX_overflow_0_DXMUX_19882
    );
  proc_reg_EX_overflow_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_0_SW2_O,
      O => reg_EX_overflow_mux0001_0_SW2_O_0
    );
  proc_reg_EX_overflow_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_0_CLKINV_19864
    );
  reg_EX_overflow_mux0001_1_SW2 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X70Y48"
    )
    port map (
      ADR0 => in1_1_0,
      ADR1 => reg_ID_instr_1_7546,
      ADR2 => reg_ID_instr_8_7472,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001_1_SW2_O
    );
  reg_EX_overflow_mux0001_1_Q : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X70Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => overflow(1),
      ADR3 => reg_EX_overflow_mux0001_1_SW2_O_0,
      O => reg_EX_overflow_mux0001(1)
    );
  proc_reg_EX_overflow_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X70Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(1),
      O => proc_reg_EX_overflow_1_DXMUX_19917
    );
  proc_reg_EX_overflow_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X70Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_1_SW2_O,
      O => reg_EX_overflow_mux0001_1_SW2_O_0
    );
  proc_reg_EX_overflow_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X70Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_1_CLKINV_19899
    );
  proc_reg_EX_overflow_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(2),
      O => proc_reg_EX_overflow_2_DXMUX_19952
    );
  proc_reg_EX_overflow_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_2_SW2_O,
      O => reg_EX_overflow_mux0001_2_SW2_O_0
    );
  proc_reg_EX_overflow_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_2_CLKINV_19934
    );
  proc_reg_EX_overflow_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(3),
      O => proc_reg_EX_overflow_3_DXMUX_19987
    );
  proc_reg_EX_overflow_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X62Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_3_SW2_O,
      O => reg_EX_overflow_mux0001_3_SW2_O_0
    );
  proc_reg_EX_overflow_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_3_CLKINV_19969
    );
  proc_reg_EX_overflow_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(4),
      O => proc_reg_EX_overflow_4_DXMUX_20022
    );
  proc_reg_EX_overflow_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_4_SW2_O,
      O => reg_EX_overflow_mux0001_4_SW2_O_0
    );
  proc_reg_EX_overflow_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_4_CLKINV_20004
    );
  proc_reg_EX_overflow_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X68Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(5),
      O => proc_reg_EX_overflow_5_DXMUX_20057
    );
  proc_reg_EX_overflow_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X68Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_5_SW2_O,
      O => reg_EX_overflow_mux0001_5_SW2_O_0
    );
  proc_reg_EX_overflow_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X68Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_5_CLKINV_20039
    );
  proc_reg_EX_overflow_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(6),
      O => proc_reg_EX_overflow_6_DXMUX_20092
    );
  proc_reg_EX_overflow_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_6_SW2_O,
      O => reg_EX_overflow_mux0001_6_SW2_O_0
    );
  proc_reg_EX_overflow_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_6_CLKINV_20074
    );
  proc_reg_EX_overflow_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X69Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(7),
      O => proc_reg_EX_overflow_7_DXMUX_20127
    );
  proc_reg_EX_overflow_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X69Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_7_SW2_O,
      O => reg_EX_overflow_mux0001_7_SW2_O_0
    );
  proc_reg_EX_overflow_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X69Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_7_CLKINV_20109
    );
  proc_reg_EX_overflow_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X74Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(8),
      O => proc_reg_EX_overflow_8_DXMUX_20162
    );
  proc_reg_EX_overflow_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X74Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_8_SW2_O,
      O => reg_EX_overflow_mux0001_8_SW2_O_0
    );
  proc_reg_EX_overflow_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X74Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_8_CLKINV_20144
    );
  proc_reg_EX_overflow_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X75Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(9),
      O => proc_reg_EX_overflow_9_DXMUX_20197
    );
  proc_reg_EX_overflow_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X75Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_9_SW2_O,
      O => reg_EX_overflow_mux0001_9_SW2_O_0
    );
  proc_reg_EX_overflow_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X75Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_overflow_9_CLKINV_20179
    );
  proc_N15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => N15,
      O => N15_0
    );
  proc_N15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode_0_1_SW0_O,
      O => alu_mode_0_1_SW0_O_0
    );
  proc_alu_mode_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode(2),
      O => alu_mode_2_0
    );
  proc_alu_mode_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => N102,
      O => N102_0
    );
  proc_in1_and0003_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and0003,
      O => in1_and0003_0
    );
  proc_in1_and0003_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000318_SW0_O,
      O => in1_and000318_SW0_O_0
    );
  proc_in1_and000772_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000772_20297,
      O => in1_and000772_0
    );
  proc_in1_and000772_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000771_O,
      O => in1_and000771_O_0
    );
  proc_N228_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X62Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N228,
      O => N228_0
    );
  proc_N228_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X62Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N314,
      O => N314_0
    );
  proc_in1_cmp_eq0013_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq0013,
      O => in1_cmp_eq0013_0
    );
  proc_in1_cmp_eq0013_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq00131_SW0_O,
      O => in1_cmp_eq00131_SW0_O_0
    );
  proc_in1_cmp_eq0014_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq0014,
      O => in1_cmp_eq0014_0
    );
  proc_in1_cmp_eq0014_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq00143_SW0_O,
      O => in1_cmp_eq00143_SW0_O_0
    );
  proc_N226_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N226,
      O => N226_0
    );
  proc_N226_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N311,
      O => N311_0
    );
  proc_N224_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N224,
      O => N224_0
    );
  proc_N224_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N308,
      O => N308_0
    );
  proc_N222_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N222,
      O => N222_0
    );
  proc_N222_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N305,
      O => N305_0
    );
  proc_wr_enable_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable,
      O => wr_enable_0
    );
  proc_wr_enable_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable_or000160_O,
      O => wr_enable_or000160_O_0
    );
  proc_in2_and0002_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0002,
      O => in2_and0002_0
    );
  proc_in2_and0002_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or0009,
      O => in1_or0009_0
    );
  proc_in1_or000829_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or000829_20513,
      O => in1_or000829_0
    );
  proc_in1_or000829_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or000821_O,
      O => in1_or000821_O_0
    );
  proc_in1_or0008_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or0008,
      O => in1_or0008_0
    );
  proc_in1_or0008_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or000861_O,
      O => in1_or000861_O_0
    );
  proc_in2_and00025_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and00025_20561,
      O => in2_and00025_0
    );
  proc_in2_and00025_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and0008_SW2_O,
      O => in1_and0008_SW2_O_0
    );
  proc_reg_ID_instr_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(14),
      O => proc_reg_ID_instr_1_DXMUX_20599
    );
  proc_reg_ID_instr_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(15),
      O => proc_reg_ID_instr_1_DYMUX_20583
    );
  proc_reg_ID_instr_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_instr_1_SRINV_20573
    );
  proc_reg_ID_instr_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_instr_1_CLKINV_20572
    );
  proc_reg_ID_instr_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(12),
      O => proc_reg_ID_instr_3_DXMUX_20641
    );
  proc_reg_ID_instr_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(13),
      O => proc_reg_ID_instr_3_DYMUX_20625
    );
  proc_reg_ID_instr_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_instr_3_SRINV_20615
    );
  proc_reg_ID_instr_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_instr_3_CLKINV_20614
    );
  proc_reg_ID_instr_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(10),
      O => proc_reg_ID_instr_5_DXMUX_20683
    );
  proc_reg_ID_instr_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(11),
      O => proc_reg_ID_instr_5_DYMUX_20667
    );
  proc_reg_ID_instr_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_instr_5_SRINV_20657
    );
  proc_reg_ID_instr_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_instr_5_CLKINV_20656
    );
  proc_reg_ID_instr_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X63Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(8),
      O => proc_reg_ID_instr_7_DXMUX_20725
    );
  proc_reg_ID_instr_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X63Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(9),
      O => proc_reg_ID_instr_7_DYMUX_20709
    );
  proc_reg_ID_instr_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X63Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_instr_7_SRINV_20699
    );
  proc_reg_ID_instr_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X63Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_instr_7_CLKINV_20698
    );
  proc_reg_ID_instr_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(6),
      O => proc_reg_ID_instr_9_DXMUX_20767
    );
  proc_reg_ID_instr_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(7),
      O => proc_reg_ID_instr_9_DYMUX_20751
    );
  proc_reg_ID_instr_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_instr_9_SRINV_20741
    );
  proc_reg_ID_instr_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_instr_9_CLKINV_20740
    );
  proc_reg_IF_instr_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X63Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(14),
      O => proc_reg_IF_instr_1_DXMUX_20809
    );
  proc_reg_IF_instr_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X63Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(15),
      O => proc_reg_IF_instr_1_DYMUX_20793
    );
  proc_reg_IF_instr_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X63Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_instr_1_SRINV_20783
    );
  proc_reg_IF_instr_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X63Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_instr_1_CLKINV_20782
    );
  proc_reg_IF_instr_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(12),
      O => proc_reg_IF_instr_3_DXMUX_20851
    );
  proc_reg_IF_instr_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(13),
      O => proc_reg_IF_instr_3_DYMUX_20835
    );
  proc_reg_IF_instr_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_instr_3_SRINV_20825
    );
  proc_reg_IF_instr_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_instr_3_CLKINV_20824
    );
  proc_reg_IF_instr_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(10),
      O => proc_reg_IF_instr_5_DXMUX_20893
    );
  proc_reg_IF_instr_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(11),
      O => proc_reg_IF_instr_5_DYMUX_20877
    );
  proc_reg_IF_instr_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_instr_5_SRINV_20867
    );
  proc_reg_IF_instr_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_instr_5_CLKINV_20866
    );
  proc_reg_IF_instr_7_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X62Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_instr_7_FFY_RST
    );
  reg_IF_instr_7 : X_FF
    generic map(
      LOC => "SLICE_X62Y54",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_7_DYMUX_20916,
      CE => VCC,
      CLK => proc_reg_IF_instr_7_CLKINV_20905,
      SET => GND,
      RST => proc_reg_IF_instr_7_FFY_RST,
      O => reg_IF_instr_7_7582
    );
  proc_reg_IF_instr_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(8),
      O => proc_reg_IF_instr_7_DYMUX_20916
    );
  proc_reg_IF_instr_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_instr_7_CLKINV_20905
    );
  proc_reg_IF_instr_9_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X64Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_IF_instr_9_SRINV_20932,
      O => proc_reg_IF_instr_9_FFY_RST
    );
  reg_IF_instr_8 : X_FF
    generic map(
      LOC => "SLICE_X64Y53",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_9_DYMUX_20942,
      CE => VCC,
      CLK => proc_reg_IF_instr_9_CLKINV_20931,
      SET => GND,
      RST => proc_reg_IF_instr_9_FFY_RST,
      O => reg_IF_instr_8_7585
    );
  reg_IF_instr_mux0001_7_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X64Y53"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => VCC,
      ADR2 => rom_data(8),
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(7)
    );
  reg_IF_instr_mux0001_6_1 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X64Y53"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => rom_data(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(6)
    );
  proc_reg_IF_instr_9_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X64Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_IF_instr_9_SRINV_20932,
      O => proc_reg_IF_instr_9_FFX_RST
    );
  reg_IF_instr_9 : X_FF
    generic map(
      LOC => "SLICE_X64Y53",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_9_DXMUX_20958,
      CE => VCC,
      CLK => proc_reg_IF_instr_9_CLKINV_20931,
      SET => GND,
      RST => proc_reg_IF_instr_9_FFX_RST,
      O => reg_IF_instr_9_7584
    );
  proc_reg_IF_instr_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(6),
      O => proc_reg_IF_instr_9_DXMUX_20958
    );
  proc_reg_IF_instr_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(7),
      O => proc_reg_IF_instr_9_DYMUX_20942
    );
  proc_reg_IF_instr_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_instr_9_SRINV_20932
    );
  proc_reg_IF_instr_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_instr_9_CLKINV_20931
    );
  proc_reg_ID_instr_11_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X65Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_instr_11_SRINV_20974,
      O => proc_reg_ID_instr_11_FFY_RST
    );
  reg_ID_instr_10 : X_FF
    generic map(
      LOC => "SLICE_X65Y39",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_11_DYMUX_20984,
      CE => VCC,
      CLK => proc_reg_ID_instr_11_CLKINV_20973,
      SET => GND,
      RST => proc_reg_ID_instr_11_FFY_RST,
      O => reg_ID_instr_10_7391
    );
  reg_ID_instr_mux0001_5_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X65Y39"
    )
    port map (
      ADR0 => reg_IF_instr_10_7587,
      ADR1 => VCC,
      ADR2 => branch_trigger_0,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(5)
    );
  reg_ID_instr_mux0001_4_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X65Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_11_7586,
      ADR2 => branch_trigger_0,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(4)
    );
  proc_reg_ID_instr_11_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X65Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_instr_11_SRINV_20974,
      O => proc_reg_ID_instr_11_FFX_RST
    );
  reg_ID_instr_11 : X_FF
    generic map(
      LOC => "SLICE_X65Y39",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_11_DXMUX_21000,
      CE => VCC,
      CLK => proc_reg_ID_instr_11_CLKINV_20973,
      SET => GND,
      RST => proc_reg_ID_instr_11_FFX_RST,
      O => reg_ID_instr_11_7388
    );
  proc_reg_ID_instr_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(4),
      O => proc_reg_ID_instr_11_DXMUX_21000
    );
  proc_reg_ID_instr_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(5),
      O => proc_reg_ID_instr_11_DYMUX_20984
    );
  proc_reg_ID_instr_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_instr_11_SRINV_20974
    );
  proc_reg_ID_instr_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_instr_11_CLKINV_20973
    );
  proc_reg_ID_instr_13_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X66Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_instr_13_SRINV_21016,
      O => proc_reg_ID_instr_13_FFY_RST
    );
  reg_ID_instr_12 : X_FF
    generic map(
      LOC => "SLICE_X66Y38",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_13_DYMUX_21026,
      CE => VCC,
      CLK => proc_reg_ID_instr_13_CLKINV_21015,
      SET => GND,
      RST => proc_reg_ID_instr_13_FFY_RST,
      O => reg_ID_instr_12_7519
    );
  reg_ID_instr_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X66Y38"
    )
    port map (
      ADR0 => reg_IF_instr_12_7589,
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(3)
    );
  reg_ID_instr_mux0001_2_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X66Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_13_7588,
      ADR2 => VCC,
      ADR3 => branch_trigger_0,
      O => reg_ID_instr_mux0001(2)
    );
  proc_reg_ID_instr_13_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X66Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_instr_13_SRINV_21016,
      O => proc_reg_ID_instr_13_FFX_RST
    );
  reg_ID_instr_13 : X_FF
    generic map(
      LOC => "SLICE_X66Y38",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_13_DXMUX_21042,
      CE => VCC,
      CLK => proc_reg_ID_instr_13_CLKINV_21015,
      SET => GND,
      RST => proc_reg_ID_instr_13_FFX_RST,
      O => reg_ID_instr_13_7491
    );
  proc_reg_ID_instr_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(2),
      O => proc_reg_ID_instr_13_DXMUX_21042
    );
  proc_reg_ID_instr_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(3),
      O => proc_reg_ID_instr_13_DYMUX_21026
    );
  proc_reg_ID_instr_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_instr_13_SRINV_21016
    );
  proc_reg_ID_instr_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_instr_13_CLKINV_21015
    );
  proc_reg_ID_instr_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(0),
      O => proc_reg_ID_instr_15_DXMUX_21084
    );
  proc_reg_ID_instr_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(1),
      O => proc_reg_ID_instr_15_DYMUX_21068
    );
  proc_reg_ID_instr_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_instr_15_SRINV_21058
    );
  proc_reg_ID_instr_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_instr_15_CLKINV_21057
    );
  reg_IF_instr_mux0001_5_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X67Y55"
    )
    port map (
      ADR0 => rom_data(10),
      ADR1 => VCC,
      ADR2 => branch_trigger_0,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(5)
    );
  proc_reg_IF_instr_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(4),
      O => proc_reg_IF_instr_11_DXMUX_21126
    );
  proc_reg_IF_instr_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(5),
      O => proc_reg_IF_instr_11_DYMUX_21110
    );
  proc_reg_IF_instr_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_instr_11_SRINV_21100
    );
  proc_reg_IF_instr_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_instr_11_CLKINV_21099
    );
  proc_reg_IF_instr_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X69Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(2),
      O => proc_reg_IF_instr_13_DXMUX_21168
    );
  proc_reg_IF_instr_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X69Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(3),
      O => proc_reg_IF_instr_13_DYMUX_21152
    );
  proc_reg_IF_instr_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X69Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_instr_13_SRINV_21142
    );
  proc_reg_IF_instr_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X69Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_instr_13_CLKINV_21141
    );
  proc_reg_IF_instr_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(0),
      O => proc_reg_IF_instr_15_DXMUX_21210
    );
  proc_reg_IF_instr_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(1),
      O => proc_reg_IF_instr_15_DYMUX_21194
    );
  proc_reg_IF_instr_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_instr_15_SRINV_21184
    );
  proc_reg_IF_instr_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_instr_15_CLKINV_21183
    );
  proc_reg_EX_instr_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(8),
      O => proc_reg_EX_instr_7_DXMUX_21252
    );
  proc_reg_EX_instr_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(9),
      O => proc_reg_EX_instr_7_DYMUX_21236
    );
  proc_reg_EX_instr_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_instr_7_SRINV_21226
    );
  proc_reg_EX_instr_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_instr_7_CLKINV_21225
    );
  proc_reg_EX_instr_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(6),
      O => proc_reg_EX_instr_9_DXMUX_21294
    );
  proc_reg_EX_instr_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(7),
      O => proc_reg_EX_instr_9_DYMUX_21278
    );
  proc_reg_EX_instr_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_instr_9_SRINV_21268
    );
  proc_reg_EX_instr_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_instr_9_CLKINV_21267
    );
  proc_PC_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(1),
      O => proc_PC_1_DXMUX_21336
    );
  proc_PC_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(0),
      O => proc_PC_1_DYMUX_21322
    );
  proc_PC_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_PC_1_SRINV_21313
    );
  proc_PC_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X76Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_PC_1_CLKINVNOT
    );
  proc_PC_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(3),
      O => proc_PC_3_DXMUX_21378
    );
  proc_PC_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(2),
      O => proc_PC_3_DYMUX_21364
    );
  proc_PC_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_PC_3_SRINV_21356
    );
  proc_PC_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X77Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_PC_3_CLKINVNOT
    );
  proc_PC_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(5),
      O => proc_PC_5_DXMUX_21420
    );
  proc_PC_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(4),
      O => proc_PC_5_DYMUX_21406
    );
  proc_PC_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_PC_5_SRINV_21398
    );
  proc_PC_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X78Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_PC_5_CLKINVNOT
    );
  proc_PC_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_PC_6_F,
      O => outport(15)
    );
  proc_PC_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(6),
      O => proc_PC_6_DYMUX_21446
    );
  proc_PC_6_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X79Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_PC_6_CLKINVNOT
    );
  proc_reg_EX_result_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(11),
      O => proc_reg_EX_result_11_DYMUX_21478
    );
  proc_reg_EX_result_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_result_11_CLKINV_21468
    );
  proc_reg_EX_result_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(13),
      O => proc_reg_EX_result_13_DXMUX_21520
    );
  proc_reg_EX_result_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(12),
      O => proc_reg_EX_result_13_DYMUX_21505
    );
  proc_reg_EX_result_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_result_13_SRINV_21496
    );
  proc_reg_EX_result_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_result_13_CLKINV_21495
    );
  proc_reg_EX_result_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(15),
      O => proc_reg_EX_result_15_DXMUX_21562
    );
  proc_reg_EX_result_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(14),
      O => proc_reg_EX_result_15_DYMUX_21547
    );
  proc_reg_EX_result_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_result_15_SRINV_21538
    );
  proc_reg_EX_result_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_result_15_CLKINV_21537
    );
  proc_reg_EX_instr_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(4),
      O => proc_reg_EX_instr_11_DXMUX_21604
    );
  proc_reg_EX_instr_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(5),
      O => proc_reg_EX_instr_11_DYMUX_21588
    );
  proc_reg_EX_instr_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_instr_11_SRINV_21578
    );
  proc_reg_EX_instr_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_instr_11_CLKINV_21577
    );
  proc_reg_EX_instr_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(2),
      O => proc_reg_EX_instr_13_DXMUX_21646
    );
  proc_reg_EX_instr_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(3),
      O => proc_reg_EX_instr_13_DYMUX_21630
    );
  proc_reg_EX_instr_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_instr_13_SRINV_21620
    );
  proc_reg_EX_instr_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_instr_13_CLKINV_21619
    );
  proc_reg_EX_instr_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(0),
      O => proc_reg_EX_instr_15_DXMUX_21688
    );
  proc_reg_EX_instr_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(1),
      O => proc_reg_EX_instr_15_DYMUX_21672
    );
  proc_reg_EX_instr_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_instr_15_SRINV_21662
    );
  proc_reg_EX_instr_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_instr_15_CLKINV_21661
    );
  proc_reg_EX_result_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(1),
      O => proc_reg_EX_result_1_DXMUX_21730
    );
  proc_reg_EX_result_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(0),
      O => proc_reg_EX_result_1_DYMUX_21715
    );
  proc_reg_EX_result_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_result_1_SRINV_21706
    );
  proc_reg_EX_result_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_result_1_CLKINV_21705
    );
  proc_reg_EX_result_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(3),
      O => proc_reg_EX_result_3_DXMUX_21772
    );
  proc_reg_EX_result_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(2),
      O => proc_reg_EX_result_3_DYMUX_21757
    );
  proc_reg_EX_result_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_result_3_SRINV_21748
    );
  proc_reg_EX_result_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_result_3_CLKINV_21747
    );
  proc_reg_EX_result_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(5),
      O => proc_reg_EX_result_5_DXMUX_21814
    );
  proc_reg_EX_result_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(4),
      O => proc_reg_EX_result_5_DYMUX_21799
    );
  proc_reg_EX_result_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_result_5_SRINV_21790
    );
  proc_reg_EX_result_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_result_5_CLKINV_21789
    );
  proc_reg_EX_result_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(7),
      O => proc_reg_EX_result_7_DXMUX_21856
    );
  proc_reg_EX_result_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(6),
      O => proc_reg_EX_result_7_DYMUX_21841
    );
  proc_reg_EX_result_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_result_7_SRINV_21832
    );
  proc_reg_EX_result_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_result_7_CLKINV_21831
    );
  proc_reg_EX_result_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(9),
      O => proc_reg_EX_result_9_DXMUX_21898
    );
  proc_reg_EX_result_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(8),
      O => proc_reg_EX_result_9_DYMUX_21883
    );
  proc_reg_EX_result_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_result_9_SRINV_21874
    );
  proc_reg_EX_result_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_result_9_CLKINV_21873
    );
  proc_reg_ID_data1_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(11),
      O => proc_reg_ID_data1_11_DXMUX_21940
    );
  proc_reg_ID_data1_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(10),
      O => proc_reg_ID_data1_11_DYMUX_21926
    );
  proc_reg_ID_data1_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data1_11_SRINV_21918
    );
  proc_reg_ID_data1_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data1_11_CLKINV_21917
    );
  proc_reg_ID_data1_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X63Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(13),
      O => proc_reg_ID_data1_13_DXMUX_21982
    );
  proc_reg_ID_data1_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X63Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(12),
      O => proc_reg_ID_data1_13_DYMUX_21968
    );
  proc_reg_ID_data1_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X63Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data1_13_SRINV_21960
    );
  proc_reg_ID_data1_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X63Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data1_13_CLKINV_21959
    );
  proc_reg_ID_data1_15_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X60Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_data1_15_SRINV_22002,
      O => proc_reg_ID_data1_15_FFY_RST
    );
  reg_ID_data1_14 : X_FF
    generic map(
      LOC => "SLICE_X60Y66",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_15_DYMUX_22010,
      CE => VCC,
      CLK => proc_reg_ID_data1_15_CLKINV_22001,
      SET => GND,
      RST => proc_reg_ID_data1_15_FFY_RST,
      O => reg_ID_data1_14_7533
    );
  reg_ID_data1_mux0007_14_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X60Y66"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => reg_IF_inport_14_7606,
      ADR2 => rd_data1(14),
      ADR3 => N02_0,
      O => reg_ID_data1_mux0007(14)
    );
  reg_ID_data1_mux0007_15_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X60Y66"
    )
    port map (
      ADR0 => N02_0,
      ADR1 => N22_0,
      ADR2 => rd_data1(15),
      ADR3 => reg_IF_inport_15_7605,
      O => reg_ID_data1_mux0007(15)
    );
  proc_reg_ID_data1_15_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X60Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_data1_15_SRINV_22002,
      O => proc_reg_ID_data1_15_FFX_RST
    );
  reg_ID_data1_15 : X_FF
    generic map(
      LOC => "SLICE_X60Y66",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_15_DXMUX_22024,
      CE => VCC,
      CLK => proc_reg_ID_data1_15_CLKINV_22001,
      SET => GND,
      RST => proc_reg_ID_data1_15_FFX_RST,
      O => reg_ID_data1_15_7535
    );
  proc_reg_ID_data1_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(15),
      O => proc_reg_ID_data1_15_DXMUX_22024
    );
  proc_reg_ID_data1_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(14),
      O => proc_reg_ID_data1_15_DYMUX_22010
    );
  proc_reg_ID_data1_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data1_15_SRINV_22002
    );
  proc_reg_ID_data1_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data1_15_CLKINV_22001
    );
  proc_reg_ID_data2_11_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X56Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_data2_11_SRINV_22044,
      O => proc_reg_ID_data2_11_FFY_RST
    );
  reg_ID_data2_10 : X_FF
    generic map(
      LOC => "SLICE_X56Y59",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_11_DYMUX_22052,
      CE => VCC,
      CLK => proc_reg_ID_data2_11_CLKINV_22043,
      SET => GND,
      RST => proc_reg_ID_data2_11_FFY_RST,
      O => reg_ID_data2_10_7462
    );
  reg_ID_data2_mux0007_5_1 : X_LUT4
    generic map(
      INIT => X"EC00",
      LOC => "SLICE_X56Y59"
    )
    port map (
      ADR0 => rd_data2(10),
      ADR1 => N18_0,
      ADR2 => N95_0,
      ADR3 => N2_0,
      O => reg_ID_data2_mux0007(5)
    );
  reg_ID_data2_mux0007_4_1 : X_LUT4
    generic map(
      INIT => X"E0C0",
      LOC => "SLICE_X56Y59"
    )
    port map (
      ADR0 => N95_0,
      ADR1 => N18_0,
      ADR2 => N2_0,
      ADR3 => rd_data2(11),
      O => reg_ID_data2_mux0007(4)
    );
  proc_reg_ID_data2_11_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X56Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_data2_11_SRINV_22044,
      O => proc_reg_ID_data2_11_FFX_RST
    );
  reg_ID_data2_11 : X_FF
    generic map(
      LOC => "SLICE_X56Y59",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_11_DXMUX_22066,
      CE => VCC,
      CLK => proc_reg_ID_data2_11_CLKINV_22043,
      SET => GND,
      RST => proc_reg_ID_data2_11_FFX_RST,
      O => reg_ID_data2_11_7421
    );
  proc_reg_ID_data2_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(4),
      O => proc_reg_ID_data2_11_DXMUX_22066
    );
  proc_reg_ID_data2_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(5),
      O => proc_reg_ID_data2_11_DYMUX_22052
    );
  proc_reg_ID_data2_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_11_SRINV_22044
    );
  proc_reg_ID_data2_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_11_CLKINV_22043
    );
  proc_reg_ID_data2_13_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X59Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_data2_13_SRINV_22086,
      O => proc_reg_ID_data2_13_FFY_RST
    );
  reg_ID_data2_12 : X_FF
    generic map(
      LOC => "SLICE_X59Y51",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_13_DYMUX_22094,
      CE => VCC,
      CLK => proc_reg_ID_data2_13_CLKINV_22085,
      SET => GND,
      RST => proc_reg_ID_data2_13_FFY_RST,
      O => reg_ID_data2_12_7499
    );
  reg_ID_data2_mux0007_3_1 : X_LUT4
    generic map(
      INIT => X"EC00",
      LOC => "SLICE_X59Y51"
    )
    port map (
      ADR0 => rd_data2(12),
      ADR1 => N18_0,
      ADR2 => N95_0,
      ADR3 => N2_0,
      O => reg_ID_data2_mux0007(3)
    );
  reg_ID_data2_mux0007_2_1 : X_LUT4
    generic map(
      INIT => X"EC00",
      LOC => "SLICE_X59Y51"
    )
    port map (
      ADR0 => N95_0,
      ADR1 => N18_0,
      ADR2 => rd_data2(13),
      ADR3 => N2_0,
      O => reg_ID_data2_mux0007(2)
    );
  proc_reg_ID_data2_13_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X59Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_data2_13_SRINV_22086,
      O => proc_reg_ID_data2_13_FFX_RST
    );
  reg_ID_data2_13 : X_FF
    generic map(
      LOC => "SLICE_X59Y51",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_13_DXMUX_22108,
      CE => VCC,
      CLK => proc_reg_ID_data2_13_CLKINV_22085,
      SET => GND,
      RST => proc_reg_ID_data2_13_FFX_RST,
      O => reg_ID_data2_13_7497
    );
  proc_reg_ID_data2_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(2),
      O => proc_reg_ID_data2_13_DXMUX_22108
    );
  proc_reg_ID_data2_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(3),
      O => proc_reg_ID_data2_13_DYMUX_22094
    );
  proc_reg_ID_data2_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_13_SRINV_22086
    );
  proc_reg_ID_data2_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_13_CLKINV_22085
    );
  proc_reg_ID_data2_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(0),
      O => proc_reg_ID_data2_15_DXMUX_22150
    );
  proc_reg_ID_data2_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(1),
      O => proc_reg_ID_data2_15_DYMUX_22136
    );
  proc_reg_ID_data2_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_15_SRINV_22128
    );
  proc_reg_ID_data2_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_15_CLKINV_22127
    );
  proc_reg_ID_data1_1_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X74Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_data1_1_SRINV_22168,
      O => proc_reg_ID_data1_1_FFX_RST
    );
  reg_ID_data1_1 : X_FF
    generic map(
      LOC => "SLICE_X74Y90",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_1_DXMUX_22192,
      CE => VCC,
      CLK => proc_reg_ID_data1_1_CLKINV_22167,
      SET => GND,
      RST => proc_reg_ID_data1_1_FFX_RST,
      O => reg_ID_data1_1_7509
    );
  proc_reg_ID_data1_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X74Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(1),
      O => proc_reg_ID_data1_1_DXMUX_22192
    );
  proc_reg_ID_data1_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X74Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(0),
      O => proc_reg_ID_data1_1_DYMUX_22177
    );
  proc_reg_ID_data1_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X74Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data1_1_SRINV_22168
    );
  proc_reg_ID_data1_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X74Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data1_1_CLKINV_22167
    );
  reg_ID_data1_mux0007_2_10 : X_LUT4
    generic map(
      INIT => X"ECEC",
      LOC => "SLICE_X69Y83"
    )
    port map (
      ADR0 => N02_0,
      ADR1 => reg_ID_data1_mux0007_2_6_0,
      ADR2 => rd_data1(2),
      ADR3 => VCC,
      O => reg_ID_data1_mux0007(2)
    );
  proc_reg_ID_data1_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X69Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(3),
      O => proc_reg_ID_data1_3_DXMUX_22234
    );
  proc_reg_ID_data1_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X69Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(2),
      O => proc_reg_ID_data1_3_DYMUX_22219
    );
  proc_reg_ID_data1_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X69Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data1_3_SRINV_22210
    );
  proc_reg_ID_data1_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X69Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data1_3_CLKINV_22209
    );
  proc_reg_ID_data2_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(14),
      O => proc_reg_ID_data2_1_DXMUX_22276
    );
  proc_reg_ID_data2_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(15),
      O => proc_reg_ID_data2_1_DYMUX_22262
    );
  proc_reg_ID_data2_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_1_SRINV_22254
    );
  proc_reg_ID_data2_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_1_CLKINV_22253
    );
  proc_reg_ID_data1_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(5),
      O => proc_reg_ID_data1_5_DXMUX_22318
    );
  proc_reg_ID_data1_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(4),
      O => proc_reg_ID_data1_5_DYMUX_22303
    );
  proc_reg_ID_data1_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data1_5_SRINV_22294
    );
  proc_reg_ID_data1_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data1_5_CLKINV_22293
    );
  proc_reg_ID_data2_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(12),
      O => proc_reg_ID_data2_3_DXMUX_22360
    );
  proc_reg_ID_data2_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(13),
      O => proc_reg_ID_data2_3_DYMUX_22346
    );
  proc_reg_ID_data2_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_3_SRINV_22338
    );
  proc_reg_ID_data2_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_3_CLKINV_22337
    );
  proc_reg_ID_data1_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X69Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(7),
      O => proc_reg_ID_data1_7_DXMUX_22402
    );
  proc_reg_ID_data1_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X69Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(6),
      O => proc_reg_ID_data1_7_DYMUX_22388
    );
  proc_reg_ID_data1_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X69Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data1_7_SRINV_22379
    );
  proc_reg_ID_data1_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X69Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data1_7_CLKINV_22378
    );
  proc_reg_ID_data1_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(8),
      O => proc_reg_ID_data1_8_DYMUX_22425
    );
  proc_reg_ID_data1_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data1_8_CLKINV_22416
    );
  proc_reg_ID_data2_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(8),
      O => proc_reg_ID_data2_7_DXMUX_22467
    );
  proc_reg_ID_data2_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(9),
      O => proc_reg_ID_data2_7_DYMUX_22453
    );
  proc_reg_ID_data2_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_7_SRINV_22445
    );
  proc_reg_ID_data2_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_7_CLKINV_22444
    );
  proc_reg_ID_data2_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(6),
      O => proc_reg_ID_data2_9_DYMUX_22490
    );
  proc_reg_ID_data2_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_9_CLKINV_22481
    );
  proc_wr_index_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_index(2),
      O => wr_index_2_0
    );
  proc_wr_index_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_index(1),
      O => wr_index_1_0
    );
  outport_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_9_F,
      O => outport(9)
    );
  outport_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_cmp_eq0000_22533,
      O => outport_cmp_eq0000_0
    );
  proc_rd_index1_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1(2),
      O => rd_index1_2_0
    );
  proc_rd_index1_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1(1),
      O => rd_index1_1_0
    );
  proc_N191_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => N191,
      O => N191_0
    );
  proc_N191_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index2(0),
      O => rd_index2_0_0
    );
  proc_N151_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => N151,
      O => N151_0
    );
  proc_N151_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index2(1),
      O => rd_index2_1_0
    );
  proc_N17_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => N17,
      O => N17_0
    );
  proc_N17_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index2(2),
      O => rd_index2_2_0
    );
  proc_N8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => N8,
      O => N8_0
    );
  proc_N8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => or0000_0_or0000,
      O => or0000_0_or0000_0
    );
  outport_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X74Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_8_F,
      O => outport(8)
    );
  outport_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X74Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N302,
      O => N302_0
    );
  outport_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_11_F,
      O => outport(11)
    );
  outport_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N317,
      O => N317_0
    );
  proc_N2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => N2_22734,
      O => N2_0
    );
  proc_N2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => N21,
      O => N21_0
    );
  proc_reg_EX_n_flag_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => n_flag,
      O => proc_reg_EX_n_flag_DYMUX_22744
    );
  proc_reg_EX_n_flag_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_n_flag_CLKINV_22741
    );
  proc_N4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N4,
      O => N4_0
    );
  proc_N4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N96,
      O => N96_0
    );
  proc_N131_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => N131,
      O => N131_0
    );
  proc_N131_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => N5,
      O => N5_0
    );
  proc_reg_ID_data2_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(10),
      O => proc_reg_ID_data2_5_DXMUX_22827
    );
  proc_reg_ID_data2_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007_10_2_22817,
      O => reg_ID_data2_mux0007_10_2_0
    );
  proc_reg_ID_data2_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_5_CLKINV_22810
    );
  proc_reg_ID_data2_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(11),
      O => proc_reg_ID_data2_4_DXMUX_22862
    );
  proc_reg_ID_data2_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007_11_2_22852,
      O => reg_ID_data2_mux0007_11_2_0
    );
  proc_reg_ID_data2_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_4_CLKINV_22845
    );
  proc_N18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => N18,
      O => N18_0
    );
  proc_N18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => N19,
      O => N19_0
    );
  proc_reg_EX_z_flag_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => z_flag,
      O => proc_reg_EX_z_flag_DYMUX_22900
    );
  proc_reg_EX_z_flag_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_z_flag_CLKINV_22897
    );
  proc_reg_ID_data2_mux0007_10_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007_10_15_22928,
      O => reg_ID_data2_mux0007_10_15_0
    );
  proc_reg_ID_data2_mux0007_10_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_10_120_22921,
      O => reg_ID_data1_mux0007_10_120_0
    );
  proc_rd_index1_or000629_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X62Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or000629_22952,
      O => rd_index1_or000629_0
    );
  proc_rd_index1_or000629_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X62Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_10_134_22945,
      O => reg_ID_data1_mux0007_10_134_0
    );
  proc_rd_index1_or0005_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X63Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0005,
      O => rd_index1_or0005_0
    );
  proc_rd_index1_or0005_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X63Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_10_146_22969,
      O => reg_ID_data1_mux0007_10_146_0
    );
  proc_reg_ID_data1_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(9),
      O => proc_reg_ID_data1_9_DXMUX_23007
    );
  proc_reg_ID_data1_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X62Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => N02,
      O => N02_0
    );
  proc_reg_ID_data1_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data1_9_CLKINV_22991
    );
  proc_N322_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => N322,
      O => N322_0
    );
  proc_N322_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => N268,
      O => N268_0
    );
  proc_reg_IF_inport_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y116",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_1_INBUF,
      O => proc_reg_IF_inport_1_DXMUX_23055
    );
  proc_reg_IF_inport_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y116",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_0_INBUF,
      O => proc_reg_IF_inport_1_DYMUX_23047
    );
  proc_reg_IF_inport_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y116",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_inport_1_SRINV_23045
    );
  proc_reg_IF_inport_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y116",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_inport_1_CLKINV_23044
    );
  proc_reg_IF_inport_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_3_INBUF,
      O => proc_reg_IF_inport_3_DXMUX_23079
    );
  proc_reg_IF_inport_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_2_INBUF,
      O => proc_reg_IF_inport_3_DYMUX_23071
    );
  proc_reg_IF_inport_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_inport_3_SRINV_23069
    );
  proc_reg_IF_inport_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_inport_3_CLKINV_23068
    );
  proc_reg_IF_inport_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y109",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_5_INBUF,
      O => proc_reg_IF_inport_5_DXMUX_23103
    );
  proc_reg_IF_inport_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y109",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_4_INBUF,
      O => proc_reg_IF_inport_5_DYMUX_23095
    );
  proc_reg_IF_inport_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y109",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_inport_5_SRINV_23093
    );
  proc_reg_IF_inport_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y109",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_inport_5_CLKINV_23092
    );
  proc_reg_IF_inport_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y105",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_7_INBUF,
      O => proc_reg_IF_inport_7_DXMUX_23127
    );
  proc_reg_IF_inport_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y105",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_6_INBUF,
      O => proc_reg_IF_inport_7_DYMUX_23119
    );
  proc_reg_IF_inport_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y105",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_inport_7_SRINV_23117
    );
  proc_reg_IF_inport_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y105",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_inport_7_CLKINV_23116
    );
  proc_reg_IF_inport_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y98",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_9_INBUF,
      O => proc_reg_IF_inport_9_DXMUX_23151
    );
  proc_reg_IF_inport_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y98",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_8_INBUF,
      O => proc_reg_IF_inport_9_DYMUX_23143
    );
  proc_reg_IF_inport_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y98",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_inport_9_SRINV_23141
    );
  proc_reg_IF_inport_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y98",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_inport_9_CLKINV_23140
    );
  proc_N33_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N33,
      O => N33_0
    );
  proc_N33_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N29,
      O => N29_0
    );
  proc_N31_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => N31,
      O => N31_0
    );
  proc_rd_index1_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1(0),
      O => rd_index1_0_0
    );
  proc_rd_index1_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0004_23208,
      O => rd_index1_or0004_0
    );
  rd_index1_0_1 : X_LUT4
    generic map(
      INIT => X"CFCA",
      LOC => "SLICE_X56Y62"
    )
    port map (
      ADR0 => reg_IF_instr_3_7578,
      ADR1 => reg_IF_instr_6_7583,
      ADR2 => rd_index1_or0003_0,
      ADR3 => rd_index1_or0004_0,
      O => rd_index1(0)
    );
  reg_ID_data2_mux0006_10_41 : X_LUT4
    generic map(
      INIT => X"1033",
      LOC => "SLICE_X58Y60"
    )
    port map (
      ADR0 => N7_0,
      ADR1 => rd_index1_or0006_0,
      ADR2 => reg_IF_instr_11_7586,
      ADR3 => reg_ID_data1_mux0007_10_146_0,
      O => N95
    );
  reg_ID_data2_mux0007_7_1 : X_LUT4
    generic map(
      INIT => X"C8C0",
      LOC => "SLICE_X58Y60"
    )
    port map (
      ADR0 => N95_0,
      ADR1 => N2_0,
      ADR2 => N18_0,
      ADR3 => rd_data2(8),
      O => reg_ID_data2_mux0007(7)
    );
  proc_reg_ID_data2_8_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X58Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_8_FFX_RST
    );
  reg_ID_data2_8 : X_FF
    generic map(
      LOC => "SLICE_X58Y60",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_8_DXMUX_23246,
      CE => VCC,
      CLK => proc_reg_ID_data2_8_CLKINV_23230,
      SET => GND,
      RST => proc_reg_ID_data2_8_FFX_RST,
      O => reg_ID_data2_8_7466
    );
  proc_reg_ID_data2_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(7),
      O => proc_reg_ID_data2_8_DXMUX_23246
    );
  proc_reg_ID_data2_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => N95,
      O => N95_0
    );
  proc_reg_ID_data2_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_data2_8_CLKINV_23230
    );
  reg_ID_data2_mux0007_11_15 : X_LUT4
    generic map(
      INIT => X"B1A0",
      LOC => "SLICE_X59Y66"
    )
    port map (
      ADR0 => or0000_0_or0000_0,
      ADR1 => rd_index1_or0005_0,
      ADR2 => reg_IF_instr_4_7581,
      ADR3 => rd_data2(4),
      O => reg_ID_data2_mux0007_11_15_23262
    );
  proc_reg_ID_data2_mux0007_11_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007_11_15_23262,
      O => reg_ID_data2_mux0007_11_15_0
    );
  PC_next_5_SW0 : X_LUT4
    generic map(
      INIT => X"0FFF",
      LOC => "SLICE_X76Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => Madd_PC_next_addsub0000_cy_3_0,
      ADR3 => PC(4),
      O => N271
    );
  proc_N271_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => N271,
      O => N271_0
    );
  proc_N271_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_PC_next_addsub0000_cy(3),
      O => Madd_PC_next_addsub0000_cy_3_0
    );
  Madd_PC_next_addsub0000_cy_3_11 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X76Y33"
    )
    port map (
      ADR0 => PC(2),
      ADR1 => PC(0),
      ADR2 => PC(3),
      ADR3 => PC(1),
      O => Madd_PC_next_addsub0000_cy(3)
    );
  in2_and00028 : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "SLICE_X67Y43"
    )
    port map (
      ADR0 => reg_ID_instr_4_7477,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_5_7479,
      ADR3 => reg_ID_instr_3_7475,
      O => in2_and00028_23310
    );
  proc_in2_and00028_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and00028_23310,
      O => in2_and00028_0
    );
  proc_in2_and00028_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => N324,
      O => N324_0
    );
  in1_and00035_SW0 : X_LUT4
    generic map(
      INIT => X"33FF",
      LOC => "SLICE_X67Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_4_7477,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_3_7475,
      O => N324
    );
  outport_10_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X88Y113"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => outport_cmp_eq0000_0,
      ADR3 => reg_EX_result_10_7247,
      O => outport_10_F
    );
  outport_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_10_F,
      O => outport(10)
    );
  outport_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y113",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_10_G,
      O => outport(0)
    );
  outport_0_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X88Y113"
    )
    port map (
      ADR0 => reg_EX_result_0_7257,
      ADR1 => VCC,
      ADR2 => outport_cmp_eq0000_0,
      ADR3 => VCC,
      O => outport_10_G
    );
  outport_12_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X88Y110"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_result_12_7245,
      ADR3 => outport_cmp_eq0000_0,
      O => outport_12_F
    );
  outport_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y110",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_12_F,
      O => outport(12)
    );
  outport_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y110",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_12_G,
      O => outport(1)
    );
  outport_1_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X88Y110"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_result_1_7256,
      ADR3 => outport_cmp_eq0000_0,
      O => outport_12_G
    );
  outport_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_13_F,
      O => outport(13)
    );
  outport_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y111",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_13_G,
      O => outport(2)
    );
  outport_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y110",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_14_F,
      O => outport(14)
    );
  outport_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y110",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_14_G,
      O => outport(3)
    );
  outport_3_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X89Y110"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outport_cmp_eq0000_0,
      ADR2 => VCC,
      ADR3 => reg_EX_result_3_7254,
      O => outport_14_G
    );
  outport_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y108",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_5_F,
      O => outport(5)
    );
  outport_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y108",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_5_G,
      O => outport(4)
    );
  proc_wr_enable_or000134_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable_or000134_23454,
      O => wr_enable_or000134_0
    );
  proc_wr_enable_or000134_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_or000031_23447,
      O => wr_overflow_or000031_0
    );
  outport_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y105",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_7_F,
      O => outport(7)
    );
  outport_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y105",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_7_G,
      O => outport(6)
    );
  proc_wr_overflow_data_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(10),
      O => wr_overflow_data_10_0
    );
  proc_wr_overflow_data_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(0),
      O => wr_overflow_data_0_0
    );
  proc_wr_overflow_data_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(11),
      O => wr_overflow_data_11_0
    );
  proc_wr_overflow_data_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(1),
      O => wr_overflow_data_1_0
    );
  proc_wr_overflow_data_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(12),
      O => wr_overflow_data_12_0
    );
  proc_wr_overflow_data_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(2),
      O => wr_overflow_data_2_0
    );
  proc_wr_overflow_data_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(13),
      O => wr_overflow_data_13_0
    );
  proc_wr_overflow_data_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(3),
      O => wr_overflow_data_3_0
    );
  proc_wr_overflow_data_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(14),
      O => wr_overflow_data_14_0
    );
  proc_wr_overflow_data_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(4),
      O => wr_overflow_data_4_0
    );
  proc_wr_overflow_data_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(15),
      O => wr_overflow_data_15_0
    );
  proc_wr_overflow_data_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(5),
      O => wr_overflow_data_5_0
    );
  proc_wr_overflow_data_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(7),
      O => wr_overflow_data_7_0
    );
  proc_wr_overflow_data_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(6),
      O => wr_overflow_data_6_0
    );
  proc_wr_overflow_data_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(9),
      O => wr_overflow_data_9_0
    );
  proc_wr_overflow_data_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(8),
      O => wr_overflow_data_8_0
    );
  proc_N299_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X72Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N299,
      O => N299_0
    );
  proc_N299_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X72Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N287,
      O => N287_0
    );
  proc_N296_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X74Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => N296,
      O => N296_0
    );
  proc_N296_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X74Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => N290,
      O => N290_0
    );
  proc_N293_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X75Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => N293,
      O => N293_0
    );
  proc_ram_wr_enable_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_wr_enable(0),
      O => ram_wr_enable_0_0
    );
  proc_ram_wr_enable_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode_0_15_23746,
      O => alu_mode_0_15_0
    );
  proc_N9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => N9,
      O => N9_0
    );
  proc_N9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => N11,
      O => N11_0
    );
  proc_reg_IF_instr_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X63Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(9),
      O => proc_reg_IF_instr_6_DXMUX_23809
    );
  proc_reg_IF_instr_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X63Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => branch_trigger,
      O => branch_trigger_0
    );
  proc_reg_IF_instr_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X63Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_instr_6_CLKINV_23791
    );
  proc_N22_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => N22,
      O => N22_0
    );
  proc_N22_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => N01,
      O => N01_0
    );
  proc_reg_IF_inport_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y100",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_11_INBUF,
      O => proc_reg_IF_inport_11_DXMUX_23857
    );
  proc_reg_IF_inport_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y100",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_10_INBUF,
      O => proc_reg_IF_inport_11_DYMUX_23849
    );
  proc_reg_IF_inport_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y100",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_inport_11_SRINV_23847
    );
  proc_reg_IF_inport_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y100",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_inport_11_CLKINV_23846
    );
  proc_reg_IF_inport_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X63Y99",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_13_INBUF,
      O => proc_reg_IF_inport_13_DXMUX_23881
    );
  proc_reg_IF_inport_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X63Y99",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_12_INBUF,
      O => proc_reg_IF_inport_13_DYMUX_23873
    );
  proc_reg_IF_inport_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X63Y99",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_inport_13_SRINV_23871
    );
  proc_reg_IF_inport_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X63Y99",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_inport_13_CLKINV_23870
    );
  proc_reg_IF_inport_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y97",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_15_INBUF,
      O => proc_reg_IF_inport_15_DXMUX_23905
    );
  proc_reg_IF_inport_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y97",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_14_INBUF,
      O => proc_reg_IF_inport_15_DYMUX_23897
    );
  proc_reg_IF_inport_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y97",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_inport_15_SRINV_23895
    );
  proc_reg_IF_inport_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y97",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_inport_15_CLKINV_23894
    );
  proc_N6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => N6,
      O => N6_0
    );
  proc_N6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => N7,
      O => N7_0
    );
  proc_N1011_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X62Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => N1011,
      O => N1011_0
    );
  proc_N1011_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X62Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or000638_23950,
      O => rd_index1_or000638_0
    );
  proc_N811_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => N811,
      O => N811_0
    );
  proc_N811_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0006,
      O => rd_index1_or0006_0
    );
  proc_N211_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => N211,
      O => N211_0
    );
  proc_N211_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => N23,
      O => N23_0
    );
  proc_N36_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N36,
      O => N36_0
    );
  proc_N36_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N35,
      O => N35_0
    );
  proc_reg_ID_data1_mux0007_10_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_10_15_24041,
      O => reg_ID_data1_mux0007_10_15_0
    );
  proc_in1_and00075_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and00075_24065,
      O => in1_and00075_0
    );
  proc_in1_and00075_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode(1),
      O => alu_mode_1_0
    );
  proc_N278_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => N278,
      O => N278_0
    );
  proc_N278_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => N280,
      O => N280_0
    );
  proc_in1_and000312_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X62Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000312_24101,
      O => in1_and000312_0
    );
  proc_in1_or000892_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or000892_24125,
      O => in1_or000892_0
    );
  proc_in1_or000892_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000710_24116,
      O => in1_and000710_0
    );
  proc_N276_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N276,
      O => N276_0
    );
  proc_reg_EX_result_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(10),
      O => proc_reg_EX_result_10_DXMUX_24168
    );
  proc_reg_EX_result_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq0008,
      O => in1_cmp_eq0008_0
    );
  proc_reg_EX_result_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_result_10_CLKINV_24150
    );
  proc_rd_index1_or0003_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0003,
      O => rd_index1_or0003_0
    );
  proc_rd_index1_or0003_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0007,
      O => rd_index1_or0007_0
    );
  proc_N16_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X63Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => N16,
      O => N16_0
    );
  proc_N16_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X63Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => N25,
      O => N25_0
    );
  proc_reg_ID_data1_mux0007_0_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X74Y92",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_0_6_24244,
      O => reg_ID_data1_mux0007_0_6_0
    );
  proc_reg_ID_data1_mux0007_0_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X74Y92",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_0_0_24237,
      O => reg_ID_data1_mux0007_0_0_0
    );
  proc_reg_ID_data1_mux0007_1_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X75Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_1_6_24268,
      O => reg_ID_data1_mux0007_1_6_0
    );
  proc_reg_ID_data1_mux0007_1_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X75Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_1_0_24261,
      O => reg_ID_data1_mux0007_1_0_0
    );
  proc_reg_ID_data1_mux0007_2_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X69Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_2_6_24292,
      O => reg_ID_data1_mux0007_2_6_0
    );
  proc_reg_ID_data1_mux0007_2_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X69Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_2_0_24285,
      O => reg_ID_data1_mux0007_2_0_0
    );
  proc_reg_ID_data1_mux0007_3_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X68Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_3_6_24316,
      O => reg_ID_data1_mux0007_3_6_0
    );
  proc_reg_ID_data1_mux0007_3_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X68Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_3_0_24309,
      O => reg_ID_data1_mux0007_3_0_0
    );
  proc_reg_ID_data1_mux0007_4_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_4_6_24340,
      O => reg_ID_data1_mux0007_4_6_0
    );
  proc_reg_ID_data1_mux0007_4_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_4_0_24333,
      O => reg_ID_data1_mux0007_4_0_0
    );
  proc_reg_ID_data1_mux0007_5_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_5_6_24364,
      O => reg_ID_data1_mux0007_5_6_0
    );
  proc_reg_ID_data1_mux0007_5_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_5_0_24357,
      O => reg_ID_data1_mux0007_5_0_0
    );
  proc_reg_ID_data1_mux0007_6_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X73Y96",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_6_6_24388,
      O => reg_ID_data1_mux0007_6_6_0
    );
  proc_reg_ID_data1_mux0007_6_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X73Y96",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_6_0_24381,
      O => reg_ID_data1_mux0007_6_0_0
    );
  proc_in2_and000552_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_24400,
      O => in2_and000552_0
    );
  proc_in2_and000536_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000536_24412,
      O => in2_and000536_0
    );
  proc_N274_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N274,
      O => N274_0
    );
  proc_N274_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005,
      O => in2_and0005_0
    );
  proc_reg_ID_PC_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X68Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_1_7676,
      O => proc_reg_ID_PC_1_DXMUX_24456
    );
  proc_reg_ID_PC_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X68Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_0_7674,
      O => proc_reg_ID_PC_1_DYMUX_24448
    );
  proc_reg_ID_PC_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X68Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_PC_1_SRINV_24446
    );
  proc_reg_ID_PC_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X68Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_PC_1_CLKINV_24445
    );
  proc_reg_ID_PC_3_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X66Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_PC_3_SRINV_24470,
      O => proc_reg_ID_PC_3_FFY_RST
    );
  reg_ID_PC_2 : X_FF
    generic map(
      LOC => "SLICE_X66Y69",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_PC_3_DYMUX_24472,
      CE => VCC,
      CLK => proc_reg_ID_PC_3_CLKINV_24469,
      SET => GND,
      RST => proc_reg_ID_PC_3_FFY_RST,
      O => reg_ID_PC_2_7692
    );
  proc_reg_ID_PC_3_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X66Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_PC_3_SRINV_24470,
      O => proc_reg_ID_PC_3_FFX_RST
    );
  reg_ID_PC_3 : X_FF
    generic map(
      LOC => "SLICE_X66Y69",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_PC_3_DXMUX_24480,
      CE => VCC,
      CLK => proc_reg_ID_PC_3_CLKINV_24469,
      SET => GND,
      RST => proc_reg_ID_PC_3_FFX_RST,
      O => reg_ID_PC_3_7691
    );
  proc_reg_ID_PC_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_3_7680,
      O => proc_reg_ID_PC_3_DXMUX_24480
    );
  proc_reg_ID_PC_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_2_7678,
      O => proc_reg_ID_PC_3_DYMUX_24472
    );
  proc_reg_ID_PC_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_PC_3_SRINV_24470
    );
  proc_reg_ID_PC_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_PC_3_CLKINV_24469
    );
  proc_reg_ID_PC_5_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X59Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_PC_5_SRINV_24494,
      O => proc_reg_ID_PC_5_FFY_RST
    );
  reg_ID_PC_4 : X_FF
    generic map(
      LOC => "SLICE_X59Y58",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_PC_5_DYMUX_24496,
      CE => VCC,
      CLK => proc_reg_ID_PC_5_CLKINV_24493,
      SET => GND,
      RST => proc_reg_ID_PC_5_FFY_RST,
      O => reg_ID_PC_4_7694
    );
  proc_reg_ID_PC_5_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X59Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_ID_PC_5_SRINV_24494,
      O => proc_reg_ID_PC_5_FFX_RST
    );
  reg_ID_PC_5 : X_FF
    generic map(
      LOC => "SLICE_X59Y58",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_PC_5_DXMUX_24504,
      CE => VCC,
      CLK => proc_reg_ID_PC_5_CLKINV_24493,
      SET => GND,
      RST => proc_reg_ID_PC_5_FFX_RST,
      O => reg_ID_PC_5_7693
    );
  proc_reg_ID_PC_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_5_7684,
      O => proc_reg_ID_PC_5_DXMUX_24504
    );
  proc_reg_ID_PC_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_4_7682,
      O => proc_reg_ID_PC_5_DYMUX_24496
    );
  proc_reg_ID_PC_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_PC_5_SRINV_24494
    );
  proc_reg_ID_PC_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_PC_5_CLKINV_24493
    );
  proc_reg_ID_PC_6_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X71Y96",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_PC_6_FFY_RST
    );
  reg_ID_PC_6 : X_FF
    generic map(
      LOC => "SLICE_X71Y96",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_PC_6_DYMUX_24518,
      CE => VCC,
      CLK => proc_reg_ID_PC_6_CLKINV_24515,
      SET => GND,
      RST => proc_reg_ID_PC_6_FFY_RST,
      O => reg_ID_PC_6_7695
    );
  proc_reg_ID_PC_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X71Y96",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_6_7686,
      O => proc_reg_ID_PC_6_DYMUX_24518
    );
  proc_reg_ID_PC_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X71Y96",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_ID_PC_6_CLKINV_24515
    );
  proc_reg_IF_PC_1_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X74Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_IF_PC_1_SRINV_24532,
      O => proc_reg_IF_PC_1_FFY_RST
    );
  reg_IF_PC_0 : X_FF
    generic map(
      LOC => "SLICE_X74Y77",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_PC_1_DYMUX_24534,
      CE => VCC,
      CLK => proc_reg_IF_PC_1_CLKINV_24531,
      SET => GND,
      RST => proc_reg_IF_PC_1_FFY_RST,
      O => reg_IF_PC_0_7674
    );
  proc_reg_IF_PC_1_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X74Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_IF_PC_1_SRINV_24532,
      O => proc_reg_IF_PC_1_FFX_RST
    );
  reg_IF_PC_1 : X_FF
    generic map(
      LOC => "SLICE_X74Y77",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_PC_1_DXMUX_24542,
      CE => VCC,
      CLK => proc_reg_IF_PC_1_CLKINV_24531,
      SET => GND,
      RST => proc_reg_IF_PC_1_FFX_RST,
      O => reg_IF_PC_1_7676
    );
  proc_reg_IF_PC_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X74Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(1),
      O => proc_reg_IF_PC_1_DXMUX_24542
    );
  proc_reg_IF_PC_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X74Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(0),
      O => proc_reg_IF_PC_1_DYMUX_24534
    );
  proc_reg_IF_PC_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X74Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_PC_1_SRINV_24532
    );
  proc_reg_IF_PC_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X74Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_PC_1_CLKINV_24531
    );
  proc_reg_IF_PC_3_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X69Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => proc_reg_IF_PC_3_SRINV_24556,
      O => proc_reg_IF_PC_3_FFY_RST
    );
  reg_IF_PC_2 : X_FF
    generic map(
      LOC => "SLICE_X69Y69",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_PC_3_DYMUX_24558,
      CE => VCC,
      CLK => proc_reg_IF_PC_3_CLKINV_24555,
      SET => GND,
      RST => proc_reg_IF_PC_3_FFY_RST,
      O => reg_IF_PC_2_7678
    );
  proc_reg_IF_PC_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X69Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(3),
      O => proc_reg_IF_PC_3_DXMUX_24566
    );
  proc_reg_IF_PC_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X69Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(2),
      O => proc_reg_IF_PC_3_DYMUX_24558
    );
  proc_reg_IF_PC_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X69Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_PC_3_SRINV_24556
    );
  proc_reg_IF_PC_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X69Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_PC_3_CLKINV_24555
    );
  proc_reg_IF_PC_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(5),
      O => proc_reg_IF_PC_5_DXMUX_24590
    );
  proc_reg_IF_PC_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(4),
      O => proc_reg_IF_PC_5_DYMUX_24582
    );
  proc_reg_IF_PC_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_PC_5_SRINV_24580
    );
  proc_reg_IF_PC_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_PC_5_CLKINV_24579
    );
  proc_reg_IF_PC_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y97",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(6),
      O => proc_reg_IF_PC_6_DYMUX_24604
    );
  proc_reg_IF_PC_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y97",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_IF_PC_6_CLKINV_24601
    );
  proc_reg_EX_PC_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_1_7689,
      O => proc_reg_EX_PC_1_DXMUX_24628
    );
  proc_reg_EX_PC_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_0_7690,
      O => proc_reg_EX_PC_1_DYMUX_24620
    );
  proc_reg_EX_PC_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_PC_1_SRINV_24618
    );
  proc_reg_EX_PC_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_PC_1_CLKINV_24617
    );
  proc_reg_EX_PC_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_3_7691,
      O => proc_reg_EX_PC_3_DXMUX_24652
    );
  proc_reg_EX_PC_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_2_7692,
      O => proc_reg_EX_PC_3_DYMUX_24644
    );
  proc_reg_EX_PC_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_PC_3_SRINV_24642
    );
  proc_reg_EX_PC_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_PC_3_CLKINV_24641
    );
  proc_reg_EX_PC_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_5_7693,
      O => proc_reg_EX_PC_5_DXMUX_24676
    );
  proc_reg_EX_PC_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_4_7694,
      O => proc_reg_EX_PC_5_DYMUX_24668
    );
  proc_reg_EX_PC_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_PC_5_SRINV_24666
    );
  proc_reg_EX_PC_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_PC_5_CLKINV_24665
    );
  proc_reg_EX_PC_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_6_7695,
      O => proc_reg_EX_PC_6_DYMUX_24690
    );
  proc_reg_EX_PC_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => proc_reg_EX_PC_6_CLKINV_24687
    );
  ram_addr_0_1_G : X_LUT4
    generic map(
      INIT => X"E200",
      LOC => "SLICE_X77Y62"
    )
    port map (
      ADR0 => N248_0,
      ADR1 => in1_and0003_0,
      ADR2 => reg_EX_overflow_0_7394,
      ADR3 => ram_addr_and0000_0,
      O => N427
    );
  in2_11_SW2_G : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X65Y48"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_EX_result_11_7246,
      ADR2 => VCC,
      ADR3 => reg_ID_data2_11_7421,
      O => N465
    );
  in2_11_SW2_F : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X65Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N417_0,
      ADR2 => in1_cmp_eq0014_0,
      ADR3 => reg_ID_data2_11_7421,
      O => N464
    );
  ram_addr_0_1_F : X_LUT4
    generic map(
      INIT => X"B080",
      LOC => "SLICE_X77Y62"
    )
    port map (
      ADR0 => reg_EX_overflow_0_7394,
      ADR1 => in2_and0002_0,
      ADR2 => ram_addr_and0000_0,
      ADR3 => N280_0,
      O => N426
    );
  ram_addr_2_1_F : X_LUT4
    generic map(
      INIT => X"88C0",
      LOC => "SLICE_X78Y61"
    )
    port map (
      ADR0 => reg_EX_overflow_2_7398,
      ADR1 => ram_addr_and0000_0,
      ADR2 => N276_0,
      ADR3 => in2_and0002_0,
      O => N422
    );
  wr_overflow_or000034_SW0 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X58Y59"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_instr_9_7487,
      ADR3 => wr_enable_0,
      O => wr_overflow_or000034_SW0_O
    );
  wr_overflow_or000017 : X_LUT4
    generic map(
      INIT => X"0200",
      LOC => "SLICE_X67Y49"
    )
    port map (
      ADR0 => reg_EX_instr_13_7501,
      ADR1 => reg_EX_instr_14_7504,
      ADR2 => reg_EX_instr_9_7487,
      ADR3 => wr_enable_or000181_0,
      O => wr_overflow_or000017_19611
    );
  wr_overflow_or000012 : X_LUT4
    generic map(
      INIT => X"0505",
      LOC => "SLICE_X67Y49"
    )
    port map (
      ADR0 => reg_EX_instr_15_7505,
      ADR1 => VCC,
      ADR2 => reg_EX_instr_12_7503,
      ADR3 => VCC,
      O => wr_enable_or000181
    );
  in1_and0008 : X_LUT4
    generic map(
      INIT => X"0306",
      LOC => "SLICE_X67Y38"
    )
    port map (
      ADR0 => reg_ID_instr_9_7378,
      ADR1 => reg_ID_instr_11_7388,
      ADR2 => N88_0,
      ADR3 => reg_ID_instr_10_7391,
      O => in1_and0008_19587
    );
  in1_and0008_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X67Y38"
    )
    port map (
      ADR0 => reg_ID_instr_12_7519,
      ADR1 => reg_ID_instr_15_7490,
      ADR2 => reg_ID_instr_13_7491,
      ADR3 => reg_ID_instr_14_7520,
      O => N88
    );
  in2_and000578_SW201 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X64Y49"
    )
    port map (
      ADR0 => reg_ID_data2_11_7421,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => N417_0,
      ADR3 => VCC,
      O => N316
    );
  in2_and000578_SW20_G : X_LUT4
    generic map(
      INIT => X"ACCC",
      LOC => "SLICE_X64Y49"
    )
    port map (
      ADR0 => reg_EX_result_11_7246,
      ADR1 => reg_ID_data2_11_7421,
      ADR2 => in1_or0009_0,
      ADR3 => wr_enable_0,
      O => N417
    );
  reg_ID_instr_15 : X_FF
    generic map(
      LOC => "SLICE_X67Y41",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_15_DXMUX_21084,
      CE => VCC,
      CLK => proc_reg_ID_instr_15_CLKINV_21057,
      SET => GND,
      RST => proc_reg_ID_instr_15_SRINV_21058,
      O => reg_ID_instr_15_7490
    );
  reg_ID_instr_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X67Y41"
    )
    port map (
      ADR0 => reg_IF_instr_15_7590,
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(0)
    );
  reg_ID_instr_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X67Y41"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => VCC,
      ADR2 => reg_IF_instr_14_7591,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(1)
    );
  reg_ID_instr_14 : X_FF
    generic map(
      LOC => "SLICE_X67Y41",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_15_DYMUX_21068,
      CE => VCC,
      CLK => proc_reg_ID_instr_15_CLKINV_21057,
      SET => GND,
      RST => proc_reg_ID_instr_15_SRINV_21058,
      O => reg_ID_instr_14_7520
    );
  reg_ID_data1_mux0007_1_10 : X_LUT4
    generic map(
      INIT => X"FFA0",
      LOC => "SLICE_X74Y90"
    )
    port map (
      ADR0 => N02_0,
      ADR1 => VCC,
      ADR2 => rd_data1(1),
      ADR3 => reg_ID_data1_mux0007_1_6_0,
      O => reg_ID_data1_mux0007(1)
    );
  reg_ID_data1_mux0007_0_10 : X_LUT4
    generic map(
      INIT => X"ECEC",
      LOC => "SLICE_X74Y90"
    )
    port map (
      ADR0 => N02_0,
      ADR1 => reg_ID_data1_mux0007_0_6_0,
      ADR2 => rd_data1(0),
      ADR3 => VCC,
      O => reg_ID_data1_mux0007(0)
    );
  reg_ID_data1_0 : X_FF
    generic map(
      LOC => "SLICE_X74Y90",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_1_DYMUX_22177,
      CE => VCC,
      CLK => proc_reg_ID_data1_1_CLKINV_22167,
      SET => GND,
      RST => proc_reg_ID_data1_1_SRINV_22168,
      O => reg_ID_data1_0_7507
    );
  reg_ID_data2_15 : X_FF
    generic map(
      LOC => "SLICE_X54Y51",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_15_DXMUX_22150,
      CE => VCC,
      CLK => proc_reg_ID_data2_15_CLKINV_22127,
      SET => GND,
      RST => proc_reg_ID_data2_15_SRINV_22128,
      O => reg_ID_data2_15_7493
    );
  reg_ID_data2_mux0007_0_1 : X_LUT4
    generic map(
      INIT => X"A888",
      LOC => "SLICE_X54Y51"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => N18_0,
      ADR2 => N95_0,
      ADR3 => rd_data2(15),
      O => reg_ID_data2_mux0007(0)
    );
  reg_ID_data2_14 : X_FF
    generic map(
      LOC => "SLICE_X54Y51",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_15_DYMUX_22136,
      CE => VCC,
      CLK => proc_reg_ID_data2_15_CLKINV_22127,
      SET => GND,
      RST => proc_reg_ID_data2_15_SRINV_22128,
      O => reg_ID_data2_14_7495
    );
  reg_ID_data2_mux0007_1_1 : X_LUT4
    generic map(
      INIT => X"E0C0",
      LOC => "SLICE_X54Y51"
    )
    port map (
      ADR0 => rd_data2(14),
      ADR1 => N18_0,
      ADR2 => N2_0,
      ADR3 => N95_0,
      O => reg_ID_data2_mux0007(1)
    );
  reg_ID_data1_2 : X_FF
    generic map(
      LOC => "SLICE_X69Y83",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_3_DYMUX_22219,
      CE => VCC,
      CLK => proc_reg_ID_data1_3_CLKINV_22209,
      SET => GND,
      RST => proc_reg_ID_data1_3_SRINV_22210,
      O => reg_ID_data1_2_7510
    );
  outport_13_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X89Y111"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outport_cmp_eq0000_0,
      ADR2 => VCC,
      ADR3 => reg_EX_result_13_7244,
      O => outport_13_F
    );
  outport_2_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X89Y111"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outport_cmp_eq0000_0,
      ADR2 => VCC,
      ADR3 => reg_EX_result_2_7255,
      O => outport_13_G
    );
  ram_addr_10_1_F : X_LUT4
    generic map(
      INIT => X"A088",
      LOC => "SLICE_X70Y50"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => N232_0,
      ADR2 => reg_EX_overflow_10_7379,
      ADR3 => in2_and0002_0,
      O => N392
    );
  ram_addr_10_1_G : X_LUT4
    generic map(
      INIT => X"A280",
      LOC => "SLICE_X70Y50"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => in1_and0003_0,
      ADR2 => reg_EX_overflow_10_7379,
      ADR3 => N256_0,
      O => N393
    );
  reg_EX_overflow_1 : X_FF
    generic map(
      LOC => "SLICE_X70Y48",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_1_DXMUX_19917,
      CE => VCC,
      CLK => proc_reg_EX_overflow_1_CLKINV_19899,
      SET => GND,
      RST => proc_reg_EX_overflow_1_FFX_RSTAND_19922,
      O => reg_EX_overflow_1_7396
    );
  proc_reg_EX_overflow_1_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X70Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_1_FFX_RSTAND_19922
    );
  ram_addr_3_1_F : X_LUT4
    generic map(
      INIT => X"C840",
      LOC => "SLICE_X76Y51"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => ram_addr_and0000_0,
      ADR2 => N274_0,
      ADR3 => reg_EX_overflow_3_7400,
      O => N420
    );
  ram_addr_3_1_G : X_LUT4
    generic map(
      INIT => X"88C0",
      LOC => "SLICE_X76Y51"
    )
    port map (
      ADR0 => reg_EX_overflow_3_7400,
      ADR1 => ram_addr_and0000_0,
      ADR2 => N242_0,
      ADR3 => in1_and0003_0,
      O => N421
    );
  ram_addr_4_1_F : X_LUT4
    generic map(
      INIT => X"C0A0",
      LOC => "SLICE_X66Y53"
    )
    port map (
      ADR0 => N228_0,
      ADR1 => reg_EX_overflow_4_7404,
      ADR2 => ram_addr_and0000_0,
      ADR3 => in2_and0002_0,
      O => N388
    );
  ram_addr_4_1_G : X_LUT4
    generic map(
      INIT => X"8A80",
      LOC => "SLICE_X66Y53"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => reg_EX_overflow_4_7404,
      ADR2 => in1_and0003_0,
      ADR3 => N240_0,
      O => N389
    );
  ram_addr_5_1_F : X_LUT4
    generic map(
      INIT => X"D800",
      LOC => "SLICE_X76Y54"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => reg_EX_overflow_5_7407,
      ADR2 => N226_0,
      ADR3 => ram_addr_and0000_0,
      O => N386
    );
  ram_addr_5_1_G : X_LUT4
    generic map(
      INIT => X"88A0",
      LOC => "SLICE_X76Y54"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => reg_EX_overflow_5_7407,
      ADR2 => N238_0,
      ADR3 => in1_and0003_0,
      O => N387
    );
  ram_addr_6_1_F : X_LUT4
    generic map(
      INIT => X"B080",
      LOC => "SLICE_X77Y59"
    )
    port map (
      ADR0 => reg_EX_overflow_6_7410,
      ADR1 => in2_and0002_0,
      ADR2 => ram_addr_and0000_0,
      ADR3 => N224_0,
      O => N384
    );
  ram_addr_6_1_G : X_LUT4
    generic map(
      INIT => X"A0C0",
      LOC => "SLICE_X77Y59"
    )
    port map (
      ADR0 => reg_EX_overflow_6_7410,
      ADR1 => N236_0,
      ADR2 => ram_addr_and0000_0,
      ADR3 => in1_and0003_0,
      O => N385
    );
  ram_addr_7_1_F : X_LUT4
    generic map(
      INIT => X"C840",
      LOC => "SLICE_X77Y56"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => ram_addr_and0000_0,
      ADR2 => N222_0,
      ADR3 => reg_EX_overflow_7_7413,
      O => N382
    );
  ram_addr_7_1_G : X_LUT4
    generic map(
      INIT => X"C088",
      LOC => "SLICE_X77Y56"
    )
    port map (
      ADR0 => N234_0,
      ADR1 => ram_addr_and0000_0,
      ADR2 => reg_EX_overflow_7_7413,
      ADR3 => in1_and0003_0,
      O => N383
    );
  ram_addr_8_1_F : X_LUT4
    generic map(
      INIT => X"E200",
      LOC => "SLICE_X77Y57"
    )
    port map (
      ADR0 => N220,
      ADR1 => in2_and0002_0,
      ADR2 => reg_EX_overflow_8_7416,
      ADR3 => ram_addr_and0000_0,
      O => N380
    );
  ram_addr_8_1_G : X_LUT4
    generic map(
      INIT => X"A0C0",
      LOC => "SLICE_X77Y57"
    )
    port map (
      ADR0 => reg_EX_overflow_8_7416,
      ADR1 => N252_0,
      ADR2 => ram_addr_and0000_0,
      ADR3 => in1_and0003_0,
      O => N381
    );
  ram_addr_9_1_F : X_LUT4
    generic map(
      INIT => X"B800",
      LOC => "SLICE_X71Y51"
    )
    port map (
      ADR0 => reg_EX_overflow_9_7419,
      ADR1 => in2_and0002_0,
      ADR2 => N218,
      ADR3 => ram_addr_and0000_0,
      O => N378
    );
  ram_addr_9_1_G : X_LUT4
    generic map(
      INIT => X"A280",
      LOC => "SLICE_X71Y51"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => in1_and0003_0,
      ADR2 => reg_EX_overflow_9_7419,
      ADR3 => N250_0,
      O => N379
    );
  in2_10_F : X_LUT4
    generic map(
      INIT => X"CAC0",
      LOC => "SLICE_X71Y47"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => reg_EX_overflow_10_7379,
      ADR2 => in2_and0002_0,
      ADR3 => N320_0,
      O => N450
    );
  in2_10_G : X_LUT4
    generic map(
      INIT => X"CFC5",
      LOC => "SLICE_X71Y47"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => reg_EX_overflow_10_7379,
      ADR2 => in2_and0002_0,
      ADR3 => N320_0,
      O => N451
    );
  in2_11_F : X_LUT4
    generic map(
      INIT => X"EC20",
      LOC => "SLICE_X77Y48"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => in2_and0002_0,
      ADR2 => N317_0,
      ADR3 => reg_EX_overflow_11_7385,
      O => N448
    );
  in2_11_G : X_LUT4
    generic map(
      INIT => X"FD0D",
      LOC => "SLICE_X77Y48"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => N317_0,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_11_7385,
      O => N449
    );
  in2_12_F : X_LUT4
    generic map(
      INIT => X"CAC0",
      LOC => "SLICE_X78Y42"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => reg_EX_overflow_12_7449,
      ADR2 => in2_and0002_0,
      ADR3 => N296_0,
      O => N434
    );
  in2_12_G : X_LUT4
    generic map(
      INIT => X"CFC5",
      LOC => "SLICE_X78Y42"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => reg_EX_overflow_12_7449,
      ADR2 => in2_and0002_0,
      ADR3 => N296_0,
      O => N435
    );
  in2_13_F : X_LUT4
    generic map(
      INIT => X"CAC0",
      LOC => "SLICE_X76Y45"
    )
    port map (
      ADR0 => N293_0,
      ADR1 => reg_EX_overflow_13_7452,
      ADR2 => in2_and0002_0,
      ADR3 => in2_and000552_0,
      O => N432
    );
  in2_13_G : X_LUT4
    generic map(
      INIT => X"CACF",
      LOC => "SLICE_X76Y45"
    )
    port map (
      ADR0 => N293_0,
      ADR1 => reg_EX_overflow_13_7452,
      ADR2 => in2_and0002_0,
      ADR3 => in2_and000552_0,
      O => N433
    );
  in2_14_F : X_LUT4
    generic map(
      INIT => X"F088",
      LOC => "SLICE_X72Y43"
    )
    port map (
      ADR0 => N290_0,
      ADR1 => in2_and000552_0,
      ADR2 => reg_EX_overflow_14_7455,
      ADR3 => in2_and0002_0,
      O => N430
    );
  in2_14_G : X_LUT4
    generic map(
      INIT => X"F5B1",
      LOC => "SLICE_X72Y43"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => in2_and000552_0,
      ADR2 => reg_EX_overflow_14_7455,
      ADR3 => N290_0,
      O => N431
    );
  in2_15_F : X_LUT4
    generic map(
      INIT => X"F808",
      LOC => "SLICE_X71Y49"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => N287_0,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_15_7458,
      O => N428
    );
  in2_15_G : X_LUT4
    generic map(
      INIT => X"FD0D",
      LOC => "SLICE_X71Y49"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => N287_0,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_15_7458,
      O => N429
    );
  reg_ID_data2_7_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X66Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_ID_data2_7_7460,
      O => reg_ID_data2_7_rt_18715
    );
  in2_and000578_SW1211 : X_LUT4
    generic map(
      INIT => X"B8F0",
      LOC => "SLICE_X66Y55"
    )
    port map (
      ADR0 => reg_EX_result_7_7250,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => reg_ID_data2_7_7460,
      ADR3 => in1_or0009_0,
      O => in2_and000578_SW121
    );
  reg_ID_data2_10_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X63Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_ID_data2_10_7462,
      ADR3 => VCC,
      O => reg_ID_data2_10_rt_18740
    );
  in2_and000578_SW2211 : X_LUT4
    generic map(
      INIT => X"EA2A",
      LOC => "SLICE_X63Y44"
    )
    port map (
      ADR0 => reg_ID_data2_10_7462,
      ADR1 => in1_or0009_0,
      ADR2 => in1_cmp_eq0014_0,
      ADR3 => reg_EX_result_10_7247,
      O => in2_and000578_SW221
    );
  reg_ID_data2_6_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X64Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_ID_data2_6_7463,
      ADR3 => VCC,
      O => reg_ID_data2_6_rt_18765
    );
  in2_and000578_SW1411 : X_LUT4
    generic map(
      INIT => X"EA2A",
      LOC => "SLICE_X64Y56"
    )
    port map (
      ADR0 => reg_ID_data2_6_7463,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => in1_or0009_0,
      ADR3 => reg_EX_result_6_7251,
      O => in2_and000578_SW141
    );
  reg_ID_data2_5_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X66Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_data2_5_7464,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_ID_data2_5_rt_18790
    );
  in2_and000578_SW1611 : X_LUT4
    generic map(
      INIT => X"E4CC",
      LOC => "SLICE_X66Y57"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => reg_ID_data2_5_7464,
      ADR2 => reg_EX_result_5_7252,
      ADR3 => in1_or0009_0,
      O => in2_and000578_SW161
    );
  reg_ID_data2_4_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X62Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_data2_4_7465,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_ID_data2_4_rt_18815
    );
  in2_and000578_SW1811 : X_LUT4
    generic map(
      INIT => X"BF80",
      LOC => "SLICE_X62Y44"
    )
    port map (
      ADR0 => reg_EX_result_4_7253,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => in1_or0009_0,
      ADR3 => reg_ID_data2_4_7465,
      O => in2_and000578_SW181
    );
  in2_8_SW2_F : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X67Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_data2_8_7466,
      ADR2 => in1_cmp_eq0014_0,
      ADR3 => N407_0,
      O => N462
    );
  in2_8_SW2_G : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X67Y54"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_ID_data2_8_7466,
      ADR2 => reg_EX_result_8_7249,
      ADR3 => VCC,
      O => N463
    );
  in2_9_SW2_F : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X68Y48"
    )
    port map (
      ADR0 => reg_ID_data2_9_7468,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => N405_0,
      ADR3 => VCC,
      O => N460
    );
  in2_9_SW2_G : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X68Y48"
    )
    port map (
      ADR0 => reg_ID_data2_9_7468,
      ADR1 => wr_enable_0,
      ADR2 => reg_EX_result_9_7248,
      ADR3 => VCC,
      O => N461
    );
  reg_EX_overflow_mux0001_10_SW2 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X69Y47"
    )
    port map (
      ADR0 => in1_10_0,
      ADR1 => reg_ID_instr_2_7473,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_8_7472,
      O => reg_EX_overflow_mux0001_10_SW2_O
    );
  reg_EX_overflow_mux0001_10_Q : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X69Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => overflow(10),
      ADR2 => in1_cmp_eq0013_0,
      ADR3 => reg_EX_overflow_mux0001_10_SW2_O_0,
      O => reg_EX_overflow_mux0001(10)
    );
  reg_EX_overflow_10 : X_FF
    generic map(
      LOC => "SLICE_X69Y47",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_10_DXMUX_18904,
      CE => VCC,
      CLK => proc_reg_EX_overflow_10_CLKINV_18886,
      SET => GND,
      RST => proc_reg_EX_overflow_10_FFX_RSTAND_18909,
      O => reg_EX_overflow_10_7379
    );
  proc_reg_EX_overflow_10_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X69Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_10_FFX_RSTAND_18909
    );
  reg_EX_overflow_mux0001_11_SW2 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X77Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_3_7475,
      ADR2 => in1_11_0,
      ADR3 => reg_ID_instr_8_7472,
      O => reg_EX_overflow_mux0001_11_SW2_O
    );
  reg_EX_overflow_mux0001_11_Q : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X77Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => reg_EX_overflow_mux0001_11_SW2_O_0,
      ADR3 => overflow(11),
      O => reg_EX_overflow_mux0001(11)
    );
  reg_EX_overflow_11 : X_FF
    generic map(
      LOC => "SLICE_X77Y44",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_11_DXMUX_18939,
      CE => VCC,
      CLK => proc_reg_EX_overflow_11_CLKINV_18921,
      SET => GND,
      RST => proc_reg_EX_overflow_11_FFX_RSTAND_18944,
      O => reg_EX_overflow_11_7385
    );
  proc_reg_EX_overflow_11_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X77Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_11_FFX_RSTAND_18944
    );
  reg_EX_overflow_mux0001_12_SW0 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X65Y45"
    )
    port map (
      ADR0 => reg_ID_instr_8_7472,
      ADR1 => in1_12_0,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_4_7477,
      O => reg_EX_overflow_mux0001_12_SW0_O
    );
  reg_EX_overflow_mux0001_12_Q : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X65Y45"
    )
    port map (
      ADR0 => overflow(12),
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => VCC,
      ADR3 => reg_EX_overflow_mux0001_12_SW0_O_0,
      O => reg_EX_overflow_mux0001(12)
    );
  reg_EX_overflow_12 : X_FF
    generic map(
      LOC => "SLICE_X65Y45",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_12_DXMUX_18974,
      CE => VCC,
      CLK => proc_reg_EX_overflow_12_CLKINV_18956,
      SET => GND,
      RST => proc_reg_EX_overflow_12_FFX_RSTAND_18979,
      O => reg_EX_overflow_12_7449
    );
  proc_reg_EX_overflow_12_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X65Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_12_FFX_RSTAND_18979
    );
  reg_EX_overflow_mux0001_13_SW0 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X68Y45"
    )
    port map (
      ADR0 => in1_13_0,
      ADR1 => reg_ID_instr_8_7472,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_5_7479,
      O => reg_EX_overflow_mux0001_13_SW0_O
    );
  reg_EX_overflow_mux0001_13_Q : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X68Y45"
    )
    port map (
      ADR0 => overflow(13),
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => reg_EX_overflow_mux0001_13_SW0_O_0,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001(13)
    );
  reg_EX_overflow_13 : X_FF
    generic map(
      LOC => "SLICE_X68Y45",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_13_DXMUX_19009,
      CE => VCC,
      CLK => proc_reg_EX_overflow_13_CLKINV_18991,
      SET => GND,
      RST => proc_reg_EX_overflow_13_FFX_RSTAND_19014,
      O => reg_EX_overflow_13_7452
    );
  proc_reg_EX_overflow_13_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X68Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_13_FFX_RSTAND_19014
    );
  reg_EX_overflow_mux0001_14_SW0 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X69Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_14_0,
      ADR2 => reg_ID_instr_6_7481,
      ADR3 => reg_ID_instr_8_7472,
      O => reg_EX_overflow_mux0001_14_SW0_O
    );
  reg_EX_overflow_mux0001_14_Q : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X69Y46"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_mux0001_14_SW0_O_0,
      ADR3 => overflow(14),
      O => reg_EX_overflow_mux0001(14)
    );
  reg_EX_overflow_14 : X_FF
    generic map(
      LOC => "SLICE_X69Y46",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_14_DXMUX_19044,
      CE => VCC,
      CLK => proc_reg_EX_overflow_14_CLKINV_19026,
      SET => GND,
      RST => proc_reg_EX_overflow_14_FFX_RSTAND_19049,
      O => reg_EX_overflow_14_7455
    );
  proc_reg_EX_overflow_14_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X69Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_14_FFX_RSTAND_19049
    );
  reg_EX_overflow_mux0001_15_SW0 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X64Y48"
    )
    port map (
      ADR0 => reg_ID_instr_7_7483,
      ADR1 => VCC,
      ADR2 => in1_15_0,
      ADR3 => reg_ID_instr_8_7472,
      O => reg_EX_overflow_mux0001_15_SW0_O
    );
  reg_EX_overflow_mux0001_15_Q : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X64Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => overflow(15),
      ADR2 => in1_cmp_eq0013_0,
      ADR3 => reg_EX_overflow_mux0001_15_SW0_O_0,
      O => reg_EX_overflow_mux0001(15)
    );
  reg_EX_overflow_15 : X_FF
    generic map(
      LOC => "SLICE_X64Y48",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_15_DXMUX_19079,
      CE => VCC,
      CLK => proc_reg_EX_overflow_15_CLKINV_19061,
      SET => GND,
      RST => proc_reg_EX_overflow_15_FFX_RSTAND_19084,
      O => reg_EX_overflow_15_7458
    );
  proc_reg_EX_overflow_15_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X64Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_15_FFX_RSTAND_19084
    );
  branch_trigger_cmp_eq00011 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X58Y57"
    )
    port map (
      ADR0 => reg_EX_instr_10_7486,
      ADR1 => reg_EX_instr_9_7487,
      ADR2 => N96_0,
      ADR3 => reg_EX_instr_11_7485,
      O => branch_trigger_cmp_eq0001
    );
  wr_index_0_1 : X_LUT4
    generic map(
      INIT => X"FAFA",
      LOC => "SLICE_X58Y57"
    )
    port map (
      ADR0 => reg_EX_instr_6_7390,
      ADR1 => VCC,
      ADR2 => branch_trigger_cmp_eq0001_0,
      ADR3 => VCC,
      O => wr_index(0)
    );
  in1_cmp_eq000811 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X66Y47"
    )
    port map (
      ADR0 => N102_0,
      ADR1 => reg_ID_instr_13_7491,
      ADR2 => reg_ID_instr_15_7490,
      ADR3 => reg_ID_instr_11_7388,
      O => N13
    );
  ram_addr_and00001 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X66Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => N13_0,
      ADR3 => reg_ID_instr_10_7391,
      O => ram_addr_and0000
    );
  in2_and000578_SW0_G : X_LUT4
    generic map(
      INIT => X"F870",
      LOC => "SLICE_X67Y45"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => in1_or0009_0,
      ADR2 => reg_ID_data2_15_7493,
      ADR3 => reg_EX_result_15_7242,
      O => in2_and000578_SW0_G_O
    );
  in2_and000578_SW01 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X67Y45"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => reg_ID_data2_15_7493,
      ADR2 => VCC,
      ADR3 => in2_and000578_SW0_G_O_0,
      O => N286
    );
  in2_and000578_SW2_G : X_LUT4
    generic map(
      INIT => X"B8F0",
      LOC => "SLICE_X73Y45"
    )
    port map (
      ADR0 => reg_EX_result_14_7243,
      ADR1 => in1_or0009_0,
      ADR2 => reg_ID_data2_14_7495,
      ADR3 => wr_enable_0,
      O => in2_and000578_SW2_G_O
    );
  in2_and000578_SW24 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X73Y45"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => reg_ID_data2_14_7495,
      ADR2 => VCC,
      ADR3 => in2_and000578_SW2_G_O_0,
      O => N289
    );
  in2_and000578_SW4_G : X_LUT4
    generic map(
      INIT => X"EC4C",
      LOC => "SLICE_X76Y44"
    )
    port map (
      ADR0 => in1_or0009_0,
      ADR1 => reg_ID_data2_13_7497,
      ADR2 => wr_enable_0,
      ADR3 => reg_EX_result_13_7244,
      O => in2_and000578_SW4_G_O
    );
  in2_and000578_SW41 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X76Y44"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => reg_ID_data2_13_7497,
      ADR2 => VCC,
      ADR3 => in2_and000578_SW4_G_O_0,
      O => N292
    );
  in2_and000578_SW6_G : X_LUT4
    generic map(
      INIT => X"EC4C",
      LOC => "SLICE_X76Y42"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_ID_data2_12_7499,
      ADR2 => in1_or0009_0,
      ADR3 => reg_EX_result_12_7245,
      O => in2_and000578_SW6_G_O
    );
  in2_and000578_SW61 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X76Y42"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => reg_ID_data2_12_7499,
      ADR2 => VCC,
      ADR3 => in2_and000578_SW6_G_O_0,
      O => N295
    );
  in2_and000578_SW8_G : X_LUT4
    generic map(
      INIT => X"CAAA",
      LOC => "SLICE_X67Y50"
    )
    port map (
      ADR0 => reg_ID_data2_9_7468,
      ADR1 => reg_EX_result_9_7248,
      ADR2 => wr_enable_0,
      ADR3 => in1_or0009_0,
      O => N405
    );
  in2_and000578_SW81 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X67Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => N405_0,
      ADR3 => reg_ID_data2_9_7468,
      O => N298
    );
  in1_or0003_SW0 : X_LUT4
    generic map(
      INIT => X"FFFD",
      LOC => "SLICE_X65Y49"
    )
    port map (
      ADR0 => reg_EX_instr_10_7486,
      ADR1 => reg_EX_instr_15_7505,
      ADR2 => reg_EX_instr_12_7503,
      ADR3 => reg_EX_instr_14_7504,
      O => in1_or0003_SW0_O
    );
  in1_or0003 : X_LUT4
    generic map(
      INIT => X"0014",
      LOC => "SLICE_X65Y49"
    )
    port map (
      ADR0 => reg_EX_instr_11_7485,
      ADR1 => reg_EX_instr_9_7487,
      ADR2 => reg_EX_instr_13_7501,
      ADR3 => in1_or0003_SW0_O_0,
      O => in1_or0003_19275
    );
  in1_0_SW2 : X_LUT4
    generic map(
      INIT => X"DF80",
      LOC => "SLICE_X76Y62"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_EX_result_0_7257,
      ADR2 => in1_and0007101_0,
      ADR3 => reg_ID_data1_0_7507,
      O => N248
    );
  in1_0_Q : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X76Y62"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_0_7394,
      ADR2 => in1_and0003_0,
      ADR3 => N248_0,
      O => in1(0)
    );
  in1_1_SW2 : X_LUT4
    generic map(
      INIT => X"F780",
      LOC => "SLICE_X77Y61"
    )
    port map (
      ADR0 => in1_and0007101_0,
      ADR1 => wr_enable_0,
      ADR2 => reg_EX_result_1_7256,
      ADR3 => reg_ID_data1_1_7509,
      O => N246
    );
  in1_1_Q : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X77Y61"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_and0003_0,
      ADR2 => reg_EX_overflow_1_7396,
      ADR3 => N246_0,
      O => in1(1)
    );
  in1_2_SW2 : X_LUT4
    generic map(
      INIT => X"EA2A",
      LOC => "SLICE_X78Y60"
    )
    port map (
      ADR0 => reg_ID_data1_2_7510,
      ADR1 => in1_and0007101_0,
      ADR2 => wr_enable_0,
      ADR3 => reg_EX_result_2_7255,
      O => N244
    );
  in1_2_Q : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X78Y60"
    )
    port map (
      ADR0 => reg_EX_overflow_2_7398,
      ADR1 => VCC,
      ADR2 => in1_and0003_0,
      ADR3 => N244_0,
      O => in1(2)
    );
  in1_3_SW2 : X_LUT4
    generic map(
      INIT => X"CAAA",
      LOC => "SLICE_X70Y51"
    )
    port map (
      ADR0 => reg_ID_data1_3_7511,
      ADR1 => reg_EX_result_3_7254,
      ADR2 => in1_and0007101_0,
      ADR3 => wr_enable_0,
      O => N242
    );
  in1_3_Q : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X70Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_and0003_0,
      ADR2 => N242_0,
      ADR3 => reg_EX_overflow_3_7400,
      O => in1(3)
    );
  in1_4_SW2 : X_LUT4
    generic map(
      INIT => X"EA2A",
      LOC => "SLICE_X66Y52"
    )
    port map (
      ADR0 => reg_ID_data1_4_7512,
      ADR1 => wr_enable_0,
      ADR2 => in1_and0007101_0,
      ADR3 => reg_EX_result_4_7253,
      O => N240
    );
  in1_4_Q : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X66Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_4_7404,
      ADR2 => in1_and0003_0,
      ADR3 => N240_0,
      O => in1(4)
    );
  in1_5_SW2 : X_LUT4
    generic map(
      INIT => X"E2AA",
      LOC => "SLICE_X79Y38"
    )
    port map (
      ADR0 => reg_ID_data1_5_7513,
      ADR1 => wr_enable_0,
      ADR2 => reg_EX_result_5_7252,
      ADR3 => in1_and0007101_0,
      O => N238
    );
  in1_5_Q : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X79Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_and0003_0,
      ADR2 => N238_0,
      ADR3 => reg_EX_overflow_5_7407,
      O => in1(5)
    );
  in1_6_SW2 : X_LUT4
    generic map(
      INIT => X"DF80",
      LOC => "SLICE_X76Y59"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_EX_result_6_7251,
      ADR2 => in1_and0007101_0,
      ADR3 => reg_ID_data1_6_7514,
      O => N236
    );
  in1_6_Q : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X76Y59"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => VCC,
      ADR2 => N236_0,
      ADR3 => reg_EX_overflow_6_7410,
      O => in1(6)
    );
  in1_7_SW2 : X_LUT4
    generic map(
      INIT => X"CAAA",
      LOC => "SLICE_X76Y56"
    )
    port map (
      ADR0 => reg_ID_data1_7_7515,
      ADR1 => reg_EX_result_7_7250,
      ADR2 => in1_and0007101_0,
      ADR3 => wr_enable_0,
      O => N234
    );
  in1_7_Q : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X76Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_7_7413,
      ADR2 => in1_and0003_0,
      ADR3 => N234_0,
      O => in1(7)
    );
  in1_8_SW2 : X_LUT4
    generic map(
      INIT => X"D8F0",
      LOC => "SLICE_X76Y57"
    )
    port map (
      ADR0 => in1_and0007101_0,
      ADR1 => reg_EX_result_8_7249,
      ADR2 => reg_ID_data1_8_7516,
      ADR3 => wr_enable_0,
      O => N252
    );
  in1_8_Q : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X76Y57"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => reg_EX_overflow_8_7416,
      ADR2 => N252_0,
      ADR3 => VCC,
      O => in1(8)
    );
  in1_9_SW2 : X_LUT4
    generic map(
      INIT => X"DF80",
      LOC => "SLICE_X69Y50"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_EX_result_9_7248,
      ADR2 => in1_and0007101_0,
      ADR3 => reg_ID_data1_9_7517,
      O => N250
    );
  in1_9_Q : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X69Y50"
    )
    port map (
      ADR0 => reg_EX_overflow_9_7419,
      ADR1 => in1_and0003_0,
      ADR2 => N250_0,
      ADR3 => VCC,
      O => in1(9)
    );
  in2_and000578_SW10_G : X_LUT4
    generic map(
      INIT => X"F870",
      LOC => "SLICE_X66Y51"
    )
    port map (
      ADR0 => in1_or0009_0,
      ADR1 => wr_enable_0,
      ADR2 => reg_ID_data2_8_7466,
      ADR3 => reg_EX_result_8_7249,
      O => N407
    );
  in2_and000578_SW101 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X66Y51"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => reg_ID_data2_8_7466,
      ADR2 => N407_0,
      ADR3 => VCC,
      O => N301
    );
  reg_EX_overflow_mux0001_2_SW2 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X79Y47"
    )
    port map (
      ADR0 => in1_2_0,
      ADR1 => reg_ID_instr_8_7472,
      ADR2 => reg_ID_instr_2_7473,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001_2_SW2_O
    );
  reg_EX_overflow_mux0001_2_Q : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X79Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => overflow(2),
      ADR3 => reg_EX_overflow_mux0001_2_SW2_O_0,
      O => reg_EX_overflow_mux0001(2)
    );
  reg_EX_overflow_2 : X_FF
    generic map(
      LOC => "SLICE_X79Y47",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_2_DXMUX_19952,
      CE => VCC,
      CLK => proc_reg_EX_overflow_2_CLKINV_19934,
      SET => GND,
      RST => proc_reg_EX_overflow_2_FFX_RSTAND_19957,
      O => reg_EX_overflow_2_7398
    );
  proc_reg_EX_overflow_2_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X79Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_2_FFX_RSTAND_19957
    );
  reg_EX_overflow_mux0001_3_SW2 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X62Y50"
    )
    port map (
      ADR0 => reg_ID_instr_3_7475,
      ADR1 => in1_3_0,
      ADR2 => reg_ID_instr_8_7472,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001_3_SW2_O
    );
  reg_EX_overflow_mux0001_3_Q : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X62Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => overflow(3),
      ADR3 => reg_EX_overflow_mux0001_3_SW2_O_0,
      O => reg_EX_overflow_mux0001(3)
    );
  reg_EX_overflow_3 : X_FF
    generic map(
      LOC => "SLICE_X62Y50",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_3_DXMUX_19987,
      CE => VCC,
      CLK => proc_reg_EX_overflow_3_CLKINV_19969,
      SET => GND,
      RST => proc_reg_EX_overflow_3_FFX_RSTAND_19992,
      O => reg_EX_overflow_3_7400
    );
  proc_reg_EX_overflow_3_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X62Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_3_FFX_RSTAND_19992
    );
  reg_EX_overflow_mux0001_4_SW2 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X67Y46"
    )
    port map (
      ADR0 => in1_4_0,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_8_7472,
      ADR3 => reg_ID_instr_4_7477,
      O => reg_EX_overflow_mux0001_4_SW2_O
    );
  reg_EX_overflow_mux0001_4_Q : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X67Y46"
    )
    port map (
      ADR0 => overflow(4),
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => reg_EX_overflow_mux0001_4_SW2_O_0,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001(4)
    );
  reg_EX_overflow_4 : X_FF
    generic map(
      LOC => "SLICE_X67Y46",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_4_DXMUX_20022,
      CE => VCC,
      CLK => proc_reg_EX_overflow_4_CLKINV_20004,
      SET => GND,
      RST => proc_reg_EX_overflow_4_FFX_RSTAND_20027,
      O => reg_EX_overflow_4_7404
    );
  proc_reg_EX_overflow_4_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X67Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_4_FFX_RSTAND_20027
    );
  reg_EX_overflow_mux0001_5_SW2 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X68Y47"
    )
    port map (
      ADR0 => in1_5_0,
      ADR1 => reg_ID_instr_8_7472,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_5_7479,
      O => reg_EX_overflow_mux0001_5_SW2_O
    );
  reg_EX_overflow_mux0001_5_Q : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X68Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => reg_EX_overflow_mux0001_5_SW2_O_0,
      ADR3 => overflow(5),
      O => reg_EX_overflow_mux0001(5)
    );
  reg_EX_overflow_5 : X_FF
    generic map(
      LOC => "SLICE_X68Y47",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_5_DXMUX_20057,
      CE => VCC,
      CLK => proc_reg_EX_overflow_5_CLKINV_20039,
      SET => GND,
      RST => proc_reg_EX_overflow_5_FFX_RSTAND_20062,
      O => reg_EX_overflow_5_7407
    );
  proc_reg_EX_overflow_5_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X68Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_5_FFX_RSTAND_20062
    );
  reg_EX_overflow_mux0001_6_SW2 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X66Y50"
    )
    port map (
      ADR0 => reg_ID_instr_8_7472,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_6_7481,
      ADR3 => in1_6_0,
      O => reg_EX_overflow_mux0001_6_SW2_O
    );
  reg_EX_overflow_mux0001_6_Q : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X66Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => overflow(6),
      ADR2 => in1_cmp_eq0013_0,
      ADR3 => reg_EX_overflow_mux0001_6_SW2_O_0,
      O => reg_EX_overflow_mux0001(6)
    );
  reg_EX_overflow_6 : X_FF
    generic map(
      LOC => "SLICE_X66Y50",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_6_DXMUX_20092,
      CE => VCC,
      CLK => proc_reg_EX_overflow_6_CLKINV_20074,
      SET => GND,
      RST => proc_reg_EX_overflow_6_FFX_RSTAND_20097,
      O => reg_EX_overflow_6_7410
    );
  proc_reg_EX_overflow_6_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X66Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_6_FFX_RSTAND_20097
    );
  reg_EX_overflow_mux0001_7_SW2 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X69Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_8_7472,
      ADR2 => reg_ID_instr_7_7483,
      ADR3 => in1_7_0,
      O => reg_EX_overflow_mux0001_7_SW2_O
    );
  reg_EX_overflow_mux0001_7_Q : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X69Y48"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => reg_EX_overflow_mux0001_7_SW2_O_0,
      ADR2 => VCC,
      ADR3 => overflow(7),
      O => reg_EX_overflow_mux0001(7)
    );
  reg_EX_overflow_7 : X_FF
    generic map(
      LOC => "SLICE_X69Y48",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_7_DXMUX_20127,
      CE => VCC,
      CLK => proc_reg_EX_overflow_7_CLKINV_20109,
      SET => GND,
      RST => proc_reg_EX_overflow_7_FFX_RSTAND_20132,
      O => reg_EX_overflow_7_7413
    );
  proc_reg_EX_overflow_7_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X69Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_7_FFX_RSTAND_20132
    );
  reg_EX_overflow_mux0001_8_SW2 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X74Y44"
    )
    port map (
      ADR0 => reg_ID_instr_0_7389,
      ADR1 => reg_ID_instr_8_7472,
      ADR2 => VCC,
      ADR3 => in1_8_0,
      O => reg_EX_overflow_mux0001_8_SW2_O
    );
  reg_EX_overflow_mux0001_8_Q : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X74Y44"
    )
    port map (
      ADR0 => overflow(8),
      ADR1 => VCC,
      ADR2 => in1_cmp_eq0013_0,
      ADR3 => reg_EX_overflow_mux0001_8_SW2_O_0,
      O => reg_EX_overflow_mux0001(8)
    );
  reg_EX_overflow_8 : X_FF
    generic map(
      LOC => "SLICE_X74Y44",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_8_DXMUX_20162,
      CE => VCC,
      CLK => proc_reg_EX_overflow_8_CLKINV_20144,
      SET => GND,
      RST => proc_reg_EX_overflow_8_FFX_RSTAND_20167,
      O => reg_EX_overflow_8_7416
    );
  proc_reg_EX_overflow_8_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X74Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_8_FFX_RSTAND_20167
    );
  reg_EX_overflow_mux0001_9_SW2 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X75Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_9_0,
      ADR2 => reg_ID_instr_1_7546,
      ADR3 => reg_ID_instr_8_7472,
      O => reg_EX_overflow_mux0001_9_SW2_O
    );
  reg_EX_overflow_mux0001_9_Q : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X75Y42"
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
      LOC => "SLICE_X75Y42",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_overflow_9_DXMUX_20197,
      CE => VCC,
      CLK => proc_reg_EX_overflow_9_CLKINV_20179,
      SET => GND,
      RST => proc_reg_EX_overflow_9_FFX_RSTAND_20202,
      O => reg_EX_overflow_9_7419
    );
  proc_reg_EX_overflow_9_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X75Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_overflow_9_FFX_RSTAND_20202
    );
  alu_mode_0_1_SW0 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X65Y41"
    )
    port map (
      ADR0 => reg_ID_instr_10_7391,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_13_7491,
      ADR3 => reg_ID_instr_11_7388,
      O => alu_mode_0_1_SW0_O
    );
  alu_mode_0_1 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X65Y41"
    )
    port map (
      ADR0 => reg_ID_instr_15_7490,
      ADR1 => reg_ID_instr_14_7520,
      ADR2 => reg_ID_instr_12_7519,
      ADR3 => alu_mode_0_1_SW0_O_0,
      O => N15
    );
  in1_or000831 : X_LUT4
    generic map(
      INIT => X"000F",
      LOC => "SLICE_X66Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_14_7520,
      ADR3 => reg_ID_instr_12_7519,
      O => N102
    );
  alu_mode_2_1 : X_LUT4
    generic map(
      INIT => X"0040",
      LOC => "SLICE_X66Y43"
    )
    port map (
      ADR0 => reg_ID_instr_15_7490,
      ADR1 => reg_ID_instr_11_7388,
      ADR2 => N102_0,
      ADR3 => reg_ID_instr_13_7491,
      O => alu_mode(2)
    );
  in1_and000318_SW0 : X_LUT4
    generic map(
      INIT => X"CCCD",
      LOC => "SLICE_X67Y40"
    )
    port map (
      ADR0 => N324_0,
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => N88_0,
      ADR3 => N268_0,
      O => in1_and000318_SW0_O
    );
  in1_and000324 : X_LUT4
    generic map(
      INIT => X"A8A0",
      LOC => "SLICE_X67Y40"
    )
    port map (
      ADR0 => in1_or0003_0,
      ADR1 => in1_and000312_0,
      ADR2 => in1_and000318_SW0_O_0,
      ADR3 => in1_or0008_0,
      O => in1_and0003
    );
  in1_and000771 : X_LUT4
    generic map(
      INIT => X"9009",
      LOC => "SLICE_X66Y48"
    )
    port map (
      ADR0 => reg_ID_instr_7_7483,
      ADR1 => reg_EX_instr_7_7561,
      ADR2 => reg_ID_instr_8_7472,
      ADR3 => reg_EX_instr_8_7562,
      O => in1_and000771_O
    );
  in1_and000772 : X_LUT4
    generic map(
      INIT => X"A500",
      LOC => "SLICE_X66Y48"
    )
    port map (
      ADR0 => reg_EX_instr_6_7390,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_6_7481,
      ADR3 => in1_and000771_O_0,
      O => in1_and000772_20297
    );
  in2_and000578_SW19 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X62Y46"
    )
    port map (
      ADR0 => reg_EX_result_4_7253,
      ADR1 => VCC,
      ADR2 => reg_ID_data2_4_7465,
      ADR3 => wr_enable_0,
      O => N314
    );
  in2_4_SW2 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X62Y46"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => VCC,
      ADR2 => N313,
      ADR3 => N314_0,
      O => N228
    );
  in1_cmp_eq00131_SW0 : X_LUT4
    generic map(
      INIT => X"FFEF",
      LOC => "SLICE_X64Y39"
    )
    port map (
      ADR0 => reg_ID_instr_12_7519,
      ADR1 => reg_ID_instr_11_7388,
      ADR2 => reg_ID_instr_10_7391,
      ADR3 => reg_ID_instr_9_7378,
      O => in1_cmp_eq00131_SW0_O
    );
  in1_cmp_eq00131 : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X64Y39"
    )
    port map (
      ADR0 => reg_ID_instr_14_7520,
      ADR1 => reg_ID_instr_15_7490,
      ADR2 => in1_cmp_eq00131_SW0_O_0,
      ADR3 => reg_ID_instr_13_7491,
      O => in1_cmp_eq0013
    );
  in1_cmp_eq00143_SW0 : X_LUT4
    generic map(
      INIT => X"6FF6",
      LOC => "SLICE_X67Y48"
    )
    port map (
      ADR0 => reg_EX_instr_6_7390,
      ADR1 => reg_ID_instr_3_7475,
      ADR2 => reg_EX_instr_7_7561,
      ADR3 => reg_ID_instr_4_7477,
      O => in1_cmp_eq00143_SW0_O
    );
  in1_cmp_eq00143 : X_LUT4
    generic map(
      INIT => X"0A05",
      LOC => "SLICE_X67Y48"
    )
    port map (
      ADR0 => reg_EX_instr_8_7562,
      ADR1 => VCC,
      ADR2 => in1_cmp_eq00143_SW0_O_0,
      ADR3 => reg_ID_instr_5_7479,
      O => in1_cmp_eq0014
    );
  in2_and000578_SW17 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X67Y57"
    )
    port map (
      ADR0 => reg_EX_result_5_7252,
      ADR1 => VCC,
      ADR2 => wr_enable_0,
      ADR3 => reg_ID_data2_5_7464,
      O => N311
    );
  in2_5_SW2 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X67Y57"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => VCC,
      ADR2 => N310,
      ADR3 => N311_0,
      O => N226
    );
  in2_and000578_SW15 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X65Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_data2_6_7463,
      ADR2 => reg_EX_result_6_7251,
      ADR3 => wr_enable_0,
      O => N308
    );
  in2_6_SW2 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X65Y57"
    )
    port map (
      ADR0 => N308_0,
      ADR1 => VCC,
      ADR2 => in2_and000552_0,
      ADR3 => N307,
      O => N224
    );
  in2_and000578_SW13 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X66Y54"
    )
    port map (
      ADR0 => reg_EX_result_7_7250,
      ADR1 => wr_enable_0,
      ADR2 => VCC,
      ADR3 => reg_ID_data2_7_7460,
      O => N305
    );
  in2_7_SW2 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X66Y54"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => N304,
      ADR2 => VCC,
      ADR3 => N305_0,
      O => N222
    );
  wr_enable_or000160 : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X67Y47"
    )
    port map (
      ADR0 => reg_EX_instr_11_7485,
      ADR1 => reg_EX_instr_13_7501,
      ADR2 => reg_EX_instr_10_7486,
      ADR3 => reg_EX_instr_9_7487,
      O => wr_enable_or000160_O
    );
  wr_enable_or000185 : X_LUT4
    generic map(
      INIT => X"8A88",
      LOC => "SLICE_X67Y47"
    )
    port map (
      ADR0 => wr_enable_or000181_0,
      ADR1 => wr_enable_or000160_O_0,
      ADR2 => reg_EX_instr_14_7504,
      ADR3 => wr_enable_or000134_0,
      O => wr_enable
    );
  in1_or00091 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X66Y45"
    )
    port map (
      ADR0 => reg_ID_instr_15_7490,
      ADR1 => N322_0,
      ADR2 => reg_ID_instr_13_7491,
      ADR3 => reg_ID_instr_14_7520,
      O => in1_or0009
    );
  in2_and000221 : X_LUT4
    generic map(
      INIT => X"F800",
      LOC => "SLICE_X66Y45"
    )
    port map (
      ADR0 => in1_or0009_0,
      ADR1 => in2_and00028_0,
      ADR2 => in2_and00025_0,
      ADR3 => in1_or0003_0,
      O => in2_and0002
    );
  in1_or000821 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X66Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_14_7520,
      ADR3 => reg_ID_instr_11_7388,
      O => in1_or000821_O
    );
  in1_or000829 : X_LUT4
    generic map(
      INIT => X"70E0",
      LOC => "SLICE_X66Y41"
    )
    port map (
      ADR0 => reg_ID_instr_10_7391,
      ADR1 => reg_ID_instr_9_7378,
      ADR2 => in1_or000821_O_0,
      ADR3 => reg_ID_instr_15_7490,
      O => in1_or000829_20513
    );
  in1_or000861 : X_LUT4
    generic map(
      INIT => X"0810",
      LOC => "SLICE_X66Y40"
    )
    port map (
      ADR0 => reg_ID_instr_10_7391,
      ADR1 => reg_ID_instr_9_7378,
      ADR2 => reg_ID_instr_14_7520,
      ADR3 => reg_ID_instr_15_7490,
      O => in1_or000861_O
    );
  in1_or000894 : X_LUT4
    generic map(
      INIT => X"D0C0",
      LOC => "SLICE_X66Y40"
    )
    port map (
      ADR0 => reg_ID_instr_11_7388,
      ADR1 => in1_or000829_0,
      ADR2 => in1_or000892_0,
      ADR3 => in1_or000861_O_0,
      O => in1_or0008
    );
  in1_and0008_SW2 : X_LUT4
    generic map(
      INIT => X"BBB7",
      LOC => "SLICE_X65Y37"
    )
    port map (
      ADR0 => reg_ID_instr_11_7388,
      ADR1 => reg_ID_instr_0_7389,
      ADR2 => reg_ID_instr_9_7378,
      ADR3 => reg_ID_instr_10_7391,
      O => in1_and0008_SW2_O
    );
  in2_and00025 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X65Y37"
    )
    port map (
      ADR0 => reg_ID_instr_1_7546,
      ADR1 => N88_0,
      ADR2 => reg_ID_instr_2_7473,
      ADR3 => in1_and0008_SW2_O_0,
      O => in2_and00025_20561
    );
  reg_ID_instr_mux0001_15_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X65Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_0_7577,
      O => reg_ID_instr_mux0001(15)
    );
  reg_ID_instr_0 : X_FF
    generic map(
      LOC => "SLICE_X65Y40",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_1_DYMUX_20583,
      CE => VCC,
      CLK => proc_reg_ID_instr_1_CLKINV_20572,
      SET => GND,
      RST => proc_reg_ID_instr_1_SRINV_20573,
      O => reg_ID_instr_0_7389
    );
  reg_ID_instr_mux0001_14_1 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X65Y40"
    )
    port map (
      ADR0 => reg_IF_instr_1_7576,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => branch_trigger_0,
      O => reg_ID_instr_mux0001(14)
    );
  reg_ID_instr_1 : X_FF
    generic map(
      LOC => "SLICE_X65Y40",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_1_DXMUX_20599,
      CE => VCC,
      CLK => proc_reg_ID_instr_1_CLKINV_20572,
      SET => GND,
      RST => proc_reg_ID_instr_1_SRINV_20573,
      O => reg_ID_instr_1_7546
    );
  reg_ID_instr_mux0001_13_1 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X65Y44"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_2_7579,
      O => reg_ID_instr_mux0001(13)
    );
  reg_ID_instr_2 : X_FF
    generic map(
      LOC => "SLICE_X65Y44",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_3_DYMUX_20625,
      CE => VCC,
      CLK => proc_reg_ID_instr_3_CLKINV_20614,
      SET => GND,
      RST => proc_reg_ID_instr_3_SRINV_20615,
      O => reg_ID_instr_2_7473
    );
  reg_ID_instr_mux0001_12_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X65Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => branch_trigger_0,
      ADR3 => reg_IF_instr_3_7578,
      O => reg_ID_instr_mux0001(12)
    );
  reg_ID_instr_3 : X_FF
    generic map(
      LOC => "SLICE_X65Y44",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_3_DXMUX_20641,
      CE => VCC,
      CLK => proc_reg_ID_instr_3_CLKINV_20614,
      SET => GND,
      RST => proc_reg_ID_instr_3_SRINV_20615,
      O => reg_ID_instr_3_7475
    );
  reg_ID_instr_mux0001_11_1 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X64Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => reg_IF_instr_4_7581,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(11)
    );
  reg_ID_instr_4 : X_FF
    generic map(
      LOC => "SLICE_X64Y45",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_5_DYMUX_20667,
      CE => VCC,
      CLK => proc_reg_ID_instr_5_CLKINV_20656,
      SET => GND,
      RST => proc_reg_ID_instr_5_SRINV_20657,
      O => reg_ID_instr_4_7477
    );
  reg_ID_instr_mux0001_10_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X64Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_5_7580,
      O => reg_ID_instr_mux0001(10)
    );
  reg_ID_instr_5 : X_FF
    generic map(
      LOC => "SLICE_X64Y45",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_5_DXMUX_20683,
      CE => VCC,
      CLK => proc_reg_ID_instr_5_CLKINV_20656,
      SET => GND,
      RST => proc_reg_ID_instr_5_SRINV_20657,
      O => reg_ID_instr_5_7479
    );
  reg_ID_instr_mux0001_9_1 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X63Y50"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => reg_IF_instr_6_7583,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(9)
    );
  reg_ID_instr_6 : X_FF
    generic map(
      LOC => "SLICE_X63Y50",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_7_DYMUX_20709,
      CE => VCC,
      CLK => proc_reg_ID_instr_7_CLKINV_20698,
      SET => GND,
      RST => proc_reg_ID_instr_7_SRINV_20699,
      O => reg_ID_instr_6_7481
    );
  reg_ID_instr_mux0001_8_1 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X63Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => reg_IF_instr_7_7582,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(8)
    );
  reg_ID_instr_7 : X_FF
    generic map(
      LOC => "SLICE_X63Y50",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_7_DXMUX_20725,
      CE => VCC,
      CLK => proc_reg_ID_instr_7_CLKINV_20698,
      SET => GND,
      RST => proc_reg_ID_instr_7_SRINV_20699,
      O => reg_ID_instr_7_7483
    );
  reg_ID_instr_mux0001_7_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X65Y38"
    )
    port map (
      ADR0 => reg_IF_instr_8_7585,
      ADR1 => VCC,
      ADR2 => branch_trigger_0,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(7)
    );
  reg_ID_instr_8 : X_FF
    generic map(
      LOC => "SLICE_X65Y38",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_9_DYMUX_20751,
      CE => VCC,
      CLK => proc_reg_ID_instr_9_CLKINV_20740,
      SET => GND,
      RST => proc_reg_ID_instr_9_SRINV_20741,
      O => reg_ID_instr_8_7472
    );
  reg_ID_instr_mux0001_6_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X65Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_9_7584,
      ADR2 => branch_trigger_0,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(6)
    );
  reg_ID_instr_9 : X_FF
    generic map(
      LOC => "SLICE_X65Y38",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_instr_9_DXMUX_20767,
      CE => VCC,
      CLK => proc_reg_ID_instr_9_CLKINV_20740,
      SET => GND,
      RST => proc_reg_ID_instr_9_SRINV_20741,
      O => reg_ID_instr_9_7378
    );
  reg_IF_instr_mux0001_15_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X63Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => branch_trigger_0,
      ADR3 => rom_data(0),
      O => reg_IF_instr_mux0001(15)
    );
  reg_IF_instr_0 : X_FF
    generic map(
      LOC => "SLICE_X63Y53",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_1_DYMUX_20793,
      CE => VCC,
      CLK => proc_reg_IF_instr_1_CLKINV_20782,
      SET => GND,
      RST => proc_reg_IF_instr_1_SRINV_20783,
      O => reg_IF_instr_0_7577
    );
  reg_IF_instr_mux0001_14_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X63Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rom_data(1),
      ADR2 => branch_trigger_0,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(14)
    );
  reg_IF_instr_1 : X_FF
    generic map(
      LOC => "SLICE_X63Y53",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_1_DXMUX_20809,
      CE => VCC,
      CLK => proc_reg_IF_instr_1_CLKINV_20782,
      SET => GND,
      RST => proc_reg_IF_instr_1_SRINV_20783,
      O => reg_IF_instr_1_7576
    );
  reg_IF_instr_mux0001_13_1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X65Y53"
    )
    port map (
      ADR0 => rom_data(2),
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(13)
    );
  reg_IF_instr_2 : X_FF
    generic map(
      LOC => "SLICE_X65Y53",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_3_DYMUX_20835,
      CE => VCC,
      CLK => proc_reg_IF_instr_3_CLKINV_20824,
      SET => GND,
      RST => proc_reg_IF_instr_3_SRINV_20825,
      O => reg_IF_instr_2_7579
    );
  reg_IF_instr_mux0001_12_1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X65Y53"
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
      LOC => "SLICE_X65Y53",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_3_DXMUX_20851,
      CE => VCC,
      CLK => proc_reg_IF_instr_3_CLKINV_20824,
      SET => GND,
      RST => proc_reg_IF_instr_3_SRINV_20825,
      O => reg_IF_instr_3_7578
    );
  reg_IF_instr_mux0001_11_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X64Y52"
    )
    port map (
      ADR0 => rom_data(4),
      ADR1 => VCC,
      ADR2 => branch_trigger_0,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(11)
    );
  reg_IF_instr_4 : X_FF
    generic map(
      LOC => "SLICE_X64Y52",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_5_DYMUX_20877,
      CE => VCC,
      CLK => proc_reg_IF_instr_5_CLKINV_20866,
      SET => GND,
      RST => proc_reg_IF_instr_5_SRINV_20867,
      O => reg_IF_instr_4_7581
    );
  reg_IF_instr_mux0001_10_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X64Y52"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => VCC,
      ADR2 => rom_data(5),
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(10)
    );
  reg_IF_instr_5 : X_FF
    generic map(
      LOC => "SLICE_X64Y52",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_5_DXMUX_20893,
      CE => VCC,
      CLK => proc_reg_IF_instr_5_CLKINV_20866,
      SET => GND,
      RST => proc_reg_IF_instr_5_SRINV_20867,
      O => reg_IF_instr_5_7580
    );
  reg_IF_instr_mux0001_8_1 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X62Y54"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => rom_data(7),
      O => reg_IF_instr_mux0001(8)
    );
  reg_IF_instr_10 : X_FF
    generic map(
      LOC => "SLICE_X67Y55",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_11_DYMUX_21110,
      CE => VCC,
      CLK => proc_reg_IF_instr_11_CLKINV_21099,
      SET => GND,
      RST => proc_reg_IF_instr_11_SRINV_21100,
      O => reg_IF_instr_10_7587
    );
  reg_IF_instr_mux0001_4_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X67Y55"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => VCC,
      ADR2 => rom_data(11),
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(4)
    );
  reg_IF_instr_11 : X_FF
    generic map(
      LOC => "SLICE_X67Y55",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_11_DXMUX_21126,
      CE => VCC,
      CLK => proc_reg_IF_instr_11_CLKINV_21099,
      SET => GND,
      RST => proc_reg_IF_instr_11_SRINV_21100,
      O => reg_IF_instr_11_7586
    );
  reg_IF_instr_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X69Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => branch_trigger_0,
      ADR3 => rom_data(12),
      O => reg_IF_instr_mux0001(3)
    );
  reg_IF_instr_12 : X_FF
    generic map(
      LOC => "SLICE_X69Y49",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_13_DYMUX_21152,
      CE => VCC,
      CLK => proc_reg_IF_instr_13_CLKINV_21141,
      SET => GND,
      RST => proc_reg_IF_instr_13_SRINV_21142,
      O => reg_IF_instr_12_7589
    );
  reg_IF_instr_mux0001_2_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X69Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rom_data(13),
      ADR2 => branch_trigger_0,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(2)
    );
  reg_IF_instr_13 : X_FF
    generic map(
      LOC => "SLICE_X69Y49",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_13_DXMUX_21168,
      CE => VCC,
      CLK => proc_reg_IF_instr_13_CLKINV_21141,
      SET => GND,
      RST => proc_reg_IF_instr_13_SRINV_21142,
      O => reg_IF_instr_13_7588
    );
  reg_IF_instr_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X67Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => rom_data(14),
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(1)
    );
  reg_IF_instr_14 : X_FF
    generic map(
      LOC => "SLICE_X67Y52",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_15_DYMUX_21194,
      CE => VCC,
      CLK => proc_reg_IF_instr_15_CLKINV_21183,
      SET => GND,
      RST => proc_reg_IF_instr_15_SRINV_21184,
      O => reg_IF_instr_14_7591
    );
  reg_IF_instr_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X67Y52"
    )
    port map (
      ADR0 => rom_data(15),
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(0)
    );
  reg_IF_instr_15 : X_FF
    generic map(
      LOC => "SLICE_X67Y52",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_15_DXMUX_21210,
      CE => VCC,
      CLK => proc_reg_IF_instr_15_CLKINV_21183,
      SET => GND,
      RST => proc_reg_IF_instr_15_SRINV_21184,
      O => reg_IF_instr_15_7590
    );
  reg_EX_instr_mux0001_9_1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X64Y44"
    )
    port map (
      ADR0 => reg_ID_instr_6_7481,
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_EX_instr_mux0001(9)
    );
  reg_EX_instr_6 : X_FF
    generic map(
      LOC => "SLICE_X64Y44",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_7_DYMUX_21236,
      CE => VCC,
      CLK => proc_reg_EX_instr_7_CLKINV_21225,
      SET => GND,
      RST => proc_reg_EX_instr_7_SRINV_21226,
      O => reg_EX_instr_6_7390
    );
  reg_EX_instr_mux0001_8_1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X64Y44"
    )
    port map (
      ADR0 => reg_ID_instr_7_7483,
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_EX_instr_mux0001(8)
    );
  reg_EX_instr_7 : X_FF
    generic map(
      LOC => "SLICE_X64Y44",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_7_DXMUX_21252,
      CE => VCC,
      CLK => proc_reg_EX_instr_7_CLKINV_21225,
      SET => GND,
      RST => proc_reg_EX_instr_7_SRINV_21226,
      O => reg_EX_instr_7_7561
    );
  reg_EX_instr_mux0001_7_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X64Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_8_7472,
      O => reg_EX_instr_mux0001(7)
    );
  reg_EX_instr_8 : X_FF
    generic map(
      LOC => "SLICE_X64Y47",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_9_DYMUX_21278,
      CE => VCC,
      CLK => proc_reg_EX_instr_9_CLKINV_21267,
      SET => GND,
      RST => proc_reg_EX_instr_9_SRINV_21268,
      O => reg_EX_instr_8_7562
    );
  reg_EX_instr_mux0001_6_1 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X64Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => reg_ID_instr_9_7378,
      ADR3 => VCC,
      O => reg_EX_instr_mux0001(6)
    );
  reg_EX_instr_9 : X_FF
    generic map(
      LOC => "SLICE_X64Y47",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_9_DXMUX_21294,
      CE => VCC,
      CLK => proc_reg_EX_instr_9_CLKINV_21267,
      SET => GND,
      RST => proc_reg_EX_instr_9_SRINV_21268,
      O => reg_EX_instr_9_7487
    );
  PC_next_0_1 : X_LUT4
    generic map(
      INIT => X"C0F3",
      LOC => "SLICE_X76Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_0,
      ADR2 => reg_EX_result_0_7257,
      ADR3 => PC(0),
      O => PC_next(0)
    );
  PC_0 : X_FF
    generic map(
      LOC => "SLICE_X76Y46",
      INIT => '0'
    )
    port map (
      I => proc_PC_1_DYMUX_21322,
      CE => VCC,
      CLK => proc_PC_1_CLKINVNOT,
      SET => GND,
      RST => proc_PC_1_SRINV_21313,
      O => PC(0)
    );
  PC_next_1_1 : X_LUT4
    generic map(
      INIT => X"D1E2",
      LOC => "SLICE_X76Y46"
    )
    port map (
      ADR0 => PC(1),
      ADR1 => branch_trigger_0,
      ADR2 => reg_EX_result_1_7256,
      ADR3 => PC(0),
      O => PC_next(1)
    );
  PC_1 : X_FF
    generic map(
      LOC => "SLICE_X76Y46",
      INIT => '0'
    )
    port map (
      I => proc_PC_1_DXMUX_21336,
      CE => VCC,
      CLK => proc_PC_1_CLKINVNOT,
      SET => GND,
      RST => proc_PC_1_SRINV_21313,
      O => PC(1)
    );
  PC_2 : X_FF
    generic map(
      LOC => "SLICE_X77Y33",
      INIT => '0'
    )
    port map (
      I => proc_PC_3_DYMUX_21364,
      CE => VCC,
      CLK => proc_PC_3_CLKINVNOT,
      SET => GND,
      RST => proc_PC_3_SRINV_21356,
      O => PC(2)
    );
  PC_next_2_Q : X_LUT4
    generic map(
      INIT => X"E2D1",
      LOC => "SLICE_X77Y33"
    )
    port map (
      ADR0 => N29_0,
      ADR1 => branch_trigger_0,
      ADR2 => reg_EX_result_2_7255,
      ADR3 => PC(2),
      O => PC_next(2)
    );
  PC_next_3_Q : X_LUT4
    generic map(
      INIT => X"D88D",
      LOC => "SLICE_X77Y33"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => reg_EX_result_3_7254,
      ADR2 => PC(3),
      ADR3 => N33_0,
      O => PC_next(3)
    );
  PC_3 : X_FF
    generic map(
      LOC => "SLICE_X77Y33",
      INIT => '0'
    )
    port map (
      I => proc_PC_3_DXMUX_21378,
      CE => VCC,
      CLK => proc_PC_3_CLKINVNOT,
      SET => GND,
      RST => proc_PC_3_SRINV_21356,
      O => PC(3)
    );
  PC_4 : X_FF
    generic map(
      LOC => "SLICE_X78Y33",
      INIT => '0'
    )
    port map (
      I => proc_PC_5_DYMUX_21406,
      CE => VCC,
      CLK => proc_PC_5_CLKINVNOT,
      SET => GND,
      RST => proc_PC_5_SRINV_21398,
      O => PC(4)
    );
  PC_next_4_1 : X_LUT4
    generic map(
      INIT => X"A3AC",
      LOC => "SLICE_X78Y33"
    )
    port map (
      ADR0 => reg_EX_result_4_7253,
      ADR1 => PC(4),
      ADR2 => branch_trigger_0,
      ADR3 => Madd_PC_next_addsub0000_cy_3_0,
      O => PC_next(4)
    );
  PC_next_5_Q : X_LUT4
    generic map(
      INIT => X"F909",
      LOC => "SLICE_X78Y33"
    )
    port map (
      ADR0 => PC(5),
      ADR1 => N271_0,
      ADR2 => branch_trigger_0,
      ADR3 => reg_EX_result_5_7252,
      O => PC_next(5)
    );
  PC_5 : X_FF
    generic map(
      LOC => "SLICE_X78Y33",
      INIT => '0'
    )
    port map (
      I => proc_PC_5_DXMUX_21420,
      CE => VCC,
      CLK => proc_PC_5_CLKINVNOT,
      SET => GND,
      RST => proc_PC_5_SRINV_21398,
      O => PC(5)
    );
  PC_next_6_Q : X_LUT4
    generic map(
      INIT => X"F099",
      LOC => "SLICE_X79Y69"
    )
    port map (
      ADR0 => PC(6),
      ADR1 => N31_0,
      ADR2 => reg_EX_result_15_7242,
      ADR3 => branch_trigger_0,
      O => PC_next(6)
    );
  PC_6 : X_FF
    generic map(
      LOC => "SLICE_X79Y69",
      INIT => '0'
    )
    port map (
      I => proc_PC_6_DYMUX_21446,
      CE => VCC,
      CLK => proc_PC_6_CLKINVNOT,
      SET => GND,
      RST => proc_PC_6_FFY_RSTAND_21451,
      O => PC(6)
    );
  proc_PC_6_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X79Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_PC_6_FFY_RSTAND_21451
    );
  outport_15_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X79Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outport_cmp_eq0000_0,
      ADR2 => reg_EX_result_15_7242,
      ADR3 => VCC,
      O => proc_PC_6_F
    );
  result_11_1 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X78Y62"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0008_0,
      ADR2 => alu_result(11),
      ADR3 => ram_data(11),
      O => result(11)
    );
  reg_EX_result_11 : X_FF
    generic map(
      LOC => "SLICE_X78Y62",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_11_DYMUX_21478,
      CE => VCC,
      CLK => proc_reg_EX_result_11_CLKINV_21468,
      SET => GND,
      RST => proc_reg_EX_result_11_FFY_RSTAND_21483,
      O => reg_EX_result_11_7246
    );
  proc_reg_EX_result_11_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X78Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_result_11_FFY_RSTAND_21483
    );
  result_12_1 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X78Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0008_0,
      ADR2 => ram_data(12),
      ADR3 => alu_result(12),
      O => result(12)
    );
  reg_EX_result_12 : X_FF
    generic map(
      LOC => "SLICE_X78Y41",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_13_DYMUX_21505,
      CE => VCC,
      CLK => proc_reg_EX_result_13_CLKINV_21495,
      SET => GND,
      RST => proc_reg_EX_result_13_SRINV_21496,
      O => reg_EX_result_12_7245
    );
  result_13_1 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X78Y41"
    )
    port map (
      ADR0 => alu_result(13),
      ADR1 => ram_data(13),
      ADR2 => VCC,
      ADR3 => in1_cmp_eq0008_0,
      O => result(13)
    );
  reg_EX_result_13 : X_FF
    generic map(
      LOC => "SLICE_X78Y41",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_13_DXMUX_21520,
      CE => VCC,
      CLK => proc_reg_EX_result_13_CLKINV_21495,
      SET => GND,
      RST => proc_reg_EX_result_13_SRINV_21496,
      O => reg_EX_result_13_7244
    );
  result_14_1 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X76Y41"
    )
    port map (
      ADR0 => in1_cmp_eq0008_0,
      ADR1 => ram_data(14),
      ADR2 => alu_result(14),
      ADR3 => VCC,
      O => result(14)
    );
  reg_EX_result_14 : X_FF
    generic map(
      LOC => "SLICE_X76Y41",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_15_DYMUX_21547,
      CE => VCC,
      CLK => proc_reg_EX_result_15_CLKINV_21537,
      SET => GND,
      RST => proc_reg_EX_result_15_SRINV_21538,
      O => reg_EX_result_14_7243
    );
  result_15_1 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X76Y41"
    )
    port map (
      ADR0 => alu_result(15),
      ADR1 => in1_cmp_eq0008_0,
      ADR2 => VCC,
      ADR3 => ram_data(15),
      O => result(15)
    );
  reg_EX_result_15 : X_FF
    generic map(
      LOC => "SLICE_X76Y41",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_15_DXMUX_21562,
      CE => VCC,
      CLK => proc_reg_EX_result_15_CLKINV_21537,
      SET => GND,
      RST => proc_reg_EX_result_15_SRINV_21538,
      O => reg_EX_result_15_7242
    );
  reg_EX_instr_mux0001_5_1 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X65Y46"
    )
    port map (
      ADR0 => branch_trigger_0,
      ADR1 => reg_ID_instr_10_7391,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_EX_instr_mux0001(5)
    );
  reg_EX_instr_10 : X_FF
    generic map(
      LOC => "SLICE_X65Y46",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_11_DYMUX_21588,
      CE => VCC,
      CLK => proc_reg_EX_instr_11_CLKINV_21577,
      SET => GND,
      RST => proc_reg_EX_instr_11_SRINV_21578,
      O => reg_EX_instr_10_7486
    );
  reg_EX_instr_mux0001_4_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X65Y46"
    )
    port map (
      ADR0 => reg_ID_instr_11_7388,
      ADR1 => VCC,
      ADR2 => branch_trigger_0,
      ADR3 => VCC,
      O => reg_EX_instr_mux0001(4)
    );
  reg_EX_instr_11 : X_FF
    generic map(
      LOC => "SLICE_X65Y46",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_11_DXMUX_21604,
      CE => VCC,
      CLK => proc_reg_EX_instr_11_CLKINV_21577,
      SET => GND,
      RST => proc_reg_EX_instr_11_SRINV_21578,
      O => reg_EX_instr_11_7485
    );
  reg_EX_instr_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X65Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => branch_trigger_0,
      ADR3 => reg_ID_instr_12_7519,
      O => reg_EX_instr_mux0001(3)
    );
  reg_EX_instr_12 : X_FF
    generic map(
      LOC => "SLICE_X65Y47",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_13_DYMUX_21630,
      CE => VCC,
      CLK => proc_reg_EX_instr_13_CLKINV_21619,
      SET => GND,
      RST => proc_reg_EX_instr_13_SRINV_21620,
      O => reg_EX_instr_12_7503
    );
  reg_EX_instr_mux0001_2_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X65Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => branch_trigger_0,
      ADR3 => reg_ID_instr_13_7491,
      O => reg_EX_instr_mux0001(2)
    );
  reg_EX_instr_13 : X_FF
    generic map(
      LOC => "SLICE_X65Y47",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_13_DXMUX_21646,
      CE => VCC,
      CLK => proc_reg_EX_instr_13_CLKINV_21619,
      SET => GND,
      RST => proc_reg_EX_instr_13_SRINV_21620,
      O => reg_EX_instr_13_7501
    );
  reg_EX_instr_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X67Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_14_7520,
      ADR3 => branch_trigger_0,
      O => reg_EX_instr_mux0001(1)
    );
  reg_EX_instr_14 : X_FF
    generic map(
      LOC => "SLICE_X67Y51",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_15_DYMUX_21672,
      CE => VCC,
      CLK => proc_reg_EX_instr_15_CLKINV_21661,
      SET => GND,
      RST => proc_reg_EX_instr_15_SRINV_21662,
      O => reg_EX_instr_14_7504
    );
  reg_EX_instr_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X67Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_15_7490,
      ADR2 => branch_trigger_0,
      ADR3 => VCC,
      O => reg_EX_instr_mux0001(0)
    );
  reg_EX_instr_15 : X_FF
    generic map(
      LOC => "SLICE_X67Y51",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_instr_15_DXMUX_21688,
      CE => VCC,
      CLK => proc_reg_EX_instr_15_CLKINV_21661,
      SET => GND,
      RST => proc_reg_EX_instr_15_SRINV_21662,
      O => reg_EX_instr_15_7505
    );
  result_0_1 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X78Y75"
    )
    port map (
      ADR0 => alu_result(0),
      ADR1 => in1_cmp_eq0008_0,
      ADR2 => VCC,
      ADR3 => ram_data(0),
      O => result(0)
    );
  reg_EX_result_0 : X_FF
    generic map(
      LOC => "SLICE_X78Y75",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_1_DYMUX_21715,
      CE => VCC,
      CLK => proc_reg_EX_result_1_CLKINV_21705,
      SET => GND,
      RST => proc_reg_EX_result_1_SRINV_21706,
      O => reg_EX_result_0_7257
    );
  result_1_1 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X78Y75"
    )
    port map (
      ADR0 => ram_data(1),
      ADR1 => in1_cmp_eq0008_0,
      ADR2 => alu_result(1),
      ADR3 => VCC,
      O => result(1)
    );
  reg_EX_result_1 : X_FF
    generic map(
      LOC => "SLICE_X78Y75",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_1_DXMUX_21730,
      CE => VCC,
      CLK => proc_reg_EX_result_1_CLKINV_21705,
      SET => GND,
      RST => proc_reg_EX_result_1_SRINV_21706,
      O => reg_EX_result_1_7256
    );
  result_2_1 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X79Y77"
    )
    port map (
      ADR0 => in1_cmp_eq0008_0,
      ADR1 => ram_data(2),
      ADR2 => alu_result(2),
      ADR3 => VCC,
      O => result(2)
    );
  reg_EX_result_2 : X_FF
    generic map(
      LOC => "SLICE_X79Y77",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_3_DYMUX_21757,
      CE => VCC,
      CLK => proc_reg_EX_result_3_CLKINV_21747,
      SET => GND,
      RST => proc_reg_EX_result_3_SRINV_21748,
      O => reg_EX_result_2_7255
    );
  result_3_1 : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X79Y77"
    )
    port map (
      ADR0 => alu_result(3),
      ADR1 => VCC,
      ADR2 => in1_cmp_eq0008_0,
      ADR3 => ram_data(3),
      O => result(3)
    );
  reg_EX_result_3 : X_FF
    generic map(
      LOC => "SLICE_X79Y77",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_3_DXMUX_21772,
      CE => VCC,
      CLK => proc_reg_EX_result_3_CLKINV_21747,
      SET => GND,
      RST => proc_reg_EX_result_3_SRINV_21748,
      O => reg_EX_result_3_7254
    );
  result_4_1 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X88Y71"
    )
    port map (
      ADR0 => ram_data(4),
      ADR1 => VCC,
      ADR2 => in1_cmp_eq0008_0,
      ADR3 => alu_result(4),
      O => result(4)
    );
  reg_EX_result_4 : X_FF
    generic map(
      LOC => "SLICE_X88Y71",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_5_DYMUX_21799,
      CE => VCC,
      CLK => proc_reg_EX_result_5_CLKINV_21789,
      SET => GND,
      RST => proc_reg_EX_result_5_SRINV_21790,
      O => reg_EX_result_4_7253
    );
  result_5_1 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X88Y71"
    )
    port map (
      ADR0 => ram_data(5),
      ADR1 => VCC,
      ADR2 => in1_cmp_eq0008_0,
      ADR3 => alu_result(5),
      O => result(5)
    );
  reg_EX_result_5 : X_FF
    generic map(
      LOC => "SLICE_X88Y71",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_5_DXMUX_21814,
      CE => VCC,
      CLK => proc_reg_EX_result_5_CLKINV_21789,
      SET => GND,
      RST => proc_reg_EX_result_5_SRINV_21790,
      O => reg_EX_result_5_7252
    );
  result_6_1 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X89Y69"
    )
    port map (
      ADR0 => ram_data(6),
      ADR1 => in1_cmp_eq0008_0,
      ADR2 => alu_result(6),
      ADR3 => VCC,
      O => result(6)
    );
  reg_EX_result_6 : X_FF
    generic map(
      LOC => "SLICE_X89Y69",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_7_DYMUX_21841,
      CE => VCC,
      CLK => proc_reg_EX_result_7_CLKINV_21831,
      SET => GND,
      RST => proc_reg_EX_result_7_SRINV_21832,
      O => reg_EX_result_6_7251
    );
  result_7_1 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X89Y69"
    )
    port map (
      ADR0 => in1_cmp_eq0008_0,
      ADR1 => VCC,
      ADR2 => alu_result(7),
      ADR3 => ram_data(7),
      O => result(7)
    );
  reg_EX_result_7 : X_FF
    generic map(
      LOC => "SLICE_X89Y69",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_7_DXMUX_21856,
      CE => VCC,
      CLK => proc_reg_EX_result_7_CLKINV_21831,
      SET => GND,
      RST => proc_reg_EX_result_7_SRINV_21832,
      O => reg_EX_result_7_7250
    );
  result_8_1 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X78Y67"
    )
    port map (
      ADR0 => ram_data(8),
      ADR1 => in1_cmp_eq0008_0,
      ADR2 => VCC,
      ADR3 => alu_result(8),
      O => result(8)
    );
  reg_EX_result_8 : X_FF
    generic map(
      LOC => "SLICE_X78Y67",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_9_DYMUX_21883,
      CE => VCC,
      CLK => proc_reg_EX_result_9_CLKINV_21873,
      SET => GND,
      RST => proc_reg_EX_result_9_SRINV_21874,
      O => reg_EX_result_8_7249
    );
  result_9_1 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X78Y67"
    )
    port map (
      ADR0 => ram_data(9),
      ADR1 => in1_cmp_eq0008_0,
      ADR2 => alu_result(9),
      ADR3 => VCC,
      O => result(9)
    );
  reg_EX_result_9 : X_FF
    generic map(
      LOC => "SLICE_X78Y67",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_9_DXMUX_21898,
      CE => VCC,
      CLK => proc_reg_EX_result_9_CLKINV_21873,
      SET => GND,
      RST => proc_reg_EX_result_9_SRINV_21874,
      O => reg_EX_result_9_7248
    );
  reg_ID_data1_10 : X_FF
    generic map(
      LOC => "SLICE_X67Y91",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_11_DYMUX_21926,
      CE => VCC,
      CLK => proc_reg_ID_data1_11_CLKINV_21917,
      SET => GND,
      RST => proc_reg_ID_data1_11_SRINV_21918,
      O => reg_ID_data1_10_7526
    );
  reg_ID_data1_mux0007_10_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X67Y91"
    )
    port map (
      ADR0 => reg_IF_inport_10_7602,
      ADR1 => rd_data1(10),
      ADR2 => N22_0,
      ADR3 => N02_0,
      O => reg_ID_data1_mux0007(10)
    );
  reg_ID_data1_mux0007_11_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X67Y91"
    )
    port map (
      ADR0 => rd_data1(11),
      ADR1 => reg_IF_inport_11_7600,
      ADR2 => N22_0,
      ADR3 => N02_0,
      O => reg_ID_data1_mux0007(11)
    );
  reg_ID_data1_11 : X_FF
    generic map(
      LOC => "SLICE_X67Y91",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_11_DXMUX_21940,
      CE => VCC,
      CLK => proc_reg_ID_data1_11_CLKINV_21917,
      SET => GND,
      RST => proc_reg_ID_data1_11_SRINV_21918,
      O => reg_ID_data1_11_7527
    );
  reg_ID_data1_12 : X_FF
    generic map(
      LOC => "SLICE_X63Y68",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_13_DYMUX_21968,
      CE => VCC,
      CLK => proc_reg_ID_data1_13_CLKINV_21959,
      SET => GND,
      RST => proc_reg_ID_data1_13_SRINV_21960,
      O => reg_ID_data1_12_7529
    );
  reg_ID_data1_mux0007_12_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X63Y68"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => reg_IF_inport_12_7604,
      ADR2 => rd_data1(12),
      ADR3 => N02_0,
      O => reg_ID_data1_mux0007(12)
    );
  reg_ID_data1_mux0007_13_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X63Y68"
    )
    port map (
      ADR0 => reg_IF_inport_13_7603,
      ADR1 => rd_data1(13),
      ADR2 => N22_0,
      ADR3 => N02_0,
      O => reg_ID_data1_mux0007(13)
    );
  reg_ID_data1_13 : X_FF
    generic map(
      LOC => "SLICE_X63Y68",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_13_DXMUX_21982,
      CE => VCC,
      CLK => proc_reg_ID_data1_13_CLKINV_21959,
      SET => GND,
      RST => proc_reg_ID_data1_13_SRINV_21960,
      O => reg_ID_data1_13_7531
    );
  reg_ID_data1_mux0007_3_10 : X_LUT4
    generic map(
      INIT => X"F8F8",
      LOC => "SLICE_X69Y83"
    )
    port map (
      ADR0 => rd_data1(3),
      ADR1 => N02_0,
      ADR2 => reg_ID_data1_mux0007_3_6_0,
      ADR3 => VCC,
      O => reg_ID_data1_mux0007(3)
    );
  reg_ID_data1_3 : X_FF
    generic map(
      LOC => "SLICE_X69Y83",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_3_DXMUX_22234,
      CE => VCC,
      CLK => proc_reg_ID_data1_3_CLKINV_22209,
      SET => GND,
      RST => proc_reg_ID_data1_3_SRINV_22210,
      O => reg_ID_data1_3_7511
    );
  reg_ID_data2_0 : X_FF
    generic map(
      LOC => "SLICE_X67Y65",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_1_DYMUX_22262,
      CE => VCC,
      CLK => proc_reg_ID_data2_1_CLKINV_22253,
      SET => GND,
      RST => proc_reg_ID_data2_1_SRINV_22254,
      O => reg_ID_data2_0_7395
    );
  reg_ID_data2_mux0007_15_Q : X_LUT4
    generic map(
      INIT => X"E0C0",
      LOC => "SLICE_X67Y65"
    )
    port map (
      ADR0 => rd_data2(0),
      ADR1 => N131_0,
      ADR2 => N2_0,
      ADR3 => N95_0,
      O => reg_ID_data2_mux0007(15)
    );
  reg_ID_data2_mux0007_14_Q : X_LUT4
    generic map(
      INIT => X"F800",
      LOC => "SLICE_X67Y65"
    )
    port map (
      ADR0 => rd_data2(1),
      ADR1 => N95_0,
      ADR2 => N151_0,
      ADR3 => N2_0,
      O => reg_ID_data2_mux0007(14)
    );
  reg_ID_data2_1 : X_FF
    generic map(
      LOC => "SLICE_X67Y65",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_1_DXMUX_22276,
      CE => VCC,
      CLK => proc_reg_ID_data2_1_CLKINV_22253,
      SET => GND,
      RST => proc_reg_ID_data2_1_SRINV_22254,
      O => reg_ID_data2_1_7397
    );
  reg_ID_data1_mux0007_4_10 : X_LUT4
    generic map(
      INIT => X"FAAA",
      LOC => "SLICE_X65Y78"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_4_6_0,
      ADR1 => VCC,
      ADR2 => rd_data1(4),
      ADR3 => N02_0,
      O => reg_ID_data1_mux0007(4)
    );
  reg_ID_data1_4 : X_FF
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_5_DYMUX_22303,
      CE => VCC,
      CLK => proc_reg_ID_data1_5_CLKINV_22293,
      SET => GND,
      RST => proc_reg_ID_data1_5_SRINV_22294,
      O => reg_ID_data1_4_7512
    );
  reg_ID_data1_mux0007_5_10 : X_LUT4
    generic map(
      INIT => X"FFC0",
      LOC => "SLICE_X65Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N02_0,
      ADR2 => rd_data1(5),
      ADR3 => reg_ID_data1_mux0007_5_6_0,
      O => reg_ID_data1_mux0007(5)
    );
  reg_ID_data1_5 : X_FF
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_5_DXMUX_22318,
      CE => VCC,
      CLK => proc_reg_ID_data1_5_CLKINV_22293,
      SET => GND,
      RST => proc_reg_ID_data1_5_SRINV_22294,
      O => reg_ID_data1_5_7513
    );
  reg_ID_data2_2 : X_FF
    generic map(
      LOC => "SLICE_X56Y64",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_3_DYMUX_22346,
      CE => VCC,
      CLK => proc_reg_ID_data2_3_CLKINV_22337,
      SET => GND,
      RST => proc_reg_ID_data2_3_SRINV_22338,
      O => reg_ID_data2_2_7399
    );
  reg_ID_data2_mux0007_13_Q : X_LUT4
    generic map(
      INIT => X"F080",
      LOC => "SLICE_X56Y64"
    )
    port map (
      ADR0 => rd_data2(2),
      ADR1 => N95_0,
      ADR2 => N2_0,
      ADR3 => N17_0,
      O => reg_ID_data2_mux0007(13)
    );
  reg_ID_data2_mux0007_12_Q : X_LUT4
    generic map(
      INIT => X"E0C0",
      LOC => "SLICE_X56Y64"
    )
    port map (
      ADR0 => N95_0,
      ADR1 => N191_0,
      ADR2 => N2_0,
      ADR3 => rd_data2(3),
      O => reg_ID_data2_mux0007(12)
    );
  reg_ID_data2_3 : X_FF
    generic map(
      LOC => "SLICE_X56Y64",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_3_DXMUX_22360,
      CE => VCC,
      CLK => proc_reg_ID_data2_3_CLKINV_22337,
      SET => GND,
      RST => proc_reg_ID_data2_3_SRINV_22338,
      O => reg_ID_data2_3_7401
    );
  reg_ID_data1_mux0007_6_10 : X_LUT4
    generic map(
      INIT => X"EECC",
      LOC => "SLICE_X69Y85"
    )
    port map (
      ADR0 => N02_0,
      ADR1 => reg_ID_data1_mux0007_6_6_0,
      ADR2 => VCC,
      ADR3 => rd_data1(6),
      O => reg_ID_data1_mux0007(6)
    );
  reg_ID_data1_6 : X_FF
    generic map(
      LOC => "SLICE_X69Y85",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_7_DYMUX_22388,
      CE => VCC,
      CLK => proc_reg_ID_data1_7_CLKINV_22378,
      SET => GND,
      RST => proc_reg_ID_data1_7_SRINV_22379,
      O => reg_ID_data1_6_7514
    );
  reg_ID_data1_mux0007_7_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X69Y85"
    )
    port map (
      ADR0 => N02_0,
      ADR1 => rd_data1(7),
      ADR2 => reg_IF_inport_7_7620,
      ADR3 => N22_0,
      O => reg_ID_data1_mux0007(7)
    );
  reg_ID_data1_7 : X_FF
    generic map(
      LOC => "SLICE_X69Y85",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_7_DXMUX_22402,
      CE => VCC,
      CLK => proc_reg_ID_data1_7_CLKINV_22378,
      SET => GND,
      RST => proc_reg_ID_data1_7_SRINV_22379,
      O => reg_ID_data1_7_7515
    );
  reg_ID_data1_mux0007_8_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X66Y77"
    )
    port map (
      ADR0 => N02_0,
      ADR1 => rd_data1(8),
      ADR2 => N22_0,
      ADR3 => reg_IF_inport_8_7622,
      O => reg_ID_data1_mux0007(8)
    );
  reg_ID_data1_8 : X_FF
    generic map(
      LOC => "SLICE_X66Y77",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_8_DYMUX_22425,
      CE => VCC,
      CLK => proc_reg_ID_data1_8_CLKINV_22416,
      SET => GND,
      RST => proc_reg_ID_data1_8_FFY_RSTAND_22430,
      O => reg_ID_data1_8_7516
    );
  proc_reg_ID_data1_8_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X66Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data1_8_FFY_RSTAND_22430
    );
  reg_ID_data2_6 : X_FF
    generic map(
      LOC => "SLICE_X61Y63",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_7_DYMUX_22453,
      CE => VCC,
      CLK => proc_reg_ID_data2_7_CLKINV_22444,
      SET => GND,
      RST => proc_reg_ID_data2_7_SRINV_22445,
      O => reg_ID_data2_6_7463
    );
  reg_ID_data2_mux0007_9_Q : X_LUT4
    generic map(
      INIT => X"CC80",
      LOC => "SLICE_X61Y63"
    )
    port map (
      ADR0 => N95_0,
      ADR1 => N2_0,
      ADR2 => rd_data2(6),
      ADR3 => N211_0,
      O => reg_ID_data2_mux0007(9)
    );
  reg_ID_data2_mux0007_8_Q : X_LUT4
    generic map(
      INIT => X"C888",
      LOC => "SLICE_X61Y63"
    )
    port map (
      ADR0 => N23_0,
      ADR1 => N2_0,
      ADR2 => rd_data2(7),
      ADR3 => N95_0,
      O => reg_ID_data2_mux0007(8)
    );
  reg_ID_data2_7 : X_FF
    generic map(
      LOC => "SLICE_X61Y63",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_7_DXMUX_22467,
      CE => VCC,
      CLK => proc_reg_ID_data2_7_CLKINV_22444,
      SET => GND,
      RST => proc_reg_ID_data2_7_SRINV_22445,
      O => reg_ID_data2_7_7460
    );
  reg_ID_data2_mux0007_6_1 : X_LUT4
    generic map(
      INIT => X"C8C0",
      LOC => "SLICE_X57Y58"
    )
    port map (
      ADR0 => rd_data2(9),
      ADR1 => N2_0,
      ADR2 => N18_0,
      ADR3 => N95_0,
      O => reg_ID_data2_mux0007(6)
    );
  reg_ID_data2_9 : X_FF
    generic map(
      LOC => "SLICE_X57Y58",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_9_DYMUX_22490,
      CE => VCC,
      CLK => proc_reg_ID_data2_9_CLKINV_22481,
      SET => GND,
      RST => proc_reg_ID_data2_9_FFY_RSTAND_22495,
      O => reg_ID_data2_9_7468
    );
  proc_reg_ID_data2_9_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X57Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_9_FFY_RSTAND_22495
    );
  wr_index_1_1 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X57Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_instr_7_7561,
      ADR2 => VCC,
      ADR3 => branch_trigger_cmp_eq0001_0,
      O => wr_index(1)
    );
  wr_index_2_1 : X_LUT4
    generic map(
      INIT => X"FFF0",
      LOC => "SLICE_X57Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => branch_trigger_cmp_eq0001_0,
      ADR3 => reg_EX_instr_8_7562,
      O => wr_index(2)
    );
  outport_cmp_eq0000 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X79Y89"
    )
    port map (
      ADR0 => N4_0,
      ADR1 => reg_EX_instr_9_7487,
      ADR2 => reg_EX_instr_13_7501,
      ADR3 => reg_EX_instr_11_7485,
      O => outport_cmp_eq0000_22533
    );
  outport_9_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X79Y89"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_result_9_7248,
      ADR3 => outport_cmp_eq0000_0,
      O => outport_9_F
    );
  rd_index1_1_1 : X_LUT4
    generic map(
      INIT => X"BBB8",
      LOC => "SLICE_X58Y63"
    )
    port map (
      ADR0 => reg_IF_instr_7_7582,
      ADR1 => rd_index1_or0003_0,
      ADR2 => rd_index1_or0004_0,
      ADR3 => reg_IF_instr_4_7581,
      O => rd_index1(1)
    );
  rd_index1_2_1 : X_LUT4
    generic map(
      INIT => X"F3E2",
      LOC => "SLICE_X58Y63"
    )
    port map (
      ADR0 => reg_IF_instr_5_7580,
      ADR1 => rd_index1_or0003_0,
      ADR2 => reg_IF_instr_8_7585,
      ADR3 => rd_index1_or0004_0,
      O => rd_index1(2)
    );
  rd_index2_0_1 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X56Y65"
    )
    port map (
      ADR0 => reg_IF_instr_3_7578,
      ADR1 => reg_IF_instr_0_7577,
      ADR2 => rd_index1_or0007_0,
      ADR3 => VCC,
      O => rd_index2(0)
    );
  reg_ID_data2_mux0007_12_SW0 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X56Y65"
    )
    port map (
      ADR0 => reg_IF_instr_3_7578,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => N5_0,
      O => N191
    );
  rd_index2_1_1 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X59Y65"
    )
    port map (
      ADR0 => rd_index1_or0007_0,
      ADR1 => reg_IF_instr_1_7576,
      ADR2 => reg_IF_instr_4_7581,
      ADR3 => VCC,
      O => rd_index2(1)
    );
  reg_ID_data2_mux0007_14_SW0 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X59Y65"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_1_7576,
      ADR2 => N5_0,
      ADR3 => VCC,
      O => N151
    );
  rd_index2_2_1 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X57Y65"
    )
    port map (
      ADR0 => rd_index1_or0007_0,
      ADR1 => reg_IF_instr_2_7579,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_5_7580,
      O => rd_index2(2)
    );
  reg_ID_data2_mux0007_13_SW0 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X57Y65"
    )
    port map (
      ADR0 => N5_0,
      ADR1 => reg_IF_instr_2_7579,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N17
    );
  or0000_0_or00001 : X_LUT4
    generic map(
      INIT => X"0222",
      LOC => "SLICE_X58Y66"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_10_146_0,
      ADR1 => reg_IF_instr_11_7586,
      ADR2 => reg_IF_instr_10_7587,
      ADR3 => reg_IF_instr_9_7584,
      O => or0000_0_or0000
    );
  reg_ID_data2_mux0006_12_1_SW0 : X_LUT4
    generic map(
      INIT => X"2AAA",
      LOC => "SLICE_X58Y66"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_10_146_0,
      ADR1 => reg_IF_instr_11_7586,
      ADR2 => reg_IF_instr_10_7587,
      ADR3 => reg_IF_instr_9_7584,
      O => N8
    );
  in2_and000578_SW11 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X74Y51"
    )
    port map (
      ADR0 => reg_EX_result_8_7249,
      ADR1 => wr_enable_0,
      ADR2 => VCC,
      ADR3 => reg_ID_data2_8_7466,
      O => N302
    );
  outport_8_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X74Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outport_cmp_eq0000_0,
      ADR2 => VCC,
      ADR3 => reg_EX_result_8_7249,
      O => outport_8_F
    );
  in2_and000578_SW21 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X76Y50"
    )
    port map (
      ADR0 => reg_ID_data2_11_7421,
      ADR1 => VCC,
      ADR2 => reg_EX_result_11_7246,
      ADR3 => wr_enable_0,
      O => N317
    );
  outport_11_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X76Y50"
    )
    port map (
      ADR0 => reg_EX_result_11_7246,
      ADR1 => outport_cmp_eq0000_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => outport_11_F
    );
  N2_SW0 : X_LUT4
    generic map(
      INIT => X"FE7F",
      LOC => "SLICE_X64Y65"
    )
    port map (
      ADR0 => reg_IF_instr_15_7590,
      ADR1 => reg_IF_instr_10_7587,
      ADR2 => reg_IF_instr_11_7586,
      ADR3 => reg_IF_instr_14_7591,
      O => N21
    );
  N2 : X_LUT4
    generic map(
      INIT => X"FFFB",
      LOC => "SLICE_X64Y65"
    )
    port map (
      ADR0 => reg_IF_instr_12_7589,
      ADR1 => reg_IF_instr_9_7584,
      ADR2 => N21_0,
      ADR3 => reg_IF_instr_13_7588,
      O => N2_22734
    );
  reg_EX_n_flag : X_FF
    generic map(
      LOC => "SLICE_X60Y51",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_n_flag_DYMUX_22744,
      CE => VCC,
      CLK => proc_reg_EX_n_flag_CLKINV_22741,
      SET => GND,
      RST => proc_reg_EX_n_flag_FFY_RSTAND_22749,
      O => reg_EX_n_flag_7634
    );
  proc_reg_EX_n_flag_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X60Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_n_flag_FFY_RSTAND_22749
    );
  branch_trigger_cmp_eq000111 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X64Y51"
    )
    port map (
      ADR0 => reg_EX_instr_15_7505,
      ADR1 => reg_EX_instr_12_7503,
      ADR2 => reg_EX_instr_13_7501,
      ADR3 => reg_EX_instr_14_7504,
      O => N96
    );
  outport_cmp_eq0000_SW0 : X_LUT4
    generic map(
      INIT => X"FFEF",
      LOC => "SLICE_X64Y51"
    )
    port map (
      ADR0 => reg_EX_instr_10_7486,
      ADR1 => reg_EX_instr_12_7503,
      ADR2 => reg_EX_instr_14_7504,
      ADR3 => reg_EX_instr_15_7505,
      O => N4
    );
  reg_ID_data2_mux0006_12_1 : X_LUT4
    generic map(
      INIT => X"EEF0",
      LOC => "SLICE_X59Y64"
    )
    port map (
      ADR0 => reg_ID_instr_9_7378,
      ADR1 => N9_0,
      ADR2 => N8_0,
      ADR3 => rd_index1_or0006_0,
      O => N5
    );
  reg_ID_data2_mux0007_15_SW0 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X59Y64"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => N5_0,
      ADR3 => reg_IF_instr_0_7577,
      O => N131
    );
  reg_ID_data2_mux0007_10_2 : X_LUT4
    generic map(
      INIT => X"EAEA",
      LOC => "SLICE_X58Y64"
    )
    port map (
      ADR0 => N811_0,
      ADR1 => rd_index1_or0005_0,
      ADR2 => reg_IF_instr_5_7580,
      ADR3 => VCC,
      O => reg_ID_data2_mux0007_10_2_22817
    );
  reg_ID_data2_mux0007_10_37 : X_LUT4
    generic map(
      INIT => X"F040",
      LOC => "SLICE_X58Y64"
    )
    port map (
      ADR0 => rd_index1_or0006_0,
      ADR1 => reg_ID_data2_mux0007_10_15_0,
      ADR2 => N2_0,
      ADR3 => reg_ID_data2_mux0007_10_2_0,
      O => reg_ID_data2_mux0007(10)
    );
  reg_ID_data2_5 : X_FF
    generic map(
      LOC => "SLICE_X58Y64",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_5_DXMUX_22827,
      CE => VCC,
      CLK => proc_reg_ID_data2_5_CLKINV_22810,
      SET => GND,
      RST => proc_reg_ID_data2_5_FFX_RSTAND_22832,
      O => reg_ID_data2_5_7464
    );
  proc_reg_ID_data2_5_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X58Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_5_FFX_RSTAND_22832
    );
  reg_ID_data2_mux0007_11_2 : X_LUT4
    generic map(
      INIT => X"FF88",
      LOC => "SLICE_X59Y63"
    )
    port map (
      ADR0 => reg_IF_instr_4_7581,
      ADR1 => rd_index1_or0005_0,
      ADR2 => VCC,
      ADR3 => N811_0,
      O => reg_ID_data2_mux0007_11_2_22852
    );
  reg_ID_data2_mux0007_11_37 : X_LUT4
    generic map(
      INIT => X"F040",
      LOC => "SLICE_X59Y63"
    )
    port map (
      ADR0 => rd_index1_or0006_0,
      ADR1 => reg_ID_data2_mux0007_11_15_0,
      ADR2 => N2_0,
      ADR3 => reg_ID_data2_mux0007_11_2_0,
      O => reg_ID_data2_mux0007(11)
    );
  reg_ID_data2_4 : X_FF
    generic map(
      LOC => "SLICE_X59Y63",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data2_4_DXMUX_22862,
      CE => VCC,
      CLK => proc_reg_ID_data2_4_CLKINV_22845,
      SET => GND,
      RST => proc_reg_ID_data2_4_FFX_RSTAND_22867,
      O => reg_ID_data2_4_7465
    );
  proc_reg_ID_data2_4_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X59Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data2_4_FFX_RSTAND_22867
    );
  reg_ID_data2_mux0006_8_11 : X_LUT4
    generic map(
      INIT => X"FF40",
      LOC => "SLICE_X59Y62"
    )
    port map (
      ADR0 => or0000_0_or0000_0,
      ADR1 => rd_index1_or0005_0,
      ADR2 => reg_IF_instr_5_7580,
      ADR3 => N811_0,
      O => N19
    );
  reg_ID_data2_mux0006_0_21 : X_LUT4
    generic map(
      INIT => X"FAF0",
      LOC => "SLICE_X59Y62"
    )
    port map (
      ADR0 => reg_IF_instr_8_7585,
      ADR1 => VCC,
      ADR2 => N19_0,
      ADR3 => N1011_0,
      O => N18
    );
  reg_EX_z_flag : X_FF
    generic map(
      LOC => "SLICE_X62Y56",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_z_flag_DYMUX_22900,
      CE => VCC,
      CLK => proc_reg_EX_z_flag_CLKINV_22897,
      SET => GND,
      RST => proc_reg_EX_z_flag_FFY_RSTAND_22905,
      O => reg_EX_z_flag_7645
    );
  proc_reg_EX_z_flag_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X62Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_z_flag_FFY_RSTAND_22905
    );
  reg_ID_data1_mux0007_10_120 : X_LUT4
    generic map(
      INIT => X"30FE",
      LOC => "SLICE_X58Y65"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_10_15_0,
      ADR1 => rd_index1_or0005_0,
      ADR2 => rd_index1_or0006_0,
      ADR3 => or0000_0_or0000_0,
      O => reg_ID_data1_mux0007_10_120_22921
    );
  reg_ID_data2_mux0007_10_15 : X_LUT4
    generic map(
      INIT => X"A3A0",
      LOC => "SLICE_X58Y65"
    )
    port map (
      ADR0 => reg_IF_instr_5_7580,
      ADR1 => rd_index1_or0005_0,
      ADR2 => or0000_0_or0000_0,
      ADR3 => rd_data2(5),
      O => reg_ID_data2_mux0007_10_15_22928
    );
  reg_ID_data1_mux0007_10_134 : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X62Y66"
    )
    port map (
      ADR0 => reg_IF_instr_10_7587,
      ADR1 => reg_IF_instr_11_7586,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_9_7584,
      O => reg_ID_data1_mux0007_10_134_22945
    );
  rd_index1_or000629 : X_LUT4
    generic map(
      INIT => X"01C8",
      LOC => "SLICE_X62Y66"
    )
    port map (
      ADR0 => reg_IF_instr_9_7584,
      ADR1 => reg_IF_instr_11_7586,
      ADR2 => reg_IF_instr_10_7587,
      ADR3 => reg_IF_instr_14_7591,
      O => rd_index1_or000629_22952
    );
  reg_ID_data1_mux0007_10_146 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X63Y65"
    )
    port map (
      ADR0 => reg_IF_instr_14_7591,
      ADR1 => reg_IF_instr_15_7590,
      ADR2 => reg_IF_instr_13_7588,
      ADR3 => reg_IF_instr_12_7589,
      O => reg_ID_data1_mux0007_10_146_22969
    );
  rd_index1_or00051 : X_LUT4
    generic map(
      INIT => X"7800",
      LOC => "SLICE_X63Y65"
    )
    port map (
      ADR0 => reg_IF_instr_9_7584,
      ADR1 => reg_IF_instr_10_7587,
      ADR2 => reg_IF_instr_11_7586,
      ADR3 => reg_ID_data1_mux0007_10_146_0,
      O => rd_index1_or0005
    );
  reg_ID_data1_mux0007_10_156 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X62Y67"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_10_134_0,
      ADR1 => reg_ID_data1_mux0007_10_120_0,
      ADR2 => reg_ID_data1_mux0007_10_146_0,
      ADR3 => N2_0,
      O => N02
    );
  reg_ID_data1_mux0007_9_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X62Y67"
    )
    port map (
      ADR0 => reg_IF_inport_9_7650,
      ADR1 => N22_0,
      ADR2 => N02_0,
      ADR3 => rd_data1(9),
      O => reg_ID_data1_mux0007(9)
    );
  reg_ID_data1_9 : X_FF
    generic map(
      LOC => "SLICE_X62Y67",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_data1_9_DXMUX_23007,
      CE => VCC,
      CLK => proc_reg_ID_data1_9_CLKINV_22991,
      SET => GND,
      RST => proc_reg_ID_data1_9_FFX_RSTAND_23012,
      O => reg_ID_data1_9_7517
    );
  proc_reg_ID_data1_9_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X62Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_ID_data1_9_FFX_RSTAND_23012
    );
  in1_and0008_SW1 : X_LUT4
    generic map(
      INIT => X"C9FF",
      LOC => "SLICE_X67Y39"
    )
    port map (
      ADR0 => reg_ID_instr_9_7378,
      ADR1 => reg_ID_instr_11_7388,
      ADR2 => reg_ID_instr_10_7391,
      ADR3 => reg_ID_instr_5_7479,
      O => N268
    );
  in1_or00091_SW0 : X_LUT4
    generic map(
      INIT => X"FFDC",
      LOC => "SLICE_X67Y39"
    )
    port map (
      ADR0 => reg_ID_instr_9_7378,
      ADR1 => reg_ID_instr_11_7388,
      ADR2 => reg_ID_instr_10_7391,
      ADR3 => reg_ID_instr_12_7519,
      O => N322
    );
  reg_IF_inport_0 : X_FF
    generic map(
      LOC => "SLICE_X79Y116",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_1_DYMUX_23047,
      CE => VCC,
      CLK => proc_reg_IF_inport_1_CLKINV_23044,
      SET => GND,
      RST => proc_reg_IF_inport_1_SRINV_23045,
      O => reg_IF_inport_0_7652
    );
  reg_IF_inport_1 : X_FF
    generic map(
      LOC => "SLICE_X79Y116",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_1_DXMUX_23055,
      CE => VCC,
      CLK => proc_reg_IF_inport_1_CLKINV_23044,
      SET => GND,
      RST => proc_reg_IF_inport_1_SRINV_23045,
      O => reg_IF_inport_1_7651
    );
  reg_IF_inport_2 : X_FF
    generic map(
      LOC => "SLICE_X77Y113",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_3_DYMUX_23071,
      CE => VCC,
      CLK => proc_reg_IF_inport_3_CLKINV_23068,
      SET => GND,
      RST => proc_reg_IF_inport_3_SRINV_23069,
      O => reg_IF_inport_2_7654
    );
  reg_IF_inport_3 : X_FF
    generic map(
      LOC => "SLICE_X77Y113",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_3_DXMUX_23079,
      CE => VCC,
      CLK => proc_reg_IF_inport_3_CLKINV_23068,
      SET => GND,
      RST => proc_reg_IF_inport_3_SRINV_23069,
      O => reg_IF_inport_3_7653
    );
  reg_IF_inport_4 : X_FF
    generic map(
      LOC => "SLICE_X78Y109",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_5_DYMUX_23095,
      CE => VCC,
      CLK => proc_reg_IF_inport_5_CLKINV_23092,
      SET => GND,
      RST => proc_reg_IF_inport_5_SRINV_23093,
      O => reg_IF_inport_4_7656
    );
  reg_IF_inport_5 : X_FF
    generic map(
      LOC => "SLICE_X78Y109",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_5_DXMUX_23103,
      CE => VCC,
      CLK => proc_reg_IF_inport_5_CLKINV_23092,
      SET => GND,
      RST => proc_reg_IF_inport_5_SRINV_23093,
      O => reg_IF_inport_5_7655
    );
  reg_IF_inport_6 : X_FF
    generic map(
      LOC => "SLICE_X77Y105",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_7_DYMUX_23119,
      CE => VCC,
      CLK => proc_reg_IF_inport_7_CLKINV_23116,
      SET => GND,
      RST => proc_reg_IF_inport_7_SRINV_23117,
      O => reg_IF_inport_6_7657
    );
  reg_IF_inport_7 : X_FF
    generic map(
      LOC => "SLICE_X77Y105",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_7_DXMUX_23127,
      CE => VCC,
      CLK => proc_reg_IF_inport_7_CLKINV_23116,
      SET => GND,
      RST => proc_reg_IF_inport_7_SRINV_23117,
      O => reg_IF_inport_7_7620
    );
  reg_IF_inport_8 : X_FF
    generic map(
      LOC => "SLICE_X67Y98",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_9_DYMUX_23143,
      CE => VCC,
      CLK => proc_reg_IF_inport_9_CLKINV_23140,
      SET => GND,
      RST => proc_reg_IF_inport_9_SRINV_23141,
      O => reg_IF_inport_8_7622
    );
  reg_IF_inport_9 : X_FF
    generic map(
      LOC => "SLICE_X67Y98",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_9_DXMUX_23151,
      CE => VCC,
      CLK => proc_reg_IF_inport_9_CLKINV_23140,
      SET => GND,
      RST => proc_reg_IF_inport_9_SRINV_23141,
      O => reg_IF_inport_9_7650
    );
  PC_next_2_SW0 : X_LUT4
    generic map(
      INIT => X"33FF",
      LOC => "SLICE_X76Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => PC(0),
      ADR2 => VCC,
      ADR3 => PC(1),
      O => N29
    );
  PC_next_3_SW0 : X_LUT4
    generic map(
      INIT => X"77FF",
      LOC => "SLICE_X76Y32"
    )
    port map (
      ADR0 => PC(2),
      ADR1 => PC(0),
      ADR2 => VCC,
      ADR3 => PC(1),
      O => N33
    );
  PC_next_6_SW0 : X_LUT4
    generic map(
      INIT => X"5FFF",
      LOC => "SLICE_X79Y37"
    )
    port map (
      ADR0 => PC(4),
      ADR1 => VCC,
      ADR2 => Madd_PC_next_addsub0000_cy_3_0,
      ADR3 => PC(5),
      O => N31
    );
  rd_index1_or0004 : X_LUT4
    generic map(
      INIT => X"A820",
      LOC => "SLICE_X56Y62"
    )
    port map (
      ADR0 => reg_IF_instr_10_7587,
      ADR1 => reg_IF_instr_9_7584,
      ADR2 => N16_0,
      ADR3 => N11_0,
      O => rd_index1_or0004_23208
    );
  outport_14_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X89Y110"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outport_cmp_eq0000_0,
      ADR2 => VCC,
      ADR3 => reg_EX_result_14_7243,
      O => outport_14_F
    );
  outport_4_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X88Y108"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_4_7253,
      ADR2 => outport_cmp_eq0000_0,
      ADR3 => VCC,
      O => outport_5_G
    );
  outport_5_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X88Y108"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => outport_cmp_eq0000_0,
      ADR3 => reg_EX_result_5_7252,
      O => outport_5_F
    );
  wr_overflow_or000031 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X64Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_instr_10_7486,
      ADR2 => VCC,
      ADR3 => reg_EX_instr_11_7485,
      O => wr_overflow_or000031_23447
    );
  wr_enable_or000134 : X_LUT4
    generic map(
      INIT => X"07DC",
      LOC => "SLICE_X64Y46"
    )
    port map (
      ADR0 => reg_EX_instr_9_7487,
      ADR1 => reg_EX_instr_10_7486,
      ADR2 => reg_EX_instr_13_7501,
      ADR3 => reg_EX_instr_11_7485,
      O => wr_enable_or000134_23454
    );
  outport_6_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X89Y105"
    )
    port map (
      ADR0 => reg_EX_result_6_7251,
      ADR1 => VCC,
      ADR2 => outport_cmp_eq0000_0,
      ADR3 => VCC,
      O => outport_7_G
    );
  outport_7_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X89Y105"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => outport_cmp_eq0000_0,
      ADR3 => reg_EX_result_7_7250,
      O => outport_7_F
    );
  wr_overflow_data_0_1 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X64Y77"
    )
    port map (
      ADR0 => reg_EX_overflow_0_7394,
      ADR1 => branch_trigger_cmp_eq0001_0,
      ADR2 => VCC,
      ADR3 => reg_EX_PC_0_7661,
      O => wr_overflow_data(0)
    );
  wr_overflow_data_10_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X64Y77"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_cmp_eq0001_0,
      ADR2 => VCC,
      ADR3 => reg_EX_overflow_10_7379,
      O => wr_overflow_data(10)
    );
  wr_overflow_data_1_1 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X64Y76"
    )
    port map (
      ADR0 => branch_trigger_cmp_eq0001_0,
      ADR1 => reg_EX_PC_1_7662,
      ADR2 => reg_EX_overflow_1_7396,
      ADR3 => VCC,
      O => wr_overflow_data(1)
    );
  wr_overflow_data_11_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X64Y76"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_cmp_eq0001_0,
      ADR2 => VCC,
      ADR3 => reg_EX_overflow_11_7385,
      O => wr_overflow_data(11)
    );
  wr_overflow_data_2_1 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X61Y68"
    )
    port map (
      ADR0 => branch_trigger_cmp_eq0001_0,
      ADR1 => reg_EX_PC_2_7663,
      ADR2 => VCC,
      ADR3 => reg_EX_overflow_2_7398,
      O => wr_overflow_data(2)
    );
  wr_overflow_data_12_1 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X61Y68"
    )
    port map (
      ADR0 => branch_trigger_cmp_eq0001_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_EX_overflow_12_7449,
      O => wr_overflow_data(12)
    );
  wr_overflow_data_3_1 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X60Y69"
    )
    port map (
      ADR0 => reg_EX_PC_3_7664,
      ADR1 => reg_EX_overflow_3_7400,
      ADR2 => VCC,
      ADR3 => branch_trigger_cmp_eq0001_0,
      O => wr_overflow_data(3)
    );
  wr_overflow_data_13_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X60Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_13_7452,
      ADR2 => VCC,
      ADR3 => branch_trigger_cmp_eq0001_0,
      O => wr_overflow_data(13)
    );
  wr_overflow_data_4_1 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X57Y63"
    )
    port map (
      ADR0 => branch_trigger_cmp_eq0001_0,
      ADR1 => reg_EX_overflow_4_7404,
      ADR2 => VCC,
      ADR3 => reg_EX_PC_4_7665,
      O => wr_overflow_data(4)
    );
  wr_overflow_data_14_1 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X57Y63"
    )
    port map (
      ADR0 => branch_trigger_cmp_eq0001_0,
      ADR1 => reg_EX_overflow_14_7455,
      ADR2 => VCC,
      ADR3 => VCC,
      O => wr_overflow_data(14)
    );
  wr_overflow_data_5_1 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X56Y66"
    )
    port map (
      ADR0 => reg_EX_PC_5_7666,
      ADR1 => reg_EX_overflow_5_7407,
      ADR2 => VCC,
      ADR3 => branch_trigger_cmp_eq0001_0,
      O => wr_overflow_data(5)
    );
  wr_overflow_data_15_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X56Y66"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_15_7458,
      ADR3 => branch_trigger_cmp_eq0001_0,
      O => wr_overflow_data(15)
    );
  wr_overflow_data_6_1 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X67Y80"
    )
    port map (
      ADR0 => reg_EX_PC_6_7667,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_6_7410,
      ADR3 => branch_trigger_cmp_eq0001_0,
      O => wr_overflow_data(6)
    );
  wr_overflow_data_7_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X67Y80"
    )
    port map (
      ADR0 => reg_EX_overflow_7_7413,
      ADR1 => VCC,
      ADR2 => branch_trigger_cmp_eq0001_0,
      ADR3 => VCC,
      O => wr_overflow_data(7)
    );
  wr_overflow_data_8_1 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X56Y70"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_cmp_eq0001_0,
      ADR2 => reg_EX_overflow_8_7416,
      ADR3 => VCC,
      O => wr_overflow_data(8)
    );
  wr_overflow_data_9_1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X56Y70"
    )
    port map (
      ADR0 => reg_EX_overflow_9_7419,
      ADR1 => branch_trigger_cmp_eq0001_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => wr_overflow_data(9)
    );
  in2_and000578_SW1 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X72Y48"
    )
    port map (
      ADR0 => reg_ID_data2_15_7493,
      ADR1 => reg_EX_result_15_7242,
      ADR2 => wr_enable_0,
      ADR3 => VCC,
      O => N287
    );
  in2_and000578_SW9 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X72Y48"
    )
    port map (
      ADR0 => reg_ID_data2_9_7468,
      ADR1 => reg_EX_result_9_7248,
      ADR2 => VCC,
      ADR3 => wr_enable_0,
      O => N299
    );
  in2_and000578_SW3 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X74Y43"
    )
    port map (
      ADR0 => reg_ID_data2_14_7495,
      ADR1 => wr_enable_0,
      ADR2 => VCC,
      ADR3 => reg_EX_result_14_7243,
      O => N290
    );
  in2_and000578_SW7 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X74Y43"
    )
    port map (
      ADR0 => reg_ID_data2_12_7499,
      ADR1 => reg_EX_result_12_7245,
      ADR2 => VCC,
      ADR3 => wr_enable_0,
      O => N296
    );
  in2_and000578_SW5 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X75Y45"
    )
    port map (
      ADR0 => reg_EX_result_13_7244,
      ADR1 => VCC,
      ADR2 => reg_ID_data2_13_7497,
      ADR3 => wr_enable_0,
      O => N293
    );
  alu_mode_0_15 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X66Y44"
    )
    port map (
      ADR0 => reg_ID_instr_10_7391,
      ADR1 => reg_ID_instr_11_7388,
      ADR2 => reg_ID_instr_9_7378,
      ADR3 => reg_ID_instr_15_7490,
      O => alu_mode_0_15_23746
    );
  in1_cmp_eq00091 : X_LUT4
    generic map(
      INIT => X"4040",
      LOC => "SLICE_X66Y44"
    )
    port map (
      ADR0 => reg_ID_instr_10_7391,
      ADR1 => N13_0,
      ADR2 => reg_ID_instr_9_7378,
      ADR3 => VCC,
      O => ram_wr_enable(0)
    );
  rd_index1_or0004_SW0 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X59Y60"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_data1_mux0007_10_146_0,
      ADR2 => reg_IF_instr_11_7586,
      ADR3 => VCC,
      O => N11
    );
  reg_ID_data2_mux0006_12_1_SW1 : X_LUT4
    generic map(
      INIT => X"B33B",
      LOC => "SLICE_X59Y60"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_10_146_0,
      ADR1 => N15_0,
      ADR2 => reg_IF_instr_11_7586,
      ADR3 => N7_0,
      O => N9
    );
  branch_trigger_or0002 : X_LUT4
    generic map(
      INIT => X"AC00",
      LOC => "SLICE_X63Y52"
    )
    port map (
      ADR0 => N36_0,
      ADR1 => N35_0,
      ADR2 => reg_EX_z_flag_7645,
      ADR3 => N96_0,
      O => branch_trigger
    );
  reg_IF_instr_mux0001_9_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X63Y52"
    )
    port map (
      ADR0 => rom_data(6),
      ADR1 => VCC,
      ADR2 => branch_trigger_0,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(9)
    );
  reg_IF_instr_6 : X_FF
    generic map(
      LOC => "SLICE_X63Y52",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_instr_6_DXMUX_23809,
      CE => VCC,
      CLK => proc_reg_IF_instr_6_CLKINV_23791,
      SET => GND,
      RST => proc_reg_IF_instr_6_FFX_RSTAND_23814,
      O => reg_IF_instr_6_7583
    );
  proc_reg_IF_instr_6_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X63Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_instr_6_FFX_RSTAND_23814
    );
  reg_ID_data1_mux0007_0_2_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X66Y63"
    )
    port map (
      ADR0 => reg_IF_instr_12_7589,
      ADR1 => reg_IF_instr_10_7587,
      ADR2 => reg_IF_instr_13_7588,
      ADR3 => reg_IF_instr_11_7586,
      O => N01
    );
  reg_ID_data1_mux0007_0_2 : X_LUT4
    generic map(
      INIT => X"0200",
      LOC => "SLICE_X66Y63"
    )
    port map (
      ADR0 => reg_IF_instr_9_7584,
      ADR1 => reg_IF_instr_15_7590,
      ADR2 => N01_0,
      ADR3 => reg_IF_instr_14_7591,
      O => N22
    );
  reg_IF_inport_10 : X_FF
    generic map(
      LOC => "SLICE_X67Y100",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_11_DYMUX_23849,
      CE => VCC,
      CLK => proc_reg_IF_inport_11_CLKINV_23846,
      SET => GND,
      RST => proc_reg_IF_inport_11_SRINV_23847,
      O => reg_IF_inport_10_7602
    );
  reg_IF_inport_11 : X_FF
    generic map(
      LOC => "SLICE_X67Y100",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_11_DXMUX_23857,
      CE => VCC,
      CLK => proc_reg_IF_inport_11_CLKINV_23846,
      SET => GND,
      RST => proc_reg_IF_inport_11_SRINV_23847,
      O => reg_IF_inport_11_7600
    );
  reg_IF_inport_12 : X_FF
    generic map(
      LOC => "SLICE_X63Y99",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_13_DYMUX_23873,
      CE => VCC,
      CLK => proc_reg_IF_inport_13_CLKINV_23870,
      SET => GND,
      RST => proc_reg_IF_inport_13_SRINV_23871,
      O => reg_IF_inport_12_7604
    );
  reg_IF_inport_13 : X_FF
    generic map(
      LOC => "SLICE_X63Y99",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_13_DXMUX_23881,
      CE => VCC,
      CLK => proc_reg_IF_inport_13_CLKINV_23870,
      SET => GND,
      RST => proc_reg_IF_inport_13_SRINV_23871,
      O => reg_IF_inport_13_7603
    );
  reg_IF_inport_14 : X_FF
    generic map(
      LOC => "SLICE_X61Y97",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_15_DYMUX_23897,
      CE => VCC,
      CLK => proc_reg_IF_inport_15_CLKINV_23894,
      SET => GND,
      RST => proc_reg_IF_inport_15_SRINV_23895,
      O => reg_IF_inport_14_7606
    );
  reg_IF_inport_15 : X_FF
    generic map(
      LOC => "SLICE_X61Y97",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_inport_15_DXMUX_23905,
      CE => VCC,
      CLK => proc_reg_IF_inport_15_CLKINV_23894,
      SET => GND,
      RST => proc_reg_IF_inport_15_SRINV_23895,
      O => reg_IF_inport_15_7605
    );
  rd_index1_or000511 : X_LUT4
    generic map(
      INIT => X"55FF",
      LOC => "SLICE_X59Y61"
    )
    port map (
      ADR0 => reg_IF_instr_10_7587,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_9_7584,
      O => N7
    );
  reg_ID_data2_mux0006_10_3_SW0 : X_LUT4
    generic map(
      INIT => X"8F2F",
      LOC => "SLICE_X59Y61"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_10_146_0,
      ADR1 => reg_IF_instr_11_7586,
      ADR2 => reg_IF_instr_3_7578,
      ADR3 => N7_0,
      O => N6
    );
  rd_index1_or000638 : X_LUT4
    generic map(
      INIT => X"0101",
      LOC => "SLICE_X62Y64"
    )
    port map (
      ADR0 => reg_IF_instr_12_7589,
      ADR1 => reg_IF_instr_13_7588,
      ADR2 => reg_IF_instr_15_7590,
      ADR3 => VCC,
      O => rd_index1_or000638_23950
    );
  reg_ID_data2_mux0006_8_41 : X_LUT4
    generic map(
      INIT => X"F070",
      LOC => "SLICE_X62Y64"
    )
    port map (
      ADR0 => rd_index1_or000638_0,
      ADR1 => rd_index1_or000629_0,
      ADR2 => or0000_0_or0000_0,
      ADR3 => rd_index1_or0005_0,
      O => N1011
    );
  rd_index1_or000655 : X_LUT4
    generic map(
      INIT => X"FFA0",
      LOC => "SLICE_X58Y62"
    )
    port map (
      ADR0 => rd_index1_or000638_0,
      ADR1 => VCC,
      ADR2 => rd_index1_or000629_0,
      ADR3 => rd_index1_or0005_0,
      O => rd_index1_or0006
    );
  reg_ID_data2_mux0006_10_3 : X_LUT4
    generic map(
      INIT => X"4404",
      LOC => "SLICE_X58Y62"
    )
    port map (
      ADR0 => N6_0,
      ADR1 => rd_index1_or0006_0,
      ADR2 => N15_0,
      ADR3 => reg_ID_instr_9_7378,
      O => N811
    );
  reg_ID_data2_mux0007_8_SW0 : X_LUT4
    generic map(
      INIT => X"ECEC",
      LOC => "SLICE_X60Y62"
    )
    port map (
      ADR0 => N1011_0,
      ADR1 => N19_0,
      ADR2 => reg_IF_instr_7_7582,
      ADR3 => VCC,
      O => N23
    );
  reg_ID_data2_mux0007_9_SW0 : X_LUT4
    generic map(
      INIT => X"EECC",
      LOC => "SLICE_X60Y62"
    )
    port map (
      ADR0 => N1011_0,
      ADR1 => N19_0,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_6_7583,
      O => N211
    );
  branch_trigger_or0002_SW0 : X_LUT4
    generic map(
      INIT => X"AE45",
      LOC => "SLICE_X60Y48"
    )
    port map (
      ADR0 => reg_EX_instr_10_7486,
      ADR1 => reg_EX_n_flag_7634,
      ADR2 => reg_EX_instr_9_7487,
      ADR3 => reg_EX_instr_11_7485,
      O => N35
    );
  branch_trigger_or0002_SW1 : X_LUT4
    generic map(
      INIT => X"FE4F",
      LOC => "SLICE_X60Y48"
    )
    port map (
      ADR0 => reg_EX_instr_10_7486,
      ADR1 => reg_EX_n_flag_7634,
      ADR2 => reg_EX_instr_9_7487,
      ADR3 => reg_EX_instr_11_7485,
      O => N36
    );
  reg_ID_data1_mux0007_10_15 : X_LUT4
    generic map(
      INIT => X"77FF",
      LOC => "SLICE_X60Y65"
    )
    port map (
      ADR0 => reg_IF_instr_10_7587,
      ADR1 => reg_IF_instr_9_7584,
      ADR2 => VCC,
      ADR3 => N16_0,
      O => reg_ID_data1_mux0007_10_15_24041
    );
  alu_mode_1_1 : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X67Y42"
    )
    port map (
      ADR0 => reg_ID_instr_13_7491,
      ADR1 => N102_0,
      ADR2 => reg_ID_instr_15_7490,
      ADR3 => reg_ID_instr_10_7391,
      O => alu_mode(1)
    );
  in1_and00075 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X67Y42"
    )
    port map (
      ADR0 => reg_ID_instr_12_7519,
      ADR1 => reg_ID_instr_14_7520,
      ADR2 => reg_ID_instr_10_7391,
      ADR3 => reg_ID_instr_15_7490,
      O => in1_and00075_24065
    );
  in2_0_SW2 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X76Y61"
    )
    port map (
      ADR0 => reg_EX_result_0_7257,
      ADR1 => in2_and0005_0,
      ADR2 => reg_ID_data2_0_7395,
      ADR3 => VCC,
      O => N280
    );
  in2_1_SW2 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X76Y61"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in2_and0005_0,
      ADR2 => reg_ID_data2_1_7397,
      ADR3 => reg_EX_result_1_7256,
      O => N278
    );
  in1_and000312 : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X62Y42"
    )
    port map (
      ADR0 => reg_ID_instr_7_7483,
      ADR1 => reg_ID_instr_6_7481,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_8_7472,
      O => in1_and000312_24101
    );
  in1_and000710 : X_LUT4
    generic map(
      INIT => X"4040",
      LOC => "SLICE_X66Y42"
    )
    port map (
      ADR0 => reg_ID_instr_13_7491,
      ADR1 => reg_ID_instr_9_7378,
      ADR2 => reg_ID_instr_11_7388,
      ADR3 => VCC,
      O => in1_and000710_24116
    );
  in1_or000892 : X_LUT4
    generic map(
      INIT => X"0055",
      LOC => "SLICE_X66Y42"
    )
    port map (
      ADR0 => reg_ID_instr_13_7491,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_12_7519,
      O => in1_or000892_24125
    );
  in2_2_SW2 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X76Y49"
    )
    port map (
      ADR0 => reg_EX_result_2_7255,
      ADR1 => reg_ID_data2_2_7399,
      ADR2 => VCC,
      ADR3 => in2_and0005_0,
      O => N276
    );
  in1_cmp_eq00082 : X_LUT4
    generic map(
      INIT => X"0022",
      LOC => "SLICE_X76Y60"
    )
    port map (
      ADR0 => N13_0,
      ADR1 => reg_ID_instr_9_7378,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_10_7391,
      O => in1_cmp_eq0008
    );
  result_10_1 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X76Y60"
    )
    port map (
      ADR0 => in1_cmp_eq0008_0,
      ADR1 => ram_data(10),
      ADR2 => VCC,
      ADR3 => alu_result(10),
      O => result(10)
    );
  reg_EX_result_10 : X_FF
    generic map(
      LOC => "SLICE_X76Y60",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_result_10_DXMUX_24168,
      CE => VCC,
      CLK => proc_reg_EX_result_10_CLKINV_24150,
      SET => GND,
      RST => proc_reg_EX_result_10_FFX_RSTAND_24173,
      O => reg_EX_result_10_7247
    );
  proc_reg_EX_result_10_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X76Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_result_10_FFX_RSTAND_24173
    );
  rd_index1_or00071 : X_LUT4
    generic map(
      INIT => X"8C8C",
      LOC => "SLICE_X57Y62"
    )
    port map (
      ADR0 => reg_IF_instr_9_7584,
      ADR1 => N16_0,
      ADR2 => reg_IF_instr_10_7587,
      ADR3 => VCC,
      O => rd_index1_or0007
    );
  rd_index1_or00031 : X_LUT4
    generic map(
      INIT => X"FEFA",
      LOC => "SLICE_X57Y62"
    )
    port map (
      ADR0 => rd_index1_or0005_0,
      ADR1 => rd_index1_or000638_0,
      ADR2 => rd_index1_or0007_0,
      ADR3 => rd_index1_or000629_0,
      O => rd_index1_or0003
    );
  rd_index1_or00041_SW0 : X_LUT4
    generic map(
      INIT => X"FFF0",
      LOC => "SLICE_X63Y64"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_IF_instr_11_7586,
      ADR3 => reg_IF_instr_12_7589,
      O => N25
    );
  rd_index1_or00041 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X63Y64"
    )
    port map (
      ADR0 => reg_IF_instr_13_7588,
      ADR1 => reg_IF_instr_14_7591,
      ADR2 => N25_0,
      ADR3 => reg_IF_instr_15_7590,
      O => N16
    );
  reg_ID_data1_mux0007_0_0 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X74Y92"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N22_0,
      ADR2 => VCC,
      ADR3 => reg_IF_inport_0_7652,
      O => reg_ID_data1_mux0007_0_0_24237
    );
  reg_ID_data1_mux0007_0_6 : X_LUT4
    generic map(
      INIT => X"FF80",
      LOC => "SLICE_X74Y92"
    )
    port map (
      ADR0 => N1011_0,
      ADR1 => N2_0,
      ADR2 => reg_IF_PC_0_7674,
      ADR3 => reg_ID_data1_mux0007_0_0_0,
      O => reg_ID_data1_mux0007_0_6_24244
    );
  reg_ID_data1_mux0007_1_0 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X75Y91"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => reg_IF_inport_1_7651,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_ID_data1_mux0007_1_0_24261
    );
  reg_ID_data1_mux0007_1_6 : X_LUT4
    generic map(
      INIT => X"EAAA",
      LOC => "SLICE_X75Y91"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_1_0_0,
      ADR1 => reg_IF_PC_1_7676,
      ADR2 => N1011_0,
      ADR3 => N2_0,
      O => reg_ID_data1_mux0007_1_6_24268
    );
  reg_ID_data1_mux0007_2_0 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X69Y82"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_IF_inport_2_7654,
      O => reg_ID_data1_mux0007_2_0_24285
    );
  reg_ID_data1_mux0007_2_6 : X_LUT4
    generic map(
      INIT => X"F8F0",
      LOC => "SLICE_X69Y82"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => reg_IF_PC_2_7678,
      ADR2 => reg_ID_data1_mux0007_2_0_0,
      ADR3 => N1011_0,
      O => reg_ID_data1_mux0007_2_6_24292
    );
  reg_ID_data1_mux0007_3_0 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X68Y83"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_IF_inport_3_7653,
      ADR3 => N22_0,
      O => reg_ID_data1_mux0007_3_0_24309
    );
  reg_ID_data1_mux0007_3_6 : X_LUT4
    generic map(
      INIT => X"F8F0",
      LOC => "SLICE_X68Y83"
    )
    port map (
      ADR0 => reg_IF_PC_3_7680,
      ADR1 => N1011_0,
      ADR2 => reg_ID_data1_mux0007_3_0_0,
      ADR3 => N2_0,
      O => reg_ID_data1_mux0007_3_6_24316
    );
  reg_ID_data1_mux0007_4_0 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X65Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_inport_4_7656,
      ADR2 => N22_0,
      ADR3 => VCC,
      O => reg_ID_data1_mux0007_4_0_24333
    );
  reg_ID_data1_mux0007_4_6 : X_LUT4
    generic map(
      INIT => X"FF80",
      LOC => "SLICE_X65Y79"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => reg_IF_PC_4_7682,
      ADR2 => N1011_0,
      ADR3 => reg_ID_data1_mux0007_4_0_0,
      O => reg_ID_data1_mux0007_4_6_24340
    );
  reg_ID_data1_mux0007_5_0 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X64Y78"
    )
    port map (
      ADR0 => reg_IF_inport_5_7655,
      ADR1 => N22_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_ID_data1_mux0007_5_0_24357
    );
  reg_ID_data1_mux0007_5_6 : X_LUT4
    generic map(
      INIT => X"FF80",
      LOC => "SLICE_X64Y78"
    )
    port map (
      ADR0 => N1011_0,
      ADR1 => N2_0,
      ADR2 => reg_IF_PC_5_7684,
      ADR3 => reg_ID_data1_mux0007_5_0_0,
      O => reg_ID_data1_mux0007_5_6_24364
    );
  reg_ID_data1_mux0007_6_0 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X73Y96"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N22_0,
      ADR2 => VCC,
      ADR3 => reg_IF_inport_6_7657,
      O => reg_ID_data1_mux0007_6_0_24381
    );
  reg_ID_data1_mux0007_6_6 : X_LUT4
    generic map(
      INIT => X"F8F0",
      LOC => "SLICE_X73Y96"
    )
    port map (
      ADR0 => reg_IF_PC_6_7686,
      ADR1 => N2_0,
      ADR2 => reg_ID_data1_mux0007_6_0_0,
      ADR3 => N1011_0,
      O => reg_ID_data1_mux0007_6_6_24388
    );
  in2_and000552 : X_LUT4
    generic map(
      INIT => X"0404",
      LOC => "SLICE_X64Y41"
    )
    port map (
      ADR0 => N284,
      ADR1 => in2_and000536_0,
      ADR2 => N88_0,
      ADR3 => VCC,
      O => in2_and000552_24400
    );
  in2_and000536 : X_LUT4
    generic map(
      INIT => X"8241",
      LOC => "SLICE_X65Y43"
    )
    port map (
      ADR0 => reg_ID_instr_1_7546,
      ADR1 => reg_EX_instr_8_7562,
      ADR2 => reg_ID_instr_2_7473,
      ADR3 => reg_EX_instr_7_7561,
      O => in2_and000536_24412
    );
  in2_and000578 : X_LUT4
    generic map(
      INIT => X"CC80",
      LOC => "SLICE_X76Y48"
    )
    port map (
      ADR0 => in1_or0009_0,
      ADR1 => wr_enable_0,
      ADR2 => in1_cmp_eq0014_0,
      ADR3 => in2_and000552_0,
      O => in2_and0005
    );
  in2_3_SW2 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X76Y48"
    )
    port map (
      ADR0 => reg_EX_result_3_7254,
      ADR1 => VCC,
      ADR2 => reg_ID_data2_3_7401,
      ADR3 => in2_and0005_0,
      O => N274
    );
  reg_ID_PC_0 : X_FF
    generic map(
      LOC => "SLICE_X68Y76",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_PC_1_DYMUX_24448,
      CE => VCC,
      CLK => proc_reg_ID_PC_1_CLKINV_24445,
      SET => GND,
      RST => proc_reg_ID_PC_1_SRINV_24446,
      O => reg_ID_PC_0_7690
    );
  reg_ID_PC_1 : X_FF
    generic map(
      LOC => "SLICE_X68Y76",
      INIT => '0'
    )
    port map (
      I => proc_reg_ID_PC_1_DXMUX_24456,
      CE => VCC,
      CLK => proc_reg_ID_PC_1_CLKINV_24445,
      SET => GND,
      RST => proc_reg_ID_PC_1_SRINV_24446,
      O => reg_ID_PC_1_7689
    );
  reg_IF_PC_3 : X_FF
    generic map(
      LOC => "SLICE_X69Y69",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_PC_3_DXMUX_24566,
      CE => VCC,
      CLK => proc_reg_IF_PC_3_CLKINV_24555,
      SET => GND,
      RST => proc_reg_IF_PC_3_SRINV_24556,
      O => reg_IF_PC_3_7680
    );
  reg_IF_PC_4 : X_FF
    generic map(
      LOC => "SLICE_X64Y59",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_PC_5_DYMUX_24582,
      CE => VCC,
      CLK => proc_reg_IF_PC_5_CLKINV_24579,
      SET => GND,
      RST => proc_reg_IF_PC_5_SRINV_24580,
      O => reg_IF_PC_4_7682
    );
  reg_IF_PC_5 : X_FF
    generic map(
      LOC => "SLICE_X64Y59",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_PC_5_DXMUX_24590,
      CE => VCC,
      CLK => proc_reg_IF_PC_5_CLKINV_24579,
      SET => GND,
      RST => proc_reg_IF_PC_5_SRINV_24580,
      O => reg_IF_PC_5_7684
    );
  reg_IF_PC_6 : X_FF
    generic map(
      LOC => "SLICE_X77Y97",
      INIT => '0'
    )
    port map (
      I => proc_reg_IF_PC_6_DYMUX_24604,
      CE => VCC,
      CLK => proc_reg_IF_PC_6_CLKINV_24601,
      SET => GND,
      RST => proc_reg_IF_PC_6_FFY_RSTAND_24609,
      O => reg_IF_PC_6_7686
    );
  proc_reg_IF_PC_6_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X77Y97",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_IF_PC_6_FFY_RSTAND_24609
    );
  reg_EX_PC_0 : X_FF
    generic map(
      LOC => "SLICE_X65Y77",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_PC_1_DYMUX_24620,
      CE => VCC,
      CLK => proc_reg_EX_PC_1_CLKINV_24617,
      SET => GND,
      RST => proc_reg_EX_PC_1_SRINV_24618,
      O => reg_EX_PC_0_7661
    );
  reg_EX_PC_1 : X_FF
    generic map(
      LOC => "SLICE_X65Y77",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_PC_1_DXMUX_24628,
      CE => VCC,
      CLK => proc_reg_EX_PC_1_CLKINV_24617,
      SET => GND,
      RST => proc_reg_EX_PC_1_SRINV_24618,
      O => reg_EX_PC_1_7662
    );
  reg_EX_PC_2 : X_FF
    generic map(
      LOC => "SLICE_X60Y68",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_PC_3_DYMUX_24644,
      CE => VCC,
      CLK => proc_reg_EX_PC_3_CLKINV_24641,
      SET => GND,
      RST => proc_reg_EX_PC_3_SRINV_24642,
      O => reg_EX_PC_2_7663
    );
  reg_EX_PC_3 : X_FF
    generic map(
      LOC => "SLICE_X60Y68",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_PC_3_DXMUX_24652,
      CE => VCC,
      CLK => proc_reg_EX_PC_3_CLKINV_24641,
      SET => GND,
      RST => proc_reg_EX_PC_3_SRINV_24642,
      O => reg_EX_PC_3_7664
    );
  reg_EX_PC_4 : X_FF
    generic map(
      LOC => "SLICE_X57Y61",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_PC_5_DYMUX_24668,
      CE => VCC,
      CLK => proc_reg_EX_PC_5_CLKINV_24665,
      SET => GND,
      RST => proc_reg_EX_PC_5_SRINV_24666,
      O => reg_EX_PC_4_7665
    );
  reg_EX_PC_5 : X_FF
    generic map(
      LOC => "SLICE_X57Y61",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_PC_5_DXMUX_24676,
      CE => VCC,
      CLK => proc_reg_EX_PC_5_CLKINV_24665,
      SET => GND,
      RST => proc_reg_EX_PC_5_SRINV_24666,
      O => reg_EX_PC_5_7666
    );
  reg_EX_PC_6 : X_FF
    generic map(
      LOC => "SLICE_X67Y86",
      INIT => '0'
    )
    port map (
      I => proc_reg_EX_PC_6_DYMUX_24690,
      CE => VCC,
      CLK => proc_reg_EX_PC_6_CLKINV_24687,
      SET => GND,
      RST => proc_reg_EX_PC_6_FFY_RSTAND_24695,
      O => reg_EX_PC_6_7667
    );
  proc_reg_EX_PC_6_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X67Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => proc_reg_EX_PC_6_FFY_RSTAND_24695
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

