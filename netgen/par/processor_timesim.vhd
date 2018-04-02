--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: processor_timesim.vhd
-- /___/   /\     Timestamp: Mon Apr  2 00:05:05 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf processor.pcf -mhf -rpw 100 -tpw 0 -ar Structure -tm processor -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim processor.ncd processor_timesim.vhd 
-- Device	: 3s1200efg320-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: processor.ncd
-- Output file	: /home/mtayler/ceng450/processor/netgen/par/processor_timesim.vhd
-- # of Entities	: 5
-- Design Name	: processor
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
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
    outport : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    inport : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    instruction : in STD_LOGIC_VECTOR ( 15 downto 0 ) 
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
  signal clk_BUFGP : STD_LOGIC; 
  signal ram_wr_enable_0_0 : STD_LOGIC; 
  signal rst_IBUF_7150 : STD_LOGIC; 
  signal wr_overflow_0 : STD_LOGIC; 
  signal wr_enable_0 : STD_LOGIC; 
  signal rd_index1_2_0 : STD_LOGIC; 
  signal rd_index1_1_0 : STD_LOGIC; 
  signal rd_index1_0_0 : STD_LOGIC; 
  signal rd_index2_2_0 : STD_LOGIC; 
  signal rd_index2_1_0 : STD_LOGIC; 
  signal rd_index2_0_0 : STD_LOGIC; 
  signal reg_EX_result_15_7159 : STD_LOGIC; 
  signal reg_EX_result_14_7160 : STD_LOGIC; 
  signal reg_EX_result_13_7161 : STD_LOGIC; 
  signal reg_EX_result_12_7162 : STD_LOGIC; 
  signal reg_EX_result_11_7163 : STD_LOGIC; 
  signal reg_EX_result_10_7164 : STD_LOGIC; 
  signal reg_EX_result_9_7165 : STD_LOGIC; 
  signal reg_EX_result_8_7166 : STD_LOGIC; 
  signal reg_EX_result_7_7167 : STD_LOGIC; 
  signal reg_EX_result_6_7168 : STD_LOGIC; 
  signal reg_EX_result_5_7169 : STD_LOGIC; 
  signal reg_EX_result_4_7170 : STD_LOGIC; 
  signal reg_EX_result_3_7171 : STD_LOGIC; 
  signal reg_EX_result_2_7172 : STD_LOGIC; 
  signal reg_EX_result_1_7173 : STD_LOGIC; 
  signal reg_EX_result_0_7174 : STD_LOGIC; 
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
  signal in2_and000552_0 : STD_LOGIC; 
  signal reg_ID_data2_10_7314 : STD_LOGIC; 
  signal in1_cmp_eq0014_0 : STD_LOGIC; 
  signal N523 : STD_LOGIC; 
  signal N336 : STD_LOGIC; 
  signal reg_ID_data2_11_7318 : STD_LOGIC; 
  signal N521 : STD_LOGIC; 
  signal N334 : STD_LOGIC; 
  signal in2_and0002_0 : STD_LOGIC; 
  signal reg_EX_overflow_10_7323 : STD_LOGIC; 
  signal N424_0 : STD_LOGIC; 
  signal reg_EX_overflow_11_7326 : STD_LOGIC; 
  signal N421_0 : STD_LOGIC; 
  signal reg_EX_overflow_12_7329 : STD_LOGIC; 
  signal N400_0 : STD_LOGIC; 
  signal reg_EX_overflow_13_7332 : STD_LOGIC; 
  signal N397_0 : STD_LOGIC; 
  signal reg_EX_overflow_14_7335 : STD_LOGIC; 
  signal N394_0 : STD_LOGIC; 
  signal reg_EX_overflow_15_7338 : STD_LOGIC; 
  signal N391_0 : STD_LOGIC; 
  signal reg_ID_instr_9_7340 : STD_LOGIC; 
  signal ram_addr_and0000_0 : STD_LOGIC; 
  signal in1_and0003_0 : STD_LOGIC; 
  signal N360 : STD_LOGIC; 
  signal N358 : STD_LOGIC; 
  signal in2_and0005 : STD_LOGIC; 
  signal reg_EX_overflow_0_7346 : STD_LOGIC; 
  signal reg_ID_data2_0_7347 : STD_LOGIC; 
  signal reg_EX_overflow_1_7348 : STD_LOGIC; 
  signal reg_ID_data2_1_7349 : STD_LOGIC; 
  signal reg_EX_overflow_2_7350 : STD_LOGIC; 
  signal reg_ID_data2_2_7351 : STD_LOGIC; 
  signal reg_EX_overflow_3_7352 : STD_LOGIC; 
  signal reg_ID_data2_3_7353 : STD_LOGIC; 
  signal reg_EX_overflow_4_7355 : STD_LOGIC; 
  signal N418_0 : STD_LOGIC; 
  signal reg_EX_overflow_5_7358 : STD_LOGIC; 
  signal N415_0 : STD_LOGIC; 
  signal reg_EX_overflow_6_7361 : STD_LOGIC; 
  signal N412_0 : STD_LOGIC; 
  signal reg_EX_overflow_7_7364 : STD_LOGIC; 
  signal N409_0 : STD_LOGIC; 
  signal reg_EX_overflow_8_7367 : STD_LOGIC; 
  signal N406_0 : STD_LOGIC; 
  signal reg_EX_overflow_9_7370 : STD_LOGIC; 
  signal N403_0 : STD_LOGIC; 
  signal reg_ID_data2_4_7372 : STD_LOGIC; 
  signal N519 : STD_LOGIC; 
  signal N332 : STD_LOGIC; 
  signal reg_ID_data2_5_7375 : STD_LOGIC; 
  signal N517 : STD_LOGIC; 
  signal N330 : STD_LOGIC; 
  signal reg_ID_data2_6_7378 : STD_LOGIC; 
  signal N515 : STD_LOGIC; 
  signal N328 : STD_LOGIC; 
  signal reg_ID_data2_7_7381 : STD_LOGIC; 
  signal N513 : STD_LOGIC; 
  signal N326 : STD_LOGIC; 
  signal reg_ID_data2_8_7384 : STD_LOGIC; 
  signal N511 : STD_LOGIC; 
  signal N324 : STD_LOGIC; 
  signal reg_ID_data2_9_7387 : STD_LOGIC; 
  signal N509 : STD_LOGIC; 
  signal N322 : STD_LOGIC; 
  signal N352 : STD_LOGIC; 
  signal N384_0 : STD_LOGIC; 
  signal N350 : STD_LOGIC; 
  signal N382_0 : STD_LOGIC; 
  signal N348 : STD_LOGIC; 
  signal N380_0 : STD_LOGIC; 
  signal N346 : STD_LOGIC; 
  signal N378_0 : STD_LOGIC; 
  signal N344 : STD_LOGIC; 
  signal N342 : STD_LOGIC; 
  signal N340 : STD_LOGIC; 
  signal N338 : STD_LOGIC; 
  signal N356 : STD_LOGIC; 
  signal N354 : STD_LOGIC; 
  signal reg_ID_instr_11_7404 : STD_LOGIC; 
  signal reg_ID_instr_0_7405 : STD_LOGIC; 
  signal reg_EX_instr_6_7406 : STD_LOGIC; 
  signal reg_ID_instr_10_7407 : STD_LOGIC; 
  signal N388 : STD_LOGIC; 
  signal reg_IF_PC_0_7409 : STD_LOGIC; 
  signal N1011_0 : STD_LOGIC; 
  signal N2_0 : STD_LOGIC; 
  signal N22_0 : STD_LOGIC; 
  signal reg_IF_inport_0_7413 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_0_6 : STD_LOGIC; 
  signal reg_IF_PC_1_7415 : STD_LOGIC; 
  signal reg_IF_inport_1_7416 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_1_6 : STD_LOGIC; 
  signal reg_IF_PC_2_7418 : STD_LOGIC; 
  signal reg_IF_inport_2_7419 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_2_6 : STD_LOGIC; 
  signal reg_IF_PC_3_7421 : STD_LOGIC; 
  signal reg_IF_inport_3_7422 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_3_6 : STD_LOGIC; 
  signal reg_IF_PC_4_7424 : STD_LOGIC; 
  signal reg_IF_inport_4_7425 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_4_6 : STD_LOGIC; 
  signal reg_IF_PC_5_7427 : STD_LOGIC; 
  signal reg_IF_inport_5_7428 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_5_6 : STD_LOGIC; 
  signal reg_IF_PC_6_7430 : STD_LOGIC; 
  signal reg_IF_inport_6_7431 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_6_6 : STD_LOGIC; 
  signal reg_EX_instr_9_7433 : STD_LOGIC; 
  signal reg_EX_instr_13_7434 : STD_LOGIC; 
  signal reg_EX_instr_11_7435 : STD_LOGIC; 
  signal in1_or0003_SW0_O : STD_LOGIC; 
  signal reg_EX_instr_12_7437 : STD_LOGIC; 
  signal reg_EX_instr_15_7438 : STD_LOGIC; 
  signal reg_EX_instr_14_7439 : STD_LOGIC; 
  signal reg_EX_instr_10_7440 : STD_LOGIC; 
  signal in1_or0003_0 : STD_LOGIC; 
  signal N192 : STD_LOGIC; 
  signal reg_ID_instr_12_7443 : STD_LOGIC; 
  signal reg_ID_instr_14_7444 : STD_LOGIC; 
  signal reg_ID_instr_13_7445 : STD_LOGIC; 
  signal reg_ID_instr_15_7446 : STD_LOGIC; 
  signal in1_and0008_0 : STD_LOGIC; 
  signal in1_or000821_O : STD_LOGIC; 
  signal in1_or000829_0 : STD_LOGIC; 
  signal in1_or000892_0 : STD_LOGIC; 
  signal in1_or000861_O : STD_LOGIC; 
  signal in1_or0008_0 : STD_LOGIC; 
  signal reg_ID_instr_2_7453 : STD_LOGIC; 
  signal reg_ID_instr_1_7454 : STD_LOGIC; 
  signal in1_and0008_SW2_O : STD_LOGIC; 
  signal in2_and00025_0 : STD_LOGIC; 
  signal reg_ID_data1_10_7457 : STD_LOGIC; 
  signal in1_and0007101_0 : STD_LOGIC; 
  signal reg_ID_data1_11_7459 : STD_LOGIC; 
  signal in1_12_SW2_O : STD_LOGIC; 
  signal reg_ID_data1_12_7461 : STD_LOGIC; 
  signal in1_13_SW2_O : STD_LOGIC; 
  signal reg_ID_data1_13_7463 : STD_LOGIC; 
  signal in1_14_SW2_O : STD_LOGIC; 
  signal reg_ID_data1_14_7465 : STD_LOGIC; 
  signal in1_15_SW2_O : STD_LOGIC; 
  signal reg_ID_data1_15_7467 : STD_LOGIC; 
  signal in1_and000312_0 : STD_LOGIC; 
  signal in1_and000318_SW0_O : STD_LOGIC; 
  signal N428_0 : STD_LOGIC; 
  signal N372_0 : STD_LOGIC; 
  signal in1_cmp_eq0013_0 : STD_LOGIC; 
  signal reg_ID_instr_6_7473 : STD_LOGIC; 
  signal in1_and000771_O : STD_LOGIC; 
  signal reg_EX_instr_7_7475 : STD_LOGIC; 
  signal reg_EX_instr_8_7476 : STD_LOGIC; 
  signal reg_ID_instr_7_7477 : STD_LOGIC; 
  signal reg_ID_instr_8_7478 : STD_LOGIC; 
  signal in1_and000772_0 : STD_LOGIC; 
  signal branch_trigger_cmp_eq0001 : STD_LOGIC; 
  signal N96_0 : STD_LOGIC; 
  signal in2_and00028_0 : STD_LOGIC; 
  signal in1_or0009 : STD_LOGIC; 
  signal N426_0 : STD_LOGIC; 
  signal in1_and000728_O : STD_LOGIC; 
  signal in1_and00075_0 : STD_LOGIC; 
  signal in1_and000710_0 : STD_LOGIC; 
  signal in1_cmp_eq00131_SW0_O : STD_LOGIC; 
  signal reg_ID_instr_5_7489 : STD_LOGIC; 
  signal in1_cmp_eq00143_SW0_O : STD_LOGIC; 
  signal reg_ID_instr_3_7491 : STD_LOGIC; 
  signal reg_ID_instr_4_7492 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_0_SW2_O : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_1_SW2_O : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_2_SW2_O : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_3_SW2_O : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_4_SW2_O : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_5_SW2_O : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_6_SW2_O : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_7_SW2_O : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_8_SW2_O : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_9_SW2_O : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal wr_enable_or000181 : STD_LOGIC; 
  signal wr_overflow_or000017_0 : STD_LOGIC; 
  signal wr_overflow_or000031_0 : STD_LOGIC; 
  signal wr_overflow_or000034_SW0_O : STD_LOGIC; 
  signal reg_ID_data1_0_7509 : STD_LOGIC; 
  signal reg_ID_data1_1_7510 : STD_LOGIC; 
  signal reg_ID_data1_2_7511 : STD_LOGIC; 
  signal reg_ID_data1_3_7512 : STD_LOGIC; 
  signal reg_ID_data1_4_7513 : STD_LOGIC; 
  signal reg_ID_data1_5_7514 : STD_LOGIC; 
  signal reg_ID_data1_6_7515 : STD_LOGIC; 
  signal reg_ID_data1_7_7516 : STD_LOGIC; 
  signal reg_ID_data1_8_7517 : STD_LOGIC; 
  signal reg_ID_data1_9_7518 : STD_LOGIC; 
  signal wr_enable_or000160_O : STD_LOGIC; 
  signal wr_enable_or000134_0 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_10_SW2_O : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_11_SW2_O : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_12_SW0_O : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_13_SW0_O : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_14_SW0_O : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_15_SW0_O : STD_LOGIC; 
  signal reg_ID_data2_15_7527 : STD_LOGIC; 
  signal in2_and000578_SW0_G_O : STD_LOGIC; 
  signal reg_ID_data2_14_7529 : STD_LOGIC; 
  signal in2_and000578_SW2_G_O : STD_LOGIC; 
  signal reg_ID_data2_13_7531 : STD_LOGIC; 
  signal in2_and000578_SW4_G_O : STD_LOGIC; 
  signal reg_ID_data2_12_7533 : STD_LOGIC; 
  signal in2_and000578_SW6_G_O : STD_LOGIC; 
  signal alu_mode_0_4_O : STD_LOGIC; 
  signal alu_mode_0_15_0 : STD_LOGIC; 
  signal N15_0 : STD_LOGIC; 
  signal alu_mode_0_1_SW0_O : STD_LOGIC; 
  signal branch_trigger : STD_LOGIC; 
  signal N137_0 : STD_LOGIC; 
  signal N133_0 : STD_LOGIC; 
  signal N131_0 : STD_LOGIC; 
  signal outport_cmp_eq0000_7544 : STD_LOGIC; 
  signal N135_0 : STD_LOGIC; 
  signal in1_cmp_eq0008 : STD_LOGIC; 
  signal reg_IF_inport_11_7547 : STD_LOGIC; 
  signal N02 : STD_LOGIC; 
  signal reg_IF_inport_10_7549 : STD_LOGIC; 
  signal reg_IF_inport_13_7550 : STD_LOGIC; 
  signal reg_IF_inport_12_7551 : STD_LOGIC; 
  signal reg_IF_inport_15_7552 : STD_LOGIC; 
  signal reg_IF_inport_14_7553 : STD_LOGIC; 
  signal N18_0 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N119_0 : STD_LOGIC; 
  signal N117_0 : STD_LOGIC; 
  signal N123_0 : STD_LOGIC; 
  signal N121_0 : STD_LOGIC; 
  signal reg_IF_inport_7_7560 : STD_LOGIC; 
  signal reg_IF_inport_8_7561 : STD_LOGIC; 
  signal N127_0 : STD_LOGIC; 
  signal N125_0 : STD_LOGIC; 
  signal reg_IF_instr_11_7564 : STD_LOGIC; 
  signal reg_IF_instr_10_7565 : STD_LOGIC; 
  signal reg_IF_instr_13_7566 : STD_LOGIC; 
  signal reg_IF_instr_12_7567 : STD_LOGIC; 
  signal reg_IF_instr_15_7568 : STD_LOGIC; 
  signal reg_IF_instr_14_7569 : STD_LOGIC; 
  signal reg_IF_instr_1_7570 : STD_LOGIC; 
  signal reg_IF_instr_0_7571 : STD_LOGIC; 
  signal reg_IF_instr_3_7572 : STD_LOGIC; 
  signal reg_IF_instr_2_7573 : STD_LOGIC; 
  signal reg_IF_instr_5_7574 : STD_LOGIC; 
  signal reg_IF_instr_4_7575 : STD_LOGIC; 
  signal reg_IF_instr_7_7576 : STD_LOGIC; 
  signal reg_IF_instr_6_7577 : STD_LOGIC; 
  signal reg_IF_instr_9_7578 : STD_LOGIC; 
  signal reg_IF_instr_8_7579 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N16_0 : STD_LOGIC; 
  signal rd_index1_or0005_0 : STD_LOGIC; 
  signal rd_index1_or000629_0 : STD_LOGIC; 
  signal rd_index1_or000638_7584 : STD_LOGIC; 
  signal rd_index1_or0007 : STD_LOGIC; 
  signal rd_index1_or0003_0 : STD_LOGIC; 
  signal rd_index1_or0006 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_146_7589 : STD_LOGIC; 
  signal or0000_0_or0000_0 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_11_15_0 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_15_0 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N112_0 : STD_LOGIC; 
  signal N113_0 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_2_7597 : STD_LOGIC; 
  signal N811_0 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_11_2_7599 : STD_LOGIC; 
  signal in2_and000536_0 : STD_LOGIC; 
  signal N115_0 : STD_LOGIC; 
  signal N110_0 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_134_0 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal rd_index1_or0004_7605 : STD_LOGIC; 
  signal reg_ID_PC_1_7606 : STD_LOGIC; 
  signal reg_ID_PC_0_7607 : STD_LOGIC; 
  signal reg_ID_PC_3_7608 : STD_LOGIC; 
  signal reg_ID_PC_2_7609 : STD_LOGIC; 
  signal reg_ID_PC_5_7610 : STD_LOGIC; 
  signal reg_ID_PC_4_7611 : STD_LOGIC; 
  signal reg_ID_PC_6_7612 : STD_LOGIC; 
  signal reg_EX_n_flag_7613 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_15_0 : STD_LOGIC; 
  signal reg_EX_PC_0_7615 : STD_LOGIC; 
  signal reg_EX_PC_1_7616 : STD_LOGIC; 
  signal reg_EX_PC_2_7617 : STD_LOGIC; 
  signal reg_EX_PC_4_7618 : STD_LOGIC; 
  signal reg_EX_PC_3_7619 : STD_LOGIC; 
  signal reg_EX_PC_6_7620 : STD_LOGIC; 
  signal reg_EX_PC_5_7621 : STD_LOGIC; 
  signal reg_EX_z_flag_7622 : STD_LOGIC; 
  signal N104_0 : STD_LOGIC; 
  signal N140_0 : STD_LOGIC; 
  signal N139_0 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_120_0 : STD_LOGIC; 
  signal reg_IF_inport_9_7628 : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal rst_INBUF : STD_LOGIC; 
  signal outport_10_O : STD_LOGIC; 
  signal outport_11_O : STD_LOGIC; 
  signal outport_12_O : STD_LOGIC; 
  signal outport_13_O : STD_LOGIC; 
  signal outport_14_O : STD_LOGIC; 
  signal outport_15_O : STD_LOGIC; 
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
  signal outport_0_O : STD_LOGIC; 
  signal outport_1_O : STD_LOGIC; 
  signal outport_2_O : STD_LOGIC; 
  signal outport_3_O : STD_LOGIC; 
  signal outport_4_O : STD_LOGIC; 
  signal outport_5_O : STD_LOGIC; 
  signal outport_6_O : STD_LOGIC; 
  signal outport_7_O : STD_LOGIC; 
  signal outport_8_O : STD_LOGIC; 
  signal outport_9_O : STD_LOGIC; 
  signal inport_10_INBUF : STD_LOGIC; 
  signal inport_11_INBUF : STD_LOGIC; 
  signal inport_12_INBUF : STD_LOGIC; 
  signal inport_13_INBUF : STD_LOGIC; 
  signal inport_14_INBUF : STD_LOGIC; 
  signal inport_15_INBUF : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal N336_F5MUX_17515 : STD_LOGIC; 
  signal N571 : STD_LOGIC; 
  signal N336_BXINV_17507 : STD_LOGIC; 
  signal N570 : STD_LOGIC; 
  signal N334_F5MUX_17540 : STD_LOGIC; 
  signal N579 : STD_LOGIC; 
  signal N334_BXINV_17532 : STD_LOGIC; 
  signal N578 : STD_LOGIC; 
  signal in2_10_F5MUX_17565 : STD_LOGIC; 
  signal N555 : STD_LOGIC; 
  signal in2_10_BXINV_17558 : STD_LOGIC; 
  signal N554 : STD_LOGIC; 
  signal in2_11_F5MUX_17590 : STD_LOGIC; 
  signal N553 : STD_LOGIC; 
  signal in2_11_BXINV_17583 : STD_LOGIC; 
  signal N552 : STD_LOGIC; 
  signal in2_12_F5MUX_17615 : STD_LOGIC; 
  signal N539 : STD_LOGIC; 
  signal in2_12_BXINV_17608 : STD_LOGIC; 
  signal N538 : STD_LOGIC; 
  signal in2_13_F5MUX_17640 : STD_LOGIC; 
  signal N537 : STD_LOGIC; 
  signal in2_13_BXINV_17633 : STD_LOGIC; 
  signal N536 : STD_LOGIC; 
  signal in2_14_F5MUX_17665 : STD_LOGIC; 
  signal N535 : STD_LOGIC; 
  signal in2_14_BXINV_17658 : STD_LOGIC; 
  signal N534 : STD_LOGIC; 
  signal in2_15_F5MUX_17690 : STD_LOGIC; 
  signal N533 : STD_LOGIC; 
  signal in2_15_BXINV_17683 : STD_LOGIC; 
  signal N532 : STD_LOGIC; 
  signal ram_addr_10_F5MUX_17715 : STD_LOGIC; 
  signal N497 : STD_LOGIC; 
  signal ram_addr_10_BXINV_17708 : STD_LOGIC; 
  signal N496 : STD_LOGIC; 
  signal ram_addr_11_F5MUX_17740 : STD_LOGIC; 
  signal N495 : STD_LOGIC; 
  signal ram_addr_11_BXINV_17733 : STD_LOGIC; 
  signal N494 : STD_LOGIC; 
  signal in2_0_F5MUX_17765 : STD_LOGIC; 
  signal N563 : STD_LOGIC; 
  signal in2_0_BXINV_17757 : STD_LOGIC; 
  signal N562 : STD_LOGIC; 
  signal in2_1_F5MUX_17790 : STD_LOGIC; 
  signal N557 : STD_LOGIC; 
  signal in2_1_BXINV_17782 : STD_LOGIC; 
  signal N556 : STD_LOGIC; 
  signal in2_2_F5MUX_17815 : STD_LOGIC; 
  signal N559 : STD_LOGIC; 
  signal in2_2_BXINV_17807 : STD_LOGIC; 
  signal N558 : STD_LOGIC; 
  signal in2_3_F5MUX_17840 : STD_LOGIC; 
  signal N561 : STD_LOGIC; 
  signal in2_3_BXINV_17832 : STD_LOGIC; 
  signal N560 : STD_LOGIC; 
  signal in2_4_F5MUX_17865 : STD_LOGIC; 
  signal N551 : STD_LOGIC; 
  signal in2_4_BXINV_17858 : STD_LOGIC; 
  signal N550 : STD_LOGIC; 
  signal in2_5_F5MUX_17890 : STD_LOGIC; 
  signal N549 : STD_LOGIC; 
  signal in2_5_BXINV_17883 : STD_LOGIC; 
  signal N548 : STD_LOGIC; 
  signal in2_6_F5MUX_17915 : STD_LOGIC; 
  signal N547 : STD_LOGIC; 
  signal in2_6_BXINV_17908 : STD_LOGIC; 
  signal N546 : STD_LOGIC; 
  signal in2_7_F5MUX_17940 : STD_LOGIC; 
  signal N545 : STD_LOGIC; 
  signal in2_7_BXINV_17933 : STD_LOGIC; 
  signal N544 : STD_LOGIC; 
  signal in2_8_F5MUX_17965 : STD_LOGIC; 
  signal N543 : STD_LOGIC; 
  signal in2_8_BXINV_17958 : STD_LOGIC; 
  signal N542 : STD_LOGIC; 
  signal in2_9_F5MUX_17990 : STD_LOGIC; 
  signal N541 : STD_LOGIC; 
  signal in2_9_BXINV_17983 : STD_LOGIC; 
  signal N540 : STD_LOGIC; 
  signal N332_F5MUX_18015 : STD_LOGIC; 
  signal N577 : STD_LOGIC; 
  signal N332_BXINV_18007 : STD_LOGIC; 
  signal N576 : STD_LOGIC; 
  signal N330_F5MUX_18040 : STD_LOGIC; 
  signal N569 : STD_LOGIC; 
  signal N330_BXINV_18032 : STD_LOGIC; 
  signal N568 : STD_LOGIC; 
  signal N328_F5MUX_18065 : STD_LOGIC; 
  signal N575 : STD_LOGIC; 
  signal N328_BXINV_18057 : STD_LOGIC; 
  signal N574 : STD_LOGIC; 
  signal N326_F5MUX_18090 : STD_LOGIC; 
  signal N567 : STD_LOGIC; 
  signal N326_BXINV_18082 : STD_LOGIC; 
  signal N566 : STD_LOGIC; 
  signal N324_F5MUX_18115 : STD_LOGIC; 
  signal N573 : STD_LOGIC; 
  signal N324_BXINV_18107 : STD_LOGIC; 
  signal N572 : STD_LOGIC; 
  signal N322_F5MUX_18140 : STD_LOGIC; 
  signal N565 : STD_LOGIC; 
  signal N322_BXINV_18132 : STD_LOGIC; 
  signal N564 : STD_LOGIC; 
  signal ram_addr_0_F5MUX_18165 : STD_LOGIC; 
  signal N531 : STD_LOGIC; 
  signal ram_addr_0_BXINV_18158 : STD_LOGIC; 
  signal N530 : STD_LOGIC; 
  signal ram_addr_1_F5MUX_18190 : STD_LOGIC; 
  signal N529 : STD_LOGIC; 
  signal ram_addr_1_BXINV_18183 : STD_LOGIC; 
  signal N528 : STD_LOGIC; 
  signal ram_addr_2_F5MUX_18215 : STD_LOGIC; 
  signal N527 : STD_LOGIC; 
  signal ram_addr_2_BXINV_18208 : STD_LOGIC; 
  signal N526 : STD_LOGIC; 
  signal ram_addr_3_F5MUX_18240 : STD_LOGIC; 
  signal N525 : STD_LOGIC; 
  signal ram_addr_3_BXINV_18233 : STD_LOGIC; 
  signal N524 : STD_LOGIC; 
  signal ram_addr_4_F5MUX_18265 : STD_LOGIC; 
  signal N493 : STD_LOGIC; 
  signal ram_addr_4_BXINV_18258 : STD_LOGIC; 
  signal N492 : STD_LOGIC; 
  signal ram_addr_5_F5MUX_18290 : STD_LOGIC; 
  signal N491 : STD_LOGIC; 
  signal ram_addr_5_BXINV_18283 : STD_LOGIC; 
  signal N490 : STD_LOGIC; 
  signal ram_addr_6_F5MUX_18315 : STD_LOGIC; 
  signal N489 : STD_LOGIC; 
  signal ram_addr_6_BXINV_18308 : STD_LOGIC; 
  signal N488 : STD_LOGIC; 
  signal ram_addr_7_F5MUX_18340 : STD_LOGIC; 
  signal N487 : STD_LOGIC; 
  signal ram_addr_7_BXINV_18333 : STD_LOGIC; 
  signal N486 : STD_LOGIC; 
  signal ram_addr_8_F5MUX_18365 : STD_LOGIC; 
  signal N485 : STD_LOGIC; 
  signal ram_addr_8_BXINV_18358 : STD_LOGIC; 
  signal N484 : STD_LOGIC; 
  signal ram_addr_9_F5MUX_18390 : STD_LOGIC; 
  signal N483 : STD_LOGIC; 
  signal ram_addr_9_BXINV_18383 : STD_LOGIC; 
  signal N482 : STD_LOGIC; 
  signal N388_F5MUX_18415 : STD_LOGIC; 
  signal N499 : STD_LOGIC; 
  signal N388_BXINV_18408 : STD_LOGIC; 
  signal N498 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_0_6_F5MUX_18440 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_0_61_18438 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_0_6_BXINV_18433 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_0_62_18431 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_1_6_F5MUX_18465 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_1_61_18463 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_1_6_BXINV_18458 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_1_62_18456 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_2_6_F5MUX_18490 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_2_61_18488 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_2_6_BXINV_18483 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_2_62_18481 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_3_6_F5MUX_18515 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_3_61_18513 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_3_6_BXINV_18508 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_3_62_18506 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_4_6_F5MUX_18540 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_4_61_18538 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_4_6_BXINV_18533 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_4_62_18531 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_5_6_F5MUX_18565 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_5_61_18563 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_5_6_BXINV_18558 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_5_62_18556 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_6_6_F5MUX_18590 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_6_61_18588 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_6_6_BXINV_18583 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_6_62_18581 : STD_LOGIC; 
  signal in1_or0003_18613 : STD_LOGIC; 
  signal in1_or0003_SW0_O_pack_1 : STD_LOGIC; 
  signal in1_and0008_18637 : STD_LOGIC; 
  signal N192_pack_1 : STD_LOGIC; 
  signal in1_or000829_18661 : STD_LOGIC; 
  signal in1_or000821_O_pack_1 : STD_LOGIC; 
  signal in1_or0008 : STD_LOGIC; 
  signal in1_or000861_O_pack_1 : STD_LOGIC; 
  signal in2_and00025_18709 : STD_LOGIC; 
  signal in1_and0008_SW2_O_pack_1 : STD_LOGIC; 
  signal N360_pack_1 : STD_LOGIC; 
  signal N358_pack_1 : STD_LOGIC; 
  signal in1_12_SW2_O_pack_1 : STD_LOGIC; 
  signal in1_13_SW2_O_pack_1 : STD_LOGIC; 
  signal in1_14_SW2_O_pack_1 : STD_LOGIC; 
  signal in1_15_SW2_O_pack_1 : STD_LOGIC; 
  signal in1_and0003 : STD_LOGIC; 
  signal in1_and000318_SW0_O_pack_1 : STD_LOGIC; 
  signal in1_and000772_18901 : STD_LOGIC; 
  signal in1_and000771_O_pack_1 : STD_LOGIC; 
  signal branch_trigger_cmp_eq0001_pack_1 : STD_LOGIC; 
  signal in2_and0002 : STD_LOGIC; 
  signal in1_or0009_pack_1 : STD_LOGIC; 
  signal in1_and0007101_18973 : STD_LOGIC; 
  signal in1_and000728_O_pack_1 : STD_LOGIC; 
  signal in1_cmp_eq0013 : STD_LOGIC; 
  signal in1_cmp_eq00131_SW0_O_pack_1 : STD_LOGIC; 
  signal in1_cmp_eq0014 : STD_LOGIC; 
  signal in1_cmp_eq00143_SW0_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_0_DXMUX_19052 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_0_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_0_CLKINV_19034 : STD_LOGIC; 
  signal reg_EX_overflow_1_DXMUX_19087 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_1_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_1_CLKINV_19069 : STD_LOGIC; 
  signal reg_EX_overflow_2_DXMUX_19122 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_2_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_2_CLKINV_19104 : STD_LOGIC; 
  signal reg_EX_overflow_3_DXMUX_19157 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_3_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_3_CLKINV_19139 : STD_LOGIC; 
  signal reg_EX_overflow_4_DXMUX_19192 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_4_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_4_CLKINV_19174 : STD_LOGIC; 
  signal reg_EX_overflow_5_DXMUX_19227 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_5_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_5_CLKINV_19209 : STD_LOGIC; 
  signal reg_EX_overflow_6_DXMUX_19262 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_6_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_6_CLKINV_19244 : STD_LOGIC; 
  signal reg_EX_overflow_7_DXMUX_19297 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_7_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_7_CLKINV_19279 : STD_LOGIC; 
  signal reg_EX_overflow_8_DXMUX_19332 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_8_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_8_CLKINV_19314 : STD_LOGIC; 
  signal reg_EX_overflow_9_DXMUX_19367 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_9_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_9_CLKINV_19349 : STD_LOGIC; 
  signal ram_addr_and0000 : STD_LOGIC; 
  signal N13_pack_1 : STD_LOGIC; 
  signal wr_overflow_or000017_19419 : STD_LOGIC; 
  signal wr_enable_or000181_pack_1 : STD_LOGIC; 
  signal wr_overflow : STD_LOGIC; 
  signal wr_overflow_or000034_SW0_O_pack_1 : STD_LOGIC; 
  signal N352_pack_1 : STD_LOGIC; 
  signal N350_pack_1 : STD_LOGIC; 
  signal N348_pack_1 : STD_LOGIC; 
  signal N346_pack_1 : STD_LOGIC; 
  signal N344_pack_1 : STD_LOGIC; 
  signal N342_pack_1 : STD_LOGIC; 
  signal N340_pack_1 : STD_LOGIC; 
  signal N338_pack_1 : STD_LOGIC; 
  signal N356_pack_1 : STD_LOGIC; 
  signal N354_pack_1 : STD_LOGIC; 
  signal wr_enable : STD_LOGIC; 
  signal wr_enable_or000160_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_10_DXMUX_19738 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_10_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_10_CLKINV_19720 : STD_LOGIC; 
  signal reg_EX_overflow_11_DXMUX_19773 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_11_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_11_CLKINV_19755 : STD_LOGIC; 
  signal reg_EX_overflow_12_DXMUX_19808 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_12_SW0_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_12_CLKINV_19790 : STD_LOGIC; 
  signal reg_EX_overflow_13_DXMUX_19843 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_13_SW0_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_13_CLKINV_19825 : STD_LOGIC; 
  signal reg_EX_overflow_14_DXMUX_19878 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_14_SW0_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_14_CLKINV_19860 : STD_LOGIC; 
  signal reg_EX_overflow_15_DXMUX_19913 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_15_SW0_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_15_CLKINV_19895 : STD_LOGIC; 
  signal N405 : STD_LOGIC; 
  signal N511_pack_2 : STD_LOGIC; 
  signal N420 : STD_LOGIC; 
  signal N521_pack_2 : STD_LOGIC; 
  signal N408 : STD_LOGIC; 
  signal N513_pack_2 : STD_LOGIC; 
  signal N423 : STD_LOGIC; 
  signal N523_pack_2 : STD_LOGIC; 
  signal N411 : STD_LOGIC; 
  signal N515_pack_2 : STD_LOGIC; 
  signal N414 : STD_LOGIC; 
  signal N517_pack_2 : STD_LOGIC; 
  signal N417 : STD_LOGIC; 
  signal N519_pack_2 : STD_LOGIC; 
  signal N390 : STD_LOGIC; 
  signal in2_and000578_SW0_G_O_pack_2 : STD_LOGIC; 
  signal N393 : STD_LOGIC; 
  signal in2_and000578_SW2_G_O_pack_2 : STD_LOGIC; 
  signal N396 : STD_LOGIC; 
  signal in2_and000578_SW4_G_O_pack_2 : STD_LOGIC; 
  signal N399 : STD_LOGIC; 
  signal in2_and000578_SW6_G_O_pack_2 : STD_LOGIC; 
  signal N402 : STD_LOGIC; 
  signal N509_pack_2 : STD_LOGIC; 
  signal alu_mode_0_4_O_pack_1 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal alu_mode_0_1_SW0_O_pack_1 : STD_LOGIC; 
  signal N102_pack_1 : STD_LOGIC; 
  signal PC_1_DXMUX_20315 : STD_LOGIC; 
  signal PC_1_DYMUX_20301 : STD_LOGIC; 
  signal PC_1_SRINV_20292 : STD_LOGIC; 
  signal PC_1_CLKINVNOT : STD_LOGIC; 
  signal PC_3_DXMUX_20357 : STD_LOGIC; 
  signal PC_3_DYMUX_20343 : STD_LOGIC; 
  signal PC_3_SRINV_20335 : STD_LOGIC; 
  signal PC_3_CLKINVNOT : STD_LOGIC; 
  signal PC_5_DXMUX_20399 : STD_LOGIC; 
  signal PC_5_DYMUX_20385 : STD_LOGIC; 
  signal PC_5_SRINV_20377 : STD_LOGIC; 
  signal PC_5_CLKINVNOT : STD_LOGIC; 
  signal outport_15_OBUF_20438 : STD_LOGIC; 
  signal PC_6_DYMUX_20425 : STD_LOGIC; 
  signal PC_6_CLKINVNOT : STD_LOGIC; 
  signal reg_EX_instr_7_DXMUX_20476 : STD_LOGIC; 
  signal reg_EX_instr_7_DYMUX_20460 : STD_LOGIC; 
  signal reg_EX_instr_7_SRINV_20450 : STD_LOGIC; 
  signal reg_EX_instr_7_CLKINV_20449 : STD_LOGIC; 
  signal reg_EX_instr_9_DXMUX_20518 : STD_LOGIC; 
  signal reg_EX_instr_9_DYMUX_20502 : STD_LOGIC; 
  signal reg_EX_instr_9_SRINV_20492 : STD_LOGIC; 
  signal reg_EX_instr_9_CLKINV_20491 : STD_LOGIC; 
  signal reg_EX_instr_11_DXMUX_20560 : STD_LOGIC; 
  signal reg_EX_instr_11_DYMUX_20544 : STD_LOGIC; 
  signal reg_EX_instr_11_SRINV_20534 : STD_LOGIC; 
  signal reg_EX_instr_11_CLKINV_20533 : STD_LOGIC; 
  signal reg_EX_instr_13_DXMUX_20602 : STD_LOGIC; 
  signal reg_EX_instr_13_DYMUX_20586 : STD_LOGIC; 
  signal reg_EX_instr_13_SRINV_20576 : STD_LOGIC; 
  signal reg_EX_instr_13_CLKINV_20575 : STD_LOGIC; 
  signal reg_EX_instr_15_DXMUX_20644 : STD_LOGIC; 
  signal reg_EX_instr_15_DYMUX_20628 : STD_LOGIC; 
  signal reg_EX_instr_15_SRINV_20618 : STD_LOGIC; 
  signal reg_EX_instr_15_CLKINV_20617 : STD_LOGIC; 
  signal reg_EX_result_1_DXMUX_20686 : STD_LOGIC; 
  signal reg_EX_result_1_DYMUX_20671 : STD_LOGIC; 
  signal reg_EX_result_1_SRINV_20662 : STD_LOGIC; 
  signal reg_EX_result_1_CLKINV_20661 : STD_LOGIC; 
  signal reg_EX_result_3_DXMUX_20728 : STD_LOGIC; 
  signal reg_EX_result_3_DYMUX_20713 : STD_LOGIC; 
  signal reg_EX_result_3_SRINV_20704 : STD_LOGIC; 
  signal reg_EX_result_3_CLKINV_20703 : STD_LOGIC; 
  signal reg_EX_result_5_DXMUX_20770 : STD_LOGIC; 
  signal reg_EX_result_5_DYMUX_20755 : STD_LOGIC; 
  signal reg_EX_result_5_SRINV_20746 : STD_LOGIC; 
  signal reg_EX_result_5_CLKINV_20745 : STD_LOGIC; 
  signal reg_EX_result_7_DXMUX_20812 : STD_LOGIC; 
  signal reg_EX_result_7_DYMUX_20797 : STD_LOGIC; 
  signal reg_EX_result_7_SRINV_20788 : STD_LOGIC; 
  signal reg_EX_result_7_CLKINV_20787 : STD_LOGIC; 
  signal reg_EX_result_9_DXMUX_20854 : STD_LOGIC; 
  signal reg_EX_result_9_DYMUX_20839 : STD_LOGIC; 
  signal reg_EX_result_9_SRINV_20830 : STD_LOGIC; 
  signal reg_EX_result_9_CLKINV_20829 : STD_LOGIC; 
  signal reg_ID_data1_11_DXMUX_20896 : STD_LOGIC; 
  signal reg_ID_data1_11_DYMUX_20882 : STD_LOGIC; 
  signal reg_ID_data1_11_SRINV_20874 : STD_LOGIC; 
  signal reg_ID_data1_11_CLKINV_20873 : STD_LOGIC; 
  signal reg_ID_data1_13_DXMUX_20938 : STD_LOGIC; 
  signal reg_ID_data1_13_DYMUX_20924 : STD_LOGIC; 
  signal reg_ID_data1_13_SRINV_20916 : STD_LOGIC; 
  signal reg_ID_data1_13_CLKINV_20915 : STD_LOGIC; 
  signal reg_ID_data1_15_DXMUX_20980 : STD_LOGIC; 
  signal reg_ID_data1_15_DYMUX_20966 : STD_LOGIC; 
  signal reg_ID_data1_15_SRINV_20958 : STD_LOGIC; 
  signal reg_ID_data1_15_CLKINV_20957 : STD_LOGIC; 
  signal reg_ID_data2_11_DXMUX_21022 : STD_LOGIC; 
  signal reg_ID_data2_11_DYMUX_21008 : STD_LOGIC; 
  signal reg_ID_data2_11_SRINV_21000 : STD_LOGIC; 
  signal reg_ID_data2_11_CLKINV_20999 : STD_LOGIC; 
  signal reg_ID_data2_13_DXMUX_21064 : STD_LOGIC; 
  signal reg_ID_data2_13_DYMUX_21050 : STD_LOGIC; 
  signal reg_ID_data2_13_SRINV_21042 : STD_LOGIC; 
  signal reg_ID_data2_13_CLKINV_21041 : STD_LOGIC; 
  signal reg_ID_data2_15_DXMUX_21106 : STD_LOGIC; 
  signal reg_ID_data2_15_DYMUX_21092 : STD_LOGIC; 
  signal reg_ID_data2_15_SRINV_21084 : STD_LOGIC; 
  signal reg_ID_data2_15_CLKINV_21083 : STD_LOGIC; 
  signal reg_ID_data1_1_DXMUX_21148 : STD_LOGIC; 
  signal reg_ID_data1_1_DYMUX_21133 : STD_LOGIC; 
  signal reg_ID_data1_1_SRINV_21124 : STD_LOGIC; 
  signal reg_ID_data1_1_CLKINV_21123 : STD_LOGIC; 
  signal reg_ID_data1_3_DXMUX_21190 : STD_LOGIC; 
  signal reg_ID_data1_3_DYMUX_21175 : STD_LOGIC; 
  signal reg_ID_data1_3_SRINV_21166 : STD_LOGIC; 
  signal reg_ID_data1_3_CLKINV_21165 : STD_LOGIC; 
  signal reg_ID_data2_1_DXMUX_21232 : STD_LOGIC; 
  signal reg_ID_data2_1_DYMUX_21218 : STD_LOGIC; 
  signal reg_ID_data2_1_SRINV_21210 : STD_LOGIC; 
  signal reg_ID_data2_1_CLKINV_21209 : STD_LOGIC; 
  signal reg_ID_data1_5_DXMUX_21274 : STD_LOGIC; 
  signal reg_ID_data1_5_DYMUX_21259 : STD_LOGIC; 
  signal reg_ID_data1_5_SRINV_21250 : STD_LOGIC; 
  signal reg_ID_data1_5_CLKINV_21249 : STD_LOGIC; 
  signal reg_ID_data2_3_DXMUX_21316 : STD_LOGIC; 
  signal reg_ID_data2_3_DYMUX_21302 : STD_LOGIC; 
  signal reg_ID_data2_3_SRINV_21294 : STD_LOGIC; 
  signal reg_ID_data2_3_CLKINV_21293 : STD_LOGIC; 
  signal reg_ID_data1_7_DXMUX_21358 : STD_LOGIC; 
  signal reg_ID_data1_7_DYMUX_21344 : STD_LOGIC; 
  signal reg_ID_data1_7_SRINV_21335 : STD_LOGIC; 
  signal reg_ID_data1_7_CLKINV_21334 : STD_LOGIC; 
  signal reg_ID_data1_8_DYMUX_21381 : STD_LOGIC; 
  signal reg_ID_data1_8_CLKINV_21372 : STD_LOGIC; 
  signal reg_ID_data2_7_DXMUX_21423 : STD_LOGIC; 
  signal reg_ID_data2_7_DYMUX_21409 : STD_LOGIC; 
  signal reg_ID_data2_7_SRINV_21401 : STD_LOGIC; 
  signal reg_ID_data2_7_CLKINV_21400 : STD_LOGIC; 
  signal reg_ID_data2_9_DYMUX_21446 : STD_LOGIC; 
  signal reg_ID_data2_9_CLKINV_21437 : STD_LOGIC; 
  signal reg_ID_instr_11_DXMUX_21488 : STD_LOGIC; 
  signal reg_ID_instr_11_DYMUX_21472 : STD_LOGIC; 
  signal reg_ID_instr_11_SRINV_21462 : STD_LOGIC; 
  signal reg_ID_instr_11_CLKINV_21461 : STD_LOGIC; 
  signal reg_ID_instr_13_DXMUX_21530 : STD_LOGIC; 
  signal reg_ID_instr_13_DYMUX_21514 : STD_LOGIC; 
  signal reg_ID_instr_13_SRINV_21504 : STD_LOGIC; 
  signal reg_ID_instr_13_CLKINV_21503 : STD_LOGIC; 
  signal reg_ID_instr_15_DXMUX_21572 : STD_LOGIC; 
  signal reg_ID_instr_15_DYMUX_21556 : STD_LOGIC; 
  signal reg_ID_instr_15_SRINV_21546 : STD_LOGIC; 
  signal reg_ID_instr_15_CLKINV_21545 : STD_LOGIC; 
  signal reg_ID_instr_1_DXMUX_21614 : STD_LOGIC; 
  signal reg_ID_instr_1_DYMUX_21598 : STD_LOGIC; 
  signal reg_ID_instr_1_SRINV_21588 : STD_LOGIC; 
  signal reg_ID_instr_1_CLKINV_21587 : STD_LOGIC; 
  signal reg_ID_instr_3_DXMUX_21656 : STD_LOGIC; 
  signal reg_ID_instr_3_DYMUX_21640 : STD_LOGIC; 
  signal reg_ID_instr_3_SRINV_21630 : STD_LOGIC; 
  signal reg_ID_instr_3_CLKINV_21629 : STD_LOGIC; 
  signal reg_ID_instr_5_DXMUX_21698 : STD_LOGIC; 
  signal reg_ID_instr_5_DYMUX_21682 : STD_LOGIC; 
  signal reg_ID_instr_5_SRINV_21672 : STD_LOGIC; 
  signal reg_ID_instr_5_CLKINV_21671 : STD_LOGIC; 
  signal reg_ID_instr_7_DXMUX_21740 : STD_LOGIC; 
  signal reg_ID_instr_7_DYMUX_21724 : STD_LOGIC; 
  signal reg_ID_instr_7_SRINV_21714 : STD_LOGIC; 
  signal reg_ID_instr_7_CLKINV_21713 : STD_LOGIC; 
  signal reg_ID_instr_9_DXMUX_21782 : STD_LOGIC; 
  signal reg_ID_instr_9_DYMUX_21766 : STD_LOGIC; 
  signal reg_ID_instr_9_SRINV_21756 : STD_LOGIC; 
  signal reg_ID_instr_9_CLKINV_21755 : STD_LOGIC; 
  signal reg_IF_instr_11_DXMUX_21824 : STD_LOGIC; 
  signal reg_IF_instr_11_DYMUX_21808 : STD_LOGIC; 
  signal reg_IF_instr_11_SRINV_21798 : STD_LOGIC; 
  signal reg_IF_instr_11_CLKINV_21797 : STD_LOGIC; 
  signal reg_IF_instr_13_DXMUX_21866 : STD_LOGIC; 
  signal reg_IF_instr_13_DYMUX_21850 : STD_LOGIC; 
  signal reg_IF_instr_13_SRINV_21840 : STD_LOGIC; 
  signal reg_IF_instr_13_CLKINV_21839 : STD_LOGIC; 
  signal reg_IF_instr_15_DXMUX_21908 : STD_LOGIC; 
  signal reg_IF_instr_15_DYMUX_21892 : STD_LOGIC; 
  signal reg_IF_instr_15_SRINV_21882 : STD_LOGIC; 
  signal reg_IF_instr_15_CLKINV_21881 : STD_LOGIC; 
  signal reg_IF_instr_1_DXMUX_21950 : STD_LOGIC; 
  signal reg_IF_instr_1_DYMUX_21934 : STD_LOGIC; 
  signal reg_IF_instr_1_SRINV_21924 : STD_LOGIC; 
  signal reg_IF_instr_1_CLKINV_21923 : STD_LOGIC; 
  signal reg_IF_instr_3_DXMUX_21992 : STD_LOGIC; 
  signal reg_IF_instr_3_DYMUX_21976 : STD_LOGIC; 
  signal reg_IF_instr_3_SRINV_21966 : STD_LOGIC; 
  signal reg_IF_instr_3_CLKINV_21965 : STD_LOGIC; 
  signal reg_IF_instr_5_DXMUX_22034 : STD_LOGIC; 
  signal reg_IF_instr_5_DYMUX_22018 : STD_LOGIC; 
  signal reg_IF_instr_5_SRINV_22008 : STD_LOGIC; 
  signal reg_IF_instr_5_CLKINV_22007 : STD_LOGIC; 
  signal reg_IF_instr_7_DYMUX_22057 : STD_LOGIC; 
  signal reg_IF_instr_7_CLKINV_22046 : STD_LOGIC; 
  signal reg_IF_instr_9_DXMUX_22099 : STD_LOGIC; 
  signal reg_IF_instr_9_DYMUX_22083 : STD_LOGIC; 
  signal reg_IF_instr_9_SRINV_22073 : STD_LOGIC; 
  signal reg_IF_instr_9_CLKINV_22072 : STD_LOGIC; 
  signal reg_EX_result_11_DXMUX_22141 : STD_LOGIC; 
  signal reg_EX_result_11_DYMUX_22126 : STD_LOGIC; 
  signal reg_EX_result_11_SRINV_22117 : STD_LOGIC; 
  signal reg_EX_result_11_CLKINV_22116 : STD_LOGIC; 
  signal reg_EX_result_12_DYMUX_22164 : STD_LOGIC; 
  signal reg_EX_result_12_CLKINV_22154 : STD_LOGIC; 
  signal reg_EX_result_15_DXMUX_22206 : STD_LOGIC; 
  signal reg_EX_result_15_DYMUX_22191 : STD_LOGIC; 
  signal reg_EX_result_15_SRINV_22182 : STD_LOGIC; 
  signal reg_EX_result_15_CLKINV_22181 : STD_LOGIC; 
  signal outport_10_OBUF_22234 : STD_LOGIC; 
  signal outport_0_OBUF_22225 : STD_LOGIC; 
  signal outport_11_OBUF_22258 : STD_LOGIC; 
  signal outport_1_OBUF_22249 : STD_LOGIC; 
  signal outport_12_OBUF_22282 : STD_LOGIC; 
  signal outport_2_OBUF_22273 : STD_LOGIC; 
  signal outport_13_OBUF_22306 : STD_LOGIC; 
  signal outport_3_OBUF_22297 : STD_LOGIC; 
  signal outport_14_OBUF_22330 : STD_LOGIC; 
  signal outport_4_OBUF_22321 : STD_LOGIC; 
  signal outport_6_OBUF_22354 : STD_LOGIC; 
  signal outport_5_OBUF_22345 : STD_LOGIC; 
  signal outport_8_OBUF_22378 : STD_LOGIC; 
  signal outport_7_OBUF_22369 : STD_LOGIC; 
  signal N426 : STD_LOGIC; 
  signal in1_and00075_22395 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal in1_and000710_22462 : STD_LOGIC; 
  signal in1_or000892_22454 : STD_LOGIC; 
  signal N428 : STD_LOGIC; 
  signal in2_and00028_22477 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N129_pack_1 : STD_LOGIC; 
  signal rd_index1_or0003 : STD_LOGIC; 
  signal rd_index1_or0007_pack_1 : STD_LOGIC; 
  signal in1_and000312_22642 : STD_LOGIC; 
  signal reg_ID_data2_8_DXMUX_22673 : STD_LOGIC; 
  signal N95_pack_1 : STD_LOGIC; 
  signal reg_ID_data2_8_CLKINV_22657 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_11_15_22701 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_15_22694 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N5_pack_1 : STD_LOGIC; 
  signal reg_ID_data2_5_DXMUX_22780 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_2_pack_1 : STD_LOGIC; 
  signal reg_ID_data2_5_CLKINV_22763 : STD_LOGIC; 
  signal reg_ID_data2_4_DXMUX_22815 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_11_2_pack_1 : STD_LOGIC; 
  signal reg_ID_data2_4_CLKINV_22798 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N19_pack_1 : STD_LOGIC; 
  signal in2_and000552_22855 : STD_LOGIC; 
  signal in2_and000536_22867 : STD_LOGIC; 
  signal N378 : STD_LOGIC; 
  signal in2_and0005_pack_1 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal or0000_0_or0000 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N7_pack_1 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_134_23011 : STD_LOGIC; 
  signal rd_index1_or000629_23003 : STD_LOGIC; 
  signal N1011 : STD_LOGIC; 
  signal rd_index1_or000638_pack_1 : STD_LOGIC; 
  signal N811 : STD_LOGIC; 
  signal rd_index1_or0006_pack_1 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal reg_EX_result_13_DXMUX_23114 : STD_LOGIC; 
  signal in1_cmp_eq0008_pack_1 : STD_LOGIC; 
  signal reg_EX_result_13_CLKINV_23096 : STD_LOGIC; 
  signal N372 : STD_LOGIC; 
  signal N2_23166 : STD_LOGIC; 
  signal N108_pack_1 : STD_LOGIC; 
  signal wr_enable_or000134_23238 : STD_LOGIC; 
  signal wr_overflow_or000031_23231 : STD_LOGIC; 
  signal reg_ID_PC_1_DXMUX_23258 : STD_LOGIC; 
  signal reg_ID_PC_1_DYMUX_23250 : STD_LOGIC; 
  signal reg_ID_PC_1_SRINV_23248 : STD_LOGIC; 
  signal reg_ID_PC_1_CLKINV_23247 : STD_LOGIC; 
  signal reg_ID_PC_3_DXMUX_23282 : STD_LOGIC; 
  signal reg_ID_PC_3_DYMUX_23274 : STD_LOGIC; 
  signal reg_ID_PC_3_SRINV_23272 : STD_LOGIC; 
  signal reg_ID_PC_3_CLKINV_23271 : STD_LOGIC; 
  signal reg_ID_PC_5_DXMUX_23306 : STD_LOGIC; 
  signal reg_ID_PC_5_DYMUX_23298 : STD_LOGIC; 
  signal reg_ID_PC_5_SRINV_23296 : STD_LOGIC; 
  signal reg_ID_PC_5_CLKINV_23295 : STD_LOGIC; 
  signal reg_ID_PC_6_DYMUX_23320 : STD_LOGIC; 
  signal reg_ID_PC_6_CLKINV_23317 : STD_LOGIC; 
  signal reg_IF_PC_1_DXMUX_23344 : STD_LOGIC; 
  signal reg_IF_PC_1_DYMUX_23336 : STD_LOGIC; 
  signal reg_IF_PC_1_SRINV_23334 : STD_LOGIC; 
  signal reg_IF_PC_1_CLKINV_23333 : STD_LOGIC; 
  signal reg_IF_PC_3_DXMUX_23368 : STD_LOGIC; 
  signal reg_IF_PC_3_DYMUX_23360 : STD_LOGIC; 
  signal reg_IF_PC_3_SRINV_23358 : STD_LOGIC; 
  signal reg_IF_PC_3_CLKINV_23357 : STD_LOGIC; 
  signal reg_IF_PC_5_DXMUX_23392 : STD_LOGIC; 
  signal reg_IF_PC_5_DYMUX_23384 : STD_LOGIC; 
  signal reg_IF_PC_5_SRINV_23382 : STD_LOGIC; 
  signal reg_IF_PC_5_CLKINV_23381 : STD_LOGIC; 
  signal reg_IF_PC_6_DYMUX_23406 : STD_LOGIC; 
  signal reg_IF_PC_6_CLKINV_23403 : STD_LOGIC; 
  signal reg_EX_n_flag_DYMUX_23420 : STD_LOGIC; 
  signal reg_EX_n_flag_CLKINV_23417 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_15_23436 : STD_LOGIC; 
  signal rd_index1_or0004_pack_1 : STD_LOGIC; 
  signal N382 : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal reg_EX_PC_1_DXMUX_23624 : STD_LOGIC; 
  signal reg_EX_PC_1_DYMUX_23616 : STD_LOGIC; 
  signal reg_EX_PC_1_SRINV_23614 : STD_LOGIC; 
  signal reg_EX_PC_1_CLKINV_23613 : STD_LOGIC; 
  signal reg_EX_PC_3_DXMUX_23648 : STD_LOGIC; 
  signal reg_EX_PC_3_DYMUX_23640 : STD_LOGIC; 
  signal reg_EX_PC_3_SRINV_23638 : STD_LOGIC; 
  signal reg_EX_PC_3_CLKINV_23637 : STD_LOGIC; 
  signal reg_EX_PC_5_DXMUX_23672 : STD_LOGIC; 
  signal reg_EX_PC_5_DYMUX_23664 : STD_LOGIC; 
  signal reg_EX_PC_5_SRINV_23662 : STD_LOGIC; 
  signal reg_EX_PC_5_CLKINV_23661 : STD_LOGIC; 
  signal reg_EX_PC_6_DYMUX_23686 : STD_LOGIC; 
  signal reg_EX_PC_6_CLKINV_23683 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal Madd_PC_next_addsub0000_cy_3_pack_1 : STD_LOGIC; 
  signal N380 : STD_LOGIC; 
  signal reg_EX_z_flag_DYMUX_23736 : STD_LOGIC; 
  signal reg_EX_z_flag_CLKINV_23733 : STD_LOGIC; 
  signal outport_9_OBUF_23764 : STD_LOGIC; 
  signal outport_cmp_eq0000_pack_1 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal reg_IF_inport_11_DXMUX_23808 : STD_LOGIC; 
  signal reg_IF_inport_11_DYMUX_23800 : STD_LOGIC; 
  signal reg_IF_inport_11_SRINV_23798 : STD_LOGIC; 
  signal reg_IF_inport_11_CLKINV_23797 : STD_LOGIC; 
  signal reg_IF_inport_13_DXMUX_23832 : STD_LOGIC; 
  signal reg_IF_inport_13_DYMUX_23824 : STD_LOGIC; 
  signal reg_IF_inport_13_SRINV_23822 : STD_LOGIC; 
  signal reg_IF_inport_13_CLKINV_23821 : STD_LOGIC; 
  signal reg_IF_inport_15_DXMUX_23856 : STD_LOGIC; 
  signal reg_IF_inport_15_DYMUX_23848 : STD_LOGIC; 
  signal reg_IF_inport_15_SRINV_23846 : STD_LOGIC; 
  signal reg_IF_inport_15_CLKINV_23845 : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N106_pack_1 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_120_23920 : STD_LOGIC; 
  signal rd_index1_or0005 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_146_pack_1 : STD_LOGIC; 
  signal reg_ID_data1_9_DXMUX_23975 : STD_LOGIC; 
  signal N02_pack_1 : STD_LOGIC; 
  signal reg_ID_data1_9_CLKINV_23959 : STD_LOGIC; 
  signal reg_IF_inport_1_DXMUX_23999 : STD_LOGIC; 
  signal reg_IF_inport_1_DYMUX_23991 : STD_LOGIC; 
  signal reg_IF_inport_1_SRINV_23989 : STD_LOGIC; 
  signal reg_IF_inport_1_CLKINV_23988 : STD_LOGIC; 
  signal reg_IF_inport_3_DXMUX_24023 : STD_LOGIC; 
  signal reg_IF_inport_3_DYMUX_24015 : STD_LOGIC; 
  signal reg_IF_inport_3_SRINV_24013 : STD_LOGIC; 
  signal reg_IF_inport_3_CLKINV_24012 : STD_LOGIC; 
  signal reg_IF_inport_5_DXMUX_24047 : STD_LOGIC; 
  signal reg_IF_inport_5_DYMUX_24039 : STD_LOGIC; 
  signal reg_IF_inport_5_SRINV_24037 : STD_LOGIC; 
  signal reg_IF_inport_5_CLKINV_24036 : STD_LOGIC; 
  signal reg_IF_inport_7_DXMUX_24071 : STD_LOGIC; 
  signal reg_IF_inport_7_DYMUX_24063 : STD_LOGIC; 
  signal reg_IF_inport_7_SRINV_24061 : STD_LOGIC; 
  signal reg_IF_inport_7_CLKINV_24060 : STD_LOGIC; 
  signal reg_IF_inport_9_DXMUX_24095 : STD_LOGIC; 
  signal reg_IF_inport_9_DYMUX_24087 : STD_LOGIC; 
  signal reg_IF_inport_9_SRINV_24085 : STD_LOGIC; 
  signal reg_IF_inport_9_CLKINV_24084 : STD_LOGIC; 
  signal N424 : STD_LOGIC; 
  signal N406 : STD_LOGIC; 
  signal N418 : STD_LOGIC; 
  signal N421 : STD_LOGIC; 
  signal N415 : STD_LOGIC; 
  signal N409 : STD_LOGIC; 
  signal N403 : STD_LOGIC; 
  signal N412 : STD_LOGIC; 
  signal N400 : STD_LOGIC; 
  signal N391 : STD_LOGIC; 
  signal N397 : STD_LOGIC; 
  signal N394 : STD_LOGIC; 
  signal reg_IF_instr_6_DXMUX_24274 : STD_LOGIC; 
  signal branch_trigger_pack_1 : STD_LOGIC; 
  signal reg_IF_instr_6_CLKINV_24256 : STD_LOGIC; 
  signal alu_mode_0_15_24295 : STD_LOGIC; 
  signal reg_ID_data1_8_FFY_RSTAND_21386 : STD_LOGIC; 
  signal reg_ID_data2_9_FFY_RSTAND_21451 : STD_LOGIC; 
  signal reg_IF_PC_6_FFY_RSTAND_23411 : STD_LOGIC; 
  signal reg_EX_n_flag_FFY_RSTAND_23425 : STD_LOGIC; 
  signal reg_EX_overflow_10_FFX_RSTAND_19743 : STD_LOGIC; 
  signal reg_EX_overflow_0_FFX_RSTAND_19057 : STD_LOGIC; 
  signal reg_EX_overflow_1_FFX_RSTAND_19092 : STD_LOGIC; 
  signal reg_EX_overflow_2_FFX_RSTAND_19127 : STD_LOGIC; 
  signal reg_EX_overflow_3_FFX_RSTAND_19162 : STD_LOGIC; 
  signal reg_EX_overflow_11_FFX_RSTAND_19778 : STD_LOGIC; 
  signal reg_EX_overflow_12_FFX_RSTAND_19813 : STD_LOGIC; 
  signal reg_EX_overflow_13_FFX_RSTAND_19848 : STD_LOGIC; 
  signal reg_EX_overflow_4_FFX_RSTAND_19197 : STD_LOGIC; 
  signal reg_EX_overflow_5_FFX_RSTAND_19232 : STD_LOGIC; 
  signal reg_EX_overflow_6_FFX_RSTAND_19267 : STD_LOGIC; 
  signal reg_EX_overflow_7_FFX_RSTAND_19302 : STD_LOGIC; 
  signal reg_EX_overflow_8_FFX_RSTAND_19337 : STD_LOGIC; 
  signal reg_EX_overflow_9_FFX_RSTAND_19372 : STD_LOGIC; 
  signal reg_EX_overflow_14_FFX_RSTAND_19883 : STD_LOGIC; 
  signal reg_EX_overflow_15_FFX_RSTAND_19918 : STD_LOGIC; 
  signal PC_6_FFY_RSTAND_20430 : STD_LOGIC; 
  signal reg_IF_instr_7_FFY_RSTAND_22062 : STD_LOGIC; 
  signal reg_EX_result_12_FFY_RSTAND_22169 : STD_LOGIC; 
  signal reg_ID_data2_8_FFX_RSTAND_22678 : STD_LOGIC; 
  signal reg_ID_PC_6_FFY_RSTAND_23325 : STD_LOGIC; 
  signal reg_EX_result_13_FFX_RSTAND_23119 : STD_LOGIC; 
  signal reg_ID_data2_5_FFX_RSTAND_22785 : STD_LOGIC; 
  signal reg_ID_data2_4_FFX_RSTAND_22820 : STD_LOGIC; 
  signal reg_ID_data1_9_FFX_RSTAND_23980 : STD_LOGIC; 
  signal reg_EX_PC_6_FFY_RSTAND_23691 : STD_LOGIC; 
  signal reg_EX_z_flag_FFY_RSTAND_23741 : STD_LOGIC; 
  signal reg_IF_instr_6_FFX_RSTAND_24279 : STD_LOGIC; 
  signal NLW_alu0_clk_UNCONNECTED : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal PC : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal rom_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ram_addr : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal in2 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ram_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal rd_data1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal rd_data2 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal alu_result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal overflow : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Madd_PC_next_addsub0000_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal in1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal wr_index : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal reg_EX_overflow_mux0001 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal alu_mode : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal PC_next : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal reg_EX_instr_mux0001 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal reg_ID_data1_mux0007 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal reg_ID_data2_mux0007 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal reg_ID_instr_mux0001 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal reg_IF_instr_mux0001 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal wr_overflow_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal rd_index2 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal ram_wr_enable : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal rd_index1 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  rom0 : ROM_VHDL
    port map (
      clk => clk_BUFGP,
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
      clk => clk_BUFGP,
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
      clk => clk_BUFGP,
      rst => rst_IBUF_7150,
      wr_overflow => wr_overflow_0,
      wr_enable => wr_enable_0,
      rd_index1(2) => rd_index1_2_0,
      rd_index1(1) => rd_index1_1_0,
      rd_index1(0) => rd_index1_0_0,
      rd_index2(2) => rd_index2_2_0,
      rd_index2(1) => rd_index2_1_0,
      rd_index2(0) => rd_index2_0_0,
      wr_data(15) => reg_EX_result_15_7159,
      wr_data(14) => reg_EX_result_14_7160,
      wr_data(13) => reg_EX_result_13_7161,
      wr_data(12) => reg_EX_result_12_7162,
      wr_data(11) => reg_EX_result_11_7163,
      wr_data(10) => reg_EX_result_10_7164,
      wr_data(9) => reg_EX_result_9_7165,
      wr_data(8) => reg_EX_result_8_7166,
      wr_data(7) => reg_EX_result_7_7167,
      wr_data(6) => reg_EX_result_6_7168,
      wr_data(5) => reg_EX_result_5_7169,
      wr_data(4) => reg_EX_result_4_7170,
      wr_data(3) => reg_EX_result_3_7171,
      wr_data(2) => reg_EX_result_2_7172,
      wr_data(1) => reg_EX_result_1_7173,
      wr_data(0) => reg_EX_result_0_7174,
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
      clk => NLW_alu0_clk_UNCONNECTED,
      rst => rst_IBUF_7150,
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
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD38",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "IPAD148",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => rst_INBUF
    );
  rst_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD148",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_INBUF,
      O => rst_IBUF_7150
    );
  outport_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => outport_10_O,
      O => outport(10)
    );
  outport_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => outport_11_O,
      O => outport(11)
    );
  outport_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD149"
    )
    port map (
      I => outport_12_O,
      O => outport(12)
    );
  outport_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => outport_13_O,
      O => outport(13)
    );
  outport_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD129"
    )
    port map (
      I => outport_14_O,
      O => outport(14)
    );
  outport_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD128"
    )
    port map (
      I => outport_15_O,
      O => outport(15)
    );
  inport_0_IBUF : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(0),
      O => inport_0_INBUF
    );
  inport_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD141",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(1),
      O => inport_1_INBUF
    );
  inport_2_IBUF : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(2),
      O => inport_2_INBUF
    );
  inport_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD131",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(3),
      O => inport_3_INBUF
    );
  inport_4_IBUF : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(4),
      O => inport_4_INBUF
    );
  inport_5_IBUF : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(5),
      O => inport_5_INBUF
    );
  inport_6_IBUF : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(6),
      O => inport_6_INBUF
    );
  inport_7_IBUF : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(7),
      O => inport_7_INBUF
    );
  inport_8_IBUF : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(8),
      O => inport_8_INBUF
    );
  inport_9_IBUF : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(9),
      O => inport_9_INBUF
    );
  outport_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD142"
    )
    port map (
      I => outport_0_O,
      O => outport(0)
    );
  outport_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD158"
    )
    port map (
      I => outport_1_O,
      O => outport(1)
    );
  outport_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD166"
    )
    port map (
      I => outport_2_O,
      O => outport(2)
    );
  outport_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD167"
    )
    port map (
      I => outport_3_O,
      O => outport(3)
    );
  outport_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD135"
    )
    port map (
      I => outport_4_O,
      O => outport(4)
    );
  outport_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => outport_5_O,
      O => outport(5)
    );
  outport_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD171"
    )
    port map (
      I => outport_6_O,
      O => outport(6)
    );
  outport_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD140"
    )
    port map (
      I => outport_7_O,
      O => outport(7)
    );
  outport_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD139"
    )
    port map (
      I => outport_8_O,
      O => outport(8)
    );
  outport_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => outport_9_O,
      O => outport(9)
    );
  inport_10_IBUF : X_BUF
    generic map(
      LOC => "IPAD121",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(10),
      O => inport_10_INBUF
    );
  inport_11_IBUF : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(11),
      O => inport_11_INBUF
    );
  inport_12_IBUF : X_BUF
    generic map(
      LOC => "IPAD116",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(12),
      O => inport_12_INBUF
    );
  inport_13_IBUF : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(13),
      O => inport_13_INBUF
    );
  inport_14_IBUF : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(14),
      O => inport_14_INBUF
    );
  inport_15_IBUF : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(15),
      O => inport_15_INBUF
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y10"
    )
    port map (
      I0 => clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_BUFG_I0_INV
    );
  N336_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => N336_F5MUX_17515,
      O => N336
    );
  N336_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X45Y71"
    )
    port map (
      IA => N570,
      IB => N571,
      SEL => N336_BXINV_17507,
      O => N336_F5MUX_17515
    );
  N336_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_0,
      O => N336_BXINV_17507
    );
  in2_10_SW2_F : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X45Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => N523,
      ADR3 => reg_ID_data2_10_7314,
      O => N570
    );
  N334_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => N334_F5MUX_17540,
      O => N334
    );
  N334_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X45Y75"
    )
    port map (
      IA => N578,
      IB => N579,
      SEL => N334_BXINV_17532,
      O => N334_F5MUX_17540
    );
  N334_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_0,
      O => N334_BXINV_17532
    );
  in2_11_SW2_F : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X45Y75"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => reg_ID_data2_11_7318,
      ADR3 => N521,
      O => N578
    );
  in2_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_10_F5MUX_17565,
      O => in2(10)
    );
  in2_10_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X48Y68"
    )
    port map (
      IA => N554,
      IB => N555,
      SEL => in2_10_BXINV_17558,
      O => in2_10_F5MUX_17565
    );
  in2_10_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => N423,
      O => in2_10_BXINV_17558
    );
  in2_10_F : X_LUT4
    generic map(
      INIT => X"F808",
      LOC => "SLICE_X48Y68"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => N424_0,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_10_7323,
      O => N554
    );
  in2_10_G : X_LUT4
    generic map(
      INIT => X"FD0D",
      LOC => "SLICE_X48Y68"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => N424_0,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_10_7323,
      O => N555
    );
  in2_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_11_F5MUX_17590,
      O => in2(11)
    );
  in2_11_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X44Y75"
    )
    port map (
      IA => N552,
      IB => N553,
      SEL => in2_11_BXINV_17583,
      O => in2_11_F5MUX_17590
    );
  in2_11_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => N420,
      O => in2_11_BXINV_17583
    );
  in2_11_F : X_LUT4
    generic map(
      INIT => X"D888",
      LOC => "SLICE_X44Y75"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => reg_EX_overflow_11_7326,
      ADR2 => N421_0,
      ADR3 => in2_and000552_0,
      O => N552
    );
  in2_11_G : X_LUT4
    generic map(
      INIT => X"D8DD",
      LOC => "SLICE_X44Y75"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => reg_EX_overflow_11_7326,
      ADR2 => N421_0,
      ADR3 => in2_and000552_0,
      O => N553
    );
  in2_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_12_F5MUX_17615,
      O => in2(12)
    );
  in2_12_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X49Y64"
    )
    port map (
      IA => N538,
      IB => N539,
      SEL => in2_12_BXINV_17608,
      O => in2_12_F5MUX_17615
    );
  in2_12_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => N399,
      O => in2_12_BXINV_17608
    );
  in2_12_F : X_LUT4
    generic map(
      INIT => X"E2C0",
      LOC => "SLICE_X49Y64"
    )
    port map (
      ADR0 => N400_0,
      ADR1 => in2_and0002_0,
      ADR2 => reg_EX_overflow_12_7329,
      ADR3 => in2_and000552_0,
      O => N538
    );
  in2_12_G : X_LUT4
    generic map(
      INIT => X"E2F3",
      LOC => "SLICE_X49Y64"
    )
    port map (
      ADR0 => N400_0,
      ADR1 => in2_and0002_0,
      ADR2 => reg_EX_overflow_12_7329,
      ADR3 => in2_and000552_0,
      O => N539
    );
  in2_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_13_F5MUX_17640,
      O => in2(13)
    );
  in2_13_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X44Y66"
    )
    port map (
      IA => N536,
      IB => N537,
      SEL => in2_13_BXINV_17633,
      O => in2_13_F5MUX_17640
    );
  in2_13_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => N396,
      O => in2_13_BXINV_17633
    );
  in2_13_F : X_LUT4
    generic map(
      INIT => X"F808",
      LOC => "SLICE_X44Y66"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => N397_0,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_13_7332,
      O => N536
    );
  in2_13_G : X_LUT4
    generic map(
      INIT => X"FD0D",
      LOC => "SLICE_X44Y66"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => N397_0,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_13_7332,
      O => N537
    );
  in2_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_14_F5MUX_17665,
      O => in2(14)
    );
  in2_14_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y66"
    )
    port map (
      IA => N534,
      IB => N535,
      SEL => in2_14_BXINV_17658,
      O => in2_14_F5MUX_17665
    );
  in2_14_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => N393,
      O => in2_14_BXINV_17658
    );
  in2_14_F : X_LUT4
    generic map(
      INIT => X"EC20",
      LOC => "SLICE_X43Y66"
    )
    port map (
      ADR0 => N394_0,
      ADR1 => in2_and0002_0,
      ADR2 => in2_and000552_0,
      ADR3 => reg_EX_overflow_14_7335,
      O => N534
    );
  in2_14_G : X_LUT4
    generic map(
      INIT => X"EF23",
      LOC => "SLICE_X43Y66"
    )
    port map (
      ADR0 => N394_0,
      ADR1 => in2_and0002_0,
      ADR2 => in2_and000552_0,
      ADR3 => reg_EX_overflow_14_7335,
      O => N535
    );
  in2_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_15_F5MUX_17690,
      O => in2(15)
    );
  in2_15_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X48Y64"
    )
    port map (
      IA => N532,
      IB => N533,
      SEL => in2_15_BXINV_17683,
      O => in2_15_F5MUX_17690
    );
  in2_15_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => N390,
      O => in2_15_BXINV_17683
    );
  in2_15_F : X_LUT4
    generic map(
      INIT => X"F808",
      LOC => "SLICE_X48Y64"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => N391_0,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_15_7338,
      O => N532
    );
  in2_15_G : X_LUT4
    generic map(
      INIT => X"FD0D",
      LOC => "SLICE_X48Y64"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => N391_0,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_15_7338,
      O => N533
    );
  ram_addr_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_10_F5MUX_17715,
      O => ram_addr(10)
    );
  ram_addr_10_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y70"
    )
    port map (
      IA => N496,
      IB => N497,
      SEL => ram_addr_10_BXINV_17708,
      O => ram_addr_10_F5MUX_17715
    );
  ram_addr_10_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7340,
      O => ram_addr_10_BXINV_17708
    );
  ram_addr_10_1_F : X_LUT4
    generic map(
      INIT => X"B800",
      LOC => "SLICE_X43Y70"
    )
    port map (
      ADR0 => reg_EX_overflow_10_7323,
      ADR1 => in2_and0002_0,
      ADR2 => N336,
      ADR3 => ram_addr_and0000_0,
      O => N496
    );
  ram_addr_10_1_G : X_LUT4
    generic map(
      INIT => X"8C80",
      LOC => "SLICE_X43Y70"
    )
    port map (
      ADR0 => reg_EX_overflow_10_7323,
      ADR1 => ram_addr_and0000_0,
      ADR2 => in1_and0003_0,
      ADR3 => N360,
      O => N497
    );
  ram_addr_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_11_F5MUX_17740,
      O => ram_addr(11)
    );
  ram_addr_11_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y75"
    )
    port map (
      IA => N494,
      IB => N495,
      SEL => ram_addr_11_BXINV_17733,
      O => ram_addr_11_F5MUX_17740
    );
  ram_addr_11_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7340,
      O => ram_addr_11_BXINV_17733
    );
  ram_addr_11_1_F : X_LUT4
    generic map(
      INIT => X"D800",
      LOC => "SLICE_X46Y75"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => reg_EX_overflow_11_7326,
      ADR2 => N334,
      ADR3 => ram_addr_and0000_0,
      O => N494
    );
  ram_addr_11_1_G : X_LUT4
    generic map(
      INIT => X"D080",
      LOC => "SLICE_X46Y75"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => reg_EX_overflow_11_7326,
      ADR2 => ram_addr_and0000_0,
      ADR3 => N358,
      O => N495
    );
  in2_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_0_F5MUX_17765,
      O => in2(0)
    );
  in2_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X50Y72"
    )
    port map (
      IA => N562,
      IB => N563,
      SEL => in2_0_BXINV_17757,
      O => in2_0_F5MUX_17765
    );
  in2_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005,
      O => in2_0_BXINV_17757
    );
  in2_0_F : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X50Y72"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_data2_0_7347,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_0_7346,
      O => N562
    );
  in2_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_1_F5MUX_17790,
      O => in2(1)
    );
  in2_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y69"
    )
    port map (
      IA => N556,
      IB => N557,
      SEL => in2_1_BXINV_17782,
      O => in2_1_F5MUX_17790
    );
  in2_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005,
      O => in2_1_BXINV_17782
    );
  in2_1_F : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X46Y69"
    )
    port map (
      ADR0 => reg_ID_data2_1_7349,
      ADR1 => VCC,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_1_7348,
      O => N556
    );
  in2_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_2_F5MUX_17815,
      O => in2(2)
    );
  in2_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X44Y80"
    )
    port map (
      IA => N558,
      IB => N559,
      SEL => in2_2_BXINV_17807,
      O => in2_2_F5MUX_17815
    );
  in2_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005,
      O => in2_2_BXINV_17807
    );
  in2_2_F : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X44Y80"
    )
    port map (
      ADR0 => reg_ID_data2_2_7351,
      ADR1 => VCC,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_2_7350,
      O => N558
    );
  in2_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_3_F5MUX_17840,
      O => in2(3)
    );
  in2_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y68"
    )
    port map (
      IA => N560,
      IB => N561,
      SEL => in2_3_BXINV_17832,
      O => in2_3_F5MUX_17840
    );
  in2_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005,
      O => in2_3_BXINV_17832
    );
  in2_3_F : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X42Y68"
    )
    port map (
      ADR0 => reg_ID_data2_3_7353,
      ADR1 => reg_EX_overflow_3_7352,
      ADR2 => in2_and0002_0,
      ADR3 => VCC,
      O => N560
    );
  in2_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_4_F5MUX_17865,
      O => in2(4)
    );
  in2_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X44Y68"
    )
    port map (
      IA => N550,
      IB => N551,
      SEL => in2_4_BXINV_17858,
      O => in2_4_F5MUX_17865
    );
  in2_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => N417,
      O => in2_4_BXINV_17858
    );
  in2_4_F : X_LUT4
    generic map(
      INIT => X"F808",
      LOC => "SLICE_X44Y68"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => N418_0,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_4_7355,
      O => N550
    );
  in2_4_G : X_LUT4
    generic map(
      INIT => X"FD0D",
      LOC => "SLICE_X44Y68"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => N418_0,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_4_7355,
      O => N551
    );
  in2_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_5_F5MUX_17890,
      O => in2(5)
    );
  in2_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y69"
    )
    port map (
      IA => N548,
      IB => N549,
      SEL => in2_5_BXINV_17883,
      O => in2_5_F5MUX_17890
    );
  in2_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => N414,
      O => in2_5_BXINV_17883
    );
  in2_5_F : X_LUT4
    generic map(
      INIT => X"ACA0",
      LOC => "SLICE_X42Y69"
    )
    port map (
      ADR0 => reg_EX_overflow_5_7358,
      ADR1 => in2_and000552_0,
      ADR2 => in2_and0002_0,
      ADR3 => N415_0,
      O => N548
    );
  in2_5_G : X_LUT4
    generic map(
      INIT => X"AFA3",
      LOC => "SLICE_X42Y69"
    )
    port map (
      ADR0 => reg_EX_overflow_5_7358,
      ADR1 => in2_and000552_0,
      ADR2 => in2_and0002_0,
      ADR3 => N415_0,
      O => N549
    );
  in2_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_6_F5MUX_17915,
      O => in2(6)
    );
  in2_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y70"
    )
    port map (
      IA => N546,
      IB => N547,
      SEL => in2_6_BXINV_17908,
      O => in2_6_F5MUX_17915
    );
  in2_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => N411,
      O => in2_6_BXINV_17908
    );
  in2_6_F : X_LUT4
    generic map(
      INIT => X"CAC0",
      LOC => "SLICE_X40Y70"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => reg_EX_overflow_6_7361,
      ADR2 => in2_and0002_0,
      ADR3 => N412_0,
      O => N546
    );
  in2_6_G : X_LUT4
    generic map(
      INIT => X"CFC5",
      LOC => "SLICE_X40Y70"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => reg_EX_overflow_6_7361,
      ADR2 => in2_and0002_0,
      ADR3 => N412_0,
      O => N547
    );
  in2_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_7_F5MUX_17940,
      O => in2(7)
    );
  in2_7_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y67"
    )
    port map (
      IA => N544,
      IB => N545,
      SEL => in2_7_BXINV_17933,
      O => in2_7_F5MUX_17940
    );
  in2_7_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => N408,
      O => in2_7_BXINV_17933
    );
  in2_7_F : X_LUT4
    generic map(
      INIT => X"F808",
      LOC => "SLICE_X46Y67"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => N409_0,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_7_7364,
      O => N544
    );
  in2_7_G : X_LUT4
    generic map(
      INIT => X"FD0D",
      LOC => "SLICE_X46Y67"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => N409_0,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_7_7364,
      O => N545
    );
  in2_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_8_F5MUX_17965,
      O => in2(8)
    );
  in2_8_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X47Y69"
    )
    port map (
      IA => N542,
      IB => N543,
      SEL => in2_8_BXINV_17958,
      O => in2_8_F5MUX_17965
    );
  in2_8_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => N405,
      O => in2_8_BXINV_17958
    );
  in2_8_F : X_LUT4
    generic map(
      INIT => X"EA40",
      LOC => "SLICE_X47Y69"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => N406_0,
      ADR2 => in2_and000552_0,
      ADR3 => reg_EX_overflow_8_7367,
      O => N542
    );
  in2_8_G : X_LUT4
    generic map(
      INIT => X"EF45",
      LOC => "SLICE_X47Y69"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => N406_0,
      ADR2 => in2_and000552_0,
      ADR3 => reg_EX_overflow_8_7367,
      O => N543
    );
  in2_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_9_F5MUX_17990,
      O => in2(9)
    );
  in2_9_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y72"
    )
    port map (
      IA => N540,
      IB => N541,
      SEL => in2_9_BXINV_17983,
      O => in2_9_F5MUX_17990
    );
  in2_9_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => N402,
      O => in2_9_BXINV_17983
    );
  in2_9_F : X_LUT4
    generic map(
      INIT => X"D888",
      LOC => "SLICE_X40Y72"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => reg_EX_overflow_9_7370,
      ADR2 => in2_and000552_0,
      ADR3 => N403_0,
      O => N540
    );
  in2_9_G : X_LUT4
    generic map(
      INIT => X"DD8D",
      LOC => "SLICE_X40Y72"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => reg_EX_overflow_9_7370,
      ADR2 => in2_and000552_0,
      ADR3 => N403_0,
      O => N541
    );
  N332_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => N332_F5MUX_18015,
      O => N332
    );
  N332_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y74"
    )
    port map (
      IA => N576,
      IB => N577,
      SEL => N332_BXINV_18007,
      O => N332_F5MUX_18015
    );
  N332_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_0,
      O => N332_BXINV_18007
    );
  in2_4_SW2_F : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X41Y74"
    )
    port map (
      ADR0 => reg_ID_data2_4_7372,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => N519,
      ADR3 => VCC,
      O => N576
    );
  N330_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => N330_F5MUX_18040,
      O => N330
    );
  N330_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y72"
    )
    port map (
      IA => N568,
      IB => N569,
      SEL => N330_BXINV_18032,
      O => N330_F5MUX_18040
    );
  N330_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_0,
      O => N330_BXINV_18032
    );
  in2_5_SW2_F : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X43Y72"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => reg_ID_data2_5_7375,
      ADR3 => N517,
      O => N568
    );
  N328_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => N328_F5MUX_18065,
      O => N328
    );
  N328_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X45Y70"
    )
    port map (
      IA => N574,
      IB => N575,
      SEL => N328_BXINV_18057,
      O => N328_F5MUX_18065
    );
  N328_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_0,
      O => N328_BXINV_18057
    );
  in2_6_SW2_F : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X45Y70"
    )
    port map (
      ADR0 => reg_ID_data2_6_7378,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => VCC,
      ADR3 => N515,
      O => N574
    );
  N326_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => N326_F5MUX_18090,
      O => N326
    );
  N326_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y70"
    )
    port map (
      IA => N566,
      IB => N567,
      SEL => N326_BXINV_18082,
      O => N326_F5MUX_18090
    );
  N326_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_0,
      O => N326_BXINV_18082
    );
  in2_7_SW2_F : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X42Y70"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => VCC,
      ADR2 => N513,
      ADR3 => reg_ID_data2_7_7381,
      O => N566
    );
  N324_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => N324_F5MUX_18115,
      O => N324
    );
  N324_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y76"
    )
    port map (
      IA => N572,
      IB => N573,
      SEL => N324_BXINV_18107,
      O => N324_F5MUX_18115
    );
  N324_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_0,
      O => N324_BXINV_18107
    );
  in2_8_SW2_F : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X46Y76"
    )
    port map (
      ADR0 => reg_ID_data2_8_7384,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => N511,
      ADR3 => VCC,
      O => N572
    );
  N322_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => N322_F5MUX_18140,
      O => N322
    );
  N322_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y72"
    )
    port map (
      IA => N564,
      IB => N565,
      SEL => N322_BXINV_18132,
      O => N322_F5MUX_18140
    );
  N322_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_0,
      O => N322_BXINV_18132
    );
  in2_9_SW2_F : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X42Y72"
    )
    port map (
      ADR0 => reg_ID_data2_9_7387,
      ADR1 => VCC,
      ADR2 => N509,
      ADR3 => in1_cmp_eq0014_0,
      O => N564
    );
  ram_addr_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_0_F5MUX_18165,
      O => ram_addr(0)
    );
  ram_addr_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y73"
    )
    port map (
      IA => N530,
      IB => N531,
      SEL => ram_addr_0_BXINV_18158,
      O => ram_addr_0_F5MUX_18165
    );
  ram_addr_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7340,
      O => ram_addr_0_BXINV_18158
    );
  ram_addr_0_1_F : X_LUT4
    generic map(
      INIT => X"B800",
      LOC => "SLICE_X46Y73"
    )
    port map (
      ADR0 => reg_EX_overflow_0_7346,
      ADR1 => in2_and0002_0,
      ADR2 => N384_0,
      ADR3 => ram_addr_and0000_0,
      O => N530
    );
  ram_addr_0_1_G : X_LUT4
    generic map(
      INIT => X"C480",
      LOC => "SLICE_X46Y73"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => ram_addr_and0000_0,
      ADR2 => reg_EX_overflow_0_7346,
      ADR3 => N352,
      O => N531
    );
  ram_addr_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_1_F5MUX_18190,
      O => ram_addr(1)
    );
  ram_addr_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y71"
    )
    port map (
      IA => N528,
      IB => N529,
      SEL => ram_addr_1_BXINV_18183,
      O => ram_addr_1_F5MUX_18190
    );
  ram_addr_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7340,
      O => ram_addr_1_BXINV_18183
    );
  ram_addr_1_1_F : X_LUT4
    generic map(
      INIT => X"C840",
      LOC => "SLICE_X46Y71"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => ram_addr_and0000_0,
      ADR2 => N382_0,
      ADR3 => reg_EX_overflow_1_7348,
      O => N528
    );
  ram_addr_1_1_G : X_LUT4
    generic map(
      INIT => X"8C80",
      LOC => "SLICE_X46Y71"
    )
    port map (
      ADR0 => reg_EX_overflow_1_7348,
      ADR1 => ram_addr_and0000_0,
      ADR2 => in1_and0003_0,
      ADR3 => N350,
      O => N529
    );
  ram_addr_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_2_F5MUX_18215,
      O => ram_addr(2)
    );
  ram_addr_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X47Y67"
    )
    port map (
      IA => N526,
      IB => N527,
      SEL => ram_addr_2_BXINV_18208,
      O => ram_addr_2_F5MUX_18215
    );
  ram_addr_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7340,
      O => ram_addr_2_BXINV_18208
    );
  ram_addr_2_1_F : X_LUT4
    generic map(
      INIT => X"A808",
      LOC => "SLICE_X47Y67"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => N380_0,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_2_7350,
      O => N526
    );
  ram_addr_2_1_G : X_LUT4
    generic map(
      INIT => X"A280",
      LOC => "SLICE_X47Y67"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => in1_and0003_0,
      ADR2 => reg_EX_overflow_2_7350,
      ADR3 => N348,
      O => N527
    );
  ram_addr_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_3_F5MUX_18240,
      O => ram_addr(3)
    );
  ram_addr_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X44Y72"
    )
    port map (
      IA => N524,
      IB => N525,
      SEL => ram_addr_3_BXINV_18233,
      O => ram_addr_3_F5MUX_18240
    );
  ram_addr_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7340,
      O => ram_addr_3_BXINV_18233
    );
  ram_addr_3_1_F : X_LUT4
    generic map(
      INIT => X"AC00",
      LOC => "SLICE_X44Y72"
    )
    port map (
      ADR0 => reg_EX_overflow_3_7352,
      ADR1 => N378_0,
      ADR2 => in2_and0002_0,
      ADR3 => ram_addr_and0000_0,
      O => N524
    );
  ram_addr_3_1_G : X_LUT4
    generic map(
      INIT => X"AC00",
      LOC => "SLICE_X44Y72"
    )
    port map (
      ADR0 => reg_EX_overflow_3_7352,
      ADR1 => N346,
      ADR2 => in1_and0003_0,
      ADR3 => ram_addr_and0000_0,
      O => N525
    );
  ram_addr_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_4_F5MUX_18265,
      O => ram_addr(4)
    );
  ram_addr_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y75"
    )
    port map (
      IA => N492,
      IB => N493,
      SEL => ram_addr_4_BXINV_18258,
      O => ram_addr_4_F5MUX_18265
    );
  ram_addr_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7340,
      O => ram_addr_4_BXINV_18258
    );
  ram_addr_4_1_F : X_LUT4
    generic map(
      INIT => X"88A0",
      LOC => "SLICE_X42Y75"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => reg_EX_overflow_4_7355,
      ADR2 => N332,
      ADR3 => in2_and0002_0,
      O => N492
    );
  ram_addr_4_1_G : X_LUT4
    generic map(
      INIT => X"C480",
      LOC => "SLICE_X42Y75"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => ram_addr_and0000_0,
      ADR2 => reg_EX_overflow_4_7355,
      ADR3 => N344,
      O => N493
    );
  ram_addr_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_5_F5MUX_18290,
      O => ram_addr(5)
    );
  ram_addr_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y74"
    )
    port map (
      IA => N490,
      IB => N491,
      SEL => ram_addr_5_BXINV_18283,
      O => ram_addr_5_F5MUX_18290
    );
  ram_addr_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7340,
      O => ram_addr_5_BXINV_18283
    );
  ram_addr_5_1_F : X_LUT4
    generic map(
      INIT => X"D080",
      LOC => "SLICE_X43Y74"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => reg_EX_overflow_5_7358,
      ADR2 => ram_addr_and0000_0,
      ADR3 => N330,
      O => N490
    );
  ram_addr_5_1_G : X_LUT4
    generic map(
      INIT => X"8A80",
      LOC => "SLICE_X43Y74"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => reg_EX_overflow_5_7358,
      ADR2 => in1_and0003_0,
      ADR3 => N342,
      O => N491
    );
  ram_addr_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_6_F5MUX_18315,
      O => ram_addr(6)
    );
  ram_addr_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X44Y71"
    )
    port map (
      IA => N488,
      IB => N489,
      SEL => ram_addr_6_BXINV_18308,
      O => ram_addr_6_F5MUX_18315
    );
  ram_addr_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7340,
      O => ram_addr_6_BXINV_18308
    );
  ram_addr_6_1_F : X_LUT4
    generic map(
      INIT => X"A820",
      LOC => "SLICE_X44Y71"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => in2_and0002_0,
      ADR2 => N328,
      ADR3 => reg_EX_overflow_6_7361,
      O => N488
    );
  ram_addr_6_1_G : X_LUT4
    generic map(
      INIT => X"8A80",
      LOC => "SLICE_X44Y71"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => reg_EX_overflow_6_7361,
      ADR2 => in1_and0003_0,
      ADR3 => N340,
      O => N489
    );
  ram_addr_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_7_F5MUX_18340,
      O => ram_addr(7)
    );
  ram_addr_7_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X47Y72"
    )
    port map (
      IA => N486,
      IB => N487,
      SEL => ram_addr_7_BXINV_18333,
      O => ram_addr_7_F5MUX_18340
    );
  ram_addr_7_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7340,
      O => ram_addr_7_BXINV_18333
    );
  ram_addr_7_1_F : X_LUT4
    generic map(
      INIT => X"A280",
      LOC => "SLICE_X47Y72"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => in2_and0002_0,
      ADR2 => reg_EX_overflow_7_7364,
      ADR3 => N326,
      O => N486
    );
  ram_addr_7_1_G : X_LUT4
    generic map(
      INIT => X"8A80",
      LOC => "SLICE_X47Y72"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => reg_EX_overflow_7_7364,
      ADR2 => in1_and0003_0,
      ADR3 => N338,
      O => N487
    );
  ram_addr_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_8_F5MUX_18365,
      O => ram_addr(8)
    );
  ram_addr_8_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X47Y74"
    )
    port map (
      IA => N484,
      IB => N485,
      SEL => ram_addr_8_BXINV_18358,
      O => ram_addr_8_F5MUX_18365
    );
  ram_addr_8_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7340,
      O => ram_addr_8_BXINV_18358
    );
  ram_addr_8_1_F : X_LUT4
    generic map(
      INIT => X"B080",
      LOC => "SLICE_X47Y74"
    )
    port map (
      ADR0 => reg_EX_overflow_8_7367,
      ADR1 => in2_and0002_0,
      ADR2 => ram_addr_and0000_0,
      ADR3 => N324,
      O => N484
    );
  ram_addr_8_1_G : X_LUT4
    generic map(
      INIT => X"8C80",
      LOC => "SLICE_X47Y74"
    )
    port map (
      ADR0 => reg_EX_overflow_8_7367,
      ADR1 => ram_addr_and0000_0,
      ADR2 => in1_and0003_0,
      ADR3 => N356,
      O => N485
    );
  ram_addr_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_9_F5MUX_18390,
      O => ram_addr(9)
    );
  ram_addr_9_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y73"
    )
    port map (
      IA => N482,
      IB => N483,
      SEL => ram_addr_9_BXINV_18383,
      O => ram_addr_9_F5MUX_18390
    );
  ram_addr_9_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7340,
      O => ram_addr_9_BXINV_18383
    );
  ram_addr_9_1_F : X_LUT4
    generic map(
      INIT => X"B080",
      LOC => "SLICE_X43Y73"
    )
    port map (
      ADR0 => reg_EX_overflow_9_7370,
      ADR1 => in2_and0002_0,
      ADR2 => ram_addr_and0000_0,
      ADR3 => N322,
      O => N482
    );
  ram_addr_9_1_G : X_LUT4
    generic map(
      INIT => X"B800",
      LOC => "SLICE_X43Y73"
    )
    port map (
      ADR0 => reg_EX_overflow_9_7370,
      ADR1 => in1_and0003_0,
      ADR2 => N354,
      ADR3 => ram_addr_and0000_0,
      O => N483
    );
  N388_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => N388_F5MUX_18415,
      O => N388
    );
  N388_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X44Y79"
    )
    port map (
      IA => N498,
      IB => N499,
      SEL => N388_BXINV_18408,
      O => N388_F5MUX_18415
    );
  N388_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_11_7404,
      O => N388_BXINV_18408
    );
  in1_and0008_SW3_F : X_LUT4
    generic map(
      INIT => X"37CD",
      LOC => "SLICE_X44Y79"
    )
    port map (
      ADR0 => reg_ID_instr_10_7407,
      ADR1 => reg_ID_instr_0_7405,
      ADR2 => reg_ID_instr_9_7340,
      ADR3 => reg_EX_instr_6_7406,
      O => N498
    );
  in1_and0008_SW3_G : X_LUT4
    generic map(
      INIT => X"EFFE",
      LOC => "SLICE_X44Y79"
    )
    port map (
      ADR0 => reg_ID_instr_10_7407,
      ADR1 => reg_ID_instr_9_7340,
      ADR2 => reg_ID_instr_0_7405,
      ADR3 => reg_EX_instr_6_7406,
      O => N499
    );
  reg_ID_data1_mux0007_0_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_0_6_F5MUX_18440,
      O => reg_ID_data1_mux0007_0_6
    );
  reg_ID_data1_mux0007_0_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X76Y47"
    )
    port map (
      IA => reg_ID_data1_mux0007_0_62_18431,
      IB => reg_ID_data1_mux0007_0_61_18438,
      SEL => reg_ID_data1_mux0007_0_6_BXINV_18433,
      O => reg_ID_data1_mux0007_0_6_F5MUX_18440
    );
  reg_ID_data1_mux0007_0_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_0_7409,
      O => reg_ID_data1_mux0007_0_6_BXINV_18433
    );
  reg_ID_data1_mux0007_0_62 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X76Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N22_0,
      ADR2 => VCC,
      ADR3 => reg_IF_inport_0_7413,
      O => reg_ID_data1_mux0007_0_62_18431
    );
  reg_ID_data1_mux0007_1_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_1_6_F5MUX_18465,
      O => reg_ID_data1_mux0007_1_6
    );
  reg_ID_data1_mux0007_1_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X76Y49"
    )
    port map (
      IA => reg_ID_data1_mux0007_1_62_18456,
      IB => reg_ID_data1_mux0007_1_61_18463,
      SEL => reg_ID_data1_mux0007_1_6_BXINV_18458,
      O => reg_ID_data1_mux0007_1_6_F5MUX_18465
    );
  reg_ID_data1_mux0007_1_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_1_7415,
      O => reg_ID_data1_mux0007_1_6_BXINV_18458
    );
  reg_ID_data1_mux0007_1_62 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X76Y49"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => reg_IF_inport_1_7416,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_ID_data1_mux0007_1_62_18456
    );
  reg_ID_data1_mux0007_2_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_2_6_F5MUX_18490,
      O => reg_ID_data1_mux0007_2_6
    );
  reg_ID_data1_mux0007_2_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X76Y32"
    )
    port map (
      IA => reg_ID_data1_mux0007_2_62_18481,
      IB => reg_ID_data1_mux0007_2_61_18488,
      SEL => reg_ID_data1_mux0007_2_6_BXINV_18483,
      O => reg_ID_data1_mux0007_2_6_F5MUX_18490
    );
  reg_ID_data1_mux0007_2_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_2_7418,
      O => reg_ID_data1_mux0007_2_6_BXINV_18483
    );
  reg_ID_data1_mux0007_2_62 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X76Y32"
    )
    port map (
      ADR0 => reg_IF_inport_2_7419,
      ADR1 => VCC,
      ADR2 => N22_0,
      ADR3 => VCC,
      O => reg_ID_data1_mux0007_2_62_18481
    );
  reg_ID_data1_mux0007_3_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_3_6_F5MUX_18515,
      O => reg_ID_data1_mux0007_3_6
    );
  reg_ID_data1_mux0007_3_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X77Y34"
    )
    port map (
      IA => reg_ID_data1_mux0007_3_62_18506,
      IB => reg_ID_data1_mux0007_3_61_18513,
      SEL => reg_ID_data1_mux0007_3_6_BXINV_18508,
      O => reg_ID_data1_mux0007_3_6_F5MUX_18515
    );
  reg_ID_data1_mux0007_3_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_3_7421,
      O => reg_ID_data1_mux0007_3_6_BXINV_18508
    );
  reg_ID_data1_mux0007_3_62 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X77Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_inport_3_7422,
      ADR2 => VCC,
      ADR3 => N22_0,
      O => reg_ID_data1_mux0007_3_62_18506
    );
  reg_ID_data1_mux0007_4_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_4_6_F5MUX_18540,
      O => reg_ID_data1_mux0007_4_6
    );
  reg_ID_data1_mux0007_4_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X88Y36"
    )
    port map (
      IA => reg_ID_data1_mux0007_4_62_18531,
      IB => reg_ID_data1_mux0007_4_61_18538,
      SEL => reg_ID_data1_mux0007_4_6_BXINV_18533,
      O => reg_ID_data1_mux0007_4_6_F5MUX_18540
    );
  reg_ID_data1_mux0007_4_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_4_7424,
      O => reg_ID_data1_mux0007_4_6_BXINV_18533
    );
  reg_ID_data1_mux0007_4_62 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X88Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_inport_4_7425,
      ADR2 => VCC,
      ADR3 => N22_0,
      O => reg_ID_data1_mux0007_4_62_18531
    );
  reg_ID_data1_mux0007_5_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_5_6_F5MUX_18565,
      O => reg_ID_data1_mux0007_5_6
    );
  reg_ID_data1_mux0007_5_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X88Y37"
    )
    port map (
      IA => reg_ID_data1_mux0007_5_62_18556,
      IB => reg_ID_data1_mux0007_5_61_18563,
      SEL => reg_ID_data1_mux0007_5_6_BXINV_18558,
      O => reg_ID_data1_mux0007_5_6_F5MUX_18565
    );
  reg_ID_data1_mux0007_5_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_5_7427,
      O => reg_ID_data1_mux0007_5_6_BXINV_18558
    );
  reg_ID_data1_mux0007_5_62 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X88Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_IF_inport_5_7428,
      ADR3 => N22_0,
      O => reg_ID_data1_mux0007_5_62_18556
    );
  reg_ID_data1_mux0007_6_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_6_6_F5MUX_18590,
      O => reg_ID_data1_mux0007_6_6
    );
  reg_ID_data1_mux0007_6_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X78Y45"
    )
    port map (
      IA => reg_ID_data1_mux0007_6_62_18581,
      IB => reg_ID_data1_mux0007_6_61_18588,
      SEL => reg_ID_data1_mux0007_6_6_BXINV_18583,
      O => reg_ID_data1_mux0007_6_6_F5MUX_18590
    );
  reg_ID_data1_mux0007_6_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_6_7430,
      O => reg_ID_data1_mux0007_6_6_BXINV_18583
    );
  reg_ID_data1_mux0007_6_62 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X78Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => N22_0,
      ADR3 => reg_IF_inport_6_7431,
      O => reg_ID_data1_mux0007_6_62_18581
    );
  in1_or0003_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or0003_18613,
      O => in1_or0003_0
    );
  in1_or0003_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or0003_SW0_O_pack_1,
      O => in1_or0003_SW0_O
    );
  in1_or0003_SW0 : X_LUT4
    generic map(
      INIT => X"FEFF",
      LOC => "SLICE_X49Y80"
    )
    port map (
      ADR0 => reg_EX_instr_15_7438,
      ADR1 => reg_EX_instr_12_7437,
      ADR2 => reg_EX_instr_14_7439,
      ADR3 => reg_EX_instr_10_7440,
      O => in1_or0003_SW0_O_pack_1
    );
  in1_and0008_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and0008_18637,
      O => in1_and0008_0
    );
  in1_and0008_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => N192_pack_1,
      O => N192
    );
  in1_and0008_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X47Y79"
    )
    port map (
      ADR0 => reg_ID_instr_12_7443,
      ADR1 => reg_ID_instr_14_7444,
      ADR2 => reg_ID_instr_13_7445,
      ADR3 => reg_ID_instr_15_7446,
      O => N192_pack_1
    );
  in1_or000829_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or000829_18661,
      O => in1_or000829_0
    );
  in1_or000829_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or000821_O_pack_1,
      O => in1_or000821_O
    );
  in1_or000821 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X44Y77"
    )
    port map (
      ADR0 => reg_ID_instr_14_7444,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_11_7404,
      O => in1_or000821_O_pack_1
    );
  in1_or0008_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or0008,
      O => in1_or0008_0
    );
  in1_or0008_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or000861_O_pack_1,
      O => in1_or000861_O
    );
  in1_or000861 : X_LUT4
    generic map(
      INIT => X"4002",
      LOC => "SLICE_X47Y77"
    )
    port map (
      ADR0 => reg_ID_instr_14_7444,
      ADR1 => reg_ID_instr_9_7340,
      ADR2 => reg_ID_instr_10_7407,
      ADR3 => reg_ID_instr_15_7446,
      O => in1_or000861_O_pack_1
    );
  in2_and00025_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and00025_18709,
      O => in2_and00025_0
    );
  in2_and00025_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and0008_SW2_O_pack_1,
      O => in1_and0008_SW2_O
    );
  in1_and0008_SW2 : X_LUT4
    generic map(
      INIT => X"FB37",
      LOC => "SLICE_X46Y79"
    )
    port map (
      ADR0 => reg_ID_instr_10_7407,
      ADR1 => reg_ID_instr_0_7405,
      ADR2 => reg_ID_instr_9_7340,
      ADR3 => reg_ID_instr_11_7404,
      O => in1_and0008_SW2_O_pack_1
    );
  in1_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(10),
      O => in1_10_0
    );
  in1_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => N360_pack_1,
      O => N360
    );
  in1_10_SW2 : X_LUT4
    generic map(
      INIT => X"E2AA",
      LOC => "SLICE_X43Y71"
    )
    port map (
      ADR0 => reg_ID_data1_10_7457,
      ADR1 => wr_enable_0,
      ADR2 => reg_EX_result_10_7164,
      ADR3 => in1_and0007101_0,
      O => N360_pack_1
    );
  in1_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(11),
      O => in1_11_0
    );
  in1_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => N358_pack_1,
      O => N358
    );
  in1_11_SW2 : X_LUT4
    generic map(
      INIT => X"ACCC",
      LOC => "SLICE_X46Y74"
    )
    port map (
      ADR0 => reg_EX_result_11_7163,
      ADR1 => reg_ID_data1_11_7459,
      ADR2 => in1_and0007101_0,
      ADR3 => wr_enable_0,
      O => N358_pack_1
    );
  in1_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(12),
      O => in1_12_0
    );
  in1_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_12_SW2_O_pack_1,
      O => in1_12_SW2_O
    );
  in1_12_SW2 : X_LUT4
    generic map(
      INIT => X"BF80",
      LOC => "SLICE_X66Y64"
    )
    port map (
      ADR0 => reg_EX_result_12_7162,
      ADR1 => in1_and0007101_0,
      ADR2 => wr_enable_0,
      ADR3 => reg_ID_data1_12_7461,
      O => in1_12_SW2_O_pack_1
    );
  in1_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(13),
      O => in1_13_0
    );
  in1_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_13_SW2_O_pack_1,
      O => in1_13_SW2_O
    );
  in1_13_SW2 : X_LUT4
    generic map(
      INIT => X"BF80",
      LOC => "SLICE_X67Y65"
    )
    port map (
      ADR0 => reg_EX_result_13_7161,
      ADR1 => wr_enable_0,
      ADR2 => in1_and0007101_0,
      ADR3 => reg_ID_data1_13_7463,
      O => in1_13_SW2_O_pack_1
    );
  in1_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(14),
      O => in1_14_0
    );
  in1_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_14_SW2_O_pack_1,
      O => in1_14_SW2_O
    );
  in1_14_SW2 : X_LUT4
    generic map(
      INIT => X"EA2A",
      LOC => "SLICE_X66Y65"
    )
    port map (
      ADR0 => reg_ID_data1_14_7465,
      ADR1 => in1_and0007101_0,
      ADR2 => wr_enable_0,
      ADR3 => reg_EX_result_14_7160,
      O => in1_14_SW2_O_pack_1
    );
  in1_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(15),
      O => in1_15_0
    );
  in1_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_15_SW2_O_pack_1,
      O => in1_15_SW2_O
    );
  in1_15_SW2 : X_LUT4
    generic map(
      INIT => X"CAAA",
      LOC => "SLICE_X76Y64"
    )
    port map (
      ADR0 => reg_ID_data1_15_7467,
      ADR1 => reg_EX_result_15_7159,
      ADR2 => in1_and0007101_0,
      ADR3 => wr_enable_0,
      O => in1_15_SW2_O_pack_1
    );
  in1_and0003_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and0003,
      O => in1_and0003_0
    );
  in1_and0003_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000318_SW0_O_pack_1,
      O => in1_and000318_SW0_O
    );
  in1_and000318_SW0 : X_LUT4
    generic map(
      INIT => X"FF01",
      LOC => "SLICE_X45Y78"
    )
    port map (
      ADR0 => N192,
      ADR1 => N372_0,
      ADR2 => N428_0,
      ADR3 => in1_cmp_eq0013_0,
      O => in1_and000318_SW0_O_pack_1
    );
  in1_and000772_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000772_18901,
      O => in1_and000772_0
    );
  in1_and000772_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000771_O_pack_1,
      O => in1_and000771_O
    );
  in1_and000771 : X_LUT4
    generic map(
      INIT => X"8241",
      LOC => "SLICE_X46Y81"
    )
    port map (
      ADR0 => reg_EX_instr_8_7476,
      ADR1 => reg_ID_instr_7_7477,
      ADR2 => reg_EX_instr_7_7475,
      ADR3 => reg_ID_instr_8_7478,
      O => in1_and000771_O_pack_1
    );
  wr_index_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_index(0),
      O => wr_index_0_0
    );
  wr_index_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => branch_trigger_cmp_eq0001_pack_1,
      O => branch_trigger_cmp_eq0001
    );
  branch_trigger_cmp_eq00011 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X66Y88"
    )
    port map (
      ADR0 => reg_EX_instr_11_7435,
      ADR1 => reg_EX_instr_9_7433,
      ADR2 => N96_0,
      ADR3 => reg_EX_instr_10_7440,
      O => branch_trigger_cmp_eq0001_pack_1
    );
  in2_and0002_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0002,
      O => in2_and0002_0
    );
  in2_and0002_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or0009_pack_1,
      O => in1_or0009
    );
  in1_or00091 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X45Y76"
    )
    port map (
      ADR0 => reg_ID_instr_13_7445,
      ADR1 => reg_ID_instr_15_7446,
      ADR2 => reg_ID_instr_14_7444,
      ADR3 => N426_0,
      O => in1_or0009_pack_1
    );
  in1_and0007101_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and0007101_18973,
      O => in1_and0007101_0
    );
  in1_and0007101_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000728_O_pack_1,
      O => in1_and000728_O
    );
  in1_and000728 : X_LUT4
    generic map(
      INIT => X"E0C0",
      LOC => "SLICE_X46Y72"
    )
    port map (
      ADR0 => in1_and000710_0,
      ADR1 => in1_and0008_0,
      ADR2 => in1_cmp_eq0014_0,
      ADR3 => in1_and00075_0,
      O => in1_and000728_O_pack_1
    );
  in1_cmp_eq0013_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq0013,
      O => in1_cmp_eq0013_0
    );
  in1_cmp_eq0013_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq00131_SW0_O_pack_1,
      O => in1_cmp_eq00131_SW0_O
    );
  in1_cmp_eq00131_SW0 : X_LUT4
    generic map(
      INIT => X"FEFF",
      LOC => "SLICE_X43Y78"
    )
    port map (
      ADR0 => reg_ID_instr_11_7404,
      ADR1 => reg_ID_instr_12_7443,
      ADR2 => reg_ID_instr_9_7340,
      ADR3 => reg_ID_instr_10_7407,
      O => in1_cmp_eq00131_SW0_O_pack_1
    );
  in1_cmp_eq0014_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq0014,
      O => in1_cmp_eq0014_0
    );
  in1_cmp_eq0014_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq00143_SW0_O_pack_1,
      O => in1_cmp_eq00143_SW0_O
    );
  in1_cmp_eq00143_SW0 : X_LUT4
    generic map(
      INIT => X"6FF6",
      LOC => "SLICE_X47Y80"
    )
    port map (
      ADR0 => reg_EX_instr_6_7406,
      ADR1 => reg_ID_instr_3_7491,
      ADR2 => reg_EX_instr_7_7475,
      ADR3 => reg_ID_instr_4_7492,
      O => in1_cmp_eq00143_SW0_O_pack_1
    );
  reg_EX_overflow_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(0),
      O => reg_EX_overflow_0_DXMUX_19052
    );
  reg_EX_overflow_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X62Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_0_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_0_SW2_O
    );
  reg_EX_overflow_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_0_CLKINV_19034
    );
  reg_EX_overflow_mux0001_0_SW2 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X62Y66"
    )
    port map (
      ADR0 => reg_ID_instr_8_7478,
      ADR1 => in1_0_0,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_0_7405,
      O => reg_EX_overflow_mux0001_0_SW2_O_pack_1
    );
  reg_EX_overflow_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X72Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(1),
      O => reg_EX_overflow_1_DXMUX_19087
    );
  reg_EX_overflow_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X72Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_1_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_1_SW2_O
    );
  reg_EX_overflow_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X72Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_1_CLKINV_19069
    );
  reg_EX_overflow_mux0001_1_SW2 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X72Y48"
    )
    port map (
      ADR0 => in1_1_0,
      ADR1 => reg_ID_instr_1_7454,
      ADR2 => reg_ID_instr_8_7478,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001_1_SW2_O_pack_1
    );
  reg_EX_overflow_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X70Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(2),
      O => reg_EX_overflow_2_DXMUX_19122
    );
  reg_EX_overflow_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X70Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_2_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_2_SW2_O
    );
  reg_EX_overflow_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X70Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_2_CLKINV_19104
    );
  reg_EX_overflow_mux0001_2_SW2 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X70Y51"
    )
    port map (
      ADR0 => reg_ID_instr_8_7478,
      ADR1 => reg_ID_instr_2_7453,
      ADR2 => in1_2_0,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001_2_SW2_O_pack_1
    );
  reg_EX_overflow_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(3),
      O => reg_EX_overflow_3_DXMUX_19157
    );
  reg_EX_overflow_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X62Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_3_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_3_SW2_O
    );
  reg_EX_overflow_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_3_CLKINV_19139
    );
  reg_EX_overflow_mux0001_3_SW2 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X62Y62"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_3_0,
      ADR2 => reg_ID_instr_3_7491,
      ADR3 => reg_ID_instr_8_7478,
      O => reg_EX_overflow_mux0001_3_SW2_O_pack_1
    );
  reg_EX_overflow_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X73Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(4),
      O => reg_EX_overflow_4_DXMUX_19192
    );
  reg_EX_overflow_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X73Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_4_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_4_SW2_O
    );
  reg_EX_overflow_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X73Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_4_CLKINV_19174
    );
  reg_EX_overflow_mux0001_4_SW2 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X73Y50"
    )
    port map (
      ADR0 => reg_ID_instr_8_7478,
      ADR1 => in1_4_0,
      ADR2 => reg_ID_instr_4_7492,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001_4_SW2_O_pack_1
    );
  reg_EX_overflow_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X72Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(5),
      O => reg_EX_overflow_5_DXMUX_19227
    );
  reg_EX_overflow_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X72Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_5_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_5_SW2_O
    );
  reg_EX_overflow_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X72Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_5_CLKINV_19209
    );
  reg_EX_overflow_mux0001_5_SW2 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X72Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_8_7478,
      ADR2 => in1_5_0,
      ADR3 => reg_ID_instr_5_7489,
      O => reg_EX_overflow_mux0001_5_SW2_O_pack_1
    );
  reg_EX_overflow_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(6),
      O => reg_EX_overflow_6_DXMUX_19262
    );
  reg_EX_overflow_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_6_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_6_SW2_O
    );
  reg_EX_overflow_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_6_CLKINV_19244
    );
  reg_EX_overflow_mux0001_6_SW2 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X76Y56"
    )
    port map (
      ADR0 => in1_6_0,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_8_7478,
      ADR3 => reg_ID_instr_6_7473,
      O => reg_EX_overflow_mux0001_6_SW2_O_pack_1
    );
  reg_EX_overflow_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X63Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(7),
      O => reg_EX_overflow_7_DXMUX_19297
    );
  reg_EX_overflow_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X63Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_7_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_7_SW2_O
    );
  reg_EX_overflow_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X63Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_7_CLKINV_19279
    );
  reg_EX_overflow_mux0001_7_SW2 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X63Y66"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_7_7477,
      ADR2 => in1_7_0,
      ADR3 => reg_ID_instr_8_7478,
      O => reg_EX_overflow_mux0001_7_SW2_O_pack_1
    );
  reg_EX_overflow_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X63Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(8),
      O => reg_EX_overflow_8_DXMUX_19332
    );
  reg_EX_overflow_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X63Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_8_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_8_SW2_O
    );
  reg_EX_overflow_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X63Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_8_CLKINV_19314
    );
  reg_EX_overflow_mux0001_8_SW2 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X63Y69"
    )
    port map (
      ADR0 => reg_ID_instr_0_7405,
      ADR1 => VCC,
      ADR2 => in1_8_0,
      ADR3 => reg_ID_instr_8_7478,
      O => reg_EX_overflow_mux0001_8_SW2_O_pack_1
    );
  reg_EX_overflow_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X70Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(9),
      O => reg_EX_overflow_9_DXMUX_19367
    );
  reg_EX_overflow_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X70Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_9_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_9_SW2_O
    );
  reg_EX_overflow_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X70Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_9_CLKINV_19349
    );
  reg_EX_overflow_mux0001_9_SW2 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X70Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_1_7454,
      ADR2 => in1_9_0,
      ADR3 => reg_ID_instr_8_7478,
      O => reg_EX_overflow_mux0001_9_SW2_O_pack_1
    );
  ram_addr_and0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_and0000,
      O => ram_addr_and0000_0
    );
  ram_addr_and0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => N13_pack_1,
      O => N13
    );
  in1_cmp_eq000811 : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X47Y78"
    )
    port map (
      ADR0 => reg_ID_instr_11_7404,
      ADR1 => reg_ID_instr_15_7446,
      ADR2 => reg_ID_instr_13_7445,
      ADR3 => N102,
      O => N13_pack_1
    );
  wr_overflow_or000017_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_or000017_19419,
      O => wr_overflow_or000017_0
    );
  wr_overflow_or000017_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable_or000181_pack_1,
      O => wr_enable_or000181
    );
  wr_overflow_or000012 : X_LUT4
    generic map(
      INIT => X"000F",
      LOC => "SLICE_X48Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_instr_12_7437,
      ADR3 => reg_EX_instr_15_7438,
      O => wr_enable_or000181_pack_1
    );
  wr_overflow_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow,
      O => wr_overflow_0
    );
  wr_overflow_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_or000034_SW0_O_pack_1,
      O => wr_overflow_or000034_SW0_O
    );
  wr_overflow_or000034_SW0 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X59Y84"
    )
    port map (
      ADR0 => reg_EX_instr_9_7433,
      ADR1 => wr_enable_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => wr_overflow_or000034_SW0_O_pack_1
    );
  in1_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(0),
      O => in1_0_0
    );
  in1_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => N352_pack_1,
      O => N352
    );
  in1_0_SW2 : X_LUT4
    generic map(
      INIT => X"BF80",
      LOC => "SLICE_X48Y72"
    )
    port map (
      ADR0 => reg_EX_result_0_7174,
      ADR1 => wr_enable_0,
      ADR2 => in1_and0007101_0,
      ADR3 => reg_ID_data1_0_7509,
      O => N352_pack_1
    );
  in1_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(1),
      O => in1_1_0
    );
  in1_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => N350_pack_1,
      O => N350
    );
  in1_1_SW2 : X_LUT4
    generic map(
      INIT => X"EC4C",
      LOC => "SLICE_X46Y70"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_ID_data1_1_7510,
      ADR2 => in1_and0007101_0,
      ADR3 => reg_EX_result_1_7173,
      O => N350_pack_1
    );
  in1_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(2),
      O => in1_2_0
    );
  in1_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => N348_pack_1,
      O => N348
    );
  in1_2_SW2 : X_LUT4
    generic map(
      INIT => X"B8F0",
      LOC => "SLICE_X47Y71"
    )
    port map (
      ADR0 => reg_EX_result_2_7172,
      ADR1 => wr_enable_0,
      ADR2 => reg_ID_data1_2_7511,
      ADR3 => in1_and0007101_0,
      O => N348_pack_1
    );
  in1_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(3),
      O => in1_3_0
    );
  in1_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => N346_pack_1,
      O => N346
    );
  in1_3_SW2 : X_LUT4
    generic map(
      INIT => X"E2AA",
      LOC => "SLICE_X45Y72"
    )
    port map (
      ADR0 => reg_ID_data1_3_7512,
      ADR1 => wr_enable_0,
      ADR2 => reg_EX_result_3_7171,
      ADR3 => in1_and0007101_0,
      O => N346_pack_1
    );
  in1_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(4),
      O => in1_4_0
    );
  in1_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => N344_pack_1,
      O => N344
    );
  in1_4_SW2 : X_LUT4
    generic map(
      INIT => X"EC4C",
      LOC => "SLICE_X42Y74"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_ID_data1_4_7513,
      ADR2 => in1_and0007101_0,
      ADR3 => reg_EX_result_4_7170,
      O => N344_pack_1
    );
  in1_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(5),
      O => in1_5_0
    );
  in1_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => N342_pack_1,
      O => N342
    );
  in1_5_SW2 : X_LUT4
    generic map(
      INIT => X"E2AA",
      LOC => "SLICE_X43Y75"
    )
    port map (
      ADR0 => reg_ID_data1_5_7514,
      ADR1 => wr_enable_0,
      ADR2 => reg_EX_result_5_7169,
      ADR3 => in1_and0007101_0,
      O => N342_pack_1
    );
  in1_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(6),
      O => in1_6_0
    );
  in1_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => N340_pack_1,
      O => N340
    );
  in1_6_SW2 : X_LUT4
    generic map(
      INIT => X"DF80",
      LOC => "SLICE_X44Y70"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_EX_result_6_7168,
      ADR2 => in1_and0007101_0,
      ADR3 => reg_ID_data1_6_7515,
      O => N340_pack_1
    );
  in1_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(7),
      O => in1_7_0
    );
  in1_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => N338_pack_1,
      O => N338
    );
  in1_7_SW2 : X_LUT4
    generic map(
      INIT => X"B8F0",
      LOC => "SLICE_X47Y73"
    )
    port map (
      ADR0 => reg_EX_result_7_7167,
      ADR1 => wr_enable_0,
      ADR2 => reg_ID_data1_7_7516,
      ADR3 => in1_and0007101_0,
      O => N338_pack_1
    );
  in1_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(8),
      O => in1_8_0
    );
  in1_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => N356_pack_1,
      O => N356
    );
  in1_8_SW2 : X_LUT4
    generic map(
      INIT => X"B8F0",
      LOC => "SLICE_X47Y75"
    )
    port map (
      ADR0 => reg_EX_result_8_7166,
      ADR1 => wr_enable_0,
      ADR2 => reg_ID_data1_8_7517,
      ADR3 => in1_and0007101_0,
      O => N356_pack_1
    );
  in1_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(9),
      O => in1_9_0
    );
  in1_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => N354_pack_1,
      O => N354
    );
  in1_9_SW2 : X_LUT4
    generic map(
      INIT => X"E2AA",
      LOC => "SLICE_X47Y70"
    )
    port map (
      ADR0 => reg_ID_data1_9_7518,
      ADR1 => wr_enable_0,
      ADR2 => reg_EX_result_9_7165,
      ADR3 => in1_and0007101_0,
      O => N354_pack_1
    );
  wr_enable_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable,
      O => wr_enable_0
    );
  wr_enable_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable_or000160_O_pack_1,
      O => wr_enable_or000160_O
    );
  wr_enable_or000160 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X49Y78"
    )
    port map (
      ADR0 => reg_EX_instr_10_7440,
      ADR1 => reg_EX_instr_11_7435,
      ADR2 => reg_EX_instr_9_7433,
      ADR3 => reg_EX_instr_13_7434,
      O => wr_enable_or000160_O_pack_1
    );
  reg_EX_overflow_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X71Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(10),
      O => reg_EX_overflow_10_DXMUX_19738
    );
  reg_EX_overflow_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X71Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_10_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_10_SW2_O
    );
  reg_EX_overflow_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X71Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_10_CLKINV_19720
    );
  reg_EX_overflow_mux0001_10_SW2 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X71Y50"
    )
    port map (
      ADR0 => reg_ID_instr_8_7478,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_2_7453,
      ADR3 => in1_10_0,
      O => reg_EX_overflow_mux0001_10_SW2_O_pack_1
    );
  reg_EX_overflow_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X71Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(11),
      O => reg_EX_overflow_11_DXMUX_19773
    );
  reg_EX_overflow_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X71Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_11_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_11_SW2_O
    );
  reg_EX_overflow_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X71Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_11_CLKINV_19755
    );
  reg_EX_overflow_mux0001_11_SW2 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X71Y51"
    )
    port map (
      ADR0 => reg_ID_instr_8_7478,
      ADR1 => VCC,
      ADR2 => in1_11_0,
      ADR3 => reg_ID_instr_3_7491,
      O => reg_EX_overflow_mux0001_11_SW2_O_pack_1
    );
  reg_EX_overflow_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X73Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(12),
      O => reg_EX_overflow_12_DXMUX_19808
    );
  reg_EX_overflow_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X73Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_12_SW0_O_pack_1,
      O => reg_EX_overflow_mux0001_12_SW0_O
    );
  reg_EX_overflow_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X73Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_12_CLKINV_19790
    );
  reg_EX_overflow_mux0001_12_SW0 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X73Y51"
    )
    port map (
      ADR0 => reg_ID_instr_8_7478,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_4_7492,
      ADR3 => in1_12_0,
      O => reg_EX_overflow_mux0001_12_SW0_O_pack_1
    );
  reg_EX_overflow_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(13),
      O => reg_EX_overflow_13_DXMUX_19843
    );
  reg_EX_overflow_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_13_SW0_O_pack_1,
      O => reg_EX_overflow_mux0001_13_SW0_O
    );
  reg_EX_overflow_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_13_CLKINV_19825
    );
  reg_EX_overflow_mux0001_13_SW0 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X66Y63"
    )
    port map (
      ADR0 => in1_13_0,
      ADR1 => reg_ID_instr_8_7478,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_5_7489,
      O => reg_EX_overflow_mux0001_13_SW0_O_pack_1
    );
  reg_EX_overflow_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(14),
      O => reg_EX_overflow_14_DXMUX_19878
    );
  reg_EX_overflow_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_14_SW0_O_pack_1,
      O => reg_EX_overflow_mux0001_14_SW0_O
    );
  reg_EX_overflow_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_14_CLKINV_19860
    );
  reg_EX_overflow_mux0001_14_SW0 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X66Y58"
    )
    port map (
      ADR0 => reg_ID_instr_8_7478,
      ADR1 => reg_ID_instr_6_7473,
      ADR2 => VCC,
      ADR3 => in1_14_0,
      O => reg_EX_overflow_mux0001_14_SW0_O_pack_1
    );
  reg_EX_overflow_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(15),
      O => reg_EX_overflow_15_DXMUX_19913
    );
  reg_EX_overflow_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_15_SW0_O_pack_1,
      O => reg_EX_overflow_mux0001_15_SW0_O
    );
  reg_EX_overflow_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_15_CLKINV_19895
    );
  reg_EX_overflow_mux0001_15_SW0 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X67Y64"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_15_0,
      ADR2 => reg_ID_instr_8_7478,
      ADR3 => reg_ID_instr_7_7477,
      O => reg_EX_overflow_mux0001_15_SW0_O_pack_1
    );
  N405_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => N511_pack_2,
      O => N511
    );
  in2_and000578_SW10_G : X_LUT4
    generic map(
      INIT => X"F870",
      LOC => "SLICE_X46Y77"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => in1_or0009,
      ADR2 => reg_ID_data2_8_7384,
      ADR3 => reg_EX_result_8_7166,
      O => N511_pack_2
    );
  N420_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => N521_pack_2,
      O => N521
    );
  in2_and000578_SW20_G : X_LUT4
    generic map(
      INIT => X"ACCC",
      LOC => "SLICE_X45Y73"
    )
    port map (
      ADR0 => reg_EX_result_11_7163,
      ADR1 => reg_ID_data2_11_7318,
      ADR2 => in1_or0009,
      ADR3 => wr_enable_0,
      O => N521_pack_2
    );
  N408_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => N513_pack_2,
      O => N513
    );
  in2_and000578_SW12_G : X_LUT4
    generic map(
      INIT => X"CAAA",
      LOC => "SLICE_X42Y71"
    )
    port map (
      ADR0 => reg_ID_data2_7_7381,
      ADR1 => reg_EX_result_7_7167,
      ADR2 => wr_enable_0,
      ADR3 => in1_or0009,
      O => N513_pack_2
    );
  N423_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => N523_pack_2,
      O => N523
    );
  in2_and000578_SW22_G : X_LUT4
    generic map(
      INIT => X"CAAA",
      LOC => "SLICE_X48Y70"
    )
    port map (
      ADR0 => reg_ID_data2_10_7314,
      ADR1 => reg_EX_result_10_7164,
      ADR2 => wr_enable_0,
      ADR3 => in1_or0009,
      O => N523_pack_2
    );
  N411_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => N515_pack_2,
      O => N515
    );
  in2_and000578_SW14_G : X_LUT4
    generic map(
      INIT => X"EA2A",
      LOC => "SLICE_X44Y73"
    )
    port map (
      ADR0 => reg_ID_data2_6_7378,
      ADR1 => in1_or0009,
      ADR2 => wr_enable_0,
      ADR3 => reg_EX_result_6_7168,
      O => N515_pack_2
    );
  N414_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => N517_pack_2,
      O => N517
    );
  in2_and000578_SW16_G : X_LUT4
    generic map(
      INIT => X"CAAA",
      LOC => "SLICE_X43Y69"
    )
    port map (
      ADR0 => reg_ID_data2_5_7375,
      ADR1 => reg_EX_result_5_7169,
      ADR2 => wr_enable_0,
      ADR3 => in1_or0009,
      O => N517_pack_2
    );
  N417_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => N519_pack_2,
      O => N519
    );
  in2_and000578_SW18_G : X_LUT4
    generic map(
      INIT => X"E2AA",
      LOC => "SLICE_X41Y72"
    )
    port map (
      ADR0 => reg_ID_data2_4_7372,
      ADR1 => in1_or0009,
      ADR2 => reg_EX_result_4_7170,
      ADR3 => wr_enable_0,
      O => N519_pack_2
    );
  N390_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000578_SW0_G_O_pack_2,
      O => in2_and000578_SW0_G_O
    );
  in2_and000578_SW0_G : X_LUT4
    generic map(
      INIT => X"F870",
      LOC => "SLICE_X49Y73"
    )
    port map (
      ADR0 => in1_or0009,
      ADR1 => wr_enable_0,
      ADR2 => reg_ID_data2_15_7527,
      ADR3 => reg_EX_result_15_7159,
      O => in2_and000578_SW0_G_O_pack_2
    );
  N393_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000578_SW2_G_O_pack_2,
      O => in2_and000578_SW2_G_O
    );
  in2_and000578_SW2_G : X_LUT4
    generic map(
      INIT => X"F870",
      LOC => "SLICE_X45Y66"
    )
    port map (
      ADR0 => in1_or0009,
      ADR1 => wr_enable_0,
      ADR2 => reg_ID_data2_14_7529,
      ADR3 => reg_EX_result_14_7160,
      O => in2_and000578_SW2_G_O_pack_2
    );
  N396_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000578_SW4_G_O_pack_2,
      O => in2_and000578_SW4_G_O
    );
  in2_and000578_SW4_G : X_LUT4
    generic map(
      INIT => X"B8F0",
      LOC => "SLICE_X45Y69"
    )
    port map (
      ADR0 => reg_EX_result_13_7161,
      ADR1 => in1_or0009,
      ADR2 => reg_ID_data2_13_7531,
      ADR3 => wr_enable_0,
      O => in2_and000578_SW4_G_O_pack_2
    );
  N399_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000578_SW6_G_O_pack_2,
      O => in2_and000578_SW6_G_O
    );
  in2_and000578_SW6_G : X_LUT4
    generic map(
      INIT => X"EA2A",
      LOC => "SLICE_X48Y69"
    )
    port map (
      ADR0 => reg_ID_data2_12_7533,
      ADR1 => in1_or0009,
      ADR2 => wr_enable_0,
      ADR3 => reg_EX_result_12_7162,
      O => in2_and000578_SW6_G_O_pack_2
    );
  N402_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => N509_pack_2,
      O => N509
    );
  in2_and000578_SW8_G : X_LUT4
    generic map(
      INIT => X"D8F0",
      LOC => "SLICE_X43Y76"
    )
    port map (
      ADR0 => in1_or0009,
      ADR1 => reg_EX_result_9_7165,
      ADR2 => reg_ID_data2_9_7387,
      ADR3 => wr_enable_0,
      O => N509_pack_2
    );
  alu_mode_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode(0),
      O => alu_mode_0_0
    );
  alu_mode_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode_0_4_O_pack_1,
      O => alu_mode_0_4_O
    );
  alu_mode_0_4 : X_LUT4
    generic map(
      INIT => X"0F0C",
      LOC => "SLICE_X45Y65"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_15_7446,
      ADR2 => reg_ID_instr_13_7445,
      ADR3 => reg_ID_instr_9_7340,
      O => alu_mode_0_4_O_pack_1
    );
  N15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => N15,
      O => N15_0
    );
  N15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode_0_1_SW0_O_pack_1,
      O => alu_mode_0_1_SW0_O
    );
  alu_mode_0_1_SW0 : X_LUT4
    generic map(
      INIT => X"FFFC",
      LOC => "SLICE_X44Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_10_7407,
      ADR2 => reg_ID_instr_13_7445,
      ADR3 => reg_ID_instr_11_7404,
      O => alu_mode_0_1_SW0_O_pack_1
    );
  alu_mode_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode(2),
      O => alu_mode_2_0
    );
  alu_mode_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => N102_pack_1,
      O => N102
    );
  in1_or000831 : X_LUT4
    generic map(
      INIT => X"1111",
      LOC => "SLICE_X46Y83"
    )
    port map (
      ADR0 => reg_ID_instr_14_7444,
      ADR1 => reg_ID_instr_12_7443,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N102_pack_1
    );
  PC_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X75Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(1),
      O => PC_1_DXMUX_20315
    );
  PC_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X75Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(0),
      O => PC_1_DYMUX_20301
    );
  PC_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X75Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => PC_1_SRINV_20292
    );
  PC_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X75Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => PC_1_CLKINVNOT
    );
  PC_next_0_1 : X_LUT4
    generic map(
      INIT => X"CC55",
      LOC => "SLICE_X75Y35"
    )
    port map (
      ADR0 => PC(0),
      ADR1 => reg_EX_result_0_7174,
      ADR2 => VCC,
      ADR3 => branch_trigger,
      O => PC_next(0)
    );
  PC_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(3),
      O => PC_3_DXMUX_20357
    );
  PC_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(2),
      O => PC_3_DYMUX_20343
    );
  PC_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => PC_3_SRINV_20335
    );
  PC_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X76Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => PC_3_CLKINVNOT
    );
  PC_next_2_Q : X_LUT4
    generic map(
      INIT => X"EB41",
      LOC => "SLICE_X76Y35"
    )
    port map (
      ADR0 => branch_trigger,
      ADR1 => PC(2),
      ADR2 => N133_0,
      ADR3 => reg_EX_result_2_7172,
      O => PC_next(2)
    );
  PC_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(5),
      O => PC_5_DXMUX_20399
    );
  PC_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(4),
      O => PC_5_DYMUX_20385
    );
  PC_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => PC_5_SRINV_20377
    );
  PC_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X79Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => PC_5_CLKINVNOT
    );
  PC_next_4_1 : X_LUT4
    generic map(
      INIT => X"F066",
      LOC => "SLICE_X79Y37"
    )
    port map (
      ADR0 => PC(4),
      ADR1 => Madd_PC_next_addsub0000_cy(3),
      ADR2 => reg_EX_result_4_7170,
      ADR3 => branch_trigger,
      O => PC_next(4)
    );
  PC_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(6),
      O => PC_6_DYMUX_20425
    );
  PC_6_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X79Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => PC_6_CLKINVNOT
    );
  PC_next_6_Q : X_LUT4
    generic map(
      INIT => X"E4B1",
      LOC => "SLICE_X79Y40"
    )
    port map (
      ADR0 => branch_trigger,
      ADR1 => N135_0,
      ADR2 => reg_EX_result_15_7159,
      ADR3 => PC(6),
      O => PC_next(6)
    );
  reg_EX_instr_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(8),
      O => reg_EX_instr_7_DXMUX_20476
    );
  reg_EX_instr_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(9),
      O => reg_EX_instr_7_DYMUX_20460
    );
  reg_EX_instr_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_instr_7_SRINV_20450
    );
  reg_EX_instr_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_instr_7_CLKINV_20449
    );
  reg_EX_instr_mux0001_9_1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X45Y80"
    )
    port map (
      ADR0 => reg_ID_instr_6_7473,
      ADR1 => branch_trigger,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_EX_instr_mux0001(9)
    );
  reg_EX_instr_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(6),
      O => reg_EX_instr_9_DXMUX_20518
    );
  reg_EX_instr_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(7),
      O => reg_EX_instr_9_DYMUX_20502
    );
  reg_EX_instr_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_instr_9_SRINV_20492
    );
  reg_EX_instr_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_instr_9_CLKINV_20491
    );
  reg_EX_instr_mux0001_7_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X48Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_8_7478,
      ADR2 => branch_trigger,
      ADR3 => VCC,
      O => reg_EX_instr_mux0001(7)
    );
  reg_EX_instr_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(4),
      O => reg_EX_instr_11_DXMUX_20560
    );
  reg_EX_instr_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(5),
      O => reg_EX_instr_11_DYMUX_20544
    );
  reg_EX_instr_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_instr_11_SRINV_20534
    );
  reg_EX_instr_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_instr_11_CLKINV_20533
    );
  reg_EX_instr_mux0001_5_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X49Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_10_7407,
      ADR2 => VCC,
      ADR3 => branch_trigger,
      O => reg_EX_instr_mux0001(5)
    );
  reg_EX_instr_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(2),
      O => reg_EX_instr_13_DXMUX_20602
    );
  reg_EX_instr_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(3),
      O => reg_EX_instr_13_DYMUX_20586
    );
  reg_EX_instr_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_instr_13_SRINV_20576
    );
  reg_EX_instr_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_instr_13_CLKINV_20575
    );
  reg_EX_instr_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X51Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_12_7443,
      ADR3 => branch_trigger,
      O => reg_EX_instr_mux0001(3)
    );
  reg_EX_instr_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(0),
      O => reg_EX_instr_15_DXMUX_20644
    );
  reg_EX_instr_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(1),
      O => reg_EX_instr_15_DYMUX_20628
    );
  reg_EX_instr_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_instr_15_SRINV_20618
    );
  reg_EX_instr_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_instr_15_CLKINV_20617
    );
  reg_EX_instr_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X49Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_14_7444,
      ADR2 => VCC,
      ADR3 => branch_trigger,
      O => reg_EX_instr_mux0001(1)
    );
  reg_EX_result_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(1),
      O => reg_EX_result_1_DXMUX_20686
    );
  reg_EX_result_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(0),
      O => reg_EX_result_1_DYMUX_20671
    );
  reg_EX_result_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_result_1_SRINV_20662
    );
  reg_EX_result_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_result_1_CLKINV_20661
    );
  result_0_1 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X49Y55"
    )
    port map (
      ADR0 => ram_data(0),
      ADR1 => in1_cmp_eq0008,
      ADR2 => VCC,
      ADR3 => alu_result(0),
      O => result(0)
    );
  reg_EX_result_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(3),
      O => reg_EX_result_3_DXMUX_20728
    );
  reg_EX_result_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(2),
      O => reg_EX_result_3_DYMUX_20713
    );
  reg_EX_result_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_result_3_SRINV_20704
    );
  reg_EX_result_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_result_3_CLKINV_20703
    );
  result_2_1 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X49Y53"
    )
    port map (
      ADR0 => alu_result(2),
      ADR1 => ram_data(2),
      ADR2 => VCC,
      ADR3 => in1_cmp_eq0008,
      O => result(2)
    );
  reg_EX_result_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(5),
      O => reg_EX_result_5_DXMUX_20770
    );
  reg_EX_result_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(4),
      O => reg_EX_result_5_DYMUX_20755
    );
  reg_EX_result_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_result_5_SRINV_20746
    );
  reg_EX_result_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_result_5_CLKINV_20745
    );
  result_4_1 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X49Y61"
    )
    port map (
      ADR0 => in1_cmp_eq0008,
      ADR1 => ram_data(4),
      ADR2 => alu_result(4),
      ADR3 => VCC,
      O => result(4)
    );
  reg_EX_result_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X41Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(7),
      O => reg_EX_result_7_DXMUX_20812
    );
  reg_EX_result_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X41Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(6),
      O => reg_EX_result_7_DYMUX_20797
    );
  reg_EX_result_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_result_7_SRINV_20788
    );
  reg_EX_result_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_result_7_CLKINV_20787
    );
  result_6_1 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X41Y58"
    )
    port map (
      ADR0 => ram_data(6),
      ADR1 => in1_cmp_eq0008,
      ADR2 => VCC,
      ADR3 => alu_result(6),
      O => result(6)
    );
  reg_EX_result_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(9),
      O => reg_EX_result_9_DXMUX_20854
    );
  reg_EX_result_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(8),
      O => reg_EX_result_9_DYMUX_20839
    );
  reg_EX_result_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_result_9_SRINV_20830
    );
  reg_EX_result_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_result_9_CLKINV_20829
    );
  result_8_1 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X54Y55"
    )
    port map (
      ADR0 => ram_data(8),
      ADR1 => alu_result(8),
      ADR2 => VCC,
      ADR3 => in1_cmp_eq0008,
      O => result(8)
    );
  reg_ID_data1_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(11),
      O => reg_ID_data1_11_DXMUX_20896
    );
  reg_ID_data1_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(10),
      O => reg_ID_data1_11_DYMUX_20882
    );
  reg_ID_data1_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_data1_11_SRINV_20874
    );
  reg_ID_data1_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data1_11_CLKINV_20873
    );
  reg_ID_data1_mux0007_10_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X62Y75"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => reg_IF_inport_10_7549,
      ADR2 => N02,
      ADR3 => rd_data1(10),
      O => reg_ID_data1_mux0007(10)
    );
  reg_ID_data1_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(13),
      O => reg_ID_data1_13_DXMUX_20938
    );
  reg_ID_data1_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(12),
      O => reg_ID_data1_13_DYMUX_20924
    );
  reg_ID_data1_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_data1_13_SRINV_20916
    );
  reg_ID_data1_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data1_13_CLKINV_20915
    );
  reg_ID_data1_mux0007_12_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X91Y65"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => reg_IF_inport_12_7551,
      ADR2 => rd_data1(12),
      ADR3 => N02,
      O => reg_ID_data1_mux0007(12)
    );
  reg_ID_data1_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(15),
      O => reg_ID_data1_15_DXMUX_20980
    );
  reg_ID_data1_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(14),
      O => reg_ID_data1_15_DYMUX_20966
    );
  reg_ID_data1_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_data1_15_SRINV_20958
    );
  reg_ID_data1_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data1_15_CLKINV_20957
    );
  reg_ID_data1_mux0007_14_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X90Y65"
    )
    port map (
      ADR0 => N02,
      ADR1 => reg_IF_inport_14_7553,
      ADR2 => N22_0,
      ADR3 => rd_data1(14),
      O => reg_ID_data1_mux0007(14)
    );
  reg_ID_data2_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(4),
      O => reg_ID_data2_11_DXMUX_21022
    );
  reg_ID_data2_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(5),
      O => reg_ID_data2_11_DYMUX_21008
    );
  reg_ID_data2_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_data2_11_SRINV_21000
    );
  reg_ID_data2_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_11_CLKINV_20999
    );
  reg_ID_data2_mux0007_5_1 : X_LUT4
    generic map(
      INIT => X"E0A0",
      LOC => "SLICE_X58Y77"
    )
    port map (
      ADR0 => N18_0,
      ADR1 => rd_data2(10),
      ADR2 => N2_0,
      ADR3 => N95,
      O => reg_ID_data2_mux0007(5)
    );
  reg_ID_data2_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(2),
      O => reg_ID_data2_13_DXMUX_21064
    );
  reg_ID_data2_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(3),
      O => reg_ID_data2_13_DYMUX_21050
    );
  reg_ID_data2_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_data2_13_SRINV_21042
    );
  reg_ID_data2_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_13_CLKINV_21041
    );
  reg_ID_data2_mux0007_3_1 : X_LUT4
    generic map(
      INIT => X"F080",
      LOC => "SLICE_X61Y76"
    )
    port map (
      ADR0 => N95,
      ADR1 => rd_data2(12),
      ADR2 => N2_0,
      ADR3 => N18_0,
      O => reg_ID_data2_mux0007(3)
    );
  reg_ID_data2_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(0),
      O => reg_ID_data2_15_DXMUX_21106
    );
  reg_ID_data2_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(1),
      O => reg_ID_data2_15_DYMUX_21092
    );
  reg_ID_data2_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_data2_15_SRINV_21084
    );
  reg_ID_data2_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_15_CLKINV_21083
    );
  reg_ID_data2_mux0007_1_1 : X_LUT4
    generic map(
      INIT => X"C888",
      LOC => "SLICE_X62Y76"
    )
    port map (
      ADR0 => N18_0,
      ADR1 => N2_0,
      ADR2 => rd_data2(14),
      ADR3 => N95,
      O => reg_ID_data2_mux0007(1)
    );
  reg_ID_data1_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(1),
      O => reg_ID_data1_1_DXMUX_21148
    );
  reg_ID_data1_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(0),
      O => reg_ID_data1_1_DYMUX_21133
    );
  reg_ID_data1_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_data1_1_SRINV_21124
    );
  reg_ID_data1_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data1_1_CLKINV_21123
    );
  reg_ID_data1_mux0007_0_10 : X_LUT4
    generic map(
      INIT => X"ECEC",
      LOC => "SLICE_X62Y71"
    )
    port map (
      ADR0 => N02,
      ADR1 => reg_ID_data1_mux0007_0_6,
      ADR2 => rd_data1(0),
      ADR3 => VCC,
      O => reg_ID_data1_mux0007(0)
    );
  reg_ID_data1_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X74Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(3),
      O => reg_ID_data1_3_DXMUX_21190
    );
  reg_ID_data1_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X74Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(2),
      O => reg_ID_data1_3_DYMUX_21175
    );
  reg_ID_data1_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X74Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_data1_3_SRINV_21166
    );
  reg_ID_data1_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X74Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data1_3_CLKINV_21165
    );
  reg_ID_data1_mux0007_2_10 : X_LUT4
    generic map(
      INIT => X"FFA0",
      LOC => "SLICE_X74Y70"
    )
    port map (
      ADR0 => rd_data1(2),
      ADR1 => VCC,
      ADR2 => N02,
      ADR3 => reg_ID_data1_mux0007_2_6,
      O => reg_ID_data1_mux0007(2)
    );
  reg_ID_data2_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(14),
      O => reg_ID_data2_1_DXMUX_21232
    );
  reg_ID_data2_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(15),
      O => reg_ID_data2_1_DYMUX_21218
    );
  reg_ID_data2_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_data2_1_SRINV_21210
    );
  reg_ID_data2_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_1_CLKINV_21209
    );
  reg_ID_data2_mux0007_15_Q : X_LUT4
    generic map(
      INIT => X"F800",
      LOC => "SLICE_X62Y78"
    )
    port map (
      ADR0 => N95,
      ADR1 => rd_data2(0),
      ADR2 => N117_0,
      ADR3 => N2_0,
      O => reg_ID_data2_mux0007(15)
    );
  reg_ID_data1_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(5),
      O => reg_ID_data1_5_DXMUX_21274
    );
  reg_ID_data1_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(4),
      O => reg_ID_data1_5_DYMUX_21259
    );
  reg_ID_data1_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_data1_5_SRINV_21250
    );
  reg_ID_data1_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data1_5_CLKINV_21249
    );
  reg_ID_data1_mux0007_4_10 : X_LUT4
    generic map(
      INIT => X"FAAA",
      LOC => "SLICE_X78Y72"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_4_6,
      ADR1 => VCC,
      ADR2 => rd_data1(4),
      ADR3 => N02,
      O => reg_ID_data1_mux0007(4)
    );
  reg_ID_data2_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(12),
      O => reg_ID_data2_3_DXMUX_21316
    );
  reg_ID_data2_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(13),
      O => reg_ID_data2_3_DYMUX_21302
    );
  reg_ID_data2_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_data2_3_SRINV_21294
    );
  reg_ID_data2_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_3_CLKINV_21293
    );
  reg_ID_data2_mux0007_13_Q : X_LUT4
    generic map(
      INIT => X"F080",
      LOC => "SLICE_X62Y83"
    )
    port map (
      ADR0 => rd_data2(2),
      ADR1 => N95,
      ADR2 => N2_0,
      ADR3 => N121_0,
      O => reg_ID_data2_mux0007(13)
    );
  reg_ID_data1_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(7),
      O => reg_ID_data1_7_DXMUX_21358
    );
  reg_ID_data1_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(6),
      O => reg_ID_data1_7_DYMUX_21344
    );
  reg_ID_data1_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_data1_7_SRINV_21335
    );
  reg_ID_data1_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data1_7_CLKINV_21334
    );
  reg_ID_data1_mux0007_6_10 : X_LUT4
    generic map(
      INIT => X"EECC",
      LOC => "SLICE_X66Y70"
    )
    port map (
      ADR0 => rd_data1(6),
      ADR1 => reg_ID_data1_mux0007_6_6,
      ADR2 => VCC,
      ADR3 => N02,
      O => reg_ID_data1_mux0007(6)
    );
  reg_ID_data1_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(8),
      O => reg_ID_data1_8_DYMUX_21381
    );
  reg_ID_data1_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data1_8_CLKINV_21372
    );
  reg_ID_data2_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(8),
      O => reg_ID_data2_7_DXMUX_21423
    );
  reg_ID_data2_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(9),
      O => reg_ID_data2_7_DYMUX_21409
    );
  reg_ID_data2_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_data2_7_SRINV_21401
    );
  reg_ID_data2_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_7_CLKINV_21400
    );
  reg_ID_data2_mux0007_9_Q : X_LUT4
    generic map(
      INIT => X"AA80",
      LOC => "SLICE_X60Y80"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => rd_data2(6),
      ADR2 => N95,
      ADR3 => N125_0,
      O => reg_ID_data2_mux0007(9)
    );
  reg_ID_data2_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(6),
      O => reg_ID_data2_9_DYMUX_21446
    );
  reg_ID_data2_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_9_CLKINV_21437
    );
  reg_ID_instr_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(4),
      O => reg_ID_instr_11_DXMUX_21488
    );
  reg_ID_instr_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(5),
      O => reg_ID_instr_11_DYMUX_21472
    );
  reg_ID_instr_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_instr_11_SRINV_21462
    );
  reg_ID_instr_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_instr_11_CLKINV_21461
    );
  reg_ID_instr_mux0001_5_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X44Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_10_7565,
      ADR2 => branch_trigger,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(5)
    );
  reg_ID_instr_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(2),
      O => reg_ID_instr_13_DXMUX_21530
    );
  reg_ID_instr_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(3),
      O => reg_ID_instr_13_DYMUX_21514
    );
  reg_ID_instr_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_instr_13_SRINV_21504
    );
  reg_ID_instr_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_instr_13_CLKINV_21503
    );
  reg_ID_instr_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X45Y77"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_IF_instr_12_7567,
      ADR3 => branch_trigger,
      O => reg_ID_instr_mux0001(3)
    );
  reg_ID_instr_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(0),
      O => reg_ID_instr_15_DXMUX_21572
    );
  reg_ID_instr_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(1),
      O => reg_ID_instr_15_DYMUX_21556
    );
  reg_ID_instr_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_instr_15_SRINV_21546
    );
  reg_ID_instr_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_instr_15_CLKINV_21545
    );
  reg_ID_instr_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X47Y76"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => branch_trigger,
      ADR3 => reg_IF_instr_14_7569,
      O => reg_ID_instr_mux0001(1)
    );
  reg_ID_instr_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(14),
      O => reg_ID_instr_1_DXMUX_21614
    );
  reg_ID_instr_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(15),
      O => reg_ID_instr_1_DYMUX_21598
    );
  reg_ID_instr_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_instr_1_SRINV_21588
    );
  reg_ID_instr_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_instr_1_CLKINV_21587
    );
  reg_ID_instr_mux0001_15_1 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X45Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger,
      ADR2 => reg_IF_instr_0_7571,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(15)
    );
  reg_ID_instr_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(12),
      O => reg_ID_instr_3_DXMUX_21656
    );
  reg_ID_instr_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(13),
      O => reg_ID_instr_3_DYMUX_21640
    );
  reg_ID_instr_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_instr_3_SRINV_21630
    );
  reg_ID_instr_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_instr_3_CLKINV_21629
    );
  reg_ID_instr_mux0001_13_1 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X48Y81"
    )
    port map (
      ADR0 => branch_trigger,
      ADR1 => reg_IF_instr_2_7573,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(13)
    );
  reg_ID_instr_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(10),
      O => reg_ID_instr_5_DXMUX_21698
    );
  reg_ID_instr_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(11),
      O => reg_ID_instr_5_DYMUX_21682
    );
  reg_ID_instr_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_instr_5_SRINV_21672
    );
  reg_ID_instr_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_instr_5_CLKINV_21671
    );
  reg_ID_instr_mux0001_11_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X46Y80"
    )
    port map (
      ADR0 => reg_IF_instr_4_7575,
      ADR1 => VCC,
      ADR2 => branch_trigger,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(11)
    );
  reg_ID_instr_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(8),
      O => reg_ID_instr_7_DXMUX_21740
    );
  reg_ID_instr_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(9),
      O => reg_ID_instr_7_DYMUX_21724
    );
  reg_ID_instr_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_instr_7_SRINV_21714
    );
  reg_ID_instr_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_instr_7_CLKINV_21713
    );
  reg_ID_instr_mux0001_9_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X51Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => branch_trigger,
      ADR3 => reg_IF_instr_6_7577,
      O => reg_ID_instr_mux0001(9)
    );
  reg_ID_instr_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(6),
      O => reg_ID_instr_9_DXMUX_21782
    );
  reg_ID_instr_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(7),
      O => reg_ID_instr_9_DYMUX_21766
    );
  reg_ID_instr_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_instr_9_SRINV_21756
    );
  reg_ID_instr_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_instr_9_CLKINV_21755
    );
  reg_ID_instr_mux0001_7_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X45Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_8_7579,
      O => reg_ID_instr_mux0001(7)
    );
  reg_IF_instr_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(4),
      O => reg_IF_instr_11_DXMUX_21824
    );
  reg_IF_instr_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(5),
      O => reg_IF_instr_11_DYMUX_21808
    );
  reg_IF_instr_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_instr_11_SRINV_21798
    );
  reg_IF_instr_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_instr_11_CLKINV_21797
    );
  reg_IF_instr_mux0001_5_1 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X88Y61"
    )
    port map (
      ADR0 => branch_trigger,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => rom_data(10),
      O => reg_IF_instr_mux0001(5)
    );
  reg_IF_instr_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(2),
      O => reg_IF_instr_13_DXMUX_21866
    );
  reg_IF_instr_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(3),
      O => reg_IF_instr_13_DYMUX_21850
    );
  reg_IF_instr_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_instr_13_SRINV_21840
    );
  reg_IF_instr_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_instr_13_CLKINV_21839
    );
  reg_IF_instr_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X78Y64"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger,
      ADR2 => rom_data(12),
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(3)
    );
  reg_IF_instr_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(0),
      O => reg_IF_instr_15_DXMUX_21908
    );
  reg_IF_instr_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(1),
      O => reg_IF_instr_15_DYMUX_21892
    );
  reg_IF_instr_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_instr_15_SRINV_21882
    );
  reg_IF_instr_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_instr_15_CLKINV_21881
    );
  reg_IF_instr_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X79Y58"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger,
      ADR2 => VCC,
      ADR3 => rom_data(14),
      O => reg_IF_instr_mux0001(1)
    );
  reg_IF_instr_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(14),
      O => reg_IF_instr_1_DXMUX_21950
    );
  reg_IF_instr_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(15),
      O => reg_IF_instr_1_DYMUX_21934
    );
  reg_IF_instr_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_instr_1_SRINV_21924
    );
  reg_IF_instr_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_instr_1_CLKINV_21923
    );
  reg_IF_instr_mux0001_15_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X77Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => branch_trigger,
      ADR3 => rom_data(0),
      O => reg_IF_instr_mux0001(15)
    );
  reg_IF_instr_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(12),
      O => reg_IF_instr_3_DXMUX_21992
    );
  reg_IF_instr_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(13),
      O => reg_IF_instr_3_DYMUX_21976
    );
  reg_IF_instr_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_instr_3_SRINV_21966
    );
  reg_IF_instr_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_instr_3_CLKINV_21965
    );
  reg_IF_instr_mux0001_13_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X78Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rom_data(2),
      ADR2 => VCC,
      ADR3 => branch_trigger,
      O => reg_IF_instr_mux0001(13)
    );
  reg_IF_instr_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X73Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(10),
      O => reg_IF_instr_5_DXMUX_22034
    );
  reg_IF_instr_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X73Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(11),
      O => reg_IF_instr_5_DYMUX_22018
    );
  reg_IF_instr_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X73Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_instr_5_SRINV_22008
    );
  reg_IF_instr_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X73Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_instr_5_CLKINV_22007
    );
  reg_IF_instr_mux0001_11_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X73Y74"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => branch_trigger,
      ADR3 => rom_data(4),
      O => reg_IF_instr_mux0001(11)
    );
  reg_IF_instr_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(8),
      O => reg_IF_instr_7_DYMUX_22057
    );
  reg_IF_instr_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_instr_7_CLKINV_22046
    );
  reg_IF_instr_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(6),
      O => reg_IF_instr_9_DXMUX_22099
    );
  reg_IF_instr_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(7),
      O => reg_IF_instr_9_DYMUX_22083
    );
  reg_IF_instr_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_instr_9_SRINV_22073
    );
  reg_IF_instr_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_instr_9_CLKINV_22072
    );
  reg_IF_instr_mux0001_7_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X78Y60"
    )
    port map (
      ADR0 => branch_trigger,
      ADR1 => VCC,
      ADR2 => rom_data(8),
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(7)
    );
  reg_EX_result_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(11),
      O => reg_EX_result_11_DXMUX_22141
    );
  reg_EX_result_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(10),
      O => reg_EX_result_11_DYMUX_22126
    );
  reg_EX_result_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_result_11_SRINV_22117
    );
  reg_EX_result_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_result_11_CLKINV_22116
    );
  result_10_1 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X48Y62"
    )
    port map (
      ADR0 => in1_cmp_eq0008,
      ADR1 => ram_data(10),
      ADR2 => alu_result(10),
      ADR3 => VCC,
      O => result(10)
    );
  reg_EX_result_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(12),
      O => reg_EX_result_12_DYMUX_22164
    );
  reg_EX_result_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_result_12_CLKINV_22154
    );
  reg_EX_result_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(15),
      O => reg_EX_result_15_DXMUX_22206
    );
  reg_EX_result_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(14),
      O => reg_EX_result_15_DYMUX_22191
    );
  reg_EX_result_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_result_15_SRINV_22182
    );
  reg_EX_result_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_result_15_CLKINV_22181
    );
  result_14_1 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X58Y52"
    )
    port map (
      ADR0 => in1_cmp_eq0008,
      ADR1 => VCC,
      ADR2 => alu_result(14),
      ADR3 => ram_data(14),
      O => result(14)
    );
  outport_0_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X79Y29"
    )
    port map (
      ADR0 => outport_cmp_eq0000_7544,
      ADR1 => reg_EX_result_0_7174,
      ADR2 => VCC,
      ADR3 => VCC,
      O => outport_0_OBUF_22225
    );
  outport_1_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X78Y32"
    )
    port map (
      ADR0 => reg_EX_result_1_7173,
      ADR1 => outport_cmp_eq0000_7544,
      ADR2 => VCC,
      ADR3 => VCC,
      O => outport_1_OBUF_22249
    );
  outport_2_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X78Y5"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outport_cmp_eq0000_7544,
      ADR2 => reg_EX_result_2_7172,
      ADR3 => VCC,
      O => outport_2_OBUF_22273
    );
  outport_3_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X79Y8"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outport_cmp_eq0000_7544,
      ADR2 => VCC,
      ADR3 => reg_EX_result_3_7171,
      O => outport_3_OBUF_22297
    );
  outport_4_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X90Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_4_7170,
      ADR2 => outport_cmp_eq0000_7544,
      ADR3 => VCC,
      O => outport_4_OBUF_22321
    );
  outport_5_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X80Y1"
    )
    port map (
      ADR0 => reg_EX_result_5_7169,
      ADR1 => outport_cmp_eq0000_7544,
      ADR2 => VCC,
      ADR3 => VCC,
      O => outport_5_OBUF_22345
    );
  outport_7_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X90Y20"
    )
    port map (
      ADR0 => reg_EX_result_7_7167,
      ADR1 => outport_cmp_eq0000_7544,
      ADR2 => VCC,
      ADR3 => VCC,
      O => outport_7_OBUF_22369
    );
  N426_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => N426,
      O => N426_0
    );
  N426_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and00075_22395,
      O => in1_and00075_0
    );
  in1_and00075 : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X44Y76"
    )
    port map (
      ADR0 => reg_ID_instr_12_7443,
      ADR1 => reg_ID_instr_14_7444,
      ADR2 => reg_ID_instr_15_7446,
      ADR3 => reg_ID_instr_10_7407,
      O => in1_and00075_22395
    );
  N137_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => N137,
      O => N137_0
    );
  N137_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => N133,
      O => N133_0
    );
  PC_next_2_SW0 : X_LUT4
    generic map(
      INIT => X"55FF",
      LOC => "SLICE_X76Y34"
    )
    port map (
      ADR0 => PC(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => PC(0),
      O => N133
    );
  N135_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => N135,
      O => N135_0
    );
  PC_next_6_SW0 : X_LUT4
    generic map(
      INIT => X"5FFF",
      LOC => "SLICE_X78Y37"
    )
    port map (
      ADR0 => PC(4),
      ADR1 => VCC,
      ADR2 => Madd_PC_next_addsub0000_cy(3),
      ADR3 => PC(5),
      O => N135
    );
  in1_and000710_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000710_22462,
      O => in1_and000710_0
    );
  in1_and000710_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or000892_22454,
      O => in1_or000892_0
    );
  in1_or000892 : X_LUT4
    generic map(
      INIT => X"0033",
      LOC => "SLICE_X43Y77"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_12_7443,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_13_7445,
      O => in1_or000892_22454
    );
  N428_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => N428,
      O => N428_0
    );
  N428_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and00028_22477,
      O => in2_and00028_0
    );
  in2_and00028 : X_LUT4
    generic map(
      INIT => X"C000",
      LOC => "SLICE_X44Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_3_7491,
      ADR2 => reg_ID_instr_4_7492,
      ADR3 => reg_ID_instr_5_7489,
      O => in2_and00028_22477
    );
  wr_index_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X71Y92",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_index(1),
      O => wr_index_1_0
    );
  wr_index_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X71Y92",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(10),
      O => wr_overflow_data_10_0
    );
  wr_overflow_data_10_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X71Y92"
    )
    port map (
      ADR0 => reg_EX_overflow_10_7323,
      ADR1 => VCC,
      ADR2 => branch_trigger_cmp_eq0001,
      ADR3 => VCC,
      O => wr_overflow_data(10)
    );
  wr_index_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_index(2),
      O => wr_index_2_0
    );
  wr_index_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(11),
      O => wr_overflow_data_11_0
    );
  wr_overflow_data_11_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X66Y89"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_11_7326,
      ADR3 => branch_trigger_cmp_eq0001,
      O => wr_overflow_data(11)
    );
  wr_overflow_data_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(13),
      O => wr_overflow_data_13_0
    );
  wr_overflow_data_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(12),
      O => wr_overflow_data_12_0
    );
  wr_overflow_data_12_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X89Y70"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_12_7329,
      ADR2 => VCC,
      ADR3 => branch_trigger_cmp_eq0001,
      O => wr_overflow_data(12)
    );
  wr_overflow_data_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(15),
      O => wr_overflow_data_15_0
    );
  wr_overflow_data_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(14),
      O => wr_overflow_data_14_0
    );
  wr_overflow_data_14_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X76Y76"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_14_7335,
      ADR3 => branch_trigger_cmp_eq0001,
      O => wr_overflow_data(14)
    );
  N16_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => N16,
      O => N16_0
    );
  N16_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => N129_pack_1,
      O => N129
    );
  rd_index1_or00041_SW0 : X_LUT4
    generic map(
      INIT => X"FCFC",
      LOC => "SLICE_X88Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_12_7567,
      ADR2 => reg_IF_instr_11_7564,
      ADR3 => VCC,
      O => N129_pack_1
    );
  rd_index1_or0003_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0003,
      O => rd_index1_or0003_0
    );
  rd_index1_or0003_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X89Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0007_pack_1,
      O => rd_index1_or0007
    );
  rd_index1_or00071 : X_LUT4
    generic map(
      INIT => X"DD00",
      LOC => "SLICE_X89Y60"
    )
    port map (
      ADR0 => reg_IF_instr_10_7565,
      ADR1 => reg_IF_instr_9_7578,
      ADR2 => VCC,
      ADR3 => N16_0,
      O => rd_index1_or0007_pack_1
    );
  in1_and000312_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000312_22642,
      O => in1_and000312_0
    );
  in1_and000312 : X_LUT4
    generic map(
      INIT => X"8080",
      LOC => "SLICE_X51Y78"
    )
    port map (
      ADR0 => reg_ID_instr_8_7478,
      ADR1 => reg_ID_instr_6_7473,
      ADR2 => reg_ID_instr_7_7477,
      ADR3 => VCC,
      O => in1_and000312_22642
    );
  reg_ID_data2_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X63Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(7),
      O => reg_ID_data2_8_DXMUX_22673
    );
  reg_ID_data2_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X63Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => N95_pack_1,
      O => N95
    );
  reg_ID_data2_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X63Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_8_CLKINV_22657
    );
  reg_ID_data2_mux0006_10_41 : X_LUT4
    generic map(
      INIT => X"002F",
      LOC => "SLICE_X63Y79"
    )
    port map (
      ADR0 => reg_IF_instr_11_7564,
      ADR1 => N7,
      ADR2 => reg_ID_data1_mux0007_10_146_7589,
      ADR3 => rd_index1_or0006,
      O => N95_pack_1
    );
  reg_ID_data2_mux0007_11_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X70Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007_11_15_22701,
      O => reg_ID_data2_mux0007_11_15_0
    );
  reg_ID_data2_mux0007_11_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X70Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007_10_15_22694,
      O => reg_ID_data2_mux0007_10_15_0
    );
  reg_ID_data2_mux0007_10_15 : X_LUT4
    generic map(
      INIT => X"CE02",
      LOC => "SLICE_X70Y81"
    )
    port map (
      ADR0 => rd_data2(5),
      ADR1 => or0000_0_or0000_0,
      ADR2 => rd_index1_or0005_0,
      ADR3 => reg_IF_instr_5_7574,
      O => reg_ID_data2_mux0007_10_15_22694
    );
  N125_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => N125,
      O => N125_0
    );
  N125_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => N127,
      O => N127_0
    );
  reg_ID_data2_mux0007_8_SW0 : X_LUT4
    generic map(
      INIT => X"FCF0",
      LOC => "SLICE_X61Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_7_7576,
      ADR2 => N19,
      ADR3 => N1011_0,
      O => N127
    );
  N117_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X71Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => N117,
      O => N117_0
    );
  N117_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X71Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => N5_pack_1,
      O => N5
    );
  reg_ID_data2_mux0006_12_1 : X_LUT4
    generic map(
      INIT => X"FACA",
      LOC => "SLICE_X71Y78"
    )
    port map (
      ADR0 => N112_0,
      ADR1 => N113_0,
      ADR2 => rd_index1_or0006,
      ADR3 => reg_ID_instr_9_7340,
      O => N5_pack_1
    );
  reg_ID_data2_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(10),
      O => reg_ID_data2_5_DXMUX_22780
    );
  reg_ID_data2_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007_10_2_pack_1,
      O => reg_ID_data2_mux0007_10_2_7597
    );
  reg_ID_data2_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_5_CLKINV_22763
    );
  reg_ID_data2_mux0007_10_2 : X_LUT4
    generic map(
      INIT => X"FAAA",
      LOC => "SLICE_X60Y75"
    )
    port map (
      ADR0 => N811_0,
      ADR1 => VCC,
      ADR2 => reg_IF_instr_5_7574,
      ADR3 => rd_index1_or0005_0,
      O => reg_ID_data2_mux0007_10_2_pack_1
    );
  reg_ID_data2_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(11),
      O => reg_ID_data2_4_DXMUX_22815
    );
  reg_ID_data2_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007_11_2_pack_1,
      O => reg_ID_data2_mux0007_11_2_7599
    );
  reg_ID_data2_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_4_CLKINV_22798
    );
  reg_ID_data2_mux0007_11_2 : X_LUT4
    generic map(
      INIT => X"FFC0",
      LOC => "SLICE_X61Y74"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rd_index1_or0005_0,
      ADR2 => reg_IF_instr_4_7575,
      ADR3 => N811_0,
      O => reg_ID_data2_mux0007_11_2_pack_1
    );
  N18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X71Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => N18,
      O => N18_0
    );
  N18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X71Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => N19_pack_1,
      O => N19
    );
  reg_ID_data2_mux0006_8_11 : X_LUT4
    generic map(
      INIT => X"FF08",
      LOC => "SLICE_X71Y80"
    )
    port map (
      ADR0 => reg_IF_instr_5_7574,
      ADR1 => rd_index1_or0005_0,
      ADR2 => or0000_0_or0000_0,
      ADR3 => N811_0,
      O => N19_pack_1
    );
  in2_and000552_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_22855,
      O => in2_and000552_0
    );
  in2_and000552 : X_LUT4
    generic map(
      INIT => X"000A",
      LOC => "SLICE_X44Y74"
    )
    port map (
      ADR0 => in2_and000536_0,
      ADR1 => VCC,
      ADR2 => N192,
      ADR3 => N388,
      O => in2_and000552_22855
    );
  in2_and000536_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000536_22867,
      O => in2_and000536_0
    );
  in2_and000536 : X_LUT4
    generic map(
      INIT => X"8241",
      LOC => "SLICE_X47Y81"
    )
    port map (
      ADR0 => reg_ID_instr_2_7453,
      ADR1 => reg_ID_instr_1_7454,
      ADR2 => reg_EX_instr_7_7475,
      ADR3 => reg_EX_instr_8_7476,
      O => in2_and000536_22867
    );
  N378_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => N378,
      O => N378_0
    );
  N378_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005_pack_1,
      O => in2_and0005
    );
  in2_and000578 : X_LUT4
    generic map(
      INIT => X"F080",
      LOC => "SLICE_X45Y74"
    )
    port map (
      ADR0 => in1_or0009,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => wr_enable_0,
      ADR3 => in2_and000552_0,
      O => in2_and0005_pack_1
    );
  N112_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => N112,
      O => N112_0
    );
  N112_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => or0000_0_or0000,
      O => or0000_0_or0000_0
    );
  or0000_0_or00001 : X_LUT4
    generic map(
      INIT => X"0222",
      LOC => "SLICE_X79Y79"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_10_146_7589,
      ADR1 => reg_IF_instr_11_7564,
      ADR2 => reg_IF_instr_10_7565,
      ADR3 => reg_IF_instr_9_7578,
      O => or0000_0_or0000
    );
  N115_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X70Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => N115,
      O => N115_0
    );
  N115_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X70Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => N113,
      O => N113_0
    );
  reg_ID_data2_mux0006_12_1_SW1 : X_LUT4
    generic map(
      INIT => X"B733",
      LOC => "SLICE_X70Y79"
    )
    port map (
      ADR0 => N7,
      ADR1 => N15_0,
      ADR2 => reg_IF_instr_11_7564,
      ADR3 => reg_ID_data1_mux0007_10_146_7589,
      O => N113
    );
  N121_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => N121,
      O => N121_0
    );
  N121_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => N123,
      O => N123_0
    );
  reg_ID_data2_mux0007_12_SW0 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X65Y82"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => N5,
      ADR3 => reg_IF_instr_3_7572,
      O => N123
    );
  N110_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X71Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => N110,
      O => N110_0
    );
  N110_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X71Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => N7_pack_1,
      O => N7
    );
  rd_index1_or000511 : X_LUT4
    generic map(
      INIT => X"0FFF",
      LOC => "SLICE_X71Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_IF_instr_9_7578,
      ADR3 => reg_IF_instr_10_7565,
      O => N7_pack_1
    );
  reg_ID_data1_mux0007_10_134_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_10_134_23011,
      O => reg_ID_data1_mux0007_10_134_0
    );
  reg_ID_data1_mux0007_10_134_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or000629_23003,
      O => rd_index1_or000629_0
    );
  rd_index1_or000629 : X_LUT4
    generic map(
      INIT => X"5402",
      LOC => "SLICE_X88Y66"
    )
    port map (
      ADR0 => reg_IF_instr_14_7569,
      ADR1 => reg_IF_instr_10_7565,
      ADR2 => reg_IF_instr_9_7578,
      ADR3 => reg_IF_instr_11_7564,
      O => rd_index1_or000629_23003
    );
  N1011_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => N1011,
      O => N1011_0
    );
  N1011_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or000638_pack_1,
      O => rd_index1_or000638_7584
    );
  rd_index1_or000638 : X_LUT4
    generic map(
      INIT => X"0101",
      LOC => "SLICE_X79Y71"
    )
    port map (
      ADR0 => reg_IF_instr_15_7568,
      ADR1 => reg_IF_instr_13_7566,
      ADR2 => reg_IF_instr_12_7567,
      ADR3 => VCC,
      O => rd_index1_or000638_pack_1
    );
  N811_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X70Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => N811,
      O => N811_0
    );
  N811_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X70Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0006_pack_1,
      O => rd_index1_or0006
    );
  rd_index1_or000655 : X_LUT4
    generic map(
      INIT => X"EEAA",
      LOC => "SLICE_X70Y74"
    )
    port map (
      ADR0 => rd_index1_or0005_0,
      ADR1 => rd_index1_or000629_0,
      ADR2 => VCC,
      ADR3 => rd_index1_or000638_7584,
      O => rd_index1_or0006_pack_1
    );
  rd_index2_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X71Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index2(1),
      O => rd_index2_1_0
    );
  rd_index2_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X71Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => N119,
      O => N119_0
    );
  reg_ID_data2_mux0007_14_SW0 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X71Y81"
    )
    port map (
      ADR0 => N5,
      ADR1 => VCC,
      ADR2 => reg_IF_instr_1_7570,
      ADR3 => VCC,
      O => N119
    );
  reg_EX_result_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(13),
      O => reg_EX_result_13_DXMUX_23114
    );
  reg_EX_result_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq0008_pack_1,
      O => in1_cmp_eq0008
    );
  reg_EX_result_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_result_13_CLKINV_23096
    );
  in1_cmp_eq00082 : X_LUT4
    generic map(
      INIT => X"1100",
      LOC => "SLICE_X53Y76"
    )
    port map (
      ADR0 => reg_ID_instr_9_7340,
      ADR1 => reg_ID_instr_10_7407,
      ADR2 => VCC,
      ADR3 => N13,
      O => in1_cmp_eq0008_pack_1
    );
  N372_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => N372,
      O => N372_0
    );
  N372_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_wr_enable(0),
      O => ram_wr_enable_0_0
    );
  in1_cmp_eq00091 : X_LUT4
    generic map(
      INIT => X"4040",
      LOC => "SLICE_X46Y78"
    )
    port map (
      ADR0 => reg_ID_instr_10_7407,
      ADR1 => N13,
      ADR2 => reg_ID_instr_9_7340,
      ADR3 => VCC,
      O => ram_wr_enable(0)
    );
  N2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => N2_23166,
      O => N2_0
    );
  N2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => N108_pack_1,
      O => N108
    );
  N2_SW0 : X_LUT4
    generic map(
      INIT => X"F7EF",
      LOC => "SLICE_X78Y66"
    )
    port map (
      ADR0 => reg_IF_instr_11_7564,
      ADR1 => reg_IF_instr_10_7565,
      ADR2 => reg_IF_instr_14_7569,
      ADR3 => reg_IF_instr_15_7568,
      O => N108_pack_1
    );
  rd_index1_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1(2),
      O => rd_index1_2_0
    );
  rd_index1_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1(1),
      O => rd_index1_1_0
    );
  rd_index1_1_1 : X_LUT4
    generic map(
      INIT => X"F3E2",
      LOC => "SLICE_X79Y80"
    )
    port map (
      ADR0 => rd_index1_or0004_7605,
      ADR1 => rd_index1_or0003_0,
      ADR2 => reg_IF_instr_7_7576,
      ADR3 => reg_IF_instr_4_7575,
      O => rd_index1(1)
    );
  rd_index2_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index2(2),
      O => rd_index2_2_0
    );
  rd_index2_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index2(0),
      O => rd_index2_0_0
    );
  rd_index2_0_1 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X76Y81"
    )
    port map (
      ADR0 => reg_IF_instr_0_7571,
      ADR1 => rd_index1_or0007,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_3_7572,
      O => rd_index2(0)
    );
  wr_enable_or000134_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable_or000134_23238,
      O => wr_enable_or000134_0
    );
  wr_enable_or000134_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_or000031_23231,
      O => wr_overflow_or000031_0
    );
  wr_overflow_or000031 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X48Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_instr_11_7435,
      ADR3 => reg_EX_instr_10_7440,
      O => wr_overflow_or000031_23231
    );
  reg_ID_PC_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_1_7415,
      O => reg_ID_PC_1_DXMUX_23258
    );
  reg_ID_PC_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_0_7409,
      O => reg_ID_PC_1_DYMUX_23250
    );
  reg_ID_PC_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_PC_1_SRINV_23248
    );
  reg_ID_PC_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_PC_1_CLKINV_23247
    );
  reg_ID_PC_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_3_7421,
      O => reg_ID_PC_3_DXMUX_23282
    );
  reg_ID_PC_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_2_7418,
      O => reg_ID_PC_3_DYMUX_23274
    );
  reg_ID_PC_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_PC_3_SRINV_23272
    );
  reg_ID_PC_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_PC_3_CLKINV_23271
    );
  reg_ID_PC_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_5_7427,
      O => reg_ID_PC_5_DXMUX_23306
    );
  reg_ID_PC_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_4_7424,
      O => reg_ID_PC_5_DYMUX_23298
    );
  reg_ID_PC_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_PC_5_SRINV_23296
    );
  reg_ID_PC_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_PC_5_CLKINV_23295
    );
  reg_ID_PC_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_6_7430,
      O => reg_ID_PC_6_DYMUX_23320
    );
  reg_ID_PC_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_PC_6_CLKINV_23317
    );
  reg_IF_PC_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(1),
      O => reg_IF_PC_1_DXMUX_23344
    );
  reg_IF_PC_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(0),
      O => reg_IF_PC_1_DYMUX_23336
    );
  reg_IF_PC_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_PC_1_SRINV_23334
    );
  reg_IF_PC_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_PC_1_CLKINV_23333
    );
  reg_IF_PC_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(3),
      O => reg_IF_PC_3_DXMUX_23368
    );
  reg_IF_PC_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(2),
      O => reg_IF_PC_3_DYMUX_23360
    );
  reg_IF_PC_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_PC_3_SRINV_23358
    );
  reg_IF_PC_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_PC_3_CLKINV_23357
    );
  reg_IF_PC_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(5),
      O => reg_IF_PC_5_DXMUX_23392
    );
  reg_IF_PC_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(4),
      O => reg_IF_PC_5_DYMUX_23384
    );
  reg_IF_PC_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_PC_5_SRINV_23382
    );
  reg_IF_PC_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_PC_5_CLKINV_23381
    );
  reg_IF_PC_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(6),
      O => reg_IF_PC_6_DYMUX_23406
    );
  reg_IF_PC_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_PC_6_CLKINV_23403
    );
  reg_EX_n_flag_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => n_flag,
      O => reg_EX_n_flag_DYMUX_23420
    );
  reg_EX_n_flag_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_n_flag_CLKINV_23417
    );
  reg_ID_data1_mux0007_10_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_10_15_23436,
      O => reg_ID_data1_mux0007_10_15_0
    );
  reg_ID_data1_mux0007_10_15 : X_LUT4
    generic map(
      INIT => X"5FFF",
      LOC => "SLICE_X88Y70"
    )
    port map (
      ADR0 => reg_IF_instr_9_7578,
      ADR1 => VCC,
      ADR2 => N16_0,
      ADR3 => reg_IF_instr_10_7565,
      O => reg_ID_data1_mux0007_10_15_23436
    );
  wr_overflow_data_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(7),
      O => wr_overflow_data_7_0
    );
  wr_overflow_data_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(0),
      O => wr_overflow_data_0_0
    );
  wr_overflow_data_0_1 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X67Y66"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_PC_0_7615,
      ADR2 => branch_trigger_cmp_eq0001,
      ADR3 => reg_EX_overflow_0_7346,
      O => wr_overflow_data(0)
    );
  wr_overflow_data_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X73Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(8),
      O => wr_overflow_data_8_0
    );
  wr_overflow_data_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X73Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(1),
      O => wr_overflow_data_1_0
    );
  wr_overflow_data_1_1 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X73Y68"
    )
    port map (
      ADR0 => reg_EX_PC_1_7616,
      ADR1 => reg_EX_overflow_1_7348,
      ADR2 => VCC,
      ADR3 => branch_trigger_cmp_eq0001,
      O => wr_overflow_data(1)
    );
  wr_overflow_data_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X70Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(9),
      O => wr_overflow_data_9_0
    );
  wr_overflow_data_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X70Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(2),
      O => wr_overflow_data_2_0
    );
  wr_overflow_data_2_1 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X70Y71"
    )
    port map (
      ADR0 => reg_EX_overflow_2_7350,
      ADR1 => VCC,
      ADR2 => reg_EX_PC_2_7617,
      ADR3 => branch_trigger_cmp_eq0001,
      O => wr_overflow_data(2)
    );
  wr_overflow_data_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(4),
      O => wr_overflow_data_4_0
    );
  wr_overflow_data_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(3),
      O => wr_overflow_data_3_0
    );
  wr_overflow_data_3_1 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X76Y63"
    )
    port map (
      ADR0 => reg_EX_PC_3_7619,
      ADR1 => branch_trigger_cmp_eq0001,
      ADR2 => reg_EX_overflow_3_7352,
      ADR3 => VCC,
      O => wr_overflow_data(3)
    );
  wr_overflow_data_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(6),
      O => wr_overflow_data_6_0
    );
  wr_overflow_data_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(5),
      O => wr_overflow_data_5_0
    );
  wr_overflow_data_5_1 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X79Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_5_7358,
      ADR2 => branch_trigger_cmp_eq0001,
      ADR3 => reg_EX_PC_5_7621,
      O => wr_overflow_data(5)
    );
  rd_index1_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1(0),
      O => rd_index1_0_0
    );
  rd_index1_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0004_pack_1,
      O => rd_index1_or0004_7605
    );
  rd_index1_or0004 : X_LUT4
    generic map(
      INIT => X"8A80",
      LOC => "SLICE_X78Y80"
    )
    port map (
      ADR0 => reg_IF_instr_10_7565,
      ADR1 => N115_0,
      ADR2 => reg_IF_instr_9_7578,
      ADR3 => N16_0,
      O => rd_index1_or0004_pack_1
    );
  N382_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => N382,
      O => N382_0
    );
  N382_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => N384,
      O => N384_0
    );
  in2_0_SW2 : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X49Y72"
    )
    port map (
      ADR0 => reg_ID_data2_0_7347,
      ADR1 => VCC,
      ADR2 => in2_and0005,
      ADR3 => reg_EX_result_0_7174,
      O => N384
    );
  reg_EX_PC_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X75Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_1_7606,
      O => reg_EX_PC_1_DXMUX_23624
    );
  reg_EX_PC_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X75Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_0_7607,
      O => reg_EX_PC_1_DYMUX_23616
    );
  reg_EX_PC_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X75Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_PC_1_SRINV_23614
    );
  reg_EX_PC_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X75Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_PC_1_CLKINV_23613
    );
  reg_EX_PC_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_3_7608,
      O => reg_EX_PC_3_DXMUX_23648
    );
  reg_EX_PC_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_2_7609,
      O => reg_EX_PC_3_DYMUX_23640
    );
  reg_EX_PC_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_PC_3_SRINV_23638
    );
  reg_EX_PC_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_PC_3_CLKINV_23637
    );
  reg_EX_PC_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_5_7610,
      O => reg_EX_PC_5_DXMUX_23672
    );
  reg_EX_PC_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X89Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_4_7611,
      O => reg_EX_PC_5_DYMUX_23664
    );
  reg_EX_PC_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_PC_5_SRINV_23662
    );
  reg_EX_PC_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_PC_5_CLKINV_23661
    );
  reg_EX_PC_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_6_7612,
      O => reg_EX_PC_6_DYMUX_23686
    );
  reg_EX_PC_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_PC_6_CLKINV_23683
    );
  N131_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => N131,
      O => N131_0
    );
  N131_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_PC_next_addsub0000_cy_3_pack_1,
      O => Madd_PC_next_addsub0000_cy(3)
    );
  Madd_PC_next_addsub0000_cy_3_11 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X78Y35"
    )
    port map (
      ADR0 => PC(3),
      ADR1 => PC(2),
      ADR2 => PC(1),
      ADR3 => PC(0),
      O => Madd_PC_next_addsub0000_cy_3_pack_1
    );
  N380_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => N380,
      O => N380_0
    );
  in2_2_SW2 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X47Y68"
    )
    port map (
      ADR0 => reg_EX_result_2_7172,
      ADR1 => reg_ID_data2_2_7351,
      ADR2 => VCC,
      ADR3 => in2_and0005,
      O => N380
    );
  reg_EX_z_flag_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => z_flag,
      O => reg_EX_z_flag_DYMUX_23736
    );
  reg_EX_z_flag_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_z_flag_CLKINV_23733
    );
  outport_9_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X71Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_cmp_eq0000_pack_1,
      O => outport_cmp_eq0000_7544
    );
  outport_cmp_eq0000 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X71Y48"
    )
    port map (
      ADR0 => N104_0,
      ADR1 => reg_EX_instr_11_7435,
      ADR2 => reg_EX_instr_13_7434,
      ADR3 => reg_EX_instr_9_7433,
      O => outport_cmp_eq0000_pack_1
    );
  N96_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => N96,
      O => N96_0
    );
  N96_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => N104,
      O => N104_0
    );
  outport_cmp_eq0000_SW0 : X_LUT4
    generic map(
      INIT => X"FEFF",
      LOC => "SLICE_X50Y80"
    )
    port map (
      ADR0 => reg_EX_instr_10_7440,
      ADR1 => reg_EX_instr_15_7438,
      ADR2 => reg_EX_instr_12_7437,
      ADR3 => reg_EX_instr_14_7439,
      O => N104
    );
  reg_IF_inport_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X74Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_11_INBUF,
      O => reg_IF_inport_11_DXMUX_23808
    );
  reg_IF_inport_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X74Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_10_INBUF,
      O => reg_IF_inport_11_DYMUX_23800
    );
  reg_IF_inport_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X74Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_inport_11_SRINV_23798
    );
  reg_IF_inport_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X74Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_inport_11_CLKINV_23797
    );
  reg_IF_inport_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_13_INBUF,
      O => reg_IF_inport_13_DXMUX_23832
    );
  reg_IF_inport_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_12_INBUF,
      O => reg_IF_inport_13_DYMUX_23824
    );
  reg_IF_inport_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_inport_13_SRINV_23822
    );
  reg_IF_inport_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_inport_13_CLKINV_23821
    );
  reg_IF_inport_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_15_INBUF,
      O => reg_IF_inport_15_DXMUX_23856
    );
  reg_IF_inport_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_14_INBUF,
      O => reg_IF_inport_15_DYMUX_23848
    );
  reg_IF_inport_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_inport_15_SRINV_23846
    );
  reg_IF_inport_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_inport_15_CLKINV_23845
    );
  N140_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => N140,
      O => N140_0
    );
  N140_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => N139,
      O => N139_0
    );
  branch_trigger_or0002_SW0 : X_LUT4
    generic map(
      INIT => X"AE45",
      LOC => "SLICE_X56Y81"
    )
    port map (
      ADR0 => reg_EX_instr_10_7440,
      ADR1 => reg_EX_n_flag_7613,
      ADR2 => reg_EX_instr_9_7433,
      ADR3 => reg_EX_instr_11_7435,
      O => N139
    );
  N22_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => N22,
      O => N22_0
    );
  N22_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => N106_pack_1,
      O => N106
    );
  reg_ID_data1_mux0007_0_2_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X79Y66"
    )
    port map (
      ADR0 => reg_IF_instr_10_7565,
      ADR1 => reg_IF_instr_13_7566,
      ADR2 => reg_IF_instr_11_7564,
      ADR3 => reg_IF_instr_12_7567,
      O => N106_pack_1
    );
  reg_ID_data1_mux0007_10_120_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_10_120_23920,
      O => reg_ID_data1_mux0007_10_120_0
    );
  reg_ID_data1_mux0007_10_120 : X_LUT4
    generic map(
      INIT => X"3F32",
      LOC => "SLICE_X88Y71"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_10_15_0,
      ADR1 => or0000_0_or0000_0,
      ADR2 => rd_index1_or0005_0,
      ADR3 => rd_index1_or0006,
      O => reg_ID_data1_mux0007_10_120_23920
    );
  rd_index1_or0005_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X75Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0005,
      O => rd_index1_or0005_0
    );
  rd_index1_or0005_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X75Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_10_146_pack_1,
      O => reg_ID_data1_mux0007_10_146_7589
    );
  reg_ID_data1_mux0007_10_146 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X75Y70"
    )
    port map (
      ADR0 => reg_IF_instr_12_7567,
      ADR1 => reg_IF_instr_14_7569,
      ADR2 => reg_IF_instr_15_7568,
      ADR3 => reg_IF_instr_13_7566,
      O => reg_ID_data1_mux0007_10_146_pack_1
    );
  reg_ID_data1_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(9),
      O => reg_ID_data1_9_DXMUX_23975
    );
  reg_ID_data1_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => N02_pack_1,
      O => N02
    );
  reg_ID_data1_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data1_9_CLKINV_23959
    );
  reg_ID_data1_mux0007_10_156 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X79Y70"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => reg_ID_data1_mux0007_10_146_7589,
      ADR2 => reg_ID_data1_mux0007_10_134_0,
      ADR3 => reg_ID_data1_mux0007_10_120_0,
      O => N02_pack_1
    );
  reg_IF_inport_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_1_INBUF,
      O => reg_IF_inport_1_DXMUX_23999
    );
  reg_IF_inport_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_0_INBUF,
      O => reg_IF_inport_1_DYMUX_23991
    );
  reg_IF_inport_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_inport_1_SRINV_23989
    );
  reg_IF_inport_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_inport_1_CLKINV_23988
    );
  reg_IF_inport_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_3_INBUF,
      O => reg_IF_inport_3_DXMUX_24023
    );
  reg_IF_inport_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_2_INBUF,
      O => reg_IF_inport_3_DYMUX_24015
    );
  reg_IF_inport_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_inport_3_SRINV_24013
    );
  reg_IF_inport_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_inport_3_CLKINV_24012
    );
  reg_IF_inport_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_5_INBUF,
      O => reg_IF_inport_5_DXMUX_24047
    );
  reg_IF_inport_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_4_INBUF,
      O => reg_IF_inport_5_DYMUX_24039
    );
  reg_IF_inport_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_inport_5_SRINV_24037
    );
  reg_IF_inport_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_inport_5_CLKINV_24036
    );
  reg_IF_inport_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_7_INBUF,
      O => reg_IF_inport_7_DXMUX_24071
    );
  reg_IF_inport_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_6_INBUF,
      O => reg_IF_inport_7_DYMUX_24063
    );
  reg_IF_inport_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_inport_7_SRINV_24061
    );
  reg_IF_inport_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_inport_7_CLKINV_24060
    );
  reg_IF_inport_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_9_INBUF,
      O => reg_IF_inport_9_DXMUX_24095
    );
  reg_IF_inport_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_8_INBUF,
      O => reg_IF_inport_9_DYMUX_24087
    );
  reg_IF_inport_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_inport_9_SRINV_24085
    );
  reg_IF_inport_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_inport_9_CLKINV_24084
    );
  N424_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => N424,
      O => N424_0
    );
  N424_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => N406,
      O => N406_0
    );
  in2_and000578_SW11 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X49Y68"
    )
    port map (
      ADR0 => reg_EX_result_8_7166,
      ADR1 => wr_enable_0,
      ADR2 => VCC,
      ADR3 => reg_ID_data2_8_7384,
      O => N406
    );
  N418_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => N418,
      O => N418_0
    );
  N418_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => N421,
      O => N421_0
    );
  in2_and000578_SW21 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X49Y74"
    )
    port map (
      ADR0 => reg_ID_data2_11_7318,
      ADR1 => wr_enable_0,
      ADR2 => reg_EX_result_11_7163,
      ADR3 => VCC,
      O => N421
    );
  N415_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => N415,
      O => N415_0
    );
  N415_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => N409,
      O => N409_0
    );
  in2_and000578_SW13 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X43Y68"
    )
    port map (
      ADR0 => reg_EX_result_7_7167,
      ADR1 => reg_ID_data2_7_7381,
      ADR2 => wr_enable_0,
      ADR3 => VCC,
      O => N409
    );
  N403_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => N403,
      O => N403_0
    );
  N403_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => N412,
      O => N412_0
    );
  in2_and000578_SW15 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X41Y73"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_data2_6_7378,
      ADR2 => reg_EX_result_6_7168,
      ADR3 => wr_enable_0,
      O => N412
    );
  N400_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => N400,
      O => N400_0
    );
  N400_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => N391,
      O => N391_0
    );
  in2_and000578_SW1 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X49Y66"
    )
    port map (
      ADR0 => reg_EX_result_15_7159,
      ADR1 => wr_enable_0,
      ADR2 => VCC,
      ADR3 => reg_ID_data2_15_7527,
      O => N391
    );
  N397_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => N397,
      O => N397_0
    );
  N397_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => N394,
      O => N394_0
    );
  in2_and000578_SW3 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X45Y68"
    )
    port map (
      ADR0 => reg_ID_data2_14_7529,
      ADR1 => reg_EX_result_14_7160,
      ADR2 => VCC,
      ADR3 => wr_enable_0,
      O => N394
    );
  reg_IF_instr_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(9),
      O => reg_IF_instr_6_DXMUX_24274
    );
  reg_IF_instr_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => branch_trigger_pack_1,
      O => branch_trigger
    );
  reg_IF_instr_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_instr_6_CLKINV_24256
    );
  branch_trigger_or0002 : X_LUT4
    generic map(
      INIT => X"E400",
      LOC => "SLICE_X57Y81"
    )
    port map (
      ADR0 => reg_EX_z_flag_7622,
      ADR1 => N139_0,
      ADR2 => N140_0,
      ADR3 => N96_0,
      O => branch_trigger_pack_1
    );
  alu_mode_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode(1),
      O => alu_mode_1_0
    );
  alu_mode_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode_0_15_24295,
      O => alu_mode_0_15_0
    );
  alu_mode_0_15 : X_LUT4
    generic map(
      INIT => X"0200",
      LOC => "SLICE_X45Y67"
    )
    port map (
      ADR0 => reg_ID_instr_10_7407,
      ADR1 => reg_ID_instr_15_7446,
      ADR2 => reg_ID_instr_11_7404,
      ADR3 => reg_ID_instr_9_7340,
      O => alu_mode_0_15_24295
    );
  reg_ID_data1_3 : X_FF
    generic map(
      LOC => "SLICE_X74Y70",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_3_DXMUX_21190,
      CE => VCC,
      CLK => reg_ID_data1_3_CLKINV_21165,
      SET => GND,
      RST => reg_ID_data1_3_SRINV_21166,
      O => reg_ID_data1_3_7512
    );
  reg_ID_data2_0 : X_FF
    generic map(
      LOC => "SLICE_X62Y78",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_1_DYMUX_21218,
      CE => VCC,
      CLK => reg_ID_data2_1_CLKINV_21209,
      SET => GND,
      RST => reg_ID_data2_1_SRINV_21210,
      O => reg_ID_data2_0_7347
    );
  reg_ID_data2_mux0007_14_Q : X_LUT4
    generic map(
      INIT => X"F800",
      LOC => "SLICE_X62Y78"
    )
    port map (
      ADR0 => N95,
      ADR1 => rd_data2(1),
      ADR2 => N119_0,
      ADR3 => N2_0,
      O => reg_ID_data2_mux0007(14)
    );
  reg_ID_data2_1 : X_FF
    generic map(
      LOC => "SLICE_X62Y78",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_1_DXMUX_21232,
      CE => VCC,
      CLK => reg_ID_data2_1_CLKINV_21209,
      SET => GND,
      RST => reg_ID_data2_1_SRINV_21210,
      O => reg_ID_data2_1_7349
    );
  reg_ID_data1_4 : X_FF
    generic map(
      LOC => "SLICE_X78Y72",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_5_DYMUX_21259,
      CE => VCC,
      CLK => reg_ID_data1_5_CLKINV_21249,
      SET => GND,
      RST => reg_ID_data1_5_SRINV_21250,
      O => reg_ID_data1_4_7513
    );
  reg_ID_data1_mux0007_5_10 : X_LUT4
    generic map(
      INIT => X"EAEA",
      LOC => "SLICE_X78Y72"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_5_6,
      ADR1 => rd_data1(5),
      ADR2 => N02,
      ADR3 => VCC,
      O => reg_ID_data1_mux0007(5)
    );
  reg_ID_data1_5 : X_FF
    generic map(
      LOC => "SLICE_X78Y72",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_5_DXMUX_21274,
      CE => VCC,
      CLK => reg_ID_data1_5_CLKINV_21249,
      SET => GND,
      RST => reg_ID_data1_5_SRINV_21250,
      O => reg_ID_data1_5_7514
    );
  reg_ID_data2_2 : X_FF
    generic map(
      LOC => "SLICE_X62Y83",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_3_DYMUX_21302,
      CE => VCC,
      CLK => reg_ID_data2_3_CLKINV_21293,
      SET => GND,
      RST => reg_ID_data2_3_SRINV_21294,
      O => reg_ID_data2_2_7351
    );
  reg_ID_data2_mux0007_12_Q : X_LUT4
    generic map(
      INIT => X"EC00",
      LOC => "SLICE_X62Y83"
    )
    port map (
      ADR0 => N95,
      ADR1 => N123_0,
      ADR2 => rd_data2(3),
      ADR3 => N2_0,
      O => reg_ID_data2_mux0007(12)
    );
  reg_ID_data2_3 : X_FF
    generic map(
      LOC => "SLICE_X62Y83",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_3_DXMUX_21316,
      CE => VCC,
      CLK => reg_ID_data2_3_CLKINV_21293,
      SET => GND,
      RST => reg_ID_data2_3_SRINV_21294,
      O => reg_ID_data2_3_7353
    );
  reg_ID_data1_6 : X_FF
    generic map(
      LOC => "SLICE_X66Y70",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_7_DYMUX_21344,
      CE => VCC,
      CLK => reg_ID_data1_7_CLKINV_21334,
      SET => GND,
      RST => reg_ID_data1_7_SRINV_21335,
      O => reg_ID_data1_6_7515
    );
  reg_ID_data1_mux0007_7_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X66Y70"
    )
    port map (
      ADR0 => rd_data1(7),
      ADR1 => N22_0,
      ADR2 => reg_IF_inport_7_7560,
      ADR3 => N02,
      O => reg_ID_data1_mux0007(7)
    );
  reg_ID_data1_7 : X_FF
    generic map(
      LOC => "SLICE_X66Y70",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_7_DXMUX_21358,
      CE => VCC,
      CLK => reg_ID_data1_7_CLKINV_21334,
      SET => GND,
      RST => reg_ID_data1_7_SRINV_21335,
      O => reg_ID_data1_7_7516
    );
  reg_ID_data1_mux0007_8_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X91Y74"
    )
    port map (
      ADR0 => reg_IF_inport_8_7561,
      ADR1 => N02,
      ADR2 => N22_0,
      ADR3 => rd_data1(8),
      O => reg_ID_data1_mux0007(8)
    );
  reg_ID_data1_8 : X_FF
    generic map(
      LOC => "SLICE_X91Y74",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_8_DYMUX_21381,
      CE => VCC,
      CLK => reg_ID_data1_8_CLKINV_21372,
      SET => GND,
      RST => reg_ID_data1_8_FFY_RSTAND_21386,
      O => reg_ID_data1_8_7517
    );
  reg_ID_data1_8_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X91Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_data1_8_FFY_RSTAND_21386
    );
  reg_ID_data2_6 : X_FF
    generic map(
      LOC => "SLICE_X60Y80",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_7_DYMUX_21409,
      CE => VCC,
      CLK => reg_ID_data2_7_CLKINV_21400,
      SET => GND,
      RST => reg_ID_data2_7_SRINV_21401,
      O => reg_ID_data2_6_7378
    );
  reg_ID_data2_mux0007_8_Q : X_LUT4
    generic map(
      INIT => X"EA00",
      LOC => "SLICE_X60Y80"
    )
    port map (
      ADR0 => N127_0,
      ADR1 => rd_data2(7),
      ADR2 => N95,
      ADR3 => N2_0,
      O => reg_ID_data2_mux0007(8)
    );
  reg_ID_data2_7 : X_FF
    generic map(
      LOC => "SLICE_X60Y80",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_7_DXMUX_21423,
      CE => VCC,
      CLK => reg_ID_data2_7_CLKINV_21400,
      SET => GND,
      RST => reg_ID_data2_7_SRINV_21401,
      O => reg_ID_data2_7_7381
    );
  reg_ID_data2_mux0007_6_1 : X_LUT4
    generic map(
      INIT => X"EA00",
      LOC => "SLICE_X58Y80"
    )
    port map (
      ADR0 => N18_0,
      ADR1 => N95,
      ADR2 => rd_data2(9),
      ADR3 => N2_0,
      O => reg_ID_data2_mux0007(6)
    );
  reg_ID_data2_9 : X_FF
    generic map(
      LOC => "SLICE_X58Y80",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_9_DYMUX_21446,
      CE => VCC,
      CLK => reg_ID_data2_9_CLKINV_21437,
      SET => GND,
      RST => reg_ID_data2_9_FFY_RSTAND_21451,
      O => reg_ID_data2_9_7387
    );
  reg_ID_data2_9_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X58Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_data2_9_FFY_RSTAND_21451
    );
  reg_ID_instr_10 : X_FF
    generic map(
      LOC => "SLICE_X44Y78",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_11_DYMUX_21472,
      CE => VCC,
      CLK => reg_ID_instr_11_CLKINV_21461,
      SET => GND,
      RST => reg_ID_instr_11_SRINV_21462,
      O => reg_ID_instr_10_7407
    );
  reg_ID_instr_mux0001_4_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X44Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_11_7564,
      ADR2 => branch_trigger,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(4)
    );
  reg_ID_instr_11 : X_FF
    generic map(
      LOC => "SLICE_X44Y78",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_11_DXMUX_21488,
      CE => VCC,
      CLK => reg_ID_instr_11_CLKINV_21461,
      SET => GND,
      RST => reg_ID_instr_11_SRINV_21462,
      O => reg_ID_instr_11_7404
    );
  reg_ID_instr_12 : X_FF
    generic map(
      LOC => "SLICE_X45Y77",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_13_DYMUX_21514,
      CE => VCC,
      CLK => reg_ID_instr_13_CLKINV_21503,
      SET => GND,
      RST => reg_ID_instr_13_SRINV_21504,
      O => reg_ID_instr_12_7443
    );
  reg_ID_instr_mux0001_2_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X45Y77"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => branch_trigger,
      ADR3 => reg_IF_instr_13_7566,
      O => reg_ID_instr_mux0001(2)
    );
  reg_ID_instr_13 : X_FF
    generic map(
      LOC => "SLICE_X45Y77",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_13_DXMUX_21530,
      CE => VCC,
      CLK => reg_ID_instr_13_CLKINV_21503,
      SET => GND,
      RST => reg_ID_instr_13_SRINV_21504,
      O => reg_ID_instr_13_7445
    );
  reg_ID_instr_14 : X_FF
    generic map(
      LOC => "SLICE_X47Y76",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_15_DYMUX_21556,
      CE => VCC,
      CLK => reg_ID_instr_15_CLKINV_21545,
      SET => GND,
      RST => reg_ID_instr_15_SRINV_21546,
      O => reg_ID_instr_14_7444
    );
  reg_IF_inport_0 : X_FF
    generic map(
      LOC => "SLICE_X79Y21",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_1_DYMUX_23991,
      CE => VCC,
      CLK => reg_IF_inport_1_CLKINV_23988,
      SET => GND,
      RST => reg_IF_inport_1_SRINV_23989,
      O => reg_IF_inport_0_7413
    );
  reg_IF_inport_1 : X_FF
    generic map(
      LOC => "SLICE_X79Y21",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_1_DXMUX_23999,
      CE => VCC,
      CLK => reg_IF_inport_1_CLKINV_23988,
      SET => GND,
      RST => reg_IF_inport_1_SRINV_23989,
      O => reg_IF_inport_1_7416
    );
  reg_IF_inport_2 : X_FF
    generic map(
      LOC => "SLICE_X78Y34",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_3_DYMUX_24015,
      CE => VCC,
      CLK => reg_IF_inport_3_CLKINV_24012,
      SET => GND,
      RST => reg_IF_inport_3_SRINV_24013,
      O => reg_IF_inport_2_7419
    );
  reg_IF_inport_3 : X_FF
    generic map(
      LOC => "SLICE_X78Y34",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_3_DXMUX_24023,
      CE => VCC,
      CLK => reg_IF_inport_3_CLKINV_24012,
      SET => GND,
      RST => reg_IF_inport_3_SRINV_24013,
      O => reg_IF_inport_3_7422
    );
  reg_IF_inport_4 : X_FF
    generic map(
      LOC => "SLICE_X90Y36",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_5_DYMUX_24039,
      CE => VCC,
      CLK => reg_IF_inport_5_CLKINV_24036,
      SET => GND,
      RST => reg_IF_inport_5_SRINV_24037,
      O => reg_IF_inport_4_7425
    );
  reg_IF_inport_5 : X_FF
    generic map(
      LOC => "SLICE_X90Y36",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_5_DXMUX_24047,
      CE => VCC,
      CLK => reg_IF_inport_5_CLKINV_24036,
      SET => GND,
      RST => reg_IF_inport_5_SRINV_24037,
      O => reg_IF_inport_5_7428
    );
  reg_IF_PC_5 : X_FF
    generic map(
      LOC => "SLICE_X89Y37",
      INIT => '0'
    )
    port map (
      I => reg_IF_PC_5_DXMUX_23392,
      CE => VCC,
      CLK => reg_IF_PC_5_CLKINV_23381,
      SET => GND,
      RST => reg_IF_PC_5_SRINV_23382,
      O => reg_IF_PC_5_7427
    );
  reg_IF_PC_6 : X_FF
    generic map(
      LOC => "SLICE_X79Y43",
      INIT => '0'
    )
    port map (
      I => reg_IF_PC_6_DYMUX_23406,
      CE => VCC,
      CLK => reg_IF_PC_6_CLKINV_23403,
      SET => GND,
      RST => reg_IF_PC_6_FFY_RSTAND_23411,
      O => reg_IF_PC_6_7430
    );
  reg_IF_PC_6_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X79Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_PC_6_FFY_RSTAND_23411
    );
  reg_EX_n_flag : X_FF
    generic map(
      LOC => "SLICE_X52Y78",
      INIT => '0'
    )
    port map (
      I => reg_EX_n_flag_DYMUX_23420,
      CE => VCC,
      CLK => reg_EX_n_flag_CLKINV_23417,
      SET => GND,
      RST => reg_EX_n_flag_FFY_RSTAND_23425,
      O => reg_EX_n_flag_7613
    );
  reg_EX_n_flag_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X52Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_n_flag_FFY_RSTAND_23425
    );
  wr_overflow_data_7_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X67Y66"
    )
    port map (
      ADR0 => branch_trigger_cmp_eq0001,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_7_7364,
      ADR3 => VCC,
      O => wr_overflow_data(7)
    );
  wr_overflow_data_8_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X73Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_8_7367,
      ADR2 => VCC,
      ADR3 => branch_trigger_cmp_eq0001,
      O => wr_overflow_data(8)
    );
  wr_overflow_data_9_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X70Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_9_7370,
      ADR3 => branch_trigger_cmp_eq0001,
      O => wr_overflow_data(9)
    );
  wr_overflow_data_4_1 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X76Y63"
    )
    port map (
      ADR0 => branch_trigger_cmp_eq0001,
      ADR1 => reg_EX_PC_4_7618,
      ADR2 => reg_EX_overflow_4_7355,
      ADR3 => VCC,
      O => wr_overflow_data(4)
    );
  wr_overflow_data_6_1 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X79Y69"
    )
    port map (
      ADR0 => reg_EX_overflow_6_7361,
      ADR1 => VCC,
      ADR2 => reg_EX_PC_6_7620,
      ADR3 => branch_trigger_cmp_eq0001,
      O => wr_overflow_data(6)
    );
  rd_index1_0_1 : X_LUT4
    generic map(
      INIT => X"AFAC",
      LOC => "SLICE_X78Y80"
    )
    port map (
      ADR0 => reg_IF_instr_6_7577,
      ADR1 => reg_IF_instr_3_7572,
      ADR2 => rd_index1_or0003_0,
      ADR3 => rd_index1_or0004_7605,
      O => rd_index1(0)
    );
  in2_1_SW2 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X49Y72"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_1_7173,
      ADR2 => in2_and0005,
      ADR3 => reg_ID_data2_1_7349,
      O => N382
    );
  reg_EX_PC_0 : X_FF
    generic map(
      LOC => "SLICE_X75Y50",
      INIT => '0'
    )
    port map (
      I => reg_EX_PC_1_DYMUX_23616,
      CE => VCC,
      CLK => reg_EX_PC_1_CLKINV_23613,
      SET => GND,
      RST => reg_EX_PC_1_SRINV_23614,
      O => reg_EX_PC_0_7615
    );
  reg_EX_PC_1 : X_FF
    generic map(
      LOC => "SLICE_X75Y50",
      INIT => '0'
    )
    port map (
      I => reg_EX_PC_1_DXMUX_23624,
      CE => VCC,
      CLK => reg_EX_PC_1_CLKINV_23613,
      SET => GND,
      RST => reg_EX_PC_1_SRINV_23614,
      O => reg_EX_PC_1_7616
    );
  reg_EX_PC_2 : X_FF
    generic map(
      LOC => "SLICE_X77Y36",
      INIT => '0'
    )
    port map (
      I => reg_EX_PC_3_DYMUX_23640,
      CE => VCC,
      CLK => reg_EX_PC_3_CLKINV_23637,
      SET => GND,
      RST => reg_EX_PC_3_SRINV_23638,
      O => reg_EX_PC_2_7617
    );
  outport_9_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X71Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_9_7165,
      ADR2 => outport_cmp_eq0000_7544,
      ADR3 => VCC,
      O => outport_9_OBUF_23764
    );
  branch_trigger_cmp_eq000111 : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X50Y80"
    )
    port map (
      ADR0 => reg_EX_instr_13_7434,
      ADR1 => reg_EX_instr_12_7437,
      ADR2 => reg_EX_instr_14_7439,
      ADR3 => reg_EX_instr_15_7438,
      O => N96
    );
  reg_IF_inport_10 : X_FF
    generic map(
      LOC => "SLICE_X74Y51",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_11_DYMUX_23800,
      CE => VCC,
      CLK => reg_IF_inport_11_CLKINV_23797,
      SET => GND,
      RST => reg_IF_inport_11_SRINV_23798,
      O => reg_IF_inport_10_7549
    );
  reg_IF_inport_11 : X_FF
    generic map(
      LOC => "SLICE_X74Y51",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_11_DXMUX_23808,
      CE => VCC,
      CLK => reg_IF_inport_11_CLKINV_23797,
      SET => GND,
      RST => reg_IF_inport_11_SRINV_23798,
      O => reg_IF_inport_11_7547
    );
  reg_IF_inport_12 : X_FF
    generic map(
      LOC => "SLICE_X91Y58",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_13_DYMUX_23824,
      CE => VCC,
      CLK => reg_IF_inport_13_CLKINV_23821,
      SET => GND,
      RST => reg_IF_inport_13_SRINV_23822,
      O => reg_IF_inport_12_7551
    );
  reg_IF_inport_13 : X_FF
    generic map(
      LOC => "SLICE_X91Y58",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_13_DXMUX_23832,
      CE => VCC,
      CLK => reg_IF_inport_13_CLKINV_23821,
      SET => GND,
      RST => reg_IF_inport_13_SRINV_23822,
      O => reg_IF_inport_13_7550
    );
  in2_10_SW2_G : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X45Y71"
    )
    port map (
      ADR0 => reg_EX_result_10_7164,
      ADR1 => VCC,
      ADR2 => reg_ID_data2_10_7314,
      ADR3 => wr_enable_0,
      O => N571
    );
  in2_11_SW2_G : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X45Y75"
    )
    port map (
      ADR0 => reg_EX_result_11_7163,
      ADR1 => VCC,
      ADR2 => reg_ID_data2_11_7318,
      ADR3 => wr_enable_0,
      O => N579
    );
  in2_0_G : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X50Y72"
    )
    port map (
      ADR0 => reg_EX_result_0_7174,
      ADR1 => VCC,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_0_7346,
      O => N563
    );
  in2_1_G : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X46Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_1_7173,
      ADR2 => reg_EX_overflow_1_7348,
      ADR3 => in2_and0002_0,
      O => N557
    );
  in2_2_G : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X44Y80"
    )
    port map (
      ADR0 => reg_EX_result_2_7172,
      ADR1 => VCC,
      ADR2 => in2_and0002_0,
      ADR3 => reg_EX_overflow_2_7350,
      O => N559
    );
  in2_3_G : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X42Y68"
    )
    port map (
      ADR0 => reg_EX_overflow_3_7352,
      ADR1 => reg_EX_result_3_7171,
      ADR2 => VCC,
      ADR3 => in2_and0002_0,
      O => N561
    );
  in2_4_SW2_G : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X41Y74"
    )
    port map (
      ADR0 => reg_ID_data2_4_7372,
      ADR1 => wr_enable_0,
      ADR2 => reg_EX_result_4_7170,
      ADR3 => VCC,
      O => N577
    );
  in2_5_SW2_G : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X43Y72"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_5_7169,
      ADR2 => reg_ID_data2_5_7375,
      ADR3 => wr_enable_0,
      O => N569
    );
  in2_6_SW2_G : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X45Y70"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_data2_6_7378,
      ADR2 => reg_EX_result_6_7168,
      ADR3 => wr_enable_0,
      O => N575
    );
  in2_7_SW2_G : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X42Y70"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_EX_result_7_7167,
      ADR2 => reg_ID_data2_7_7381,
      ADR3 => VCC,
      O => N567
    );
  in2_8_SW2_G : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X46Y76"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => VCC,
      ADR2 => reg_ID_data2_8_7384,
      ADR3 => reg_EX_result_8_7166,
      O => N573
    );
  in2_9_SW2_G : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X42Y72"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => VCC,
      ADR2 => reg_EX_result_9_7165,
      ADR3 => reg_ID_data2_9_7387,
      O => N565
    );
  reg_ID_data1_mux0007_0_61 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X76Y47"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => N22_0,
      ADR2 => N1011_0,
      ADR3 => reg_IF_inport_0_7413,
      O => reg_ID_data1_mux0007_0_61_18438
    );
  reg_ID_data1_mux0007_1_61 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X76Y49"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => reg_IF_inport_1_7416,
      ADR2 => N1011_0,
      ADR3 => N22_0,
      O => reg_ID_data1_mux0007_1_61_18463
    );
  reg_ID_data1_mux0007_2_61 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X76Y32"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => N22_0,
      ADR2 => N1011_0,
      ADR3 => reg_IF_inport_2_7419,
      O => reg_ID_data1_mux0007_2_61_18488
    );
  reg_ID_data1_mux0007_3_61 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X77Y34"
    )
    port map (
      ADR0 => N1011_0,
      ADR1 => N2_0,
      ADR2 => reg_IF_inport_3_7422,
      ADR3 => N22_0,
      O => reg_ID_data1_mux0007_3_61_18513
    );
  reg_ID_data1_mux0007_4_61 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X88Y36"
    )
    port map (
      ADR0 => reg_IF_inport_4_7425,
      ADR1 => N1011_0,
      ADR2 => N2_0,
      ADR3 => N22_0,
      O => reg_ID_data1_mux0007_4_61_18538
    );
  reg_ID_data1_mux0007_5_61 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X88Y37"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => N1011_0,
      ADR2 => reg_IF_inport_5_7428,
      ADR3 => N22_0,
      O => reg_ID_data1_mux0007_5_61_18563
    );
  reg_ID_data1_mux0007_6_61 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X78Y45"
    )
    port map (
      ADR0 => N1011_0,
      ADR1 => N22_0,
      ADR2 => N2_0,
      ADR3 => reg_IF_inport_6_7431,
      O => reg_ID_data1_mux0007_6_61_18588
    );
  in1_or0003 : X_LUT4
    generic map(
      INIT => X"0102",
      LOC => "SLICE_X49Y80"
    )
    port map (
      ADR0 => reg_EX_instr_9_7433,
      ADR1 => reg_EX_instr_11_7435,
      ADR2 => in1_or0003_SW0_O,
      ADR3 => reg_EX_instr_13_7434,
      O => in1_or0003_18613
    );
  in1_and0008 : X_LUT4
    generic map(
      INIT => X"0056",
      LOC => "SLICE_X47Y79"
    )
    port map (
      ADR0 => reg_ID_instr_11_7404,
      ADR1 => reg_ID_instr_9_7340,
      ADR2 => reg_ID_instr_10_7407,
      ADR3 => N192,
      O => in1_and0008_18637
    );
  in1_or000829 : X_LUT4
    generic map(
      INIT => X"70E0",
      LOC => "SLICE_X44Y77"
    )
    port map (
      ADR0 => reg_ID_instr_9_7340,
      ADR1 => reg_ID_instr_15_7446,
      ADR2 => in1_or000821_O,
      ADR3 => reg_ID_instr_10_7407,
      O => in1_or000829_18661
    );
  in1_or000894 : X_LUT4
    generic map(
      INIT => X"C4C0",
      LOC => "SLICE_X47Y77"
    )
    port map (
      ADR0 => reg_ID_instr_11_7404,
      ADR1 => in1_or000892_0,
      ADR2 => in1_or000829_0,
      ADR3 => in1_or000861_O,
      O => in1_or0008
    );
  in2_and00025 : X_LUT4
    generic map(
      INIT => X"0040",
      LOC => "SLICE_X46Y79"
    )
    port map (
      ADR0 => N192,
      ADR1 => reg_ID_instr_1_7454,
      ADR2 => reg_ID_instr_2_7453,
      ADR3 => in1_and0008_SW2_O,
      O => in2_and00025_18709
    );
  in1_and000772 : X_LUT4
    generic map(
      INIT => X"A050",
      LOC => "SLICE_X46Y81"
    )
    port map (
      ADR0 => reg_ID_instr_6_7473,
      ADR1 => VCC,
      ADR2 => in1_and000771_O,
      ADR3 => reg_EX_instr_6_7406,
      O => in1_and000772_18901
    );
  wr_index_0_1 : X_LUT4
    generic map(
      INIT => X"FFAA",
      LOC => "SLICE_X66Y88"
    )
    port map (
      ADR0 => reg_EX_instr_6_7406,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => branch_trigger_cmp_eq0001,
      O => wr_index(0)
    );
  in2_and000221 : X_LUT4
    generic map(
      INIT => X"F080",
      LOC => "SLICE_X45Y76"
    )
    port map (
      ADR0 => in2_and00028_0,
      ADR1 => in1_or0009,
      ADR2 => in1_or0003_0,
      ADR3 => in2_and00025_0,
      O => in2_and0002
    );
  in1_and0007101 : X_LUT4
    generic map(
      INIT => X"FFA8",
      LOC => "SLICE_X46Y72"
    )
    port map (
      ADR0 => in1_and000772_0,
      ADR1 => in1_or0008_0,
      ADR2 => in1_or0009,
      ADR3 => in1_and000728_O,
      O => in1_and0007101_18973
    );
  in1_cmp_eq00131 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X43Y78"
    )
    port map (
      ADR0 => reg_ID_instr_15_7446,
      ADR1 => reg_ID_instr_13_7445,
      ADR2 => in1_cmp_eq00131_SW0_O,
      ADR3 => reg_ID_instr_14_7444,
      O => in1_cmp_eq0013
    );
  in1_cmp_eq00143 : X_LUT4
    generic map(
      INIT => X"0A05",
      LOC => "SLICE_X47Y80"
    )
    port map (
      ADR0 => reg_ID_instr_5_7489,
      ADR1 => VCC,
      ADR2 => in1_cmp_eq00143_SW0_O,
      ADR3 => reg_EX_instr_8_7476,
      O => in1_cmp_eq0014
    );
  reg_EX_overflow_mux0001_0_Q : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X62Y66"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => overflow(0),
      ADR3 => reg_EX_overflow_mux0001_0_SW2_O,
      O => reg_EX_overflow_mux0001(0)
    );
  in1_10_Q : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X43Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_and0003_0,
      ADR2 => reg_EX_overflow_10_7323,
      ADR3 => N360,
      O => in1(10)
    );
  in1_11_Q : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X46Y74"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => reg_EX_overflow_11_7326,
      ADR2 => VCC,
      ADR3 => N358,
      O => in1(11)
    );
  in1_12_Q : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X66Y64"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => VCC,
      ADR2 => in1_12_SW2_O,
      ADR3 => reg_EX_overflow_12_7329,
      O => in1(12)
    );
  in1_13_Q : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X67Y65"
    )
    port map (
      ADR0 => reg_EX_overflow_13_7332,
      ADR1 => in1_and0003_0,
      ADR2 => VCC,
      ADR3 => in1_13_SW2_O,
      O => in1(13)
    );
  in1_14_Q : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X66Y65"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => VCC,
      ADR2 => in1_14_SW2_O,
      ADR3 => reg_EX_overflow_14_7335,
      O => in1(14)
    );
  in1_15_Q : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X76Y64"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => reg_EX_overflow_15_7338,
      ADR2 => VCC,
      ADR3 => in1_15_SW2_O,
      O => in1(15)
    );
  in1_and000324 : X_LUT4
    generic map(
      INIT => X"C8C0",
      LOC => "SLICE_X45Y78"
    )
    port map (
      ADR0 => in1_or0008_0,
      ADR1 => in1_or0003_0,
      ADR2 => in1_and000318_SW0_O,
      ADR3 => in1_and000312_0,
      O => in1_and0003
    );
  reg_EX_instr_6 : X_FF
    generic map(
      LOC => "SLICE_X45Y80",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_7_DYMUX_20460,
      CE => VCC,
      CLK => reg_EX_instr_7_CLKINV_20449,
      SET => GND,
      RST => reg_EX_instr_7_SRINV_20450,
      O => reg_EX_instr_6_7406
    );
  reg_EX_instr_mux0001_8_1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X45Y80"
    )
    port map (
      ADR0 => reg_ID_instr_7_7477,
      ADR1 => branch_trigger,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_EX_instr_mux0001(8)
    );
  reg_EX_instr_7 : X_FF
    generic map(
      LOC => "SLICE_X45Y80",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_7_DXMUX_20476,
      CE => VCC,
      CLK => reg_EX_instr_7_CLKINV_20449,
      SET => GND,
      RST => reg_EX_instr_7_SRINV_20450,
      O => reg_EX_instr_7_7475
    );
  reg_EX_instr_8 : X_FF
    generic map(
      LOC => "SLICE_X48Y80",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_9_DYMUX_20502,
      CE => VCC,
      CLK => reg_EX_instr_9_CLKINV_20491,
      SET => GND,
      RST => reg_EX_instr_9_SRINV_20492,
      O => reg_EX_instr_8_7476
    );
  reg_EX_instr_mux0001_6_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X48Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_9_7340,
      ADR2 => branch_trigger,
      ADR3 => VCC,
      O => reg_EX_instr_mux0001(6)
    );
  reg_EX_instr_9 : X_FF
    generic map(
      LOC => "SLICE_X48Y80",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_9_DXMUX_20518,
      CE => VCC,
      CLK => reg_EX_instr_9_CLKINV_20491,
      SET => GND,
      RST => reg_EX_instr_9_SRINV_20492,
      O => reg_EX_instr_9_7433
    );
  reg_EX_instr_10 : X_FF
    generic map(
      LOC => "SLICE_X49Y79",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_11_DYMUX_20544,
      CE => VCC,
      CLK => reg_EX_instr_11_CLKINV_20533,
      SET => GND,
      RST => reg_EX_instr_11_SRINV_20534,
      O => reg_EX_instr_10_7440
    );
  reg_EX_instr_mux0001_4_1 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X49Y79"
    )
    port map (
      ADR0 => reg_ID_instr_11_7404,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => branch_trigger,
      O => reg_EX_instr_mux0001(4)
    );
  reg_EX_instr_11 : X_FF
    generic map(
      LOC => "SLICE_X49Y79",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_11_DXMUX_20560,
      CE => VCC,
      CLK => reg_EX_instr_11_CLKINV_20533,
      SET => GND,
      RST => reg_EX_instr_11_SRINV_20534,
      O => reg_EX_instr_11_7435
    );
  in1_6_Q : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X44Y70"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_6_7361,
      ADR2 => in1_and0003_0,
      ADR3 => N340,
      O => in1(6)
    );
  in1_7_Q : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X47Y73"
    )
    port map (
      ADR0 => N338,
      ADR1 => reg_EX_overflow_7_7364,
      ADR2 => in1_and0003_0,
      ADR3 => VCC,
      O => in1(7)
    );
  in1_8_Q : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X47Y75"
    )
    port map (
      ADR0 => reg_EX_overflow_8_7367,
      ADR1 => N356,
      ADR2 => in1_and0003_0,
      ADR3 => VCC,
      O => in1(8)
    );
  in1_9_Q : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X47Y70"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => VCC,
      ADR2 => N354,
      ADR3 => reg_EX_overflow_9_7370,
      O => in1(9)
    );
  wr_enable_or000185 : X_LUT4
    generic map(
      INIT => X"C4C0",
      LOC => "SLICE_X49Y78"
    )
    port map (
      ADR0 => reg_EX_instr_14_7439,
      ADR1 => wr_enable_or000181,
      ADR2 => wr_enable_or000160_O,
      ADR3 => wr_enable_or000134_0,
      O => wr_enable
    );
  reg_EX_overflow_mux0001_10_Q : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X71Y50"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_mux0001_10_SW2_O,
      ADR3 => overflow(10),
      O => reg_EX_overflow_mux0001(10)
    );
  reg_EX_overflow_10 : X_FF
    generic map(
      LOC => "SLICE_X71Y50",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_10_DXMUX_19738,
      CE => VCC,
      CLK => reg_EX_overflow_10_CLKINV_19720,
      SET => GND,
      RST => reg_EX_overflow_10_FFX_RSTAND_19743,
      O => reg_EX_overflow_10_7323
    );
  reg_EX_overflow_10_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X71Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_overflow_10_FFX_RSTAND_19743
    );
  reg_EX_overflow_0 : X_FF
    generic map(
      LOC => "SLICE_X62Y66",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_0_DXMUX_19052,
      CE => VCC,
      CLK => reg_EX_overflow_0_CLKINV_19034,
      SET => GND,
      RST => reg_EX_overflow_0_FFX_RSTAND_19057,
      O => reg_EX_overflow_0_7346
    );
  reg_EX_overflow_0_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X62Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_overflow_0_FFX_RSTAND_19057
    );
  reg_EX_overflow_mux0001_1_Q : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X72Y48"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => VCC,
      ADR2 => overflow(1),
      ADR3 => reg_EX_overflow_mux0001_1_SW2_O,
      O => reg_EX_overflow_mux0001(1)
    );
  reg_EX_overflow_1 : X_FF
    generic map(
      LOC => "SLICE_X72Y48",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_1_DXMUX_19087,
      CE => VCC,
      CLK => reg_EX_overflow_1_CLKINV_19069,
      SET => GND,
      RST => reg_EX_overflow_1_FFX_RSTAND_19092,
      O => reg_EX_overflow_1_7348
    );
  reg_EX_overflow_1_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X72Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_overflow_1_FFX_RSTAND_19092
    );
  reg_EX_overflow_mux0001_2_Q : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X70Y51"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_mux0001_2_SW2_O,
      ADR3 => overflow(2),
      O => reg_EX_overflow_mux0001(2)
    );
  reg_EX_overflow_2 : X_FF
    generic map(
      LOC => "SLICE_X70Y51",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_2_DXMUX_19122,
      CE => VCC,
      CLK => reg_EX_overflow_2_CLKINV_19104,
      SET => GND,
      RST => reg_EX_overflow_2_FFX_RSTAND_19127,
      O => reg_EX_overflow_2_7350
    );
  reg_EX_overflow_2_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X70Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_overflow_2_FFX_RSTAND_19127
    );
  reg_EX_overflow_mux0001_3_Q : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X62Y62"
    )
    port map (
      ADR0 => overflow(3),
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => VCC,
      ADR3 => reg_EX_overflow_mux0001_3_SW2_O,
      O => reg_EX_overflow_mux0001(3)
    );
  reg_EX_overflow_3 : X_FF
    generic map(
      LOC => "SLICE_X62Y62",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_3_DXMUX_19157,
      CE => VCC,
      CLK => reg_EX_overflow_3_CLKINV_19139,
      SET => GND,
      RST => reg_EX_overflow_3_FFX_RSTAND_19162,
      O => reg_EX_overflow_3_7352
    );
  reg_EX_overflow_3_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X62Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_overflow_3_FFX_RSTAND_19162
    );
  reg_EX_overflow_mux0001_11_Q : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X71Y51"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => overflow(11),
      ADR2 => VCC,
      ADR3 => reg_EX_overflow_mux0001_11_SW2_O,
      O => reg_EX_overflow_mux0001(11)
    );
  reg_EX_overflow_11 : X_FF
    generic map(
      LOC => "SLICE_X71Y51",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_11_DXMUX_19773,
      CE => VCC,
      CLK => reg_EX_overflow_11_CLKINV_19755,
      SET => GND,
      RST => reg_EX_overflow_11_FFX_RSTAND_19778,
      O => reg_EX_overflow_11_7326
    );
  reg_EX_overflow_11_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X71Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_overflow_11_FFX_RSTAND_19778
    );
  reg_EX_overflow_mux0001_12_Q : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X73Y51"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => overflow(12),
      ADR2 => VCC,
      ADR3 => reg_EX_overflow_mux0001_12_SW0_O,
      O => reg_EX_overflow_mux0001(12)
    );
  reg_EX_overflow_12 : X_FF
    generic map(
      LOC => "SLICE_X73Y51",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_12_DXMUX_19808,
      CE => VCC,
      CLK => reg_EX_overflow_12_CLKINV_19790,
      SET => GND,
      RST => reg_EX_overflow_12_FFX_RSTAND_19813,
      O => reg_EX_overflow_12_7329
    );
  reg_EX_overflow_12_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X73Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_overflow_12_FFX_RSTAND_19813
    );
  reg_EX_overflow_mux0001_13_Q : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X66Y63"
    )
    port map (
      ADR0 => overflow(13),
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => reg_EX_overflow_mux0001_13_SW0_O,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001(13)
    );
  reg_EX_overflow_13 : X_FF
    generic map(
      LOC => "SLICE_X66Y63",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_13_DXMUX_19843,
      CE => VCC,
      CLK => reg_EX_overflow_13_CLKINV_19825,
      SET => GND,
      RST => reg_EX_overflow_13_FFX_RSTAND_19848,
      O => reg_EX_overflow_13_7332
    );
  reg_EX_overflow_13_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X66Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_overflow_13_FFX_RSTAND_19848
    );
  reg_EX_overflow_mux0001_14_Q : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X66Y58"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => overflow(14),
      ADR3 => reg_EX_overflow_mux0001_14_SW0_O,
      O => reg_EX_overflow_mux0001(14)
    );
  wr_overflow_or000044 : X_LUT4
    generic map(
      INIT => X"FAF8",
      LOC => "SLICE_X59Y84"
    )
    port map (
      ADR0 => wr_overflow_or000031_0,
      ADR1 => wr_overflow_or000017_0,
      ADR2 => branch_trigger_cmp_eq0001,
      ADR3 => wr_overflow_or000034_SW0_O,
      O => wr_overflow
    );
  in1_0_Q : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X48Y72"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_and0003_0,
      ADR2 => reg_EX_overflow_0_7346,
      ADR3 => N352,
      O => in1(0)
    );
  in1_1_Q : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X46Y70"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_1_7348,
      ADR3 => N350,
      O => in1(1)
    );
  in1_2_Q : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X47Y71"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => reg_EX_overflow_2_7350,
      ADR2 => VCC,
      ADR3 => N348,
      O => in1(2)
    );
  in1_3_Q : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X45Y72"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_3_7352,
      ADR2 => N346,
      ADR3 => in1_and0003_0,
      O => in1(3)
    );
  in1_4_Q : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X42Y74"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_4_7355,
      ADR3 => N344,
      O => in1(4)
    );
  in1_5_Q : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X43Y75"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_5_7358,
      ADR2 => in1_and0003_0,
      ADR3 => N342,
      O => in1(5)
    );
  reg_EX_overflow_mux0001_4_Q : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X73Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => reg_EX_overflow_mux0001_4_SW2_O,
      ADR3 => overflow(4),
      O => reg_EX_overflow_mux0001(4)
    );
  reg_EX_overflow_4 : X_FF
    generic map(
      LOC => "SLICE_X73Y50",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_4_DXMUX_19192,
      CE => VCC,
      CLK => reg_EX_overflow_4_CLKINV_19174,
      SET => GND,
      RST => reg_EX_overflow_4_FFX_RSTAND_19197,
      O => reg_EX_overflow_4_7355
    );
  reg_EX_overflow_4_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X73Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_overflow_4_FFX_RSTAND_19197
    );
  reg_EX_overflow_mux0001_5_Q : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X72Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => overflow(5),
      ADR2 => in1_cmp_eq0013_0,
      ADR3 => reg_EX_overflow_mux0001_5_SW2_O,
      O => reg_EX_overflow_mux0001(5)
    );
  reg_EX_overflow_5 : X_FF
    generic map(
      LOC => "SLICE_X72Y50",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_5_DXMUX_19227,
      CE => VCC,
      CLK => reg_EX_overflow_5_CLKINV_19209,
      SET => GND,
      RST => reg_EX_overflow_5_FFX_RSTAND_19232,
      O => reg_EX_overflow_5_7358
    );
  reg_EX_overflow_5_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X72Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_overflow_5_FFX_RSTAND_19232
    );
  reg_EX_overflow_mux0001_6_Q : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X76Y56"
    )
    port map (
      ADR0 => overflow(6),
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => VCC,
      ADR3 => reg_EX_overflow_mux0001_6_SW2_O,
      O => reg_EX_overflow_mux0001(6)
    );
  reg_EX_overflow_6 : X_FF
    generic map(
      LOC => "SLICE_X76Y56",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_6_DXMUX_19262,
      CE => VCC,
      CLK => reg_EX_overflow_6_CLKINV_19244,
      SET => GND,
      RST => reg_EX_overflow_6_FFX_RSTAND_19267,
      O => reg_EX_overflow_6_7361
    );
  reg_EX_overflow_6_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X76Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_overflow_6_FFX_RSTAND_19267
    );
  reg_EX_overflow_mux0001_7_Q : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X63Y66"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_mux0001_7_SW2_O,
      ADR3 => overflow(7),
      O => reg_EX_overflow_mux0001(7)
    );
  reg_EX_overflow_7 : X_FF
    generic map(
      LOC => "SLICE_X63Y66",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_7_DXMUX_19297,
      CE => VCC,
      CLK => reg_EX_overflow_7_CLKINV_19279,
      SET => GND,
      RST => reg_EX_overflow_7_FFX_RSTAND_19302,
      O => reg_EX_overflow_7_7364
    );
  reg_EX_overflow_7_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X63Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_overflow_7_FFX_RSTAND_19302
    );
  reg_EX_overflow_mux0001_8_Q : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X63Y69"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => VCC,
      ADR2 => overflow(8),
      ADR3 => reg_EX_overflow_mux0001_8_SW2_O,
      O => reg_EX_overflow_mux0001(8)
    );
  reg_EX_overflow_8 : X_FF
    generic map(
      LOC => "SLICE_X63Y69",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_8_DXMUX_19332,
      CE => VCC,
      CLK => reg_EX_overflow_8_CLKINV_19314,
      SET => GND,
      RST => reg_EX_overflow_8_FFX_RSTAND_19337,
      O => reg_EX_overflow_8_7367
    );
  reg_EX_overflow_8_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X63Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_overflow_8_FFX_RSTAND_19337
    );
  reg_EX_overflow_mux0001_9_Q : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X70Y50"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => overflow(9),
      ADR2 => VCC,
      ADR3 => reg_EX_overflow_mux0001_9_SW2_O,
      O => reg_EX_overflow_mux0001(9)
    );
  reg_EX_overflow_9 : X_FF
    generic map(
      LOC => "SLICE_X70Y50",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_9_DXMUX_19367,
      CE => VCC,
      CLK => reg_EX_overflow_9_CLKINV_19349,
      SET => GND,
      RST => reg_EX_overflow_9_FFX_RSTAND_19372,
      O => reg_EX_overflow_9_7370
    );
  reg_EX_overflow_9_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X70Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_overflow_9_FFX_RSTAND_19372
    );
  ram_addr_and00001 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X47Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => N13,
      ADR3 => reg_ID_instr_10_7407,
      O => ram_addr_and0000
    );
  wr_overflow_or000017 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X48Y79"
    )
    port map (
      ADR0 => reg_EX_instr_13_7434,
      ADR1 => reg_EX_instr_9_7433,
      ADR2 => wr_enable_or000181,
      ADR3 => reg_EX_instr_14_7439,
      O => wr_overflow_or000017_19419
    );
  in2_and000578_SW141 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X44Y73"
    )
    port map (
      ADR0 => reg_ID_data2_6_7378,
      ADR1 => VCC,
      ADR2 => N515,
      ADR3 => in1_cmp_eq0014_0,
      O => N411
    );
  in2_and000578_SW161 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X43Y69"
    )
    port map (
      ADR0 => reg_ID_data2_5_7375,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => VCC,
      ADR3 => N517,
      O => N414
    );
  in2_and000578_SW181 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X41Y72"
    )
    port map (
      ADR0 => reg_ID_data2_4_7372,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => N519,
      ADR3 => VCC,
      O => N417
    );
  in2_and000578_SW01 : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X49Y73"
    )
    port map (
      ADR0 => reg_ID_data2_15_7527,
      ADR1 => VCC,
      ADR2 => in1_cmp_eq0014_0,
      ADR3 => in2_and000578_SW0_G_O,
      O => N390
    );
  in2_and000578_SW24 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X45Y66"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => in2_and000578_SW2_G_O,
      ADR3 => reg_ID_data2_14_7529,
      O => N393
    );
  in2_and000578_SW41 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X45Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => reg_ID_data2_13_7531,
      ADR3 => in2_and000578_SW4_G_O,
      O => N396
    );
  in2_and000578_SW61 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X48Y69"
    )
    port map (
      ADR0 => reg_ID_data2_12_7533,
      ADR1 => VCC,
      ADR2 => in2_and000578_SW6_G_O,
      ADR3 => in1_cmp_eq0014_0,
      O => N399
    );
  reg_EX_overflow_14 : X_FF
    generic map(
      LOC => "SLICE_X66Y58",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_14_DXMUX_19878,
      CE => VCC,
      CLK => reg_EX_overflow_14_CLKINV_19860,
      SET => GND,
      RST => reg_EX_overflow_14_FFX_RSTAND_19883,
      O => reg_EX_overflow_14_7335
    );
  reg_EX_overflow_14_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X66Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_overflow_14_FFX_RSTAND_19883
    );
  reg_EX_overflow_mux0001_15_Q : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X67Y64"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => overflow(15),
      ADR2 => reg_EX_overflow_mux0001_15_SW0_O,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001(15)
    );
  reg_EX_overflow_15 : X_FF
    generic map(
      LOC => "SLICE_X67Y64",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_15_DXMUX_19913,
      CE => VCC,
      CLK => reg_EX_overflow_15_CLKINV_19895,
      SET => GND,
      RST => reg_EX_overflow_15_FFX_RSTAND_19918,
      O => reg_EX_overflow_15_7338
    );
  reg_EX_overflow_15_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X67Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_overflow_15_FFX_RSTAND_19918
    );
  in2_and000578_SW101 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X46Y77"
    )
    port map (
      ADR0 => reg_ID_data2_8_7384,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => N511,
      ADR3 => VCC,
      O => N405
    );
  in2_and000578_SW201 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X45Y73"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => reg_ID_data2_11_7318,
      ADR2 => VCC,
      ADR3 => N521,
      O => N420
    );
  in2_and000578_SW121 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X42Y71"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => VCC,
      ADR2 => N513,
      ADR3 => reg_ID_data2_7_7381,
      O => N408
    );
  in2_and000578_SW221 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X48Y70"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_data2_10_7314,
      ADR2 => in1_cmp_eq0014_0,
      ADR3 => N523,
      O => N423
    );
  in2_and000578_SW81 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X43Y76"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => VCC,
      ADR2 => N509,
      ADR3 => reg_ID_data2_9_7387,
      O => N402
    );
  alu_mode_0_37 : X_LUT4
    generic map(
      INIT => X"EEEA",
      LOC => "SLICE_X45Y65"
    )
    port map (
      ADR0 => N15_0,
      ADR1 => N102,
      ADR2 => alu_mode_0_15_0,
      ADR3 => alu_mode_0_4_O,
      O => alu_mode(0)
    );
  alu_mode_0_1 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X44Y69"
    )
    port map (
      ADR0 => alu_mode_0_1_SW0_O,
      ADR1 => reg_ID_instr_14_7444,
      ADR2 => reg_ID_instr_15_7446,
      ADR3 => reg_ID_instr_12_7443,
      O => N15
    );
  alu_mode_2_1 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X46Y83"
    )
    port map (
      ADR0 => N102,
      ADR1 => reg_ID_instr_11_7404,
      ADR2 => reg_ID_instr_13_7445,
      ADR3 => reg_ID_instr_15_7446,
      O => alu_mode(2)
    );
  PC_0 : X_FF
    generic map(
      LOC => "SLICE_X75Y35",
      INIT => '0'
    )
    port map (
      I => PC_1_DYMUX_20301,
      CE => VCC,
      CLK => PC_1_CLKINVNOT,
      SET => GND,
      RST => PC_1_SRINV_20292,
      O => PC(0)
    );
  PC_next_1_1 : X_LUT4
    generic map(
      INIT => X"C5CA",
      LOC => "SLICE_X75Y35"
    )
    port map (
      ADR0 => PC(0),
      ADR1 => reg_EX_result_1_7173,
      ADR2 => branch_trigger,
      ADR3 => PC(1),
      O => PC_next(1)
    );
  PC_1 : X_FF
    generic map(
      LOC => "SLICE_X75Y35",
      INIT => '0'
    )
    port map (
      I => PC_1_DXMUX_20315,
      CE => VCC,
      CLK => PC_1_CLKINVNOT,
      SET => GND,
      RST => PC_1_SRINV_20292,
      O => PC(1)
    );
  reg_ID_data1_14 : X_FF
    generic map(
      LOC => "SLICE_X90Y65",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_15_DYMUX_20966,
      CE => VCC,
      CLK => reg_ID_data1_15_CLKINV_20957,
      SET => GND,
      RST => reg_ID_data1_15_SRINV_20958,
      O => reg_ID_data1_14_7465
    );
  reg_ID_data1_mux0007_15_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X90Y65"
    )
    port map (
      ADR0 => rd_data1(15),
      ADR1 => N22_0,
      ADR2 => N02,
      ADR3 => reg_IF_inport_15_7552,
      O => reg_ID_data1_mux0007(15)
    );
  reg_ID_data1_15 : X_FF
    generic map(
      LOC => "SLICE_X90Y65",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_15_DXMUX_20980,
      CE => VCC,
      CLK => reg_ID_data1_15_CLKINV_20957,
      SET => GND,
      RST => reg_ID_data1_15_SRINV_20958,
      O => reg_ID_data1_15_7467
    );
  reg_ID_data2_10 : X_FF
    generic map(
      LOC => "SLICE_X58Y77",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_11_DYMUX_21008,
      CE => VCC,
      CLK => reg_ID_data2_11_CLKINV_20999,
      SET => GND,
      RST => reg_ID_data2_11_SRINV_21000,
      O => reg_ID_data2_10_7314
    );
  reg_ID_data2_mux0007_4_1 : X_LUT4
    generic map(
      INIT => X"E0A0",
      LOC => "SLICE_X58Y77"
    )
    port map (
      ADR0 => N18_0,
      ADR1 => N95,
      ADR2 => N2_0,
      ADR3 => rd_data2(11),
      O => reg_ID_data2_mux0007(4)
    );
  reg_ID_data2_11 : X_FF
    generic map(
      LOC => "SLICE_X58Y77",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_11_DXMUX_21022,
      CE => VCC,
      CLK => reg_ID_data2_11_CLKINV_20999,
      SET => GND,
      RST => reg_ID_data2_11_SRINV_21000,
      O => reg_ID_data2_11_7318
    );
  reg_ID_data2_12 : X_FF
    generic map(
      LOC => "SLICE_X61Y76",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_13_DYMUX_21050,
      CE => VCC,
      CLK => reg_ID_data2_13_CLKINV_21041,
      SET => GND,
      RST => reg_ID_data2_13_SRINV_21042,
      O => reg_ID_data2_12_7533
    );
  reg_ID_data2_mux0007_2_1 : X_LUT4
    generic map(
      INIT => X"E0C0",
      LOC => "SLICE_X61Y76"
    )
    port map (
      ADR0 => rd_data2(13),
      ADR1 => N18_0,
      ADR2 => N2_0,
      ADR3 => N95,
      O => reg_ID_data2_mux0007(2)
    );
  outport_13_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X79Y8"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outport_cmp_eq0000_7544,
      ADR2 => VCC,
      ADR3 => reg_EX_result_13_7161,
      O => outport_13_OBUF_22306
    );
  outport_14_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X90Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_14_7160,
      ADR2 => outport_cmp_eq0000_7544,
      ADR3 => VCC,
      O => outport_14_OBUF_22330
    );
  outport_6_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X80Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outport_cmp_eq0000_7544,
      ADR2 => VCC,
      ADR3 => reg_EX_result_6_7168,
      O => outport_6_OBUF_22354
    );
  outport_8_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X90Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outport_cmp_eq0000_7544,
      ADR2 => reg_EX_result_8_7166,
      ADR3 => VCC,
      O => outport_8_OBUF_22378
    );
  in1_or00091_SW0 : X_LUT4
    generic map(
      INIT => X"FFAE",
      LOC => "SLICE_X44Y76"
    )
    port map (
      ADR0 => reg_ID_instr_12_7443,
      ADR1 => reg_ID_instr_10_7407,
      ADR2 => reg_ID_instr_9_7340,
      ADR3 => reg_ID_instr_11_7404,
      O => N426
    );
  PC_next_3_SW0 : X_LUT4
    generic map(
      INIT => X"77FF",
      LOC => "SLICE_X76Y34"
    )
    port map (
      ADR0 => PC(1),
      ADR1 => PC(2),
      ADR2 => VCC,
      ADR3 => PC(0),
      O => N137
    );
  reg_EX_instr_12 : X_FF
    generic map(
      LOC => "SLICE_X51Y80",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_13_DYMUX_20586,
      CE => VCC,
      CLK => reg_EX_instr_13_CLKINV_20575,
      SET => GND,
      RST => reg_EX_instr_13_SRINV_20576,
      O => reg_EX_instr_12_7437
    );
  reg_EX_instr_mux0001_2_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X51Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_13_7445,
      ADR2 => VCC,
      ADR3 => branch_trigger,
      O => reg_EX_instr_mux0001(2)
    );
  reg_EX_instr_13 : X_FF
    generic map(
      LOC => "SLICE_X51Y80",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_13_DXMUX_20602,
      CE => VCC,
      CLK => reg_EX_instr_13_CLKINV_20575,
      SET => GND,
      RST => reg_EX_instr_13_SRINV_20576,
      O => reg_EX_instr_13_7434
    );
  reg_EX_instr_14 : X_FF
    generic map(
      LOC => "SLICE_X49Y81",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_15_DYMUX_20628,
      CE => VCC,
      CLK => reg_EX_instr_15_CLKINV_20617,
      SET => GND,
      RST => reg_EX_instr_15_SRINV_20618,
      O => reg_EX_instr_14_7439
    );
  reg_EX_instr_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X49Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_15_7446,
      ADR3 => branch_trigger,
      O => reg_EX_instr_mux0001(0)
    );
  reg_EX_instr_15 : X_FF
    generic map(
      LOC => "SLICE_X49Y81",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_15_DXMUX_20644,
      CE => VCC,
      CLK => reg_EX_instr_15_CLKINV_20617,
      SET => GND,
      RST => reg_EX_instr_15_SRINV_20618,
      O => reg_EX_instr_15_7438
    );
  reg_EX_result_0 : X_FF
    generic map(
      LOC => "SLICE_X49Y55",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_1_DYMUX_20671,
      CE => VCC,
      CLK => reg_EX_result_1_CLKINV_20661,
      SET => GND,
      RST => reg_EX_result_1_SRINV_20662,
      O => reg_EX_result_0_7174
    );
  result_1_1 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X49Y55"
    )
    port map (
      ADR0 => in1_cmp_eq0008,
      ADR1 => VCC,
      ADR2 => ram_data(1),
      ADR3 => alu_result(1),
      O => result(1)
    );
  reg_EX_result_1 : X_FF
    generic map(
      LOC => "SLICE_X49Y55",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_1_DXMUX_20686,
      CE => VCC,
      CLK => reg_EX_result_1_CLKINV_20661,
      SET => GND,
      RST => reg_EX_result_1_SRINV_20662,
      O => reg_EX_result_1_7173
    );
  PC_2 : X_FF
    generic map(
      LOC => "SLICE_X76Y35",
      INIT => '0'
    )
    port map (
      I => PC_3_DYMUX_20343,
      CE => VCC,
      CLK => PC_3_CLKINVNOT,
      SET => GND,
      RST => PC_3_SRINV_20335,
      O => PC(2)
    );
  PC_next_3_Q : X_LUT4
    generic map(
      INIT => X"E4B1",
      LOC => "SLICE_X76Y35"
    )
    port map (
      ADR0 => branch_trigger,
      ADR1 => N137_0,
      ADR2 => reg_EX_result_3_7171,
      ADR3 => PC(3),
      O => PC_next(3)
    );
  PC_3 : X_FF
    generic map(
      LOC => "SLICE_X76Y35",
      INIT => '0'
    )
    port map (
      I => PC_3_DXMUX_20357,
      CE => VCC,
      CLK => PC_3_CLKINVNOT,
      SET => GND,
      RST => PC_3_SRINV_20335,
      O => PC(3)
    );
  PC_4 : X_FF
    generic map(
      LOC => "SLICE_X79Y37",
      INIT => '0'
    )
    port map (
      I => PC_5_DYMUX_20385,
      CE => VCC,
      CLK => PC_5_CLKINVNOT,
      SET => GND,
      RST => PC_5_SRINV_20377,
      O => PC(4)
    );
  PC_next_5_Q : X_LUT4
    generic map(
      INIT => X"CAC5",
      LOC => "SLICE_X79Y37"
    )
    port map (
      ADR0 => PC(5),
      ADR1 => reg_EX_result_5_7169,
      ADR2 => branch_trigger,
      ADR3 => N131_0,
      O => PC_next(5)
    );
  PC_5 : X_FF
    generic map(
      LOC => "SLICE_X79Y37",
      INIT => '0'
    )
    port map (
      I => PC_5_DXMUX_20399,
      CE => VCC,
      CLK => PC_5_CLKINVNOT,
      SET => GND,
      RST => PC_5_SRINV_20377,
      O => PC(5)
    );
  PC_6 : X_FF
    generic map(
      LOC => "SLICE_X79Y40",
      INIT => '0'
    )
    port map (
      I => PC_6_DYMUX_20425,
      CE => VCC,
      CLK => PC_6_CLKINVNOT,
      SET => GND,
      RST => PC_6_FFY_RSTAND_20430,
      O => PC(6)
    );
  PC_6_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X79Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => PC_6_FFY_RSTAND_20430
    );
  outport_15_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X79Y40"
    )
    port map (
      ADR0 => outport_cmp_eq0000_7544,
      ADR1 => VCC,
      ADR2 => reg_EX_result_15_7159,
      ADR3 => VCC,
      O => outport_15_OBUF_20438
    );
  reg_EX_result_2 : X_FF
    generic map(
      LOC => "SLICE_X49Y53",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_3_DYMUX_20713,
      CE => VCC,
      CLK => reg_EX_result_3_CLKINV_20703,
      SET => GND,
      RST => reg_EX_result_3_SRINV_20704,
      O => reg_EX_result_2_7172
    );
  result_3_1 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X49Y53"
    )
    port map (
      ADR0 => ram_data(3),
      ADR1 => alu_result(3),
      ADR2 => VCC,
      ADR3 => in1_cmp_eq0008,
      O => result(3)
    );
  reg_EX_result_3 : X_FF
    generic map(
      LOC => "SLICE_X49Y53",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_3_DXMUX_20728,
      CE => VCC,
      CLK => reg_EX_result_3_CLKINV_20703,
      SET => GND,
      RST => reg_EX_result_3_SRINV_20704,
      O => reg_EX_result_3_7171
    );
  reg_EX_result_4 : X_FF
    generic map(
      LOC => "SLICE_X49Y61",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_5_DYMUX_20755,
      CE => VCC,
      CLK => reg_EX_result_5_CLKINV_20745,
      SET => GND,
      RST => reg_EX_result_5_SRINV_20746,
      O => reg_EX_result_4_7170
    );
  result_5_1 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X49Y61"
    )
    port map (
      ADR0 => in1_cmp_eq0008,
      ADR1 => VCC,
      ADR2 => alu_result(5),
      ADR3 => ram_data(5),
      O => result(5)
    );
  reg_EX_result_5 : X_FF
    generic map(
      LOC => "SLICE_X49Y61",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_5_DXMUX_20770,
      CE => VCC,
      CLK => reg_EX_result_5_CLKINV_20745,
      SET => GND,
      RST => reg_EX_result_5_SRINV_20746,
      O => reg_EX_result_5_7169
    );
  reg_EX_result_6 : X_FF
    generic map(
      LOC => "SLICE_X41Y58",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_7_DYMUX_20797,
      CE => VCC,
      CLK => reg_EX_result_7_CLKINV_20787,
      SET => GND,
      RST => reg_EX_result_7_SRINV_20788,
      O => reg_EX_result_6_7168
    );
  result_7_1 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X41Y58"
    )
    port map (
      ADR0 => ram_data(7),
      ADR1 => alu_result(7),
      ADR2 => VCC,
      ADR3 => in1_cmp_eq0008,
      O => result(7)
    );
  reg_EX_result_7 : X_FF
    generic map(
      LOC => "SLICE_X41Y58",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_7_DXMUX_20812,
      CE => VCC,
      CLK => reg_EX_result_7_CLKINV_20787,
      SET => GND,
      RST => reg_EX_result_7_SRINV_20788,
      O => reg_EX_result_7_7167
    );
  reg_EX_result_8 : X_FF
    generic map(
      LOC => "SLICE_X54Y55",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_9_DYMUX_20839,
      CE => VCC,
      CLK => reg_EX_result_9_CLKINV_20829,
      SET => GND,
      RST => reg_EX_result_9_SRINV_20830,
      O => reg_EX_result_8_7166
    );
  result_9_1 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X54Y55"
    )
    port map (
      ADR0 => alu_result(9),
      ADR1 => ram_data(9),
      ADR2 => VCC,
      ADR3 => in1_cmp_eq0008,
      O => result(9)
    );
  reg_EX_result_9 : X_FF
    generic map(
      LOC => "SLICE_X54Y55",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_9_DXMUX_20854,
      CE => VCC,
      CLK => reg_EX_result_9_CLKINV_20829,
      SET => GND,
      RST => reg_EX_result_9_SRINV_20830,
      O => reg_EX_result_9_7165
    );
  reg_ID_data1_10 : X_FF
    generic map(
      LOC => "SLICE_X62Y75",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_11_DYMUX_20882,
      CE => VCC,
      CLK => reg_ID_data1_11_CLKINV_20873,
      SET => GND,
      RST => reg_ID_data1_11_SRINV_20874,
      O => reg_ID_data1_10_7457
    );
  reg_ID_data1_mux0007_11_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X62Y75"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => rd_data1(11),
      ADR2 => N02,
      ADR3 => reg_IF_inport_11_7547,
      O => reg_ID_data1_mux0007(11)
    );
  reg_ID_data1_11 : X_FF
    generic map(
      LOC => "SLICE_X62Y75",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_11_DXMUX_20896,
      CE => VCC,
      CLK => reg_ID_data1_11_CLKINV_20873,
      SET => GND,
      RST => reg_ID_data1_11_SRINV_20874,
      O => reg_ID_data1_11_7459
    );
  reg_ID_data1_12 : X_FF
    generic map(
      LOC => "SLICE_X91Y65",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_13_DYMUX_20924,
      CE => VCC,
      CLK => reg_ID_data1_13_CLKINV_20915,
      SET => GND,
      RST => reg_ID_data1_13_SRINV_20916,
      O => reg_ID_data1_12_7461
    );
  reg_ID_data1_mux0007_13_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X91Y65"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => N02,
      ADR2 => rd_data1(13),
      ADR3 => reg_IF_inport_13_7550,
      O => reg_ID_data1_mux0007(13)
    );
  reg_ID_data1_13 : X_FF
    generic map(
      LOC => "SLICE_X91Y65",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_13_DXMUX_20938,
      CE => VCC,
      CLK => reg_ID_data1_13_CLKINV_20915,
      SET => GND,
      RST => reg_ID_data1_13_SRINV_20916,
      O => reg_ID_data1_13_7463
    );
  reg_ID_data2_13 : X_FF
    generic map(
      LOC => "SLICE_X61Y76",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_13_DXMUX_21064,
      CE => VCC,
      CLK => reg_ID_data2_13_CLKINV_21041,
      SET => GND,
      RST => reg_ID_data2_13_SRINV_21042,
      O => reg_ID_data2_13_7531
    );
  reg_ID_data2_14 : X_FF
    generic map(
      LOC => "SLICE_X62Y76",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_15_DYMUX_21092,
      CE => VCC,
      CLK => reg_ID_data2_15_CLKINV_21083,
      SET => GND,
      RST => reg_ID_data2_15_SRINV_21084,
      O => reg_ID_data2_14_7529
    );
  reg_ID_data2_mux0007_0_1 : X_LUT4
    generic map(
      INIT => X"A8A0",
      LOC => "SLICE_X62Y76"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => rd_data2(15),
      ADR2 => N18_0,
      ADR3 => N95,
      O => reg_ID_data2_mux0007(0)
    );
  reg_ID_data2_15 : X_FF
    generic map(
      LOC => "SLICE_X62Y76",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_15_DXMUX_21106,
      CE => VCC,
      CLK => reg_ID_data2_15_CLKINV_21083,
      SET => GND,
      RST => reg_ID_data2_15_SRINV_21084,
      O => reg_ID_data2_15_7527
    );
  reg_ID_data1_0 : X_FF
    generic map(
      LOC => "SLICE_X62Y71",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_1_DYMUX_21133,
      CE => VCC,
      CLK => reg_ID_data1_1_CLKINV_21123,
      SET => GND,
      RST => reg_ID_data1_1_SRINV_21124,
      O => reg_ID_data1_0_7509
    );
  reg_ID_data1_mux0007_1_10 : X_LUT4
    generic map(
      INIT => X"F8F8",
      LOC => "SLICE_X62Y71"
    )
    port map (
      ADR0 => N02,
      ADR1 => rd_data1(1),
      ADR2 => reg_ID_data1_mux0007_1_6,
      ADR3 => VCC,
      O => reg_ID_data1_mux0007(1)
    );
  reg_ID_data1_1 : X_FF
    generic map(
      LOC => "SLICE_X62Y71",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_1_DXMUX_21148,
      CE => VCC,
      CLK => reg_ID_data1_1_CLKINV_21123,
      SET => GND,
      RST => reg_ID_data1_1_SRINV_21124,
      O => reg_ID_data1_1_7510
    );
  reg_ID_data1_2 : X_FF
    generic map(
      LOC => "SLICE_X74Y70",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_3_DYMUX_21175,
      CE => VCC,
      CLK => reg_ID_data1_3_CLKINV_21165,
      SET => GND,
      RST => reg_ID_data1_3_SRINV_21166,
      O => reg_ID_data1_2_7511
    );
  reg_ID_data1_mux0007_3_10 : X_LUT4
    generic map(
      INIT => X"FAAA",
      LOC => "SLICE_X74Y70"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_3_6,
      ADR1 => VCC,
      ADR2 => rd_data1(3),
      ADR3 => N02,
      O => reg_ID_data1_mux0007(3)
    );
  reg_ID_instr_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X47Y76"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_15_7568,
      ADR2 => branch_trigger,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(0)
    );
  reg_ID_instr_15 : X_FF
    generic map(
      LOC => "SLICE_X47Y76",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_15_DXMUX_21572,
      CE => VCC,
      CLK => reg_ID_instr_15_CLKINV_21545,
      SET => GND,
      RST => reg_ID_instr_15_SRINV_21546,
      O => reg_ID_instr_15_7446
    );
  reg_ID_instr_0 : X_FF
    generic map(
      LOC => "SLICE_X45Y81",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_1_DYMUX_21598,
      CE => VCC,
      CLK => reg_ID_instr_1_CLKINV_21587,
      SET => GND,
      RST => reg_ID_instr_1_SRINV_21588,
      O => reg_ID_instr_0_7405
    );
  reg_ID_instr_mux0001_14_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X45Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_1_7570,
      O => reg_ID_instr_mux0001(14)
    );
  reg_ID_instr_1 : X_FF
    generic map(
      LOC => "SLICE_X45Y81",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_1_DXMUX_21614,
      CE => VCC,
      CLK => reg_ID_instr_1_CLKINV_21587,
      SET => GND,
      RST => reg_ID_instr_1_SRINV_21588,
      O => reg_ID_instr_1_7454
    );
  reg_ID_instr_2 : X_FF
    generic map(
      LOC => "SLICE_X48Y81",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_3_DYMUX_21640,
      CE => VCC,
      CLK => reg_ID_instr_3_CLKINV_21629,
      SET => GND,
      RST => reg_ID_instr_3_SRINV_21630,
      O => reg_ID_instr_2_7453
    );
  reg_ID_instr_mux0001_12_1 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X48Y81"
    )
    port map (
      ADR0 => branch_trigger,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_3_7572,
      O => reg_ID_instr_mux0001(12)
    );
  reg_ID_instr_3 : X_FF
    generic map(
      LOC => "SLICE_X48Y81",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_3_DXMUX_21656,
      CE => VCC,
      CLK => reg_ID_instr_3_CLKINV_21629,
      SET => GND,
      RST => reg_ID_instr_3_SRINV_21630,
      O => reg_ID_instr_3_7491
    );
  reg_ID_instr_4 : X_FF
    generic map(
      LOC => "SLICE_X46Y80",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_5_DYMUX_21682,
      CE => VCC,
      CLK => reg_ID_instr_5_CLKINV_21671,
      SET => GND,
      RST => reg_ID_instr_5_SRINV_21672,
      O => reg_ID_instr_4_7492
    );
  reg_ID_instr_mux0001_10_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X46Y80"
    )
    port map (
      ADR0 => branch_trigger,
      ADR1 => VCC,
      ADR2 => reg_IF_instr_5_7574,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(10)
    );
  reg_ID_instr_5 : X_FF
    generic map(
      LOC => "SLICE_X46Y80",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_5_DXMUX_21698,
      CE => VCC,
      CLK => reg_ID_instr_5_CLKINV_21671,
      SET => GND,
      RST => reg_ID_instr_5_SRINV_21672,
      O => reg_ID_instr_5_7489
    );
  reg_ID_instr_6 : X_FF
    generic map(
      LOC => "SLICE_X51Y81",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_7_DYMUX_21724,
      CE => VCC,
      CLK => reg_ID_instr_7_CLKINV_21713,
      SET => GND,
      RST => reg_ID_instr_7_SRINV_21714,
      O => reg_ID_instr_6_7473
    );
  reg_ID_instr_mux0001_8_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X51Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_7_7576,
      O => reg_ID_instr_mux0001(8)
    );
  reg_ID_instr_7 : X_FF
    generic map(
      LOC => "SLICE_X51Y81",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_7_DXMUX_21740,
      CE => VCC,
      CLK => reg_ID_instr_7_CLKINV_21713,
      SET => GND,
      RST => reg_ID_instr_7_SRINV_21714,
      O => reg_ID_instr_7_7477
    );
  reg_ID_instr_8 : X_FF
    generic map(
      LOC => "SLICE_X45Y79",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_9_DYMUX_21766,
      CE => VCC,
      CLK => reg_ID_instr_9_CLKINV_21755,
      SET => GND,
      RST => reg_ID_instr_9_SRINV_21756,
      O => reg_ID_instr_8_7478
    );
  reg_ID_instr_mux0001_6_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X45Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_9_7578,
      O => reg_ID_instr_mux0001(6)
    );
  reg_ID_instr_9 : X_FF
    generic map(
      LOC => "SLICE_X45Y79",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_9_DXMUX_21782,
      CE => VCC,
      CLK => reg_ID_instr_9_CLKINV_21755,
      SET => GND,
      RST => reg_ID_instr_9_SRINV_21756,
      O => reg_ID_instr_9_7340
    );
  reg_IF_instr_10 : X_FF
    generic map(
      LOC => "SLICE_X88Y61",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_11_DYMUX_21808,
      CE => VCC,
      CLK => reg_IF_instr_11_CLKINV_21797,
      SET => GND,
      RST => reg_IF_instr_11_SRINV_21798,
      O => reg_IF_instr_10_7565
    );
  reg_IF_instr_mux0001_4_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X88Y61"
    )
    port map (
      ADR0 => branch_trigger,
      ADR1 => VCC,
      ADR2 => rom_data(11),
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(4)
    );
  reg_IF_instr_11 : X_FF
    generic map(
      LOC => "SLICE_X88Y61",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_11_DXMUX_21824,
      CE => VCC,
      CLK => reg_IF_instr_11_CLKINV_21797,
      SET => GND,
      RST => reg_IF_instr_11_SRINV_21798,
      O => reg_IF_instr_11_7564
    );
  reg_IF_instr_12 : X_FF
    generic map(
      LOC => "SLICE_X78Y64",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_13_DYMUX_21850,
      CE => VCC,
      CLK => reg_IF_instr_13_CLKINV_21839,
      SET => GND,
      RST => reg_IF_instr_13_SRINV_21840,
      O => reg_IF_instr_12_7567
    );
  reg_IF_instr_mux0001_2_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X78Y64"
    )
    port map (
      ADR0 => branch_trigger,
      ADR1 => VCC,
      ADR2 => rom_data(13),
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(2)
    );
  reg_IF_instr_13 : X_FF
    generic map(
      LOC => "SLICE_X78Y64",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_13_DXMUX_21866,
      CE => VCC,
      CLK => reg_IF_instr_13_CLKINV_21839,
      SET => GND,
      RST => reg_IF_instr_13_SRINV_21840,
      O => reg_IF_instr_13_7566
    );
  reg_IF_instr_14 : X_FF
    generic map(
      LOC => "SLICE_X79Y58",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_15_DYMUX_21892,
      CE => VCC,
      CLK => reg_IF_instr_15_CLKINV_21881,
      SET => GND,
      RST => reg_IF_instr_15_SRINV_21882,
      O => reg_IF_instr_14_7569
    );
  reg_IF_instr_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X79Y58"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger,
      ADR2 => VCC,
      ADR3 => rom_data(15),
      O => reg_IF_instr_mux0001(0)
    );
  reg_IF_instr_15 : X_FF
    generic map(
      LOC => "SLICE_X79Y58",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_15_DXMUX_21908,
      CE => VCC,
      CLK => reg_IF_instr_15_CLKINV_21881,
      SET => GND,
      RST => reg_IF_instr_15_SRINV_21882,
      O => reg_IF_instr_15_7568
    );
  reg_IF_instr_0 : X_FF
    generic map(
      LOC => "SLICE_X77Y78",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_1_DYMUX_21934,
      CE => VCC,
      CLK => reg_IF_instr_1_CLKINV_21923,
      SET => GND,
      RST => reg_IF_instr_1_SRINV_21924,
      O => reg_IF_instr_0_7571
    );
  reg_IF_instr_mux0001_14_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X77Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rom_data(1),
      ADR2 => branch_trigger,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(14)
    );
  reg_IF_instr_1 : X_FF
    generic map(
      LOC => "SLICE_X77Y78",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_1_DXMUX_21950,
      CE => VCC,
      CLK => reg_IF_instr_1_CLKINV_21923,
      SET => GND,
      RST => reg_IF_instr_1_SRINV_21924,
      O => reg_IF_instr_1_7570
    );
  reg_IF_instr_2 : X_FF
    generic map(
      LOC => "SLICE_X78Y79",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_3_DYMUX_21976,
      CE => VCC,
      CLK => reg_IF_instr_3_CLKINV_21965,
      SET => GND,
      RST => reg_IF_instr_3_SRINV_21966,
      O => reg_IF_instr_2_7573
    );
  reg_IF_instr_mux0001_12_1 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X78Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger,
      ADR2 => rom_data(3),
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(12)
    );
  reg_IF_instr_3 : X_FF
    generic map(
      LOC => "SLICE_X78Y79",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_3_DXMUX_21992,
      CE => VCC,
      CLK => reg_IF_instr_3_CLKINV_21965,
      SET => GND,
      RST => reg_IF_instr_3_SRINV_21966,
      O => reg_IF_instr_3_7572
    );
  reg_IF_instr_4 : X_FF
    generic map(
      LOC => "SLICE_X73Y74",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_5_DYMUX_22018,
      CE => VCC,
      CLK => reg_IF_instr_5_CLKINV_22007,
      SET => GND,
      RST => reg_IF_instr_5_SRINV_22008,
      O => reg_IF_instr_4_7575
    );
  reg_IF_instr_mux0001_10_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X73Y74"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => branch_trigger,
      ADR3 => rom_data(5),
      O => reg_IF_instr_mux0001(10)
    );
  reg_IF_instr_5 : X_FF
    generic map(
      LOC => "SLICE_X73Y74",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_5_DXMUX_22034,
      CE => VCC,
      CLK => reg_IF_instr_5_CLKINV_22007,
      SET => GND,
      RST => reg_IF_instr_5_SRINV_22008,
      O => reg_IF_instr_5_7574
    );
  reg_IF_instr_mux0001_8_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X79Y76"
    )
    port map (
      ADR0 => branch_trigger,
      ADR1 => VCC,
      ADR2 => rom_data(7),
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(8)
    );
  reg_IF_instr_7 : X_FF
    generic map(
      LOC => "SLICE_X79Y76",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_7_DYMUX_22057,
      CE => VCC,
      CLK => reg_IF_instr_7_CLKINV_22046,
      SET => GND,
      RST => reg_IF_instr_7_FFY_RSTAND_22062,
      O => reg_IF_instr_7_7576
    );
  reg_IF_instr_7_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X79Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_instr_7_FFY_RSTAND_22062
    );
  reg_IF_instr_8 : X_FF
    generic map(
      LOC => "SLICE_X78Y60",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_9_DYMUX_22083,
      CE => VCC,
      CLK => reg_IF_instr_9_CLKINV_22072,
      SET => GND,
      RST => reg_IF_instr_9_SRINV_22073,
      O => reg_IF_instr_8_7579
    );
  reg_IF_instr_mux0001_6_1 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X78Y60"
    )
    port map (
      ADR0 => branch_trigger,
      ADR1 => rom_data(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(6)
    );
  reg_IF_instr_9 : X_FF
    generic map(
      LOC => "SLICE_X78Y60",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_9_DXMUX_22099,
      CE => VCC,
      CLK => reg_IF_instr_9_CLKINV_22072,
      SET => GND,
      RST => reg_IF_instr_9_SRINV_22073,
      O => reg_IF_instr_9_7578
    );
  reg_EX_result_10 : X_FF
    generic map(
      LOC => "SLICE_X48Y62",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_11_DYMUX_22126,
      CE => VCC,
      CLK => reg_EX_result_11_CLKINV_22116,
      SET => GND,
      RST => reg_EX_result_11_SRINV_22117,
      O => reg_EX_result_10_7164
    );
  result_11_1 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X48Y62"
    )
    port map (
      ADR0 => in1_cmp_eq0008,
      ADR1 => ram_data(11),
      ADR2 => VCC,
      ADR3 => alu_result(11),
      O => result(11)
    );
  reg_EX_result_11 : X_FF
    generic map(
      LOC => "SLICE_X48Y62",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_11_DXMUX_22141,
      CE => VCC,
      CLK => reg_EX_result_11_CLKINV_22116,
      SET => GND,
      RST => reg_EX_result_11_SRINV_22117,
      O => reg_EX_result_11_7163
    );
  result_12_1 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X60Y52"
    )
    port map (
      ADR0 => alu_result(12),
      ADR1 => in1_cmp_eq0008,
      ADR2 => VCC,
      ADR3 => ram_data(12),
      O => result(12)
    );
  reg_EX_result_12 : X_FF
    generic map(
      LOC => "SLICE_X60Y52",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_12_DYMUX_22164,
      CE => VCC,
      CLK => reg_EX_result_12_CLKINV_22154,
      SET => GND,
      RST => reg_EX_result_12_FFY_RSTAND_22169,
      O => reg_EX_result_12_7162
    );
  reg_EX_result_12_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X60Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_result_12_FFY_RSTAND_22169
    );
  reg_EX_result_14 : X_FF
    generic map(
      LOC => "SLICE_X58Y52",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_15_DYMUX_22191,
      CE => VCC,
      CLK => reg_EX_result_15_CLKINV_22181,
      SET => GND,
      RST => reg_EX_result_15_SRINV_22182,
      O => reg_EX_result_14_7160
    );
  result_15_1 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X58Y52"
    )
    port map (
      ADR0 => alu_result(15),
      ADR1 => ram_data(15),
      ADR2 => in1_cmp_eq0008,
      ADR3 => VCC,
      O => result(15)
    );
  reg_EX_result_15 : X_FF
    generic map(
      LOC => "SLICE_X58Y52",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_15_DXMUX_22206,
      CE => VCC,
      CLK => reg_EX_result_15_CLKINV_22181,
      SET => GND,
      RST => reg_EX_result_15_SRINV_22182,
      O => reg_EX_result_15_7159
    );
  outport_10_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X79Y29"
    )
    port map (
      ADR0 => outport_cmp_eq0000_7544,
      ADR1 => reg_EX_result_10_7164,
      ADR2 => VCC,
      ADR3 => VCC,
      O => outport_10_OBUF_22234
    );
  outport_11_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X78Y32"
    )
    port map (
      ADR0 => outport_cmp_eq0000_7544,
      ADR1 => reg_EX_result_11_7163,
      ADR2 => VCC,
      ADR3 => VCC,
      O => outport_11_OBUF_22258
    );
  outport_12_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X78Y5"
    )
    port map (
      ADR0 => reg_EX_result_12_7162,
      ADR1 => outport_cmp_eq0000_7544,
      ADR2 => VCC,
      ADR3 => VCC,
      O => outport_12_OBUF_22282
    );
  in1_and000710 : X_LUT4
    generic map(
      INIT => X"0C00",
      LOC => "SLICE_X43Y77"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_9_7340,
      ADR2 => reg_ID_instr_13_7445,
      ADR3 => reg_ID_instr_11_7404,
      O => in1_and000710_22462
    );
  in1_and00035_SW0 : X_LUT4
    generic map(
      INIT => X"3F3F",
      LOC => "SLICE_X44Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_3_7491,
      ADR2 => reg_ID_instr_4_7492,
      ADR3 => VCC,
      O => N428
    );
  wr_index_1_1 : X_LUT4
    generic map(
      INIT => X"FCFC",
      LOC => "SLICE_X71Y92"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_instr_7_7475,
      ADR2 => branch_trigger_cmp_eq0001,
      ADR3 => VCC,
      O => wr_index(1)
    );
  wr_index_2_1 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X66Y89"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_instr_8_7476,
      ADR2 => VCC,
      ADR3 => branch_trigger_cmp_eq0001,
      O => wr_index(2)
    );
  wr_overflow_data_13_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X89Y70"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_13_7332,
      ADR2 => VCC,
      ADR3 => branch_trigger_cmp_eq0001,
      O => wr_overflow_data(13)
    );
  wr_overflow_data_15_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X76Y76"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_15_7338,
      ADR3 => branch_trigger_cmp_eq0001,
      O => wr_overflow_data(15)
    );
  rd_index1_or00041 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X88Y67"
    )
    port map (
      ADR0 => reg_IF_instr_14_7569,
      ADR1 => reg_IF_instr_13_7566,
      ADR2 => N129,
      ADR3 => reg_IF_instr_15_7568,
      O => N16
    );
  rd_index1_or00031 : X_LUT4
    generic map(
      INIT => X"FEFC",
      LOC => "SLICE_X89Y60"
    )
    port map (
      ADR0 => rd_index1_or000629_0,
      ADR1 => rd_index1_or0005_0,
      ADR2 => rd_index1_or0007,
      ADR3 => rd_index1_or000638_7584,
      O => rd_index1_or0003
    );
  reg_ID_data2_mux0007_7_1 : X_LUT4
    generic map(
      INIT => X"A8A0",
      LOC => "SLICE_X63Y79"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => N95,
      ADR2 => N18_0,
      ADR3 => rd_data2(8),
      O => reg_ID_data2_mux0007(7)
    );
  reg_ID_data2_8 : X_FF
    generic map(
      LOC => "SLICE_X63Y79",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_8_DXMUX_22673,
      CE => VCC,
      CLK => reg_ID_data2_8_CLKINV_22657,
      SET => GND,
      RST => reg_ID_data2_8_FFX_RSTAND_22678,
      O => reg_ID_data2_8_7384
    );
  reg_ID_data2_8_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X63Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_data2_8_FFX_RSTAND_22678
    );
  reg_ID_data2_mux0007_11_15 : X_LUT4
    generic map(
      INIT => X"DC10",
      LOC => "SLICE_X70Y81"
    )
    port map (
      ADR0 => rd_index1_or0005_0,
      ADR1 => or0000_0_or0000_0,
      ADR2 => rd_data2(4),
      ADR3 => reg_IF_instr_4_7575,
      O => reg_ID_data2_mux0007_11_15_22701
    );
  reg_ID_data2_mux0007_9_SW0 : X_LUT4
    generic map(
      INIT => X"FCF0",
      LOC => "SLICE_X61Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_6_7577,
      ADR2 => N19,
      ADR3 => N1011_0,
      O => N125
    );
  reg_ID_data2_mux0007_15_SW0 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X71Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => N5,
      ADR3 => reg_IF_instr_0_7571,
      O => N117
    );
  rd_index1_or0004_SW0 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X70Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_data1_mux0007_10_146_7589,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_11_7564,
      O => N115
    );
  reg_ID_data2_mux0007_13_SW0 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X65Y82"
    )
    port map (
      ADR0 => reg_IF_instr_2_7573,
      ADR1 => VCC,
      ADR2 => N5,
      ADR3 => VCC,
      O => N121
    );
  reg_ID_data2_mux0006_10_3_SW0 : X_LUT4
    generic map(
      INIT => X"B373",
      LOC => "SLICE_X71Y79"
    )
    port map (
      ADR0 => reg_IF_instr_11_7564,
      ADR1 => reg_IF_instr_3_7572,
      ADR2 => reg_ID_data1_mux0007_10_146_7589,
      ADR3 => N7,
      O => N110
    );
  reg_ID_data1_mux0007_10_134 : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "SLICE_X88Y66"
    )
    port map (
      ADR0 => reg_IF_instr_10_7565,
      ADR1 => VCC,
      ADR2 => reg_IF_instr_9_7578,
      ADR3 => reg_IF_instr_11_7564,
      O => reg_ID_data1_mux0007_10_134_23011
    );
  reg_ID_data2_mux0006_8_41 : X_LUT4
    generic map(
      INIT => X"B0F0",
      LOC => "SLICE_X79Y71"
    )
    port map (
      ADR0 => rd_index1_or0005_0,
      ADR1 => rd_index1_or000629_0,
      ADR2 => or0000_0_or0000_0,
      ADR3 => rd_index1_or000638_7584,
      O => N1011
    );
  reg_ID_data2_mux0006_10_3 : X_LUT4
    generic map(
      INIT => X"0B00",
      LOC => "SLICE_X70Y74"
    )
    port map (
      ADR0 => reg_ID_instr_9_7340,
      ADR1 => N15_0,
      ADR2 => N110_0,
      ADR3 => rd_index1_or0006,
      O => N811
    );
  reg_ID_PC_6 : X_FF
    generic map(
      LOC => "SLICE_X89Y39",
      INIT => '0'
    )
    port map (
      I => reg_ID_PC_6_DYMUX_23320,
      CE => VCC,
      CLK => reg_ID_PC_6_CLKINV_23317,
      SET => GND,
      RST => reg_ID_PC_6_FFY_RSTAND_23325,
      O => reg_ID_PC_6_7612
    );
  reg_ID_PC_6_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X89Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_PC_6_FFY_RSTAND_23325
    );
  reg_IF_PC_0 : X_FF
    generic map(
      LOC => "SLICE_X76Y48",
      INIT => '0'
    )
    port map (
      I => reg_IF_PC_1_DYMUX_23336,
      CE => VCC,
      CLK => reg_IF_PC_1_CLKINV_23333,
      SET => GND,
      RST => reg_IF_PC_1_SRINV_23334,
      O => reg_IF_PC_0_7409
    );
  reg_IF_PC_1 : X_FF
    generic map(
      LOC => "SLICE_X76Y48",
      INIT => '0'
    )
    port map (
      I => reg_IF_PC_1_DXMUX_23344,
      CE => VCC,
      CLK => reg_IF_PC_1_CLKINV_23333,
      SET => GND,
      RST => reg_IF_PC_1_SRINV_23334,
      O => reg_IF_PC_1_7415
    );
  reg_IF_PC_2 : X_FF
    generic map(
      LOC => "SLICE_X79Y35",
      INIT => '0'
    )
    port map (
      I => reg_IF_PC_3_DYMUX_23360,
      CE => VCC,
      CLK => reg_IF_PC_3_CLKINV_23357,
      SET => GND,
      RST => reg_IF_PC_3_SRINV_23358,
      O => reg_IF_PC_2_7418
    );
  reg_IF_PC_3 : X_FF
    generic map(
      LOC => "SLICE_X79Y35",
      INIT => '0'
    )
    port map (
      I => reg_IF_PC_3_DXMUX_23368,
      CE => VCC,
      CLK => reg_IF_PC_3_CLKINV_23357,
      SET => GND,
      RST => reg_IF_PC_3_SRINV_23358,
      O => reg_IF_PC_3_7421
    );
  reg_IF_PC_4 : X_FF
    generic map(
      LOC => "SLICE_X89Y37",
      INIT => '0'
    )
    port map (
      I => reg_IF_PC_5_DYMUX_23384,
      CE => VCC,
      CLK => reg_IF_PC_5_CLKINV_23381,
      SET => GND,
      RST => reg_IF_PC_5_SRINV_23382,
      O => reg_IF_PC_4_7424
    );
  rd_index2_1_1 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X71Y81"
    )
    port map (
      ADR0 => rd_index1_or0007,
      ADR1 => VCC,
      ADR2 => reg_IF_instr_1_7570,
      ADR3 => reg_IF_instr_4_7575,
      O => rd_index2(1)
    );
  result_13_1 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X53Y76"
    )
    port map (
      ADR0 => in1_cmp_eq0008,
      ADR1 => VCC,
      ADR2 => alu_result(13),
      ADR3 => ram_data(13),
      O => result(13)
    );
  reg_EX_result_13 : X_FF
    generic map(
      LOC => "SLICE_X53Y76",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_13_DXMUX_23114,
      CE => VCC,
      CLK => reg_EX_result_13_CLKINV_23096,
      SET => GND,
      RST => reg_EX_result_13_FFX_RSTAND_23119,
      O => reg_EX_result_13_7161
    );
  reg_EX_result_13_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X53Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_result_13_FFX_RSTAND_23119
    );
  in1_and0008_SW1 : X_LUT4
    generic map(
      INIT => X"E1FF",
      LOC => "SLICE_X46Y78"
    )
    port map (
      ADR0 => reg_ID_instr_9_7340,
      ADR1 => reg_ID_instr_10_7407,
      ADR2 => reg_ID_instr_11_7404,
      ADR3 => reg_ID_instr_5_7489,
      O => N372
    );
  N2 : X_LUT4
    generic map(
      INIT => X"FFEF",
      LOC => "SLICE_X78Y66"
    )
    port map (
      ADR0 => reg_IF_instr_12_7567,
      ADR1 => reg_IF_instr_13_7566,
      ADR2 => reg_IF_instr_9_7578,
      ADR3 => N108,
      O => N2_23166
    );
  rd_index1_2_1 : X_LUT4
    generic map(
      INIT => X"FE32",
      LOC => "SLICE_X79Y80"
    )
    port map (
      ADR0 => rd_index1_or0004_7605,
      ADR1 => rd_index1_or0003_0,
      ADR2 => reg_IF_instr_5_7574,
      ADR3 => reg_IF_instr_8_7579,
      O => rd_index1(2)
    );
  rd_index2_2_1 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X76Y81"
    )
    port map (
      ADR0 => rd_index1_or0007,
      ADR1 => reg_IF_instr_2_7573,
      ADR2 => reg_IF_instr_5_7574,
      ADR3 => VCC,
      O => rd_index2(2)
    );
  reg_ID_data2_mux0007_10_37 : X_LUT4
    generic map(
      INIT => X"F200",
      LOC => "SLICE_X60Y75"
    )
    port map (
      ADR0 => reg_ID_data2_mux0007_10_15_0,
      ADR1 => rd_index1_or0006,
      ADR2 => reg_ID_data2_mux0007_10_2_7597,
      ADR3 => N2_0,
      O => reg_ID_data2_mux0007(10)
    );
  reg_ID_data2_5 : X_FF
    generic map(
      LOC => "SLICE_X60Y75",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_5_DXMUX_22780,
      CE => VCC,
      CLK => reg_ID_data2_5_CLKINV_22763,
      SET => GND,
      RST => reg_ID_data2_5_FFX_RSTAND_22785,
      O => reg_ID_data2_5_7375
    );
  reg_ID_data2_5_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X60Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_data2_5_FFX_RSTAND_22785
    );
  reg_ID_data2_mux0007_11_37 : X_LUT4
    generic map(
      INIT => X"F400",
      LOC => "SLICE_X61Y74"
    )
    port map (
      ADR0 => rd_index1_or0006,
      ADR1 => reg_ID_data2_mux0007_11_15_0,
      ADR2 => reg_ID_data2_mux0007_11_2_7599,
      ADR3 => N2_0,
      O => reg_ID_data2_mux0007(11)
    );
  reg_ID_data2_4 : X_FF
    generic map(
      LOC => "SLICE_X61Y74",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_4_DXMUX_22815,
      CE => VCC,
      CLK => reg_ID_data2_4_CLKINV_22798,
      SET => GND,
      RST => reg_ID_data2_4_FFX_RSTAND_22820,
      O => reg_ID_data2_4_7372
    );
  reg_ID_data2_4_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X61Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_data2_4_FFX_RSTAND_22820
    );
  reg_ID_data2_mux0006_0_21 : X_LUT4
    generic map(
      INIT => X"FCF0",
      LOC => "SLICE_X71Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N1011_0,
      ADR2 => N19,
      ADR3 => reg_IF_instr_8_7579,
      O => N18
    );
  in2_3_SW2 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X45Y74"
    )
    port map (
      ADR0 => reg_ID_data2_3_7353,
      ADR1 => reg_EX_result_3_7171,
      ADR2 => in2_and0005,
      ADR3 => VCC,
      O => N378
    );
  reg_ID_data2_mux0006_12_1_SW0 : X_LUT4
    generic map(
      INIT => X"2AAA",
      LOC => "SLICE_X79Y79"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_10_146_7589,
      ADR1 => reg_IF_instr_11_7564,
      ADR2 => reg_IF_instr_10_7565,
      ADR3 => reg_IF_instr_9_7578,
      O => N112
    );
  reg_IF_inport_14 : X_FF
    generic map(
      LOC => "SLICE_X91Y60",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_15_DYMUX_23848,
      CE => VCC,
      CLK => reg_IF_inport_15_CLKINV_23845,
      SET => GND,
      RST => reg_IF_inport_15_SRINV_23846,
      O => reg_IF_inport_14_7553
    );
  reg_IF_inport_15 : X_FF
    generic map(
      LOC => "SLICE_X91Y60",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_15_DXMUX_23856,
      CE => VCC,
      CLK => reg_IF_inport_15_CLKINV_23845,
      SET => GND,
      RST => reg_IF_inport_15_SRINV_23846,
      O => reg_IF_inport_15_7552
    );
  branch_trigger_or0002_SW1 : X_LUT4
    generic map(
      INIT => X"FE4F",
      LOC => "SLICE_X56Y81"
    )
    port map (
      ADR0 => reg_EX_instr_10_7440,
      ADR1 => reg_EX_n_flag_7613,
      ADR2 => reg_EX_instr_9_7433,
      ADR3 => reg_EX_instr_11_7435,
      O => N140
    );
  reg_ID_data1_mux0007_0_2 : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X79Y66"
    )
    port map (
      ADR0 => reg_IF_instr_15_7568,
      ADR1 => reg_IF_instr_14_7569,
      ADR2 => N106,
      ADR3 => reg_IF_instr_9_7578,
      O => N22
    );
  rd_index1_or00051 : X_LUT4
    generic map(
      INIT => X"7080",
      LOC => "SLICE_X75Y70"
    )
    port map (
      ADR0 => reg_IF_instr_9_7578,
      ADR1 => reg_IF_instr_10_7565,
      ADR2 => reg_ID_data1_mux0007_10_146_7589,
      ADR3 => reg_IF_instr_11_7564,
      O => rd_index1_or0005
    );
  reg_ID_data1_mux0007_9_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X79Y70"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => rd_data1(9),
      ADR2 => N02,
      ADR3 => reg_IF_inport_9_7628,
      O => reg_ID_data1_mux0007(9)
    );
  reg_ID_data1_9 : X_FF
    generic map(
      LOC => "SLICE_X79Y70",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_9_DXMUX_23975,
      CE => VCC,
      CLK => reg_ID_data1_9_CLKINV_23959,
      SET => GND,
      RST => reg_ID_data1_9_FFX_RSTAND_23980,
      O => reg_ID_data1_9_7518
    );
  reg_ID_data1_9_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X79Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_ID_data1_9_FFX_RSTAND_23980
    );
  wr_enable_or000134 : X_LUT4
    generic map(
      INIT => X"0D7C",
      LOC => "SLICE_X48Y78"
    )
    port map (
      ADR0 => reg_EX_instr_9_7433,
      ADR1 => reg_EX_instr_10_7440,
      ADR2 => reg_EX_instr_11_7435,
      ADR3 => reg_EX_instr_13_7434,
      O => wr_enable_or000134_23238
    );
  reg_ID_PC_0 : X_FF
    generic map(
      LOC => "SLICE_X77Y48",
      INIT => '0'
    )
    port map (
      I => reg_ID_PC_1_DYMUX_23250,
      CE => VCC,
      CLK => reg_ID_PC_1_CLKINV_23247,
      SET => GND,
      RST => reg_ID_PC_1_SRINV_23248,
      O => reg_ID_PC_0_7607
    );
  reg_ID_PC_1 : X_FF
    generic map(
      LOC => "SLICE_X77Y48",
      INIT => '0'
    )
    port map (
      I => reg_ID_PC_1_DXMUX_23258,
      CE => VCC,
      CLK => reg_ID_PC_1_CLKINV_23247,
      SET => GND,
      RST => reg_ID_PC_1_SRINV_23248,
      O => reg_ID_PC_1_7606
    );
  reg_ID_PC_2 : X_FF
    generic map(
      LOC => "SLICE_X77Y35",
      INIT => '0'
    )
    port map (
      I => reg_ID_PC_3_DYMUX_23274,
      CE => VCC,
      CLK => reg_ID_PC_3_CLKINV_23271,
      SET => GND,
      RST => reg_ID_PC_3_SRINV_23272,
      O => reg_ID_PC_2_7609
    );
  reg_ID_PC_3 : X_FF
    generic map(
      LOC => "SLICE_X77Y35",
      INIT => '0'
    )
    port map (
      I => reg_ID_PC_3_DXMUX_23282,
      CE => VCC,
      CLK => reg_ID_PC_3_CLKINV_23271,
      SET => GND,
      RST => reg_ID_PC_3_SRINV_23272,
      O => reg_ID_PC_3_7608
    );
  reg_ID_PC_4 : X_FF
    generic map(
      LOC => "SLICE_X89Y33",
      INIT => '0'
    )
    port map (
      I => reg_ID_PC_5_DYMUX_23298,
      CE => VCC,
      CLK => reg_ID_PC_5_CLKINV_23295,
      SET => GND,
      RST => reg_ID_PC_5_SRINV_23296,
      O => reg_ID_PC_4_7611
    );
  reg_ID_PC_5 : X_FF
    generic map(
      LOC => "SLICE_X89Y33",
      INIT => '0'
    )
    port map (
      I => reg_ID_PC_5_DXMUX_23306,
      CE => VCC,
      CLK => reg_ID_PC_5_CLKINV_23295,
      SET => GND,
      RST => reg_ID_PC_5_SRINV_23296,
      O => reg_ID_PC_5_7610
    );
  reg_EX_PC_3 : X_FF
    generic map(
      LOC => "SLICE_X77Y36",
      INIT => '0'
    )
    port map (
      I => reg_EX_PC_3_DXMUX_23648,
      CE => VCC,
      CLK => reg_EX_PC_3_CLKINV_23637,
      SET => GND,
      RST => reg_EX_PC_3_SRINV_23638,
      O => reg_EX_PC_3_7619
    );
  reg_EX_PC_4 : X_FF
    generic map(
      LOC => "SLICE_X89Y32",
      INIT => '0'
    )
    port map (
      I => reg_EX_PC_5_DYMUX_23664,
      CE => VCC,
      CLK => reg_EX_PC_5_CLKINV_23661,
      SET => GND,
      RST => reg_EX_PC_5_SRINV_23662,
      O => reg_EX_PC_4_7618
    );
  reg_EX_PC_5 : X_FF
    generic map(
      LOC => "SLICE_X89Y32",
      INIT => '0'
    )
    port map (
      I => reg_EX_PC_5_DXMUX_23672,
      CE => VCC,
      CLK => reg_EX_PC_5_CLKINV_23661,
      SET => GND,
      RST => reg_EX_PC_5_SRINV_23662,
      O => reg_EX_PC_5_7621
    );
  reg_EX_PC_6 : X_FF
    generic map(
      LOC => "SLICE_X88Y38",
      INIT => '0'
    )
    port map (
      I => reg_EX_PC_6_DYMUX_23686,
      CE => VCC,
      CLK => reg_EX_PC_6_CLKINV_23683,
      SET => GND,
      RST => reg_EX_PC_6_FFY_RSTAND_23691,
      O => reg_EX_PC_6_7620
    );
  reg_EX_PC_6_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X88Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_PC_6_FFY_RSTAND_23691
    );
  PC_next_5_SW0 : X_LUT4
    generic map(
      INIT => X"3F3F",
      LOC => "SLICE_X78Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => PC(4),
      ADR2 => Madd_PC_next_addsub0000_cy(3),
      ADR3 => VCC,
      O => N131
    );
  reg_EX_z_flag : X_FF
    generic map(
      LOC => "SLICE_X55Y70",
      INIT => '0'
    )
    port map (
      I => reg_EX_z_flag_DYMUX_23736,
      CE => VCC,
      CLK => reg_EX_z_flag_CLKINV_23733,
      SET => GND,
      RST => reg_EX_z_flag_FFY_RSTAND_23741,
      O => reg_EX_z_flag_7622
    );
  reg_EX_z_flag_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X55Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_EX_z_flag_FFY_RSTAND_23741
    );
  in2_and000578_SW9 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X41Y73"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_data2_9_7387,
      ADR2 => reg_EX_result_9_7165,
      ADR3 => wr_enable_0,
      O => N403
    );
  in2_and000578_SW7 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X49Y66"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_EX_result_12_7162,
      ADR2 => VCC,
      ADR3 => reg_ID_data2_12_7533,
      O => N400
    );
  in2_and000578_SW5 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X45Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => wr_enable_0,
      ADR2 => reg_ID_data2_13_7531,
      ADR3 => reg_EX_result_13_7161,
      O => N397
    );
  reg_IF_instr_mux0001_9_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X57Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rom_data(6),
      ADR2 => VCC,
      ADR3 => branch_trigger,
      O => reg_IF_instr_mux0001(9)
    );
  reg_IF_instr_6 : X_FF
    generic map(
      LOC => "SLICE_X57Y81",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_6_DXMUX_24274,
      CE => VCC,
      CLK => reg_IF_instr_6_CLKINV_24256,
      SET => GND,
      RST => reg_IF_instr_6_FFX_RSTAND_24279,
      O => reg_IF_instr_6_7577
    );
  reg_IF_instr_6_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X57Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7150,
      O => reg_IF_instr_6_FFX_RSTAND_24279
    );
  alu_mode_1_1 : X_LUT4
    generic map(
      INIT => X"0200",
      LOC => "SLICE_X45Y67"
    )
    port map (
      ADR0 => reg_ID_instr_10_7407,
      ADR1 => reg_ID_instr_15_7446,
      ADR2 => reg_ID_instr_13_7445,
      ADR3 => N102,
      O => alu_mode(1)
    );
  reg_IF_inport_6 : X_FF
    generic map(
      LOC => "SLICE_X79Y45",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_7_DYMUX_24063,
      CE => VCC,
      CLK => reg_IF_inport_7_CLKINV_24060,
      SET => GND,
      RST => reg_IF_inport_7_SRINV_24061,
      O => reg_IF_inport_6_7431
    );
  reg_IF_inport_7 : X_FF
    generic map(
      LOC => "SLICE_X79Y45",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_7_DXMUX_24071,
      CE => VCC,
      CLK => reg_IF_inport_7_CLKINV_24060,
      SET => GND,
      RST => reg_IF_inport_7_SRINV_24061,
      O => reg_IF_inport_7_7560
    );
  reg_IF_inport_8 : X_FF
    generic map(
      LOC => "SLICE_X91Y55",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_9_DYMUX_24087,
      CE => VCC,
      CLK => reg_IF_inport_9_CLKINV_24084,
      SET => GND,
      RST => reg_IF_inport_9_SRINV_24085,
      O => reg_IF_inport_8_7561
    );
  reg_IF_inport_9 : X_FF
    generic map(
      LOC => "SLICE_X91Y55",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_9_DXMUX_24095,
      CE => VCC,
      CLK => reg_IF_inport_9_CLKINV_24084,
      SET => GND,
      RST => reg_IF_inport_9_SRINV_24085,
      O => reg_IF_inport_9_7628
    );
  in2_and000578_SW23 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X49Y68"
    )
    port map (
      ADR0 => reg_EX_result_10_7164,
      ADR1 => wr_enable_0,
      ADR2 => VCC,
      ADR3 => reg_ID_data2_10_7314,
      O => N424
    );
  in2_and000578_SW19 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X49Y74"
    )
    port map (
      ADR0 => reg_EX_result_4_7170,
      ADR1 => wr_enable_0,
      ADR2 => VCC,
      ADR3 => reg_ID_data2_4_7372,
      O => N418
    );
  in2_and000578_SW17 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X43Y68"
    )
    port map (
      ADR0 => reg_ID_data2_5_7375,
      ADR1 => reg_EX_result_5_7169,
      ADR2 => wr_enable_0,
      ADR3 => VCC,
      O => N415
    );
  outport_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_10_OBUF_22234,
      O => outport_10_O
    );
  outport_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_11_OBUF_22258,
      O => outport_11_O
    );
  outport_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_12_OBUF_22282,
      O => outport_12_O
    );
  outport_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_13_OBUF_22306,
      O => outport_13_O
    );
  outport_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_14_OBUF_22330,
      O => outport_14_O
    );
  outport_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_15_OBUF_20438,
      O => outport_15_O
    );
  outport_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_0_OBUF_22225,
      O => outport_0_O
    );
  outport_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_1_OBUF_22249,
      O => outport_1_O
    );
  outport_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD166",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_2_OBUF_22273,
      O => outport_2_O
    );
  outport_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_3_OBUF_22297,
      O => outport_3_O
    );
  outport_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_4_OBUF_22321,
      O => outport_4_O
    );
  outport_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_5_OBUF_22345,
      O => outport_5_O
    );
  outport_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_6_OBUF_22354,
      O => outport_6_O
    );
  outport_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_7_OBUF_22369,
      O => outport_7_O
    );
  outport_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_8_OBUF_22378,
      O => outport_8_O
    );
  outport_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_9_OBUF_23764,
      O => outport_9_O
    );
  NlwBlock_processor_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_processor_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

