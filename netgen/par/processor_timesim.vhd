--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: processor_timesim.vhd
-- /___/   /\     Timestamp: Tue Apr 03 16:57:27 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf processor.pcf -mhf -rpw 100 -tpw 0 -ar Structure -tm processor -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim processor.ncd processor_timesim.vhd 
-- Device	: 3s1200efg320-5 (PRODUCTION 1.27 2012-01-07)
-- Input file	: processor.ncd
-- Output file	: C:\Users\mtayler\Documents\ceng450_processor\netgen\par\processor_timesim.vhd
-- # of Entities	: 5
-- Design Name	: processor
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
    outport : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    inport : in STD_LOGIC_VECTOR ( 15 downto 0 ) 
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
  signal rst_IBUF_7223 : STD_LOGIC; 
  signal wr_overflow_0 : STD_LOGIC; 
  signal wr_enable_0 : STD_LOGIC; 
  signal rd_index1_2_0 : STD_LOGIC; 
  signal rd_index1_1_0 : STD_LOGIC; 
  signal rd_index1_0_0 : STD_LOGIC; 
  signal rd_index2_2_0 : STD_LOGIC; 
  signal rd_index2_1_0 : STD_LOGIC; 
  signal rd_index2_0_0 : STD_LOGIC; 
  signal reg_EX_result_15_7232 : STD_LOGIC; 
  signal reg_EX_result_14_7233 : STD_LOGIC; 
  signal reg_EX_result_13_7234 : STD_LOGIC; 
  signal reg_EX_result_12_7235 : STD_LOGIC; 
  signal reg_EX_result_11_7236 : STD_LOGIC; 
  signal reg_EX_result_10_7237 : STD_LOGIC; 
  signal reg_EX_result_9_7238 : STD_LOGIC; 
  signal reg_EX_result_8_7239 : STD_LOGIC; 
  signal reg_EX_result_7_7240 : STD_LOGIC; 
  signal reg_EX_result_6_7241 : STD_LOGIC; 
  signal reg_EX_result_5_7242 : STD_LOGIC; 
  signal reg_EX_result_4_7243 : STD_LOGIC; 
  signal reg_EX_result_3_7244 : STD_LOGIC; 
  signal reg_EX_result_2_7245 : STD_LOGIC; 
  signal reg_EX_result_1_7246 : STD_LOGIC; 
  signal reg_EX_result_0_7247 : STD_LOGIC; 
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
  signal in2_and0005 : STD_LOGIC; 
  signal in2_and000221_0 : STD_LOGIC; 
  signal reg_EX_overflow_10_7388 : STD_LOGIC; 
  signal reg_ID_data2_10_7389 : STD_LOGIC; 
  signal reg_EX_overflow_11_7390 : STD_LOGIC; 
  signal reg_ID_data2_11_7391 : STD_LOGIC; 
  signal reg_EX_overflow_12_7392 : STD_LOGIC; 
  signal reg_ID_data2_12_7393 : STD_LOGIC; 
  signal reg_EX_overflow_13_7394 : STD_LOGIC; 
  signal reg_ID_data2_13_7395 : STD_LOGIC; 
  signal reg_EX_overflow_14_7396 : STD_LOGIC; 
  signal reg_ID_data2_14_7397 : STD_LOGIC; 
  signal reg_EX_overflow_15_7398 : STD_LOGIC; 
  signal reg_ID_data2_15_7399 : STD_LOGIC; 
  signal reg_ID_instr_9_7400 : STD_LOGIC; 
  signal ram_addr_and0000_0 : STD_LOGIC; 
  signal in1_and0003_0 : STD_LOGIC; 
  signal N360 : STD_LOGIC; 
  signal in2_and0002_0 : STD_LOGIC; 
  signal N336_0 : STD_LOGIC; 
  signal N358 : STD_LOGIC; 
  signal N334_0 : STD_LOGIC; 
  signal reg_IF_instr_11_7408 : STD_LOGIC; 
  signal N16_0 : STD_LOGIC; 
  signal rd_index1_or0006_0 : STD_LOGIC; 
  signal reg_IF_instr_10_7411 : STD_LOGIC; 
  signal reg_IF_instr_9_7412 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_146_7414 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_120 : STD_LOGIC; 
  signal N404_0 : STD_LOGIC; 
  signal in2_and000552_0 : STD_LOGIC; 
  signal reg_EX_overflow_0_7419 : STD_LOGIC; 
  signal N401_0 : STD_LOGIC; 
  signal reg_EX_overflow_1_7422 : STD_LOGIC; 
  signal N398_0 : STD_LOGIC; 
  signal reg_EX_overflow_2_7425 : STD_LOGIC; 
  signal N395_0 : STD_LOGIC; 
  signal reg_EX_overflow_3_7428 : STD_LOGIC; 
  signal reg_EX_overflow_4_7429 : STD_LOGIC; 
  signal reg_ID_data2_4_7430 : STD_LOGIC; 
  signal reg_EX_overflow_5_7431 : STD_LOGIC; 
  signal reg_ID_data2_5_7432 : STD_LOGIC; 
  signal reg_EX_overflow_6_7433 : STD_LOGIC; 
  signal reg_ID_data2_6_7434 : STD_LOGIC; 
  signal reg_EX_overflow_7_7435 : STD_LOGIC; 
  signal reg_ID_data2_7_7436 : STD_LOGIC; 
  signal reg_EX_overflow_8_7437 : STD_LOGIC; 
  signal reg_ID_data2_8_7438 : STD_LOGIC; 
  signal reg_EX_overflow_9_7439 : STD_LOGIC; 
  signal reg_ID_data2_9_7440 : STD_LOGIC; 
  signal reg_ID_data2_0_7441 : STD_LOGIC; 
  signal in1_cmp_eq0014_0 : STD_LOGIC; 
  signal N483 : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal reg_ID_data2_1_7445 : STD_LOGIC; 
  signal N481 : STD_LOGIC; 
  signal N382 : STD_LOGIC; 
  signal reg_ID_data2_2_7448 : STD_LOGIC; 
  signal N479 : STD_LOGIC; 
  signal N380 : STD_LOGIC; 
  signal reg_ID_data2_3_7451 : STD_LOGIC; 
  signal N477 : STD_LOGIC; 
  signal N378 : STD_LOGIC; 
  signal N338 : STD_LOGIC; 
  signal N340 : STD_LOGIC; 
  signal N342 : STD_LOGIC; 
  signal N350 : STD_LOGIC; 
  signal N348 : STD_LOGIC; 
  signal N332_0 : STD_LOGIC; 
  signal N346 : STD_LOGIC; 
  signal N330_0 : STD_LOGIC; 
  signal N344 : STD_LOGIC; 
  signal N328_0 : STD_LOGIC; 
  signal N356 : STD_LOGIC; 
  signal N326_0 : STD_LOGIC; 
  signal N354 : STD_LOGIC; 
  signal N324_0 : STD_LOGIC; 
  signal N352 : STD_LOGIC; 
  signal N322_0 : STD_LOGIC; 
  signal reg_ID_instr_11_7470 : STD_LOGIC; 
  signal reg_ID_instr_10_7471 : STD_LOGIC; 
  signal reg_EX_instr_6_7472 : STD_LOGIC; 
  signal reg_ID_instr_0_7473 : STD_LOGIC; 
  signal N392 : STD_LOGIC; 
  signal reg_IF_PC_0_7475 : STD_LOGIC; 
  signal N1011_0 : STD_LOGIC; 
  signal N2_0 : STD_LOGIC; 
  signal N22_0 : STD_LOGIC; 
  signal reg_IF_inport_0_7479 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_0_6 : STD_LOGIC; 
  signal reg_IF_PC_1_7481 : STD_LOGIC; 
  signal reg_IF_inport_1_7482 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_1_6 : STD_LOGIC; 
  signal reg_IF_PC_2_7484 : STD_LOGIC; 
  signal reg_IF_inport_2_7485 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_2_6 : STD_LOGIC; 
  signal reg_IF_PC_3_7487 : STD_LOGIC; 
  signal reg_IF_inport_3_7488 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_3_6 : STD_LOGIC; 
  signal reg_IF_PC_4_7490 : STD_LOGIC; 
  signal reg_IF_inport_4_7491 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_4_6 : STD_LOGIC; 
  signal reg_IF_PC_5_7493 : STD_LOGIC; 
  signal reg_IF_inport_5_7494 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_5_6 : STD_LOGIC; 
  signal reg_IF_PC_6_7496 : STD_LOGIC; 
  signal reg_IF_inport_6_7497 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_6_6 : STD_LOGIC; 
  signal reg_EX_instr_9_7499 : STD_LOGIC; 
  signal reg_EX_instr_13_7500 : STD_LOGIC; 
  signal reg_EX_instr_11_7501 : STD_LOGIC; 
  signal in1_or0003_SW0_O : STD_LOGIC; 
  signal reg_EX_instr_12_7503 : STD_LOGIC; 
  signal reg_EX_instr_15_7504 : STD_LOGIC; 
  signal reg_EX_instr_14_7505 : STD_LOGIC; 
  signal reg_EX_instr_10_7506 : STD_LOGIC; 
  signal in1_or0003_0 : STD_LOGIC; 
  signal N192 : STD_LOGIC; 
  signal reg_ID_instr_12_7509 : STD_LOGIC; 
  signal reg_ID_instr_14_7510 : STD_LOGIC; 
  signal reg_ID_instr_13_7511 : STD_LOGIC; 
  signal reg_ID_instr_15_7512 : STD_LOGIC; 
  signal in1_and0008_0 : STD_LOGIC; 
  signal in1_or00091_SW0_O : STD_LOGIC; 
  signal in1_or0009_0 : STD_LOGIC; 
  signal in1_or000821_O : STD_LOGIC; 
  signal in1_or000829_0 : STD_LOGIC; 
  signal in1_or000892_0 : STD_LOGIC; 
  signal in1_or000861_O : STD_LOGIC; 
  signal in1_or0008_0 : STD_LOGIC; 
  signal reg_ID_instr_2_7521 : STD_LOGIC; 
  signal in1_and0008_SW3_O : STD_LOGIC; 
  signal reg_ID_instr_1_7523 : STD_LOGIC; 
  signal in2_and00025_0 : STD_LOGIC; 
  signal reg_ID_data1_10_7525 : STD_LOGIC; 
  signal in1_and0007101_0 : STD_LOGIC; 
  signal reg_ID_data1_11_7527 : STD_LOGIC; 
  signal in1_12_SW2_O : STD_LOGIC; 
  signal reg_ID_data1_12_7529 : STD_LOGIC; 
  signal in1_13_SW2_O : STD_LOGIC; 
  signal reg_ID_data1_13_7531 : STD_LOGIC; 
  signal in1_14_SW2_O : STD_LOGIC; 
  signal reg_ID_data1_14_7533 : STD_LOGIC; 
  signal in1_15_SW2_O : STD_LOGIC; 
  signal reg_ID_data1_15_7535 : STD_LOGIC; 
  signal in1_and000312_0 : STD_LOGIC; 
  signal in1_and000318_SW0_O : STD_LOGIC; 
  signal N386_0 : STD_LOGIC; 
  signal N372_0 : STD_LOGIC; 
  signal in1_cmp_eq0013_0 : STD_LOGIC; 
  signal reg_ID_instr_6_7541 : STD_LOGIC; 
  signal in1_and000771_O : STD_LOGIC; 
  signal reg_EX_instr_7_7543 : STD_LOGIC; 
  signal reg_EX_instr_8_7544 : STD_LOGIC; 
  signal reg_ID_instr_7_7545 : STD_LOGIC; 
  signal reg_ID_instr_8_7546 : STD_LOGIC; 
  signal in1_and000772_0 : STD_LOGIC; 
  signal branch_trigger_cmp_eq0001 : STD_LOGIC; 
  signal N96_0 : STD_LOGIC; 
  signal in2_and00028_7550 : STD_LOGIC; 
  signal reg_ID_instr_3_7551 : STD_LOGIC; 
  signal reg_ID_instr_4_7552 : STD_LOGIC; 
  signal reg_ID_instr_5_7553 : STD_LOGIC; 
  signal rd_index1_or0005 : STD_LOGIC; 
  signal rd_index1_or000629_0 : STD_LOGIC; 
  signal rd_index1_or000638_7556 : STD_LOGIC; 
  signal in1_and000728_O : STD_LOGIC; 
  signal in1_and00075_0 : STD_LOGIC; 
  signal in1_and000710_0 : STD_LOGIC; 
  signal in1_cmp_eq00131_SW0_O : STD_LOGIC; 
  signal in1_cmp_eq00143_SW0_O : STD_LOGIC; 
  signal wr_enable_or000181 : STD_LOGIC; 
  signal wr_enable_or000160_7563 : STD_LOGIC; 
  signal wr_enable_or000134_0 : STD_LOGIC; 
  signal wr_enable_or000185_0 : STD_LOGIC; 
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
  signal rd_index1_or0003 : STD_LOGIC; 
  signal rd_index1_or0004_7577 : STD_LOGIC; 
  signal reg_IF_instr_3_7578 : STD_LOGIC; 
  signal reg_IF_instr_6_7579 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal wr_overflow_or000031_0 : STD_LOGIC; 
  signal wr_overflow_or000017_0 : STD_LOGIC; 
  signal wr_overflow_or000034_SW0_O : STD_LOGIC; 
  signal reg_ID_data1_0_7585 : STD_LOGIC; 
  signal reg_ID_data1_1_7586 : STD_LOGIC; 
  signal reg_ID_data1_2_7587 : STD_LOGIC; 
  signal reg_ID_data1_3_7588 : STD_LOGIC; 
  signal reg_ID_data1_4_7589 : STD_LOGIC; 
  signal reg_ID_data1_5_7590 : STD_LOGIC; 
  signal reg_ID_data1_6_7591 : STD_LOGIC; 
  signal reg_ID_data1_7_7592 : STD_LOGIC; 
  signal reg_ID_data1_8_7593 : STD_LOGIC; 
  signal reg_ID_data1_9_7594 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_10_SW2_O : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_11_SW2_O : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_12_SW0_O : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_13_SW0_O : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_14_SW0_O : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_15_SW0_O : STD_LOGIC; 
  signal reg_IF_instr_15_7601 : STD_LOGIC; 
  signal reg_IF_instr_14_7602 : STD_LOGIC; 
  signal reg_IF_instr_13_7603 : STD_LOGIC; 
  signal reg_IF_instr_12_7604 : STD_LOGIC; 
  signal N115_0 : STD_LOGIC; 
  signal alu_mode_0_4_O : STD_LOGIC; 
  signal alu_mode_0_15_0 : STD_LOGIC; 
  signal N15_0 : STD_LOGIC; 
  signal alu_mode_0_1_SW0_O : STD_LOGIC; 
  signal branch_trigger : STD_LOGIC; 
  signal N139_0 : STD_LOGIC; 
  signal N135_0 : STD_LOGIC; 
  signal N133_0 : STD_LOGIC; 
  signal outport_cmp_eq0000_7615 : STD_LOGIC; 
  signal N137_0 : STD_LOGIC; 
  signal in1_cmp_eq0008 : STD_LOGIC; 
  signal reg_IF_inport_11_7618 : STD_LOGIC; 
  signal N02 : STD_LOGIC; 
  signal reg_IF_inport_10_7620 : STD_LOGIC; 
  signal reg_IF_inport_13_7621 : STD_LOGIC; 
  signal reg_IF_inport_12_7622 : STD_LOGIC; 
  signal reg_IF_inport_15_7623 : STD_LOGIC; 
  signal reg_IF_inport_14_7624 : STD_LOGIC; 
  signal N18_0 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N119_0 : STD_LOGIC; 
  signal N117_0 : STD_LOGIC; 
  signal N123_0 : STD_LOGIC; 
  signal N121_0 : STD_LOGIC; 
  signal reg_IF_inport_7_7631 : STD_LOGIC; 
  signal reg_IF_inport_8_7632 : STD_LOGIC; 
  signal N127_0 : STD_LOGIC; 
  signal N125_0 : STD_LOGIC; 
  signal reg_IF_instr_1_7635 : STD_LOGIC; 
  signal reg_IF_instr_0_7636 : STD_LOGIC; 
  signal reg_IF_instr_2_7637 : STD_LOGIC; 
  signal reg_IF_instr_5_7638 : STD_LOGIC; 
  signal reg_IF_instr_4_7639 : STD_LOGIC; 
  signal reg_IF_instr_7_7640 : STD_LOGIC; 
  signal reg_IF_instr_8_7641 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal rd_index1_or0007 : STD_LOGIC; 
  signal or0000_0_or0000_0 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_7 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_13_0 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N110_0 : STD_LOGIC; 
  signal N811_0 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N112_0 : STD_LOGIC; 
  signal N113_0 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_2_7653 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_11_13_0 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_11_2_7655 : STD_LOGIC; 
  signal in2_and000536_0 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_134_0 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal reg_ID_PC_1_7659 : STD_LOGIC; 
  signal reg_ID_PC_0_7660 : STD_LOGIC; 
  signal reg_ID_PC_3_7661 : STD_LOGIC; 
  signal reg_ID_PC_2_7662 : STD_LOGIC; 
  signal reg_ID_PC_5_7663 : STD_LOGIC; 
  signal reg_ID_PC_4_7664 : STD_LOGIC; 
  signal reg_ID_PC_6_7665 : STD_LOGIC; 
  signal reg_EX_n_flag_7666 : STD_LOGIC; 
  signal reg_EX_PC_0_7667 : STD_LOGIC; 
  signal reg_EX_PC_1_7668 : STD_LOGIC; 
  signal reg_EX_PC_2_7669 : STD_LOGIC; 
  signal reg_EX_PC_4_7670 : STD_LOGIC; 
  signal reg_EX_PC_3_7671 : STD_LOGIC; 
  signal reg_EX_PC_6_7672 : STD_LOGIC; 
  signal reg_EX_PC_5_7673 : STD_LOGIC; 
  signal reg_EX_z_flag_7674 : STD_LOGIC; 
  signal N104_0 : STD_LOGIC; 
  signal N142_0 : STD_LOGIC; 
  signal N141_0 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal reg_IF_inport_9_7679 : STD_LOGIC; 
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
  signal in2_10_F5MUX_18086 : STD_LOGIC; 
  signal N515 : STD_LOGIC; 
  signal in2_10_BXINV_18078 : STD_LOGIC; 
  signal N514 : STD_LOGIC; 
  signal in2_11_F5MUX_18111 : STD_LOGIC; 
  signal N513 : STD_LOGIC; 
  signal in2_11_BXINV_18103 : STD_LOGIC; 
  signal N512 : STD_LOGIC; 
  signal in2_12_F5MUX_18136 : STD_LOGIC; 
  signal N507 : STD_LOGIC; 
  signal in2_12_BXINV_18128 : STD_LOGIC; 
  signal N506 : STD_LOGIC; 
  signal in2_13_F5MUX_18161 : STD_LOGIC; 
  signal N511 : STD_LOGIC; 
  signal in2_13_BXINV_18153 : STD_LOGIC; 
  signal N510 : STD_LOGIC; 
  signal in2_14_F5MUX_18186 : STD_LOGIC; 
  signal N505 : STD_LOGIC; 
  signal in2_14_BXINV_18178 : STD_LOGIC; 
  signal N504 : STD_LOGIC; 
  signal in2_15_F5MUX_18211 : STD_LOGIC; 
  signal N503 : STD_LOGIC; 
  signal in2_15_BXINV_18203 : STD_LOGIC; 
  signal N502 : STD_LOGIC; 
  signal ram_addr_10_F5MUX_18236 : STD_LOGIC; 
  signal N473 : STD_LOGIC; 
  signal ram_addr_10_BXINV_18229 : STD_LOGIC; 
  signal N472 : STD_LOGIC; 
  signal ram_addr_11_F5MUX_18261 : STD_LOGIC; 
  signal N471 : STD_LOGIC; 
  signal ram_addr_11_BXINV_18254 : STD_LOGIC; 
  signal N470 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_120_F5MUX_18286 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_1201_18284 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_120_BXINV_18279 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_1202_18277 : STD_LOGIC; 
  signal in2_0_F5MUX_18311 : STD_LOGIC; 
  signal N501 : STD_LOGIC; 
  signal in2_0_BXINV_18304 : STD_LOGIC; 
  signal N500 : STD_LOGIC; 
  signal in2_1_F5MUX_18336 : STD_LOGIC; 
  signal N499 : STD_LOGIC; 
  signal in2_1_BXINV_18329 : STD_LOGIC; 
  signal N498 : STD_LOGIC; 
  signal in2_2_F5MUX_18361 : STD_LOGIC; 
  signal N497 : STD_LOGIC; 
  signal in2_2_BXINV_18354 : STD_LOGIC; 
  signal N496 : STD_LOGIC; 
  signal in2_3_F5MUX_18386 : STD_LOGIC; 
  signal N495 : STD_LOGIC; 
  signal in2_3_BXINV_18379 : STD_LOGIC; 
  signal N494 : STD_LOGIC; 
  signal in2_4_F5MUX_18411 : STD_LOGIC; 
  signal N525 : STD_LOGIC; 
  signal in2_4_BXINV_18403 : STD_LOGIC; 
  signal N524 : STD_LOGIC; 
  signal in2_5_F5MUX_18436 : STD_LOGIC; 
  signal N517 : STD_LOGIC; 
  signal in2_5_BXINV_18428 : STD_LOGIC; 
  signal N516 : STD_LOGIC; 
  signal in2_6_F5MUX_18461 : STD_LOGIC; 
  signal N521 : STD_LOGIC; 
  signal in2_6_BXINV_18453 : STD_LOGIC; 
  signal N520 : STD_LOGIC; 
  signal in2_7_F5MUX_18486 : STD_LOGIC; 
  signal N509 : STD_LOGIC; 
  signal in2_7_BXINV_18478 : STD_LOGIC; 
  signal N508 : STD_LOGIC; 
  signal in2_8_F5MUX_18511 : STD_LOGIC; 
  signal N519 : STD_LOGIC; 
  signal in2_8_BXINV_18503 : STD_LOGIC; 
  signal N518 : STD_LOGIC; 
  signal in2_9_F5MUX_18536 : STD_LOGIC; 
  signal N523 : STD_LOGIC; 
  signal in2_9_BXINV_18528 : STD_LOGIC; 
  signal N522 : STD_LOGIC; 
  signal N384_F5MUX_18561 : STD_LOGIC; 
  signal N533 : STD_LOGIC; 
  signal N384_BXINV_18553 : STD_LOGIC; 
  signal N532 : STD_LOGIC; 
  signal N382_F5MUX_18586 : STD_LOGIC; 
  signal N531 : STD_LOGIC; 
  signal N382_BXINV_18578 : STD_LOGIC; 
  signal N530 : STD_LOGIC; 
  signal N380_F5MUX_18611 : STD_LOGIC; 
  signal N529 : STD_LOGIC; 
  signal N380_BXINV_18603 : STD_LOGIC; 
  signal N528 : STD_LOGIC; 
  signal N378_F5MUX_18636 : STD_LOGIC; 
  signal N527 : STD_LOGIC; 
  signal N378_BXINV_18628 : STD_LOGIC; 
  signal N526 : STD_LOGIC; 
  signal ram_addr_0_F5MUX_18661 : STD_LOGIC; 
  signal N491 : STD_LOGIC; 
  signal ram_addr_0_BXINV_18654 : STD_LOGIC; 
  signal N490 : STD_LOGIC; 
  signal ram_addr_1_F5MUX_18686 : STD_LOGIC; 
  signal N489 : STD_LOGIC; 
  signal ram_addr_1_BXINV_18679 : STD_LOGIC; 
  signal N488 : STD_LOGIC; 
  signal ram_addr_2_F5MUX_18711 : STD_LOGIC; 
  signal N487 : STD_LOGIC; 
  signal ram_addr_2_BXINV_18704 : STD_LOGIC; 
  signal N486 : STD_LOGIC; 
  signal ram_addr_3_F5MUX_18736 : STD_LOGIC; 
  signal N485 : STD_LOGIC; 
  signal ram_addr_3_BXINV_18729 : STD_LOGIC; 
  signal N484 : STD_LOGIC; 
  signal ram_addr_4_F5MUX_18761 : STD_LOGIC; 
  signal N469 : STD_LOGIC; 
  signal ram_addr_4_BXINV_18754 : STD_LOGIC; 
  signal N468 : STD_LOGIC; 
  signal ram_addr_5_F5MUX_18786 : STD_LOGIC; 
  signal N467 : STD_LOGIC; 
  signal ram_addr_5_BXINV_18779 : STD_LOGIC; 
  signal N466 : STD_LOGIC; 
  signal ram_addr_6_F5MUX_18811 : STD_LOGIC; 
  signal N465 : STD_LOGIC; 
  signal ram_addr_6_BXINV_18804 : STD_LOGIC; 
  signal N464 : STD_LOGIC; 
  signal ram_addr_7_F5MUX_18836 : STD_LOGIC; 
  signal N463 : STD_LOGIC; 
  signal ram_addr_7_BXINV_18829 : STD_LOGIC; 
  signal N462 : STD_LOGIC; 
  signal ram_addr_8_F5MUX_18861 : STD_LOGIC; 
  signal N461 : STD_LOGIC; 
  signal ram_addr_8_BXINV_18854 : STD_LOGIC; 
  signal N460 : STD_LOGIC; 
  signal ram_addr_9_F5MUX_18886 : STD_LOGIC; 
  signal N459 : STD_LOGIC; 
  signal ram_addr_9_BXINV_18879 : STD_LOGIC; 
  signal N458 : STD_LOGIC; 
  signal N392_F5MUX_18911 : STD_LOGIC; 
  signal N475 : STD_LOGIC; 
  signal N392_BXINV_18904 : STD_LOGIC; 
  signal N474 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_0_6_F5MUX_18936 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_0_61_18934 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_0_6_BXINV_18929 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_0_62_18927 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_1_6_F5MUX_18961 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_1_61_18959 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_1_6_BXINV_18954 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_1_62_18952 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_2_6_F5MUX_18986 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_2_61_18984 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_2_6_BXINV_18979 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_2_62_18977 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_3_6_F5MUX_19011 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_3_61_19009 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_3_6_BXINV_19004 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_3_62_19002 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_4_6_F5MUX_19036 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_4_61_19034 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_4_6_BXINV_19029 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_4_62_19027 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_5_6_F5MUX_19061 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_5_61_19059 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_5_6_BXINV_19054 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_5_62_19052 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_6_6_F5MUX_19086 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_6_61_19084 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_6_6_BXINV_19079 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_6_62_19077 : STD_LOGIC; 
  signal in1_or0003_19109 : STD_LOGIC; 
  signal in1_or0003_SW0_O_pack_1 : STD_LOGIC; 
  signal in1_and0008_19133 : STD_LOGIC; 
  signal N192_pack_1 : STD_LOGIC; 
  signal in1_or0009 : STD_LOGIC; 
  signal in1_or00091_SW0_O_pack_1 : STD_LOGIC; 
  signal in1_or000829_19181 : STD_LOGIC; 
  signal in1_or000821_O_pack_1 : STD_LOGIC; 
  signal in1_or0008 : STD_LOGIC; 
  signal in1_or000861_O_pack_1 : STD_LOGIC; 
  signal in2_and00025_19229 : STD_LOGIC; 
  signal in1_and0008_SW3_O_pack_1 : STD_LOGIC; 
  signal N360_pack_1 : STD_LOGIC; 
  signal N358_pack_1 : STD_LOGIC; 
  signal in1_12_SW2_O_pack_1 : STD_LOGIC; 
  signal in1_13_SW2_O_pack_1 : STD_LOGIC; 
  signal in1_14_SW2_O_pack_1 : STD_LOGIC; 
  signal in1_15_SW2_O_pack_1 : STD_LOGIC; 
  signal in1_and0003 : STD_LOGIC; 
  signal in1_and000318_SW0_O_pack_1 : STD_LOGIC; 
  signal in1_and000772_19421 : STD_LOGIC; 
  signal in1_and000771_O_pack_1 : STD_LOGIC; 
  signal branch_trigger_cmp_eq0001_pack_1 : STD_LOGIC; 
  signal in2_and000221_19469 : STD_LOGIC; 
  signal in2_and00028_pack_1 : STD_LOGIC; 
  signal rd_index1_or0006 : STD_LOGIC; 
  signal rd_index1_or0005_pack_1 : STD_LOGIC; 
  signal in1_and0007101_19517 : STD_LOGIC; 
  signal in1_and000728_O_pack_1 : STD_LOGIC; 
  signal in1_cmp_eq0013 : STD_LOGIC; 
  signal in1_cmp_eq00131_SW0_O_pack_1 : STD_LOGIC; 
  signal in1_cmp_eq0014 : STD_LOGIC; 
  signal in1_cmp_eq00143_SW0_O_pack_1 : STD_LOGIC; 
  signal wr_enable_or000185_19589 : STD_LOGIC; 
  signal wr_enable_or000181_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_0_DXMUX_19620 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_0_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_0_CLKINV_19602 : STD_LOGIC; 
  signal reg_EX_overflow_1_DXMUX_19655 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_1_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_1_CLKINV_19637 : STD_LOGIC; 
  signal reg_EX_overflow_2_DXMUX_19690 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_2_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_2_CLKINV_19672 : STD_LOGIC; 
  signal reg_EX_overflow_3_DXMUX_19725 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_3_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_3_CLKINV_19707 : STD_LOGIC; 
  signal reg_EX_overflow_4_DXMUX_19760 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_4_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_4_CLKINV_19742 : STD_LOGIC; 
  signal reg_EX_overflow_5_DXMUX_19795 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_5_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_5_CLKINV_19777 : STD_LOGIC; 
  signal reg_EX_overflow_6_DXMUX_19830 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_6_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_6_CLKINV_19812 : STD_LOGIC; 
  signal reg_EX_overflow_7_DXMUX_19865 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_7_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_7_CLKINV_19847 : STD_LOGIC; 
  signal reg_EX_overflow_8_DXMUX_19900 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_8_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_8_CLKINV_19882 : STD_LOGIC; 
  signal reg_EX_overflow_9_DXMUX_19935 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_9_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_9_CLKINV_19917 : STD_LOGIC; 
  signal rd_index1_or0003_pack_1 : STD_LOGIC; 
  signal ram_addr_and0000 : STD_LOGIC; 
  signal N13_pack_1 : STD_LOGIC; 
  signal wr_overflow : STD_LOGIC; 
  signal wr_overflow_or000034_SW0_O_pack_1 : STD_LOGIC; 
  signal N338_pack_1 : STD_LOGIC; 
  signal N340_pack_1 : STD_LOGIC; 
  signal N342_pack_1 : STD_LOGIC; 
  signal N350_pack_1 : STD_LOGIC; 
  signal N348_pack_1 : STD_LOGIC; 
  signal N346_pack_1 : STD_LOGIC; 
  signal N344_pack_1 : STD_LOGIC; 
  signal N356_pack_1 : STD_LOGIC; 
  signal N354_pack_1 : STD_LOGIC; 
  signal N352_pack_1 : STD_LOGIC; 
  signal wr_enable : STD_LOGIC; 
  signal wr_enable_or000160_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_10_DXMUX_20306 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_10_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_10_CLKINV_20288 : STD_LOGIC; 
  signal reg_EX_overflow_11_DXMUX_20341 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_11_SW2_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_11_CLKINV_20323 : STD_LOGIC; 
  signal reg_EX_overflow_12_DXMUX_20376 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_12_SW0_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_12_CLKINV_20358 : STD_LOGIC; 
  signal reg_EX_overflow_13_DXMUX_20411 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_13_SW0_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_13_CLKINV_20393 : STD_LOGIC; 
  signal reg_EX_overflow_14_DXMUX_20446 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_14_SW0_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_14_CLKINV_20428 : STD_LOGIC; 
  signal reg_EX_overflow_15_DXMUX_20481 : STD_LOGIC; 
  signal reg_EX_overflow_mux0001_15_SW0_O_pack_1 : STD_LOGIC; 
  signal reg_EX_overflow_15_CLKINV_20463 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_146_pack_1 : STD_LOGIC; 
  signal N394 : STD_LOGIC; 
  signal N477_pack_2 : STD_LOGIC; 
  signal N397 : STD_LOGIC; 
  signal N479_pack_2 : STD_LOGIC; 
  signal N400 : STD_LOGIC; 
  signal N481_pack_2 : STD_LOGIC; 
  signal N403 : STD_LOGIC; 
  signal N483_pack_2 : STD_LOGIC; 
  signal alu_mode_0_4_O_pack_1 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal alu_mode_0_1_SW0_O_pack_1 : STD_LOGIC; 
  signal N102_pack_1 : STD_LOGIC; 
  signal PC_1_FFY_RST : STD_LOGIC; 
  signal PC_1_FFX_RST : STD_LOGIC; 
  signal PC_1_DXMUX_20715 : STD_LOGIC; 
  signal PC_1_DYMUX_20701 : STD_LOGIC; 
  signal PC_1_SRINV_20692 : STD_LOGIC; 
  signal PC_1_CLKINVNOT : STD_LOGIC; 
  signal PC_3_FFY_RST : STD_LOGIC; 
  signal PC_3_FFX_RST : STD_LOGIC; 
  signal PC_3_DXMUX_20757 : STD_LOGIC; 
  signal PC_3_DYMUX_20743 : STD_LOGIC; 
  signal PC_3_SRINV_20735 : STD_LOGIC; 
  signal PC_3_CLKINVNOT : STD_LOGIC; 
  signal PC_5_FFY_RST : STD_LOGIC; 
  signal PC_5_FFX_RST : STD_LOGIC; 
  signal PC_5_DXMUX_20799 : STD_LOGIC; 
  signal PC_5_DYMUX_20785 : STD_LOGIC; 
  signal PC_5_SRINV_20777 : STD_LOGIC; 
  signal PC_5_CLKINVNOT : STD_LOGIC; 
  signal PC_6_FFY_RST : STD_LOGIC; 
  signal outport_15_OBUF_20838 : STD_LOGIC; 
  signal PC_6_DYMUX_20825 : STD_LOGIC; 
  signal PC_6_CLKINVNOT : STD_LOGIC; 
  signal reg_EX_instr_7_DXMUX_20876 : STD_LOGIC; 
  signal reg_EX_instr_7_DYMUX_20860 : STD_LOGIC; 
  signal reg_EX_instr_7_SRINV_20850 : STD_LOGIC; 
  signal reg_EX_instr_7_CLKINV_20849 : STD_LOGIC; 
  signal reg_EX_instr_9_DXMUX_20918 : STD_LOGIC; 
  signal reg_EX_instr_9_DYMUX_20902 : STD_LOGIC; 
  signal reg_EX_instr_9_SRINV_20892 : STD_LOGIC; 
  signal reg_EX_instr_9_CLKINV_20891 : STD_LOGIC; 
  signal reg_EX_instr_11_DXMUX_20960 : STD_LOGIC; 
  signal reg_EX_instr_11_DYMUX_20944 : STD_LOGIC; 
  signal reg_EX_instr_11_SRINV_20934 : STD_LOGIC; 
  signal reg_EX_instr_11_CLKINV_20933 : STD_LOGIC; 
  signal reg_EX_instr_13_DXMUX_21002 : STD_LOGIC; 
  signal reg_EX_instr_13_DYMUX_20986 : STD_LOGIC; 
  signal reg_EX_instr_13_SRINV_20976 : STD_LOGIC; 
  signal reg_EX_instr_13_CLKINV_20975 : STD_LOGIC; 
  signal reg_EX_instr_15_DXMUX_21044 : STD_LOGIC; 
  signal reg_EX_instr_15_DYMUX_21028 : STD_LOGIC; 
  signal reg_EX_instr_15_SRINV_21018 : STD_LOGIC; 
  signal reg_EX_instr_15_CLKINV_21017 : STD_LOGIC; 
  signal reg_EX_result_1_DXMUX_21086 : STD_LOGIC; 
  signal reg_EX_result_1_DYMUX_21071 : STD_LOGIC; 
  signal reg_EX_result_1_SRINV_21062 : STD_LOGIC; 
  signal reg_EX_result_1_CLKINV_21061 : STD_LOGIC; 
  signal reg_EX_result_3_DXMUX_21128 : STD_LOGIC; 
  signal reg_EX_result_3_DYMUX_21113 : STD_LOGIC; 
  signal reg_EX_result_3_SRINV_21104 : STD_LOGIC; 
  signal reg_EX_result_3_CLKINV_21103 : STD_LOGIC; 
  signal reg_EX_result_5_DXMUX_21170 : STD_LOGIC; 
  signal reg_EX_result_5_DYMUX_21155 : STD_LOGIC; 
  signal reg_EX_result_5_SRINV_21146 : STD_LOGIC; 
  signal reg_EX_result_5_CLKINV_21145 : STD_LOGIC; 
  signal reg_EX_result_7_DXMUX_21212 : STD_LOGIC; 
  signal reg_EX_result_7_DYMUX_21197 : STD_LOGIC; 
  signal reg_EX_result_7_SRINV_21188 : STD_LOGIC; 
  signal reg_EX_result_7_CLKINV_21187 : STD_LOGIC; 
  signal reg_EX_result_9_DXMUX_21254 : STD_LOGIC; 
  signal reg_EX_result_9_DYMUX_21239 : STD_LOGIC; 
  signal reg_EX_result_9_SRINV_21230 : STD_LOGIC; 
  signal reg_EX_result_9_CLKINV_21229 : STD_LOGIC; 
  signal reg_ID_data1_11_DXMUX_21296 : STD_LOGIC; 
  signal reg_ID_data1_11_DYMUX_21282 : STD_LOGIC; 
  signal reg_ID_data1_11_SRINV_21274 : STD_LOGIC; 
  signal reg_ID_data1_11_CLKINV_21273 : STD_LOGIC; 
  signal reg_ID_data1_13_DXMUX_21338 : STD_LOGIC; 
  signal reg_ID_data1_13_DYMUX_21324 : STD_LOGIC; 
  signal reg_ID_data1_13_SRINV_21316 : STD_LOGIC; 
  signal reg_ID_data1_13_CLKINV_21315 : STD_LOGIC; 
  signal reg_ID_data1_15_DXMUX_21380 : STD_LOGIC; 
  signal reg_ID_data1_15_DYMUX_21366 : STD_LOGIC; 
  signal reg_ID_data1_15_SRINV_21358 : STD_LOGIC; 
  signal reg_ID_data1_15_CLKINV_21357 : STD_LOGIC; 
  signal reg_ID_data2_11_DXMUX_21422 : STD_LOGIC; 
  signal reg_ID_data2_11_DYMUX_21408 : STD_LOGIC; 
  signal reg_ID_data2_11_SRINV_21400 : STD_LOGIC; 
  signal reg_ID_data2_11_CLKINV_21399 : STD_LOGIC; 
  signal reg_ID_data2_13_DXMUX_21464 : STD_LOGIC; 
  signal reg_ID_data2_13_DYMUX_21450 : STD_LOGIC; 
  signal reg_ID_data2_13_SRINV_21442 : STD_LOGIC; 
  signal reg_ID_data2_13_CLKINV_21441 : STD_LOGIC; 
  signal reg_ID_data2_15_DXMUX_21506 : STD_LOGIC; 
  signal reg_ID_data2_15_DYMUX_21492 : STD_LOGIC; 
  signal reg_ID_data2_15_SRINV_21484 : STD_LOGIC; 
  signal reg_ID_data2_15_CLKINV_21483 : STD_LOGIC; 
  signal reg_ID_data1_1_DXMUX_21548 : STD_LOGIC; 
  signal reg_ID_data1_1_DYMUX_21533 : STD_LOGIC; 
  signal reg_ID_data1_1_SRINV_21524 : STD_LOGIC; 
  signal reg_ID_data1_1_CLKINV_21523 : STD_LOGIC; 
  signal reg_ID_data1_3_DXMUX_21590 : STD_LOGIC; 
  signal reg_ID_data1_3_DYMUX_21575 : STD_LOGIC; 
  signal reg_ID_data1_3_SRINV_21566 : STD_LOGIC; 
  signal reg_ID_data1_3_CLKINV_21565 : STD_LOGIC; 
  signal reg_ID_data2_1_DXMUX_21632 : STD_LOGIC; 
  signal reg_ID_data2_1_DYMUX_21618 : STD_LOGIC; 
  signal reg_ID_data2_1_SRINV_21610 : STD_LOGIC; 
  signal reg_ID_data2_1_CLKINV_21609 : STD_LOGIC; 
  signal reg_ID_data1_5_DXMUX_21674 : STD_LOGIC; 
  signal reg_ID_data1_5_DYMUX_21659 : STD_LOGIC; 
  signal reg_ID_data1_5_SRINV_21650 : STD_LOGIC; 
  signal reg_ID_data1_5_CLKINV_21649 : STD_LOGIC; 
  signal reg_ID_data2_3_DXMUX_21716 : STD_LOGIC; 
  signal reg_ID_data2_3_DYMUX_21702 : STD_LOGIC; 
  signal reg_ID_data2_3_SRINV_21694 : STD_LOGIC; 
  signal reg_ID_data2_3_CLKINV_21693 : STD_LOGIC; 
  signal reg_ID_data1_7_DXMUX_21758 : STD_LOGIC; 
  signal reg_ID_data1_7_DYMUX_21744 : STD_LOGIC; 
  signal reg_ID_data1_7_SRINV_21735 : STD_LOGIC; 
  signal reg_ID_data1_7_CLKINV_21734 : STD_LOGIC; 
  signal reg_ID_data1_8_DYMUX_21781 : STD_LOGIC; 
  signal reg_ID_data1_8_CLKINV_21772 : STD_LOGIC; 
  signal reg_ID_data2_7_FFX_RST : STD_LOGIC; 
  signal reg_ID_data2_7_DXMUX_21823 : STD_LOGIC; 
  signal reg_ID_data2_7_DYMUX_21809 : STD_LOGIC; 
  signal reg_ID_data2_7_SRINV_21801 : STD_LOGIC; 
  signal reg_ID_data2_7_CLKINV_21800 : STD_LOGIC; 
  signal reg_ID_data2_9_FFY_RST : STD_LOGIC; 
  signal reg_ID_data2_9_DYMUX_21846 : STD_LOGIC; 
  signal reg_ID_data2_9_CLKINV_21837 : STD_LOGIC; 
  signal reg_ID_instr_11_FFY_RST : STD_LOGIC; 
  signal reg_ID_instr_11_FFX_RST : STD_LOGIC; 
  signal reg_ID_instr_11_DXMUX_21888 : STD_LOGIC; 
  signal reg_ID_instr_11_DYMUX_21872 : STD_LOGIC; 
  signal reg_ID_instr_11_SRINV_21862 : STD_LOGIC; 
  signal reg_ID_instr_11_CLKINV_21861 : STD_LOGIC; 
  signal reg_ID_instr_13_FFY_RST : STD_LOGIC; 
  signal reg_ID_instr_13_FFX_RST : STD_LOGIC; 
  signal reg_ID_instr_13_DXMUX_21930 : STD_LOGIC; 
  signal reg_ID_instr_13_DYMUX_21914 : STD_LOGIC; 
  signal reg_ID_instr_13_SRINV_21904 : STD_LOGIC; 
  signal reg_ID_instr_13_CLKINV_21903 : STD_LOGIC; 
  signal reg_ID_instr_15_FFY_RST : STD_LOGIC; 
  signal reg_ID_instr_15_DXMUX_21972 : STD_LOGIC; 
  signal reg_ID_instr_15_DYMUX_21956 : STD_LOGIC; 
  signal reg_ID_instr_15_SRINV_21946 : STD_LOGIC; 
  signal reg_ID_instr_15_CLKINV_21945 : STD_LOGIC; 
  signal reg_ID_instr_1_DXMUX_22014 : STD_LOGIC; 
  signal reg_ID_instr_1_DYMUX_21998 : STD_LOGIC; 
  signal reg_ID_instr_1_SRINV_21988 : STD_LOGIC; 
  signal reg_ID_instr_1_CLKINV_21987 : STD_LOGIC; 
  signal reg_ID_instr_3_DXMUX_22056 : STD_LOGIC; 
  signal reg_ID_instr_3_DYMUX_22040 : STD_LOGIC; 
  signal reg_ID_instr_3_SRINV_22030 : STD_LOGIC; 
  signal reg_ID_instr_3_CLKINV_22029 : STD_LOGIC; 
  signal reg_ID_instr_5_DXMUX_22098 : STD_LOGIC; 
  signal reg_ID_instr_5_DYMUX_22082 : STD_LOGIC; 
  signal reg_ID_instr_5_SRINV_22072 : STD_LOGIC; 
  signal reg_ID_instr_5_CLKINV_22071 : STD_LOGIC; 
  signal reg_ID_instr_7_DXMUX_22140 : STD_LOGIC; 
  signal reg_ID_instr_7_DYMUX_22124 : STD_LOGIC; 
  signal reg_ID_instr_7_SRINV_22114 : STD_LOGIC; 
  signal reg_ID_instr_7_CLKINV_22113 : STD_LOGIC; 
  signal reg_ID_instr_9_DXMUX_22182 : STD_LOGIC; 
  signal reg_ID_instr_9_DYMUX_22166 : STD_LOGIC; 
  signal reg_ID_instr_9_SRINV_22156 : STD_LOGIC; 
  signal reg_ID_instr_9_CLKINV_22155 : STD_LOGIC; 
  signal reg_IF_instr_11_DXMUX_22224 : STD_LOGIC; 
  signal reg_IF_instr_11_DYMUX_22208 : STD_LOGIC; 
  signal reg_IF_instr_11_SRINV_22198 : STD_LOGIC; 
  signal reg_IF_instr_11_CLKINV_22197 : STD_LOGIC; 
  signal reg_IF_instr_13_DXMUX_22266 : STD_LOGIC; 
  signal reg_IF_instr_13_DYMUX_22250 : STD_LOGIC; 
  signal reg_IF_instr_13_SRINV_22240 : STD_LOGIC; 
  signal reg_IF_instr_13_CLKINV_22239 : STD_LOGIC; 
  signal reg_IF_instr_15_DXMUX_22308 : STD_LOGIC; 
  signal reg_IF_instr_15_DYMUX_22292 : STD_LOGIC; 
  signal reg_IF_instr_15_SRINV_22282 : STD_LOGIC; 
  signal reg_IF_instr_15_CLKINV_22281 : STD_LOGIC; 
  signal reg_IF_instr_1_DXMUX_22350 : STD_LOGIC; 
  signal reg_IF_instr_1_DYMUX_22334 : STD_LOGIC; 
  signal reg_IF_instr_1_SRINV_22324 : STD_LOGIC; 
  signal reg_IF_instr_1_CLKINV_22323 : STD_LOGIC; 
  signal reg_IF_instr_3_DXMUX_22392 : STD_LOGIC; 
  signal reg_IF_instr_3_DYMUX_22376 : STD_LOGIC; 
  signal reg_IF_instr_3_SRINV_22366 : STD_LOGIC; 
  signal reg_IF_instr_3_CLKINV_22365 : STD_LOGIC; 
  signal reg_IF_instr_5_DXMUX_22434 : STD_LOGIC; 
  signal reg_IF_instr_5_DYMUX_22418 : STD_LOGIC; 
  signal reg_IF_instr_5_SRINV_22408 : STD_LOGIC; 
  signal reg_IF_instr_5_CLKINV_22407 : STD_LOGIC; 
  signal reg_IF_instr_7_DYMUX_22457 : STD_LOGIC; 
  signal reg_IF_instr_7_CLKINV_22446 : STD_LOGIC; 
  signal reg_IF_instr_9_DXMUX_22499 : STD_LOGIC; 
  signal reg_IF_instr_9_DYMUX_22483 : STD_LOGIC; 
  signal reg_IF_instr_9_SRINV_22473 : STD_LOGIC; 
  signal reg_IF_instr_9_CLKINV_22472 : STD_LOGIC; 
  signal reg_EX_result_11_DXMUX_22541 : STD_LOGIC; 
  signal reg_EX_result_11_DYMUX_22526 : STD_LOGIC; 
  signal reg_EX_result_11_SRINV_22517 : STD_LOGIC; 
  signal reg_EX_result_11_CLKINV_22516 : STD_LOGIC; 
  signal reg_EX_result_13_DYMUX_22564 : STD_LOGIC; 
  signal reg_EX_result_13_CLKINV_22554 : STD_LOGIC; 
  signal reg_EX_result_15_DXMUX_22606 : STD_LOGIC; 
  signal reg_EX_result_15_DYMUX_22591 : STD_LOGIC; 
  signal reg_EX_result_15_SRINV_22582 : STD_LOGIC; 
  signal reg_EX_result_15_CLKINV_22581 : STD_LOGIC; 
  signal outport_10_OBUF_22634 : STD_LOGIC; 
  signal outport_0_OBUF_22625 : STD_LOGIC; 
  signal outport_11_OBUF_22658 : STD_LOGIC; 
  signal outport_1_OBUF_22649 : STD_LOGIC; 
  signal outport_12_OBUF_22682 : STD_LOGIC; 
  signal outport_2_OBUF_22673 : STD_LOGIC; 
  signal outport_13_OBUF_22706 : STD_LOGIC; 
  signal outport_3_OBUF_22697 : STD_LOGIC; 
  signal outport_14_OBUF_22730 : STD_LOGIC; 
  signal outport_4_OBUF_22721 : STD_LOGIC; 
  signal outport_6_OBUF_22754 : STD_LOGIC; 
  signal outport_5_OBUF_22745 : STD_LOGIC; 
  signal outport_8_OBUF_22778 : STD_LOGIC; 
  signal outport_7_OBUF_22769 : STD_LOGIC; 
  signal alu_mode_0_15_22802 : STD_LOGIC; 
  signal in1_and00075_22795 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal N334 : STD_LOGIC; 
  signal N336 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal in1_and000710_22886 : STD_LOGIC; 
  signal in1_or000892_22878 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N129_pack_1 : STD_LOGIC; 
  signal rd_index1_or0007_pack_1 : STD_LOGIC; 
  signal in1_and000312_23042 : STD_LOGIC; 
  signal reg_ID_data2_8_FFX_RST : STD_LOGIC; 
  signal reg_ID_data2_8_DXMUX_23073 : STD_LOGIC; 
  signal N95_pack_1 : STD_LOGIC; 
  signal reg_ID_data2_8_CLKINV_23057 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_13_23093 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N811 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N5_pack_1 : STD_LOGIC; 
  signal reg_ID_data2_5_DXMUX_23204 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_2_pack_1 : STD_LOGIC; 
  signal reg_ID_data2_5_CLKINV_23187 : STD_LOGIC; 
  signal reg_ID_data2_4_DXMUX_23239 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_11_2_pack_1 : STD_LOGIC; 
  signal reg_ID_data2_4_CLKINV_23222 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_11_13_23267 : STD_LOGIC; 
  signal reg_ID_data2_mux0007_10_7_pack_1 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N19_pack_1 : STD_LOGIC; 
  signal in2_and0002 : STD_LOGIC; 
  signal in2_and000552_23315 : STD_LOGIC; 
  signal in2_and000536_23327 : STD_LOGIC; 
  signal N322 : STD_LOGIC; 
  signal in2_and0005_pack_1 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal or0000_0_or0000 : STD_LOGIC; 
  signal reg_ID_data1_mux0007_10_134_23399 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N7_pack_1 : STD_LOGIC; 
  signal rd_index1_or000629_23459 : STD_LOGIC; 
  signal N1011 : STD_LOGIC; 
  signal rd_index1_or000638_pack_1 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal reg_EX_result_12_DXMUX_23538 : STD_LOGIC; 
  signal in1_cmp_eq0008_pack_1 : STD_LOGIC; 
  signal reg_EX_result_12_CLKINV_23520 : STD_LOGIC; 
  signal N2_23566 : STD_LOGIC; 
  signal N108_pack_1 : STD_LOGIC; 
  signal wr_enable_or000134_23602 : STD_LOGIC; 
  signal wr_overflow_or000031_23595 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal wr_overflow_or000017_23619 : STD_LOGIC; 
  signal reg_ID_PC_1_DXMUX_23646 : STD_LOGIC; 
  signal reg_ID_PC_1_DYMUX_23638 : STD_LOGIC; 
  signal reg_ID_PC_1_SRINV_23636 : STD_LOGIC; 
  signal reg_ID_PC_1_CLKINV_23635 : STD_LOGIC; 
  signal reg_ID_PC_3_DXMUX_23670 : STD_LOGIC; 
  signal reg_ID_PC_3_DYMUX_23662 : STD_LOGIC; 
  signal reg_ID_PC_3_SRINV_23660 : STD_LOGIC; 
  signal reg_ID_PC_3_CLKINV_23659 : STD_LOGIC; 
  signal reg_ID_PC_5_DXMUX_23694 : STD_LOGIC; 
  signal reg_ID_PC_5_DYMUX_23686 : STD_LOGIC; 
  signal reg_ID_PC_5_SRINV_23684 : STD_LOGIC; 
  signal reg_ID_PC_5_CLKINV_23683 : STD_LOGIC; 
  signal reg_ID_PC_6_DYMUX_23708 : STD_LOGIC; 
  signal reg_ID_PC_6_CLKINV_23705 : STD_LOGIC; 
  signal reg_IF_PC_1_DXMUX_23732 : STD_LOGIC; 
  signal reg_IF_PC_1_DYMUX_23724 : STD_LOGIC; 
  signal reg_IF_PC_1_SRINV_23722 : STD_LOGIC; 
  signal reg_IF_PC_1_CLKINV_23721 : STD_LOGIC; 
  signal reg_IF_PC_3_DXMUX_23756 : STD_LOGIC; 
  signal reg_IF_PC_3_DYMUX_23748 : STD_LOGIC; 
  signal reg_IF_PC_3_SRINV_23746 : STD_LOGIC; 
  signal reg_IF_PC_3_CLKINV_23745 : STD_LOGIC; 
  signal reg_IF_PC_5_DXMUX_23780 : STD_LOGIC; 
  signal reg_IF_PC_5_DYMUX_23772 : STD_LOGIC; 
  signal reg_IF_PC_5_SRINV_23770 : STD_LOGIC; 
  signal reg_IF_PC_5_CLKINV_23769 : STD_LOGIC; 
  signal reg_IF_PC_6_DYMUX_23794 : STD_LOGIC; 
  signal reg_IF_PC_6_CLKINV_23791 : STD_LOGIC; 
  signal reg_EX_n_flag_DYMUX_23808 : STD_LOGIC; 
  signal reg_EX_n_flag_CLKINV_23805 : STD_LOGIC; 
  signal rd_index1_or0004_pack_1 : STD_LOGIC; 
  signal reg_EX_PC_1_DXMUX_23976 : STD_LOGIC; 
  signal reg_EX_PC_1_DYMUX_23968 : STD_LOGIC; 
  signal reg_EX_PC_1_SRINV_23966 : STD_LOGIC; 
  signal reg_EX_PC_1_CLKINV_23965 : STD_LOGIC; 
  signal reg_EX_PC_3_DXMUX_24000 : STD_LOGIC; 
  signal reg_EX_PC_3_DYMUX_23992 : STD_LOGIC; 
  signal reg_EX_PC_3_SRINV_23990 : STD_LOGIC; 
  signal reg_EX_PC_3_CLKINV_23989 : STD_LOGIC; 
  signal reg_EX_PC_5_DXMUX_24024 : STD_LOGIC; 
  signal reg_EX_PC_5_DYMUX_24016 : STD_LOGIC; 
  signal reg_EX_PC_5_SRINV_24014 : STD_LOGIC; 
  signal reg_EX_PC_5_CLKINV_24013 : STD_LOGIC; 
  signal reg_EX_PC_6_DYMUX_24038 : STD_LOGIC; 
  signal reg_EX_PC_6_CLKINV_24035 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal Madd_PC_next_addsub0000_cy_3_pack_1 : STD_LOGIC; 
  signal N330 : STD_LOGIC; 
  signal N332 : STD_LOGIC; 
  signal N326 : STD_LOGIC; 
  signal N328 : STD_LOGIC; 
  signal reg_EX_z_flag_FFY_RST : STD_LOGIC; 
  signal reg_EX_z_flag_DYMUX_24124 : STD_LOGIC; 
  signal reg_EX_z_flag_CLKINV_24121 : STD_LOGIC; 
  signal N324 : STD_LOGIC; 
  signal N386 : STD_LOGIC; 
  signal outport_9_OBUF_24176 : STD_LOGIC; 
  signal outport_cmp_eq0000_pack_1 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal reg_IF_inport_11_DXMUX_24220 : STD_LOGIC; 
  signal reg_IF_inport_11_DYMUX_24212 : STD_LOGIC; 
  signal reg_IF_inport_11_SRINV_24210 : STD_LOGIC; 
  signal reg_IF_inport_11_CLKINV_24209 : STD_LOGIC; 
  signal reg_IF_inport_13_DXMUX_24244 : STD_LOGIC; 
  signal reg_IF_inport_13_DYMUX_24236 : STD_LOGIC; 
  signal reg_IF_inport_13_SRINV_24234 : STD_LOGIC; 
  signal reg_IF_inport_13_CLKINV_24233 : STD_LOGIC; 
  signal reg_IF_inport_15_DXMUX_24268 : STD_LOGIC; 
  signal reg_IF_inport_15_DYMUX_24260 : STD_LOGIC; 
  signal reg_IF_inport_15_SRINV_24258 : STD_LOGIC; 
  signal reg_IF_inport_15_CLKINV_24257 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N106_pack_1 : STD_LOGIC; 
  signal N372 : STD_LOGIC; 
  signal reg_ID_data1_9_DXMUX_24363 : STD_LOGIC; 
  signal N02_pack_1 : STD_LOGIC; 
  signal reg_ID_data1_9_CLKINV_24347 : STD_LOGIC; 
  signal reg_IF_inport_1_DXMUX_24387 : STD_LOGIC; 
  signal reg_IF_inport_1_DYMUX_24379 : STD_LOGIC; 
  signal reg_IF_inport_1_SRINV_24377 : STD_LOGIC; 
  signal reg_IF_inport_1_CLKINV_24376 : STD_LOGIC; 
  signal reg_IF_inport_3_DXMUX_24411 : STD_LOGIC; 
  signal reg_IF_inport_3_DYMUX_24403 : STD_LOGIC; 
  signal reg_IF_inport_3_SRINV_24401 : STD_LOGIC; 
  signal reg_IF_inport_3_CLKINV_24400 : STD_LOGIC; 
  signal reg_IF_inport_5_DXMUX_24435 : STD_LOGIC; 
  signal reg_IF_inport_5_DYMUX_24427 : STD_LOGIC; 
  signal reg_IF_inport_5_SRINV_24425 : STD_LOGIC; 
  signal reg_IF_inport_5_CLKINV_24424 : STD_LOGIC; 
  signal reg_IF_inport_7_DXMUX_24459 : STD_LOGIC; 
  signal reg_IF_inport_7_DYMUX_24451 : STD_LOGIC; 
  signal reg_IF_inport_7_SRINV_24449 : STD_LOGIC; 
  signal reg_IF_inport_7_CLKINV_24448 : STD_LOGIC; 
  signal reg_IF_inport_9_DXMUX_24483 : STD_LOGIC; 
  signal reg_IF_inport_9_DYMUX_24475 : STD_LOGIC; 
  signal reg_IF_inport_9_SRINV_24473 : STD_LOGIC; 
  signal reg_IF_inport_9_CLKINV_24472 : STD_LOGIC; 
  signal N404 : STD_LOGIC; 
  signal N395 : STD_LOGIC; 
  signal N401 : STD_LOGIC; 
  signal N398 : STD_LOGIC; 
  signal reg_IF_instr_6_DXMUX_24566 : STD_LOGIC; 
  signal branch_trigger_pack_1 : STD_LOGIC; 
  signal reg_IF_instr_6_CLKINV_24548 : STD_LOGIC; 
  signal reg_ID_data1_8_FFY_RSTAND_21786 : STD_LOGIC; 
  signal reg_EX_overflow_0_FFX_RSTAND_19625 : STD_LOGIC; 
  signal reg_EX_overflow_1_FFX_RSTAND_19660 : STD_LOGIC; 
  signal reg_EX_overflow_2_FFX_RSTAND_19695 : STD_LOGIC; 
  signal reg_EX_overflow_3_FFX_RSTAND_19730 : STD_LOGIC; 
  signal reg_EX_overflow_4_FFX_RSTAND_19765 : STD_LOGIC; 
  signal reg_EX_overflow_5_FFX_RSTAND_19800 : STD_LOGIC; 
  signal reg_EX_overflow_6_FFX_RSTAND_19835 : STD_LOGIC; 
  signal reg_EX_overflow_7_FFX_RSTAND_19870 : STD_LOGIC; 
  signal reg_EX_overflow_8_FFX_RSTAND_19905 : STD_LOGIC; 
  signal reg_EX_overflow_9_FFX_RSTAND_19940 : STD_LOGIC; 
  signal reg_EX_overflow_10_FFX_RSTAND_20311 : STD_LOGIC; 
  signal reg_EX_overflow_11_FFX_RSTAND_20346 : STD_LOGIC; 
  signal reg_EX_overflow_12_FFX_RSTAND_20381 : STD_LOGIC; 
  signal reg_EX_overflow_13_FFX_RSTAND_20416 : STD_LOGIC; 
  signal reg_EX_overflow_14_FFX_RSTAND_20451 : STD_LOGIC; 
  signal reg_EX_overflow_15_FFX_RSTAND_20486 : STD_LOGIC; 
  signal reg_IF_instr_7_FFY_RSTAND_22462 : STD_LOGIC; 
  signal reg_EX_result_13_FFY_RSTAND_22569 : STD_LOGIC; 
  signal reg_ID_data2_5_FFX_RSTAND_23209 : STD_LOGIC; 
  signal reg_ID_data2_4_FFX_RSTAND_23244 : STD_LOGIC; 
  signal reg_EX_result_12_FFX_RSTAND_23543 : STD_LOGIC; 
  signal reg_ID_PC_6_FFY_RSTAND_23713 : STD_LOGIC; 
  signal reg_IF_PC_6_FFY_RSTAND_23799 : STD_LOGIC; 
  signal reg_EX_n_flag_FFY_RSTAND_23813 : STD_LOGIC; 
  signal reg_EX_PC_6_FFY_RSTAND_24043 : STD_LOGIC; 
  signal reg_ID_data1_9_FFX_RSTAND_24368 : STD_LOGIC; 
  signal reg_IF_instr_6_FFX_RSTAND_24571 : STD_LOGIC; 
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
  signal rd_index1 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
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
      rst => rst_IBUF_7223,
      wr_overflow => wr_overflow_0,
      wr_enable => wr_enable_0,
      rd_index1(2) => rd_index1_2_0,
      rd_index1(1) => rd_index1_1_0,
      rd_index1(0) => rd_index1_0_0,
      rd_index2(2) => rd_index2_2_0,
      rd_index2(1) => rd_index2_1_0,
      rd_index2(0) => rd_index2_0_0,
      wr_data(15) => reg_EX_result_15_7232,
      wr_data(14) => reg_EX_result_14_7233,
      wr_data(13) => reg_EX_result_13_7234,
      wr_data(12) => reg_EX_result_12_7235,
      wr_data(11) => reg_EX_result_11_7236,
      wr_data(10) => reg_EX_result_10_7237,
      wr_data(9) => reg_EX_result_9_7238,
      wr_data(8) => reg_EX_result_8_7239,
      wr_data(7) => reg_EX_result_7_7240,
      wr_data(6) => reg_EX_result_6_7241,
      wr_data(5) => reg_EX_result_5_7242,
      wr_data(4) => reg_EX_result_4_7243,
      wr_data(3) => reg_EX_result_3_7244,
      wr_data(2) => reg_EX_result_2_7245,
      wr_data(1) => reg_EX_result_1_7246,
      wr_data(0) => reg_EX_result_0_7247,
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
      clk => clk_BUFGP,
      rst => rst_IBUF_7223,
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
      LOC => "PAD152",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst,
      O => rst_INBUF
    );
  rst_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD152",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_INBUF,
      O => rst_IBUF_7223
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
      LOC => "PAD132"
    )
    port map (
      I => outport_12_O,
      O => outport(12)
    );
  outport_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD130"
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
      LOC => "IPAD148",
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
      LOC => "IPAD136",
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
      LOC => "PAD127",
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
      LOC => "PAD112",
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
      LOC => "PAD135"
    )
    port map (
      I => outport_0_O,
      O => outport(0)
    );
  outport_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD149"
    )
    port map (
      I => outport_1_O,
      O => outport(1)
    );
  outport_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD147"
    )
    port map (
      I => outport_2_O,
      O => outport(2)
    );
  outport_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD125"
    )
    port map (
      I => outport_3_O,
      O => outport(3)
    );
  outport_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => outport_4_O,
      O => outport(4)
    );
  outport_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD146"
    )
    port map (
      I => outport_5_O,
      O => outport(5)
    );
  outport_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD142"
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
      LOC => "PAD119"
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
      LOC => "PAD113",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport(12),
      O => inport_12_INBUF
    );
  inport_13_IBUF : X_BUF
    generic map(
      LOC => "IPAD116",
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
  in2_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_10_F5MUX_18086,
      O => in2(10)
    );
  in2_10_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X38Y49"
    )
    port map (
      IA => N514,
      IB => N515,
      SEL => in2_10_BXINV_18078,
      O => in2_10_F5MUX_18086
    );
  in2_10_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005,
      O => in2_10_BXINV_18078
    );
  in2_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_11_F5MUX_18111,
      O => in2(11)
    );
  in2_11_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X37Y50"
    )
    port map (
      IA => N512,
      IB => N513,
      SEL => in2_11_BXINV_18103,
      O => in2_11_F5MUX_18111
    );
  in2_11_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005,
      O => in2_11_BXINV_18103
    );
  in2_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_12_F5MUX_18136,
      O => in2(12)
    );
  in2_12_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X38Y46"
    )
    port map (
      IA => N506,
      IB => N507,
      SEL => in2_12_BXINV_18128,
      O => in2_12_F5MUX_18136
    );
  in2_12_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005,
      O => in2_12_BXINV_18128
    );
  in2_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_13_F5MUX_18161,
      O => in2(13)
    );
  in2_13_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X39Y46"
    )
    port map (
      IA => N510,
      IB => N511,
      SEL => in2_13_BXINV_18153,
      O => in2_13_F5MUX_18161
    );
  in2_13_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005,
      O => in2_13_BXINV_18153
    );
  in2_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_14_F5MUX_18186,
      O => in2(14)
    );
  in2_14_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y50"
    )
    port map (
      IA => N504,
      IB => N505,
      SEL => in2_14_BXINV_18178,
      O => in2_14_F5MUX_18186
    );
  in2_14_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005,
      O => in2_14_BXINV_18178
    );
  in2_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_15_F5MUX_18211,
      O => in2(15)
    );
  in2_15_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X38Y53"
    )
    port map (
      IA => N502,
      IB => N503,
      SEL => in2_15_BXINV_18203,
      O => in2_15_F5MUX_18211
    );
  in2_15_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005,
      O => in2_15_BXINV_18203
    );
  ram_addr_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_10_F5MUX_18236,
      O => ram_addr(10)
    );
  ram_addr_10_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X37Y58"
    )
    port map (
      IA => N472,
      IB => N473,
      SEL => ram_addr_10_BXINV_18229,
      O => ram_addr_10_F5MUX_18236
    );
  ram_addr_10_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7400,
      O => ram_addr_10_BXINV_18229
    );
  ram_addr_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_11_F5MUX_18261,
      O => ram_addr(11)
    );
  ram_addr_11_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X35Y58"
    )
    port map (
      IA => N470,
      IB => N471,
      SEL => ram_addr_11_BXINV_18254,
      O => ram_addr_11_F5MUX_18261
    );
  ram_addr_11_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7400,
      O => ram_addr_11_BXINV_18254
    );
  reg_ID_data1_mux0007_10_120_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_10_120_F5MUX_18286,
      O => reg_ID_data1_mux0007_10_120
    );
  reg_ID_data1_mux0007_10_120_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X59Y57"
    )
    port map (
      IA => reg_ID_data1_mux0007_10_1202_18277,
      IB => reg_ID_data1_mux0007_10_1201_18284,
      SEL => reg_ID_data1_mux0007_10_120_BXINV_18279,
      O => reg_ID_data1_mux0007_10_120_F5MUX_18286
    );
  reg_ID_data1_mux0007_10_120_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_11_7408,
      O => reg_ID_data1_mux0007_10_120_BXINV_18279
    );
  in2_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_0_F5MUX_18311,
      O => in2(0)
    );
  in2_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X38Y50"
    )
    port map (
      IA => N500,
      IB => N501,
      SEL => in2_0_BXINV_18304,
      O => in2_0_F5MUX_18311
    );
  in2_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N403,
      O => in2_0_BXINV_18304
    );
  in2_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_1_F5MUX_18336,
      O => in2(1)
    );
  in2_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y53"
    )
    port map (
      IA => N498,
      IB => N499,
      SEL => in2_1_BXINV_18329,
      O => in2_1_F5MUX_18336
    );
  in2_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N400,
      O => in2_1_BXINV_18329
    );
  in2_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_2_F5MUX_18361,
      O => in2(2)
    );
  in2_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y50"
    )
    port map (
      IA => N496,
      IB => N497,
      SEL => in2_2_BXINV_18354,
      O => in2_2_F5MUX_18361
    );
  in2_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N397,
      O => in2_2_BXINV_18354
    );
  in2_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_3_F5MUX_18386,
      O => in2(3)
    );
  in2_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X36Y50"
    )
    port map (
      IA => N494,
      IB => N495,
      SEL => in2_3_BXINV_18379,
      O => in2_3_F5MUX_18386
    );
  in2_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X36Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N394,
      O => in2_3_BXINV_18379
    );
  in2_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_4_F5MUX_18411,
      O => in2(4)
    );
  in2_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X36Y49"
    )
    port map (
      IA => N524,
      IB => N525,
      SEL => in2_4_BXINV_18403,
      O => in2_4_F5MUX_18411
    );
  in2_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X36Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005,
      O => in2_4_BXINV_18403
    );
  in2_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_5_F5MUX_18436,
      O => in2(5)
    );
  in2_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y57"
    )
    port map (
      IA => N516,
      IB => N517,
      SEL => in2_5_BXINV_18428,
      O => in2_5_F5MUX_18436
    );
  in2_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005,
      O => in2_5_BXINV_18428
    );
  in2_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_6_F5MUX_18461,
      O => in2(6)
    );
  in2_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y49"
    )
    port map (
      IA => N520,
      IB => N521,
      SEL => in2_6_BXINV_18453,
      O => in2_6_F5MUX_18461
    );
  in2_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005,
      O => in2_6_BXINV_18453
    );
  in2_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_7_F5MUX_18486,
      O => in2(7)
    );
  in2_7_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X38Y48"
    )
    port map (
      IA => N508,
      IB => N509,
      SEL => in2_7_BXINV_18478,
      O => in2_7_F5MUX_18486
    );
  in2_7_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005,
      O => in2_7_BXINV_18478
    );
  in2_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_8_F5MUX_18511,
      O => in2(8)
    );
  in2_8_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X37Y48"
    )
    port map (
      IA => N518,
      IB => N519,
      SEL => in2_8_BXINV_18503,
      O => in2_8_F5MUX_18511
    );
  in2_8_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005,
      O => in2_8_BXINV_18503
    );
  in2_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_9_F5MUX_18536,
      O => in2(9)
    );
  in2_9_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y48"
    )
    port map (
      IA => N522,
      IB => N523,
      SEL => in2_9_BXINV_18528,
      O => in2_9_F5MUX_18536
    );
  in2_9_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005,
      O => in2_9_BXINV_18528
    );
  N384_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N384_F5MUX_18561,
      O => N384
    );
  N384_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y50"
    )
    port map (
      IA => N532,
      IB => N533,
      SEL => N384_BXINV_18553,
      O => N384_F5MUX_18561
    );
  N384_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_0,
      O => N384_BXINV_18553
    );
  N382_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N382_F5MUX_18586,
      O => N382
    );
  N382_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X43Y57"
    )
    port map (
      IA => N530,
      IB => N531,
      SEL => N382_BXINV_18578,
      O => N382_F5MUX_18586
    );
  N382_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_0,
      O => N382_BXINV_18578
    );
  N380_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N380_F5MUX_18611,
      O => N380
    );
  N380_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y53"
    )
    port map (
      IA => N528,
      IB => N529,
      SEL => N380_BXINV_18603,
      O => N380_F5MUX_18611
    );
  N380_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_0,
      O => N380_BXINV_18603
    );
  N378_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N378_F5MUX_18636,
      O => N378
    );
  N378_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y56"
    )
    port map (
      IA => N526,
      IB => N527,
      SEL => N378_BXINV_18628,
      O => N378_F5MUX_18636
    );
  N378_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_0,
      O => N378_BXINV_18628
    );
  ram_addr_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_0_F5MUX_18661,
      O => ram_addr(0)
    );
  ram_addr_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X36Y53"
    )
    port map (
      IA => N490,
      IB => N491,
      SEL => ram_addr_0_BXINV_18654,
      O => ram_addr_0_F5MUX_18661
    );
  ram_addr_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X36Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7400,
      O => ram_addr_0_BXINV_18654
    );
  ram_addr_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_1_F5MUX_18686,
      O => ram_addr(1)
    );
  ram_addr_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X34Y57"
    )
    port map (
      IA => N488,
      IB => N489,
      SEL => ram_addr_1_BXINV_18679,
      O => ram_addr_1_F5MUX_18686
    );
  ram_addr_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7400,
      O => ram_addr_1_BXINV_18679
    );
  ram_addr_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_2_F5MUX_18711,
      O => ram_addr(2)
    );
  ram_addr_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X37Y54"
    )
    port map (
      IA => N486,
      IB => N487,
      SEL => ram_addr_2_BXINV_18704,
      O => ram_addr_2_F5MUX_18711
    );
  ram_addr_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7400,
      O => ram_addr_2_BXINV_18704
    );
  ram_addr_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_3_F5MUX_18736,
      O => ram_addr(3)
    );
  ram_addr_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X39Y58"
    )
    port map (
      IA => N484,
      IB => N485,
      SEL => ram_addr_3_BXINV_18729,
      O => ram_addr_3_F5MUX_18736
    );
  ram_addr_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7400,
      O => ram_addr_3_BXINV_18729
    );
  ram_addr_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_4_F5MUX_18761,
      O => ram_addr(4)
    );
  ram_addr_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X35Y59"
    )
    port map (
      IA => N468,
      IB => N469,
      SEL => ram_addr_4_BXINV_18754,
      O => ram_addr_4_F5MUX_18761
    );
  ram_addr_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7400,
      O => ram_addr_4_BXINV_18754
    );
  ram_addr_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_5_F5MUX_18786,
      O => ram_addr(5)
    );
  ram_addr_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X38Y59"
    )
    port map (
      IA => N466,
      IB => N467,
      SEL => ram_addr_5_BXINV_18779,
      O => ram_addr_5_F5MUX_18786
    );
  ram_addr_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7400,
      O => ram_addr_5_BXINV_18779
    );
  ram_addr_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_6_F5MUX_18811,
      O => ram_addr(6)
    );
  ram_addr_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X36Y58"
    )
    port map (
      IA => N464,
      IB => N465,
      SEL => ram_addr_6_BXINV_18804,
      O => ram_addr_6_F5MUX_18811
    );
  ram_addr_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X36Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7400,
      O => ram_addr_6_BXINV_18804
    );
  ram_addr_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_7_F5MUX_18836,
      O => ram_addr(7)
    );
  ram_addr_7_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X35Y61"
    )
    port map (
      IA => N462,
      IB => N463,
      SEL => ram_addr_7_BXINV_18829,
      O => ram_addr_7_F5MUX_18836
    );
  ram_addr_7_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7400,
      O => ram_addr_7_BXINV_18829
    );
  ram_addr_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_8_F5MUX_18861,
      O => ram_addr(8)
    );
  ram_addr_8_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X37Y57"
    )
    port map (
      IA => N460,
      IB => N461,
      SEL => ram_addr_8_BXINV_18854,
      O => ram_addr_8_F5MUX_18861
    );
  ram_addr_8_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7400,
      O => ram_addr_8_BXINV_18854
    );
  ram_addr_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_9_F5MUX_18886,
      O => ram_addr(9)
    );
  ram_addr_9_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X36Y56"
    )
    port map (
      IA => N458,
      IB => N459,
      SEL => ram_addr_9_BXINV_18879,
      O => ram_addr_9_F5MUX_18886
    );
  ram_addr_9_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X36Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_9_7400,
      O => ram_addr_9_BXINV_18879
    );
  N392_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N392_F5MUX_18911,
      O => N392
    );
  N392_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X45Y54"
    )
    port map (
      IA => N474,
      IB => N475,
      SEL => N392_BXINV_18904,
      O => N392_F5MUX_18911
    );
  N392_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_11_7470,
      O => N392_BXINV_18904
    );
  reg_ID_data1_mux0007_0_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X70Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_0_6_F5MUX_18936,
      O => reg_ID_data1_mux0007_0_6
    );
  reg_ID_data1_mux0007_0_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X70Y50"
    )
    port map (
      IA => reg_ID_data1_mux0007_0_62_18927,
      IB => reg_ID_data1_mux0007_0_61_18934,
      SEL => reg_ID_data1_mux0007_0_6_BXINV_18929,
      O => reg_ID_data1_mux0007_0_6_F5MUX_18936
    );
  reg_ID_data1_mux0007_0_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X70Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_0_7475,
      O => reg_ID_data1_mux0007_0_6_BXINV_18929
    );
  reg_ID_data1_mux0007_1_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_1_6_F5MUX_18961,
      O => reg_ID_data1_mux0007_1_6
    );
  reg_ID_data1_mux0007_1_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X66Y50"
    )
    port map (
      IA => reg_ID_data1_mux0007_1_62_18952,
      IB => reg_ID_data1_mux0007_1_61_18959,
      SEL => reg_ID_data1_mux0007_1_6_BXINV_18954,
      O => reg_ID_data1_mux0007_1_6_F5MUX_18961
    );
  reg_ID_data1_mux0007_1_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_1_7481,
      O => reg_ID_data1_mux0007_1_6_BXINV_18954
    );
  reg_ID_data1_mux0007_2_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X69Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_2_6_F5MUX_18986,
      O => reg_ID_data1_mux0007_2_6
    );
  reg_ID_data1_mux0007_2_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X69Y50"
    )
    port map (
      IA => reg_ID_data1_mux0007_2_62_18977,
      IB => reg_ID_data1_mux0007_2_61_18984,
      SEL => reg_ID_data1_mux0007_2_6_BXINV_18979,
      O => reg_ID_data1_mux0007_2_6_F5MUX_18986
    );
  reg_ID_data1_mux0007_2_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X69Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_2_7484,
      O => reg_ID_data1_mux0007_2_6_BXINV_18979
    );
  reg_ID_data1_mux0007_3_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_3_6_F5MUX_19011,
      O => reg_ID_data1_mux0007_3_6
    );
  reg_ID_data1_mux0007_3_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X66Y57"
    )
    port map (
      IA => reg_ID_data1_mux0007_3_62_19002,
      IB => reg_ID_data1_mux0007_3_61_19009,
      SEL => reg_ID_data1_mux0007_3_6_BXINV_19004,
      O => reg_ID_data1_mux0007_3_6_F5MUX_19011
    );
  reg_ID_data1_mux0007_3_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_3_7487,
      O => reg_ID_data1_mux0007_3_6_BXINV_19004
    );
  reg_ID_data1_mux0007_4_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_4_6_F5MUX_19036,
      O => reg_ID_data1_mux0007_4_6
    );
  reg_ID_data1_mux0007_4_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y53"
    )
    port map (
      IA => reg_ID_data1_mux0007_4_62_19027,
      IB => reg_ID_data1_mux0007_4_61_19034,
      SEL => reg_ID_data1_mux0007_4_6_BXINV_19029,
      O => reg_ID_data1_mux0007_4_6_F5MUX_19036
    );
  reg_ID_data1_mux0007_4_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_4_7490,
      O => reg_ID_data1_mux0007_4_6_BXINV_19029
    );
  reg_ID_data1_mux0007_5_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X69Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_5_6_F5MUX_19061,
      O => reg_ID_data1_mux0007_5_6
    );
  reg_ID_data1_mux0007_5_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X69Y51"
    )
    port map (
      IA => reg_ID_data1_mux0007_5_62_19052,
      IB => reg_ID_data1_mux0007_5_61_19059,
      SEL => reg_ID_data1_mux0007_5_6_BXINV_19054,
      O => reg_ID_data1_mux0007_5_6_F5MUX_19061
    );
  reg_ID_data1_mux0007_5_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X69Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_5_7493,
      O => reg_ID_data1_mux0007_5_6_BXINV_19054
    );
  reg_ID_data1_mux0007_6_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X70Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_6_6_F5MUX_19086,
      O => reg_ID_data1_mux0007_6_6
    );
  reg_ID_data1_mux0007_6_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X70Y51"
    )
    port map (
      IA => reg_ID_data1_mux0007_6_62_19077,
      IB => reg_ID_data1_mux0007_6_61_19084,
      SEL => reg_ID_data1_mux0007_6_6_BXINV_19079,
      O => reg_ID_data1_mux0007_6_6_F5MUX_19086
    );
  reg_ID_data1_mux0007_6_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X70Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_6_7496,
      O => reg_ID_data1_mux0007_6_6_BXINV_19079
    );
  in1_or0003_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or0003_19109,
      O => in1_or0003_0
    );
  in1_or0003_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or0003_SW0_O_pack_1,
      O => in1_or0003_SW0_O
    );
  in1_and0008 : X_LUT4
    generic map(
      INIT => X"0306",
      LOC => "SLICE_X45Y52"
    )
    port map (
      ADR0 => reg_ID_instr_10_7471,
      ADR1 => reg_ID_instr_11_7470,
      ADR2 => N192,
      ADR3 => reg_ID_instr_9_7400,
      O => in1_and0008_19133
    );
  in1_and0008_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and0008_19133,
      O => in1_and0008_0
    );
  in1_and0008_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N192_pack_1,
      O => N192
    );
  in1_and0008_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X45Y52"
    )
    port map (
      ADR0 => reg_ID_instr_14_7510,
      ADR1 => reg_ID_instr_12_7509,
      ADR2 => reg_ID_instr_15_7512,
      ADR3 => reg_ID_instr_13_7511,
      O => N192_pack_1
    );
  in1_or00091 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X43Y54"
    )
    port map (
      ADR0 => reg_ID_instr_15_7512,
      ADR1 => reg_ID_instr_13_7511,
      ADR2 => in1_or00091_SW0_O,
      ADR3 => reg_ID_instr_14_7510,
      O => in1_or0009
    );
  in1_or0009_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or0009,
      O => in1_or0009_0
    );
  in1_or0009_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or00091_SW0_O_pack_1,
      O => in1_or00091_SW0_O
    );
  in1_or00091_SW0 : X_LUT4
    generic map(
      INIT => X"FCFE",
      LOC => "SLICE_X43Y54"
    )
    port map (
      ADR0 => reg_ID_instr_10_7471,
      ADR1 => reg_ID_instr_11_7470,
      ADR2 => reg_ID_instr_12_7509,
      ADR3 => reg_ID_instr_9_7400,
      O => in1_or00091_SW0_O_pack_1
    );
  in1_or000829 : X_LUT4
    generic map(
      INIT => X"7E00",
      LOC => "SLICE_X47Y55"
    )
    port map (
      ADR0 => reg_ID_instr_15_7512,
      ADR1 => reg_ID_instr_10_7471,
      ADR2 => reg_ID_instr_9_7400,
      ADR3 => in1_or000821_O,
      O => in1_or000829_19181
    );
  in1_or000829_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or000829_19181,
      O => in1_or000829_0
    );
  in1_or000829_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or000821_O_pack_1,
      O => in1_or000821_O
    );
  in1_or000821 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X47Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_14_7510,
      ADR3 => reg_ID_instr_11_7470,
      O => in1_or000821_O_pack_1
    );
  in1_or000894 : X_LUT4
    generic map(
      INIT => X"CC40",
      LOC => "SLICE_X46Y55"
    )
    port map (
      ADR0 => reg_ID_instr_11_7470,
      ADR1 => in1_or000892_0,
      ADR2 => in1_or000861_O,
      ADR3 => in1_or000829_0,
      O => in1_or0008
    );
  in1_or0008_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or0008,
      O => in1_or0008_0
    );
  in1_or0008_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or000861_O_pack_1,
      O => in1_or000861_O
    );
  in1_or000861 : X_LUT4
    generic map(
      INIT => X"2004",
      LOC => "SLICE_X46Y55"
    )
    port map (
      ADR0 => reg_ID_instr_9_7400,
      ADR1 => reg_ID_instr_14_7510,
      ADR2 => reg_ID_instr_10_7471,
      ADR3 => reg_ID_instr_15_7512,
      O => in1_or000861_O_pack_1
    );
  in2_and00025 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X44Y50"
    )
    port map (
      ADR0 => reg_ID_instr_2_7521,
      ADR1 => reg_ID_instr_0_7473,
      ADR2 => N192,
      ADR3 => in1_and0008_SW3_O,
      O => in2_and00025_19229
    );
  in2_and00025_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and00025_19229,
      O => in2_and00025_0
    );
  in2_and00025_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and0008_SW3_O_pack_1,
      O => in1_and0008_SW3_O
    );
  in1_and0008_SW3 : X_LUT4
    generic map(
      INIT => X"EF1F",
      LOC => "SLICE_X44Y50"
    )
    port map (
      ADR0 => reg_ID_instr_9_7400,
      ADR1 => reg_ID_instr_10_7471,
      ADR2 => reg_ID_instr_1_7523,
      ADR3 => reg_ID_instr_11_7470,
      O => in1_and0008_SW3_O_pack_1
    );
  in1_10_Q : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X37Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_and0003_0,
      ADR2 => reg_EX_overflow_10_7388,
      ADR3 => N360,
      O => in1(10)
    );
  in1_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(10),
      O => in1_10_0
    );
  in1_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N360_pack_1,
      O => N360
    );
  in1_10_SW2 : X_LUT4
    generic map(
      INIT => X"B8F0",
      LOC => "SLICE_X37Y55"
    )
    port map (
      ADR0 => reg_EX_result_10_7237,
      ADR1 => wr_enable_0,
      ADR2 => reg_ID_data1_10_7525,
      ADR3 => in1_and0007101_0,
      O => N360_pack_1
    );
  in1_11_Q : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X38Y57"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => VCC,
      ADR2 => N358,
      ADR3 => reg_EX_overflow_11_7390,
      O => in1(11)
    );
  in1_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(11),
      O => in1_11_0
    );
  in1_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N358_pack_1,
      O => N358
    );
  in1_11_SW2 : X_LUT4
    generic map(
      INIT => X"EC4C",
      LOC => "SLICE_X38Y57"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_ID_data1_11_7527,
      ADR2 => in1_and0007101_0,
      ADR3 => reg_EX_result_11_7236,
      O => N358_pack_1
    );
  in1_12_Q : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X44Y61"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => reg_EX_overflow_12_7392,
      ADR2 => in1_12_SW2_O,
      ADR3 => VCC,
      O => in1(12)
    );
  in1_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(12),
      O => in1_12_0
    );
  in1_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_12_SW2_O_pack_1,
      O => in1_12_SW2_O
    );
  in1_12_SW2 : X_LUT4
    generic map(
      INIT => X"EA2A",
      LOC => "SLICE_X44Y61"
    )
    port map (
      ADR0 => reg_ID_data1_12_7529,
      ADR1 => wr_enable_0,
      ADR2 => in1_and0007101_0,
      ADR3 => reg_EX_result_12_7235,
      O => in1_12_SW2_O_pack_1
    );
  in1_13_Q : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X46Y61"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => reg_EX_overflow_13_7394,
      ADR2 => in1_13_SW2_O,
      ADR3 => VCC,
      O => in1(13)
    );
  in1_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(13),
      O => in1_13_0
    );
  in1_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_13_SW2_O_pack_1,
      O => in1_13_SW2_O
    );
  in1_13_SW2 : X_LUT4
    generic map(
      INIT => X"ACCC",
      LOC => "SLICE_X46Y61"
    )
    port map (
      ADR0 => reg_EX_result_13_7234,
      ADR1 => reg_ID_data1_13_7531,
      ADR2 => in1_and0007101_0,
      ADR3 => wr_enable_0,
      O => in1_13_SW2_O_pack_1
    );
  in1_14_Q : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X46Y60"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => reg_EX_overflow_14_7396,
      ADR2 => VCC,
      ADR3 => in1_14_SW2_O,
      O => in1(14)
    );
  in1_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(14),
      O => in1_14_0
    );
  in1_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_14_SW2_O_pack_1,
      O => in1_14_SW2_O
    );
  in1_14_SW2 : X_LUT4
    generic map(
      INIT => X"ACCC",
      LOC => "SLICE_X46Y60"
    )
    port map (
      ADR0 => reg_EX_result_14_7233,
      ADR1 => reg_ID_data1_14_7533,
      ADR2 => in1_and0007101_0,
      ADR3 => wr_enable_0,
      O => in1_14_SW2_O_pack_1
    );
  in1_15_Q : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X47Y60"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_and0003_0,
      ADR2 => in1_15_SW2_O,
      ADR3 => reg_EX_overflow_15_7398,
      O => in1(15)
    );
  in1_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(15),
      O => in1_15_0
    );
  in1_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_15_SW2_O_pack_1,
      O => in1_15_SW2_O
    );
  in1_15_SW2 : X_LUT4
    generic map(
      INIT => X"E4CC",
      LOC => "SLICE_X47Y60"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_ID_data1_15_7535,
      ADR2 => reg_EX_result_15_7232,
      ADR3 => in1_and0007101_0,
      O => in1_15_SW2_O_pack_1
    );
  in1_and000324 : X_LUT4
    generic map(
      INIT => X"CC80",
      LOC => "SLICE_X44Y52"
    )
    port map (
      ADR0 => in1_and000312_0,
      ADR1 => in1_or0003_0,
      ADR2 => in1_or0008_0,
      ADR3 => in1_and000318_SW0_O,
      O => in1_and0003
    );
  in1_and0003_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and0003,
      O => in1_and0003_0
    );
  in1_and0003_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000318_SW0_O_pack_1,
      O => in1_and000318_SW0_O
    );
  in1_and000318_SW0 : X_LUT4
    generic map(
      INIT => X"F0F1",
      LOC => "SLICE_X44Y52"
    )
    port map (
      ADR0 => N386_0,
      ADR1 => N192,
      ADR2 => in1_cmp_eq0013_0,
      ADR3 => N372_0,
      O => in1_and000318_SW0_O_pack_1
    );
  in1_and000772 : X_LUT4
    generic map(
      INIT => X"9900",
      LOC => "SLICE_X49Y54"
    )
    port map (
      ADR0 => reg_EX_instr_6_7472,
      ADR1 => reg_ID_instr_6_7541,
      ADR2 => VCC,
      ADR3 => in1_and000771_O,
      O => in1_and000772_19421
    );
  in1_and000772_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000772_19421,
      O => in1_and000772_0
    );
  in1_and000772_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000771_O_pack_1,
      O => in1_and000771_O
    );
  in1_and000771 : X_LUT4
    generic map(
      INIT => X"8421",
      LOC => "SLICE_X49Y54"
    )
    port map (
      ADR0 => reg_EX_instr_8_7544,
      ADR1 => reg_EX_instr_7_7543,
      ADR2 => reg_ID_instr_8_7546,
      ADR3 => reg_ID_instr_7_7545,
      O => in1_and000771_O_pack_1
    );
  wr_index_0_1 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X52Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_instr_6_7472,
      ADR2 => VCC,
      ADR3 => branch_trigger_cmp_eq0001,
      O => wr_index(0)
    );
  wr_index_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_index(0),
      O => wr_index_0_0
    );
  wr_index_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => branch_trigger_cmp_eq0001_pack_1,
      O => branch_trigger_cmp_eq0001
    );
  branch_trigger_cmp_eq00011 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X52Y52"
    )
    port map (
      ADR0 => reg_EX_instr_11_7501,
      ADR1 => reg_EX_instr_9_7499,
      ADR2 => reg_EX_instr_10_7506,
      ADR3 => N96_0,
      O => branch_trigger_cmp_eq0001_pack_1
    );
  in2_and000221_1 : X_LUT4
    generic map(
      INIT => X"CC80",
      LOC => "SLICE_X39Y50"
    )
    port map (
      ADR0 => in2_and00028_7550,
      ADR1 => in1_or0003_0,
      ADR2 => in1_or0009_0,
      ADR3 => in2_and00025_0,
      O => in2_and000221_19469
    );
  in2_and000221_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000221_19469,
      O => in2_and000221_0
    );
  in2_and000221_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and00028_pack_1,
      O => in2_and00028_7550
    );
  in2_and00028 : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "SLICE_X39Y50"
    )
    port map (
      ADR0 => reg_ID_instr_3_7551,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_4_7552,
      ADR3 => reg_ID_instr_5_7553,
      O => in2_and00028_pack_1
    );
  rd_index1_or000655 : X_LUT4
    generic map(
      INIT => X"FCF0",
      LOC => "SLICE_X63Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rd_index1_or000638_7556,
      ADR2 => rd_index1_or0005,
      ADR3 => rd_index1_or000629_0,
      O => rd_index1_or0006
    );
  rd_index1_or0006_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X63Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0006,
      O => rd_index1_or0006_0
    );
  rd_index1_or0006_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X63Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0005_pack_1,
      O => rd_index1_or0005
    );
  rd_index1_or00051 : X_LUT4
    generic map(
      INIT => X"28A0",
      LOC => "SLICE_X63Y56"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_10_146_7414,
      ADR1 => reg_IF_instr_10_7411,
      ADR2 => reg_IF_instr_11_7408,
      ADR3 => reg_IF_instr_9_7412,
      O => rd_index1_or0005_pack_1
    );
  in1_and0007101 : X_LUT4
    generic map(
      INIT => X"FFA8",
      LOC => "SLICE_X38Y54"
    )
    port map (
      ADR0 => in1_and000772_0,
      ADR1 => in1_or0008_0,
      ADR2 => in1_or0009_0,
      ADR3 => in1_and000728_O,
      O => in1_and0007101_19517
    );
  in1_and0007101_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and0007101_19517,
      O => in1_and0007101_0
    );
  in1_and0007101_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000728_O_pack_1,
      O => in1_and000728_O
    );
  in1_and000728 : X_LUT4
    generic map(
      INIT => X"A8A0",
      LOC => "SLICE_X38Y54"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => in1_and000710_0,
      ADR2 => in1_and0008_0,
      ADR3 => in1_and00075_0,
      O => in1_and000728_O_pack_1
    );
  in1_cmp_eq0013_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq0013,
      O => in1_cmp_eq0013_0
    );
  in1_cmp_eq0013_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq00131_SW0_O_pack_1,
      O => in1_cmp_eq00131_SW0_O
    );
  in1_cmp_eq00131 : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X47Y52"
    )
    port map (
      ADR0 => reg_ID_instr_15_7512,
      ADR1 => reg_ID_instr_14_7510,
      ADR2 => in1_cmp_eq00131_SW0_O,
      ADR3 => reg_ID_instr_13_7511,
      O => in1_cmp_eq0013
    );
  in1_cmp_eq0014_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq0014,
      O => in1_cmp_eq0014_0
    );
  in1_cmp_eq0014_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq00143_SW0_O_pack_1,
      O => in1_cmp_eq00143_SW0_O
    );
  in1_cmp_eq00143_SW0 : X_LUT4
    generic map(
      INIT => X"6FF6",
      LOC => "SLICE_X47Y56"
    )
    port map (
      ADR0 => reg_ID_instr_4_7552,
      ADR1 => reg_EX_instr_7_7543,
      ADR2 => reg_EX_instr_6_7472,
      ADR3 => reg_ID_instr_3_7551,
      O => in1_cmp_eq00143_SW0_O_pack_1
    );
  wr_enable_or000185_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable_or000185_19589,
      O => wr_enable_or000185_0
    );
  wr_enable_or000185_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable_or000181_pack_1,
      O => wr_enable_or000181
    );
  reg_EX_overflow_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X40Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(0),
      O => reg_EX_overflow_0_DXMUX_19620
    );
  reg_EX_overflow_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_0_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_0_SW2_O
    );
  reg_EX_overflow_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_0_CLKINV_19602
    );
  reg_EX_overflow_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(1),
      O => reg_EX_overflow_1_DXMUX_19655
    );
  reg_EX_overflow_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_1_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_1_SW2_O
    );
  reg_EX_overflow_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_1_CLKINV_19637
    );
  reg_EX_overflow_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X38Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(2),
      O => reg_EX_overflow_2_DXMUX_19690
    );
  reg_EX_overflow_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_2_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_2_SW2_O
    );
  reg_EX_overflow_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_2_CLKINV_19672
    );
  reg_EX_overflow_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X41Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(3),
      O => reg_EX_overflow_3_DXMUX_19725
    );
  reg_EX_overflow_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_3_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_3_SW2_O
    );
  reg_EX_overflow_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_3_CLKINV_19707
    );
  reg_EX_overflow_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X41Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(4),
      O => reg_EX_overflow_4_DXMUX_19760
    );
  reg_EX_overflow_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_4_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_4_SW2_O
    );
  reg_EX_overflow_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_4_CLKINV_19742
    );
  reg_EX_overflow_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X42Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(5),
      O => reg_EX_overflow_5_DXMUX_19795
    );
  reg_EX_overflow_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_5_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_5_SW2_O
    );
  reg_EX_overflow_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_5_CLKINV_19777
    );
  reg_EX_overflow_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X42Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(6),
      O => reg_EX_overflow_6_DXMUX_19830
    );
  reg_EX_overflow_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_6_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_6_SW2_O
    );
  reg_EX_overflow_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_6_CLKINV_19812
    );
  reg_EX_overflow_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(7),
      O => reg_EX_overflow_7_DXMUX_19865
    );
  reg_EX_overflow_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_7_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_7_SW2_O
    );
  reg_EX_overflow_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_7_CLKINV_19847
    );
  reg_EX_overflow_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(8),
      O => reg_EX_overflow_8_DXMUX_19900
    );
  reg_EX_overflow_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_8_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_8_SW2_O
    );
  reg_EX_overflow_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_8_CLKINV_19882
    );
  reg_EX_overflow_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X40Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(9),
      O => reg_EX_overflow_9_DXMUX_19935
    );
  reg_EX_overflow_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_9_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_9_SW2_O
    );
  reg_EX_overflow_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_9_CLKINV_19917
    );
  rd_index1_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1(0),
      O => rd_index1_0_0
    );
  rd_index1_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0003_pack_1,
      O => rd_index1_or0003
    );
  ram_addr_and0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_addr_and0000,
      O => ram_addr_and0000_0
    );
  ram_addr_and0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N13_pack_1,
      O => N13
    );
  wr_overflow_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow,
      O => wr_overflow_0
    );
  wr_overflow_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_or000034_SW0_O_pack_1,
      O => wr_overflow_or000034_SW0_O
    );
  in1_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(0),
      O => in1_0_0
    );
  in1_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N338_pack_1,
      O => N338
    );
  in1_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(1),
      O => in1_1_0
    );
  in1_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N340_pack_1,
      O => N340
    );
  in1_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(2),
      O => in1_2_0
    );
  in1_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N342_pack_1,
      O => N342
    );
  in1_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(3),
      O => in1_3_0
    );
  in1_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N350_pack_1,
      O => N350
    );
  in1_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(4),
      O => in1_4_0
    );
  in1_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N348_pack_1,
      O => N348
    );
  in1_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(5),
      O => in1_5_0
    );
  in1_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N346_pack_1,
      O => N346
    );
  in1_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(6),
      O => in1_6_0
    );
  in1_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N344_pack_1,
      O => N344
    );
  in1_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(7),
      O => in1_7_0
    );
  in1_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N356_pack_1,
      O => N356
    );
  in1_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(8),
      O => in1_8_0
    );
  in1_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N354_pack_1,
      O => N354
    );
  in1_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(9),
      O => in1_9_0
    );
  in1_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N352_pack_1,
      O => N352
    );
  wr_enable_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable,
      O => wr_enable_0
    );
  wr_enable_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable_or000160_pack_1,
      O => wr_enable_or000160_7563
    );
  reg_EX_overflow_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X40Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(10),
      O => reg_EX_overflow_10_DXMUX_20306
    );
  reg_EX_overflow_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_10_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_10_SW2_O
    );
  reg_EX_overflow_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_10_CLKINV_20288
    );
  reg_EX_overflow_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(11),
      O => reg_EX_overflow_11_DXMUX_20341
    );
  reg_EX_overflow_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_11_SW2_O_pack_1,
      O => reg_EX_overflow_mux0001_11_SW2_O
    );
  reg_EX_overflow_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_11_CLKINV_20323
    );
  reg_EX_overflow_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X40Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(12),
      O => reg_EX_overflow_12_DXMUX_20376
    );
  reg_EX_overflow_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_12_SW0_O_pack_1,
      O => reg_EX_overflow_mux0001_12_SW0_O
    );
  reg_EX_overflow_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_12_CLKINV_20358
    );
  reg_EX_overflow_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(13),
      O => reg_EX_overflow_13_DXMUX_20411
    );
  reg_EX_overflow_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_13_SW0_O_pack_1,
      O => reg_EX_overflow_mux0001_13_SW0_O
    );
  reg_EX_overflow_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_13_CLKINV_20393
    );
  reg_EX_overflow_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(14),
      O => reg_EX_overflow_14_DXMUX_20446
    );
  reg_EX_overflow_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_14_SW0_O_pack_1,
      O => reg_EX_overflow_mux0001_14_SW0_O
    );
  reg_EX_overflow_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_14_CLKINV_20428
    );
  reg_EX_overflow_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X41Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001(15),
      O => reg_EX_overflow_15_DXMUX_20481
    );
  reg_EX_overflow_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_overflow_mux0001_15_SW0_O_pack_1,
      O => reg_EX_overflow_mux0001_15_SW0_O
    );
  reg_EX_overflow_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_overflow_15_CLKINV_20463
    );
  N115_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N115,
      O => N115_0
    );
  N115_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_10_146_pack_1,
      O => reg_ID_data1_mux0007_10_146_7414
    );
  N394_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N477_pack_2,
      O => N477
    );
  N397_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N479_pack_2,
      O => N479
    );
  N400_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N481_pack_2,
      O => N481
    );
  N403_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N483_pack_2,
      O => N483
    );
  alu_mode_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode(0),
      O => alu_mode_0_0
    );
  alu_mode_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode_0_4_O_pack_1,
      O => alu_mode_0_4_O
    );
  N15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N15,
      O => N15_0
    );
  N15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode_0_1_SW0_O_pack_1,
      O => alu_mode_0_1_SW0_O
    );
  in1_or000831 : X_LUT4
    generic map(
      INIT => X"0055",
      LOC => "SLICE_X43Y53"
    )
    port map (
      ADR0 => reg_ID_instr_12_7509,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_14_7510,
      O => N102_pack_1
    );
  alu_mode_2_1 : X_LUT4
    generic map(
      INIT => X"0200",
      LOC => "SLICE_X43Y53"
    )
    port map (
      ADR0 => N102,
      ADR1 => reg_ID_instr_13_7511,
      ADR2 => reg_ID_instr_15_7512,
      ADR3 => reg_ID_instr_11_7470,
      O => alu_mode(2)
    );
  alu_mode_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode(2),
      O => alu_mode_2_0
    );
  alu_mode_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N102_pack_1,
      O => N102
    );
  PC_next_0_1 : X_LUT4
    generic map(
      INIT => X"A0F5",
      LOC => "SLICE_X71Y46"
    )
    port map (
      ADR0 => branch_trigger,
      ADR1 => VCC,
      ADR2 => reg_EX_result_0_7247,
      ADR3 => PC(0),
      O => PC_next(0)
    );
  PC_1_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X71Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_1_SRINV_20692,
      O => PC_1_FFY_RST
    );
  PC_0 : X_FF
    generic map(
      LOC => "SLICE_X71Y46",
      INIT => '0'
    )
    port map (
      I => PC_1_DYMUX_20701,
      CE => VCC,
      CLK => PC_1_CLKINVNOT,
      SET => GND,
      RST => PC_1_FFY_RST,
      O => PC(0)
    );
  PC_next_1_1 : X_LUT4
    generic map(
      INIT => X"C5CA",
      LOC => "SLICE_X71Y46"
    )
    port map (
      ADR0 => PC(1),
      ADR1 => reg_EX_result_1_7246,
      ADR2 => branch_trigger,
      ADR3 => PC(0),
      O => PC_next(1)
    );
  PC_1_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X71Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_1_SRINV_20692,
      O => PC_1_FFX_RST
    );
  PC_1 : X_FF
    generic map(
      LOC => "SLICE_X71Y46",
      INIT => '0'
    )
    port map (
      I => PC_1_DXMUX_20715,
      CE => VCC,
      CLK => PC_1_CLKINVNOT,
      SET => GND,
      RST => PC_1_FFX_RST,
      O => PC(1)
    );
  PC_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X71Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(1),
      O => PC_1_DXMUX_20715
    );
  PC_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X71Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(0),
      O => PC_1_DYMUX_20701
    );
  PC_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X71Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => PC_1_SRINV_20692
    );
  PC_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X71Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => PC_1_CLKINVNOT
    );
  PC_3_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X75Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_3_SRINV_20735,
      O => PC_3_FFY_RST
    );
  PC_2 : X_FF
    generic map(
      LOC => "SLICE_X75Y46",
      INIT => '0'
    )
    port map (
      I => PC_3_DYMUX_20743,
      CE => VCC,
      CLK => PC_3_CLKINVNOT,
      SET => GND,
      RST => PC_3_FFY_RST,
      O => PC(2)
    );
  PC_next_2_Q : X_LUT4
    generic map(
      INIT => X"ACA3",
      LOC => "SLICE_X75Y46"
    )
    port map (
      ADR0 => reg_EX_result_2_7245,
      ADR1 => N135_0,
      ADR2 => branch_trigger,
      ADR3 => PC(2),
      O => PC_next(2)
    );
  PC_next_3_Q : X_LUT4
    generic map(
      INIT => X"CCA5",
      LOC => "SLICE_X75Y46"
    )
    port map (
      ADR0 => PC(3),
      ADR1 => reg_EX_result_3_7244,
      ADR2 => N139_0,
      ADR3 => branch_trigger,
      O => PC_next(3)
    );
  PC_3_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X75Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_3_SRINV_20735,
      O => PC_3_FFX_RST
    );
  PC_3 : X_FF
    generic map(
      LOC => "SLICE_X75Y46",
      INIT => '0'
    )
    port map (
      I => PC_3_DXMUX_20757,
      CE => VCC,
      CLK => PC_3_CLKINVNOT,
      SET => GND,
      RST => PC_3_FFX_RST,
      O => PC(3)
    );
  PC_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X75Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(3),
      O => PC_3_DXMUX_20757
    );
  PC_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X75Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(2),
      O => PC_3_DYMUX_20743
    );
  PC_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X75Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => PC_3_SRINV_20735
    );
  PC_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X75Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => PC_3_CLKINVNOT
    );
  PC_5_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X76Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_5_SRINV_20777,
      O => PC_5_FFY_RST
    );
  PC_4 : X_FF
    generic map(
      LOC => "SLICE_X76Y46",
      INIT => '0'
    )
    port map (
      I => PC_5_DYMUX_20785,
      CE => VCC,
      CLK => PC_5_CLKINVNOT,
      SET => GND,
      RST => PC_5_FFY_RST,
      O => PC(4)
    );
  PC_next_4_1 : X_LUT4
    generic map(
      INIT => X"AA3C",
      LOC => "SLICE_X76Y46"
    )
    port map (
      ADR0 => reg_EX_result_4_7243,
      ADR1 => PC(4),
      ADR2 => Madd_PC_next_addsub0000_cy(3),
      ADR3 => branch_trigger,
      O => PC_next(4)
    );
  PC_next_5_Q : X_LUT4
    generic map(
      INIT => X"B88B",
      LOC => "SLICE_X76Y46"
    )
    port map (
      ADR0 => reg_EX_result_5_7242,
      ADR1 => branch_trigger,
      ADR2 => N133_0,
      ADR3 => PC(5),
      O => PC_next(5)
    );
  PC_5_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X76Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_5_SRINV_20777,
      O => PC_5_FFX_RST
    );
  PC_5 : X_FF
    generic map(
      LOC => "SLICE_X76Y46",
      INIT => '0'
    )
    port map (
      I => PC_5_DXMUX_20799,
      CE => VCC,
      CLK => PC_5_CLKINVNOT,
      SET => GND,
      RST => PC_5_FFX_RST,
      O => PC(5)
    );
  PC_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(5),
      O => PC_5_DXMUX_20799
    );
  PC_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(4),
      O => PC_5_DYMUX_20785
    );
  PC_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => PC_5_SRINV_20777
    );
  PC_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X76Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => PC_5_CLKINVNOT
    );
  PC_next_6_Q : X_LUT4
    generic map(
      INIT => X"CAC5",
      LOC => "SLICE_X79Y46"
    )
    port map (
      ADR0 => PC(6),
      ADR1 => reg_EX_result_15_7232,
      ADR2 => branch_trigger,
      ADR3 => N137_0,
      O => PC_next(6)
    );
  PC_6_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X79Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => PC_6_FFY_RST
    );
  PC_6 : X_FF
    generic map(
      LOC => "SLICE_X79Y46",
      INIT => '0'
    )
    port map (
      I => PC_6_DYMUX_20825,
      CE => VCC,
      CLK => PC_6_CLKINVNOT,
      SET => GND,
      RST => PC_6_FFY_RST,
      O => PC(6)
    );
  outport_15_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X79Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outport_cmp_eq0000_7615,
      ADR2 => VCC,
      ADR3 => reg_EX_result_15_7232,
      O => outport_15_OBUF_20838
    );
  PC_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC_next(6),
      O => PC_6_DYMUX_20825
    );
  PC_6_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X79Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => PC_6_CLKINVNOT
    );
  reg_EX_instr_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(8),
      O => reg_EX_instr_7_DXMUX_20876
    );
  reg_EX_instr_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(9),
      O => reg_EX_instr_7_DYMUX_20860
    );
  reg_EX_instr_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_instr_7_SRINV_20850
    );
  reg_EX_instr_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_instr_7_CLKINV_20849
    );
  reg_EX_instr_mux0001_9_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X47Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_6_7541,
      O => reg_EX_instr_mux0001(9)
    );
  reg_EX_instr_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(6),
      O => reg_EX_instr_9_DXMUX_20918
    );
  reg_EX_instr_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(7),
      O => reg_EX_instr_9_DYMUX_20902
    );
  reg_EX_instr_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_instr_9_SRINV_20892
    );
  reg_EX_instr_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_instr_9_CLKINV_20891
    );
  reg_EX_instr_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(4),
      O => reg_EX_instr_11_DXMUX_20960
    );
  reg_EX_instr_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(5),
      O => reg_EX_instr_11_DYMUX_20944
    );
  reg_EX_instr_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_instr_11_SRINV_20934
    );
  reg_EX_instr_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_instr_11_CLKINV_20933
    );
  reg_EX_instr_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(2),
      O => reg_EX_instr_13_DXMUX_21002
    );
  reg_EX_instr_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(3),
      O => reg_EX_instr_13_DYMUX_20986
    );
  reg_EX_instr_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_instr_13_SRINV_20976
    );
  reg_EX_instr_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_instr_13_CLKINV_20975
    );
  reg_EX_instr_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(0),
      O => reg_EX_instr_15_DXMUX_21044
    );
  reg_EX_instr_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_EX_instr_mux0001(1),
      O => reg_EX_instr_15_DYMUX_21028
    );
  reg_EX_instr_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_instr_15_SRINV_21018
    );
  reg_EX_instr_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_instr_15_CLKINV_21017
    );
  reg_EX_result_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(1),
      O => reg_EX_result_1_DXMUX_21086
    );
  reg_EX_result_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(0),
      O => reg_EX_result_1_DYMUX_21071
    );
  reg_EX_result_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_result_1_SRINV_21062
    );
  reg_EX_result_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_result_1_CLKINV_21061
    );
  reg_EX_result_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(3),
      O => reg_EX_result_3_DXMUX_21128
    );
  reg_EX_result_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(2),
      O => reg_EX_result_3_DYMUX_21113
    );
  reg_EX_result_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_result_3_SRINV_21104
    );
  reg_EX_result_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_result_3_CLKINV_21103
    );
  reg_EX_result_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X41Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(5),
      O => reg_EX_result_5_DXMUX_21170
    );
  reg_EX_result_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X41Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(4),
      O => reg_EX_result_5_DYMUX_21155
    );
  reg_EX_result_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_result_5_SRINV_21146
    );
  reg_EX_result_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_result_5_CLKINV_21145
    );
  reg_EX_result_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(7),
      O => reg_EX_result_7_DXMUX_21212
    );
  reg_EX_result_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(6),
      O => reg_EX_result_7_DYMUX_21197
    );
  reg_EX_result_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_result_7_SRINV_21188
    );
  reg_EX_result_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_result_7_CLKINV_21187
    );
  reg_EX_result_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(9),
      O => reg_EX_result_9_DXMUX_21254
    );
  reg_EX_result_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X39Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(8),
      O => reg_EX_result_9_DYMUX_21239
    );
  reg_EX_result_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_result_9_SRINV_21230
    );
  reg_EX_result_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_result_9_CLKINV_21229
    );
  reg_ID_data1_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(11),
      O => reg_ID_data1_11_DXMUX_21296
    );
  reg_ID_data1_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(10),
      O => reg_ID_data1_11_DYMUX_21282
    );
  reg_ID_data1_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_data1_11_SRINV_21274
    );
  reg_ID_data1_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data1_11_CLKINV_21273
    );
  reg_ID_data1_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(13),
      O => reg_ID_data1_13_DXMUX_21338
    );
  reg_ID_data1_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(12),
      O => reg_ID_data1_13_DYMUX_21324
    );
  reg_ID_data1_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_data1_13_SRINV_21316
    );
  reg_ID_data1_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data1_13_CLKINV_21315
    );
  reg_ID_data1_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(15),
      O => reg_ID_data1_15_DXMUX_21380
    );
  reg_ID_data1_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(14),
      O => reg_ID_data1_15_DYMUX_21366
    );
  reg_ID_data1_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_data1_15_SRINV_21358
    );
  reg_ID_data1_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data1_15_CLKINV_21357
    );
  reg_ID_data2_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(4),
      O => reg_ID_data2_11_DXMUX_21422
    );
  reg_ID_data2_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(5),
      O => reg_ID_data2_11_DYMUX_21408
    );
  reg_ID_data2_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_data2_11_SRINV_21400
    );
  reg_ID_data2_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_11_CLKINV_21399
    );
  reg_ID_data2_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(2),
      O => reg_ID_data2_13_DXMUX_21464
    );
  reg_ID_data2_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(3),
      O => reg_ID_data2_13_DYMUX_21450
    );
  reg_ID_data2_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_data2_13_SRINV_21442
    );
  reg_ID_data2_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_13_CLKINV_21441
    );
  reg_ID_data2_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(0),
      O => reg_ID_data2_15_DXMUX_21506
    );
  reg_ID_data2_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(1),
      O => reg_ID_data2_15_DYMUX_21492
    );
  reg_ID_data2_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_data2_15_SRINV_21484
    );
  reg_ID_data2_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_15_CLKINV_21483
    );
  reg_ID_data1_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(1),
      O => reg_ID_data1_1_DXMUX_21548
    );
  reg_ID_data1_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(0),
      O => reg_ID_data1_1_DYMUX_21533
    );
  reg_ID_data1_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_data1_1_SRINV_21524
    );
  reg_ID_data1_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data1_1_CLKINV_21523
    );
  reg_ID_data1_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(3),
      O => reg_ID_data1_3_DXMUX_21590
    );
  reg_ID_data1_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(2),
      O => reg_ID_data1_3_DYMUX_21575
    );
  reg_ID_data1_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_data1_3_SRINV_21566
    );
  reg_ID_data1_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data1_3_CLKINV_21565
    );
  reg_ID_data2_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(14),
      O => reg_ID_data2_1_DXMUX_21632
    );
  reg_ID_data2_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(15),
      O => reg_ID_data2_1_DYMUX_21618
    );
  reg_ID_data2_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_data2_1_SRINV_21610
    );
  reg_ID_data2_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_1_CLKINV_21609
    );
  reg_ID_data1_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(5),
      O => reg_ID_data1_5_DXMUX_21674
    );
  reg_ID_data1_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(4),
      O => reg_ID_data1_5_DYMUX_21659
    );
  reg_ID_data1_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_data1_5_SRINV_21650
    );
  reg_ID_data1_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data1_5_CLKINV_21649
    );
  reg_ID_data2_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(12),
      O => reg_ID_data2_3_DXMUX_21716
    );
  reg_ID_data2_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(13),
      O => reg_ID_data2_3_DYMUX_21702
    );
  reg_ID_data2_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_data2_3_SRINV_21694
    );
  reg_ID_data2_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_3_CLKINV_21693
    );
  reg_ID_data1_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(7),
      O => reg_ID_data1_7_DXMUX_21758
    );
  reg_ID_data1_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(6),
      O => reg_ID_data1_7_DYMUX_21744
    );
  reg_ID_data1_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_data1_7_SRINV_21735
    );
  reg_ID_data1_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data1_7_CLKINV_21734
    );
  reg_ID_data1_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(8),
      O => reg_ID_data1_8_DYMUX_21781
    );
  reg_ID_data1_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data1_8_CLKINV_21772
    );
  reg_ID_data2_7_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X50Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_7_SRINV_21801,
      O => reg_ID_data2_7_FFX_RST
    );
  reg_ID_data2_7 : X_FF
    generic map(
      LOC => "SLICE_X50Y59",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_7_DXMUX_21823,
      CE => VCC,
      CLK => reg_ID_data2_7_CLKINV_21800,
      SET => GND,
      RST => reg_ID_data2_7_FFX_RST,
      O => reg_ID_data2_7_7436
    );
  reg_ID_data2_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(8),
      O => reg_ID_data2_7_DXMUX_21823
    );
  reg_ID_data2_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(9),
      O => reg_ID_data2_7_DYMUX_21809
    );
  reg_ID_data2_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_data2_7_SRINV_21801
    );
  reg_ID_data2_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_7_CLKINV_21800
    );
  reg_ID_data2_mux0007_6_1 : X_LUT4
    generic map(
      INIT => X"AA80",
      LOC => "SLICE_X47Y59"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => rd_data2(9),
      ADR2 => N95,
      ADR3 => N18_0,
      O => reg_ID_data2_mux0007(6)
    );
  reg_ID_data2_9_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X47Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_data2_9_FFY_RST
    );
  reg_ID_data2_9 : X_FF
    generic map(
      LOC => "SLICE_X47Y59",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_9_DYMUX_21846,
      CE => VCC,
      CLK => reg_ID_data2_9_CLKINV_21837,
      SET => GND,
      RST => reg_ID_data2_9_FFY_RST,
      O => reg_ID_data2_9_7440
    );
  reg_ID_data2_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(6),
      O => reg_ID_data2_9_DYMUX_21846
    );
  reg_ID_data2_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_9_CLKINV_21837
    );
  reg_ID_instr_11_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X45Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_11_SRINV_21862,
      O => reg_ID_instr_11_FFY_RST
    );
  reg_ID_instr_10 : X_FF
    generic map(
      LOC => "SLICE_X45Y55",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_11_DYMUX_21872,
      CE => VCC,
      CLK => reg_ID_instr_11_CLKINV_21861,
      SET => GND,
      RST => reg_ID_instr_11_FFY_RST,
      O => reg_ID_instr_10_7471
    );
  reg_ID_instr_mux0001_5_1 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X45Y55"
    )
    port map (
      ADR0 => reg_IF_instr_10_7411,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => branch_trigger,
      O => reg_ID_instr_mux0001(5)
    );
  reg_ID_instr_mux0001_4_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X45Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => branch_trigger,
      ADR3 => reg_IF_instr_11_7408,
      O => reg_ID_instr_mux0001(4)
    );
  reg_ID_instr_11_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X45Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_11_SRINV_21862,
      O => reg_ID_instr_11_FFX_RST
    );
  reg_ID_instr_11 : X_FF
    generic map(
      LOC => "SLICE_X45Y55",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_11_DXMUX_21888,
      CE => VCC,
      CLK => reg_ID_instr_11_CLKINV_21861,
      SET => GND,
      RST => reg_ID_instr_11_FFX_RST,
      O => reg_ID_instr_11_7470
    );
  reg_ID_instr_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(4),
      O => reg_ID_instr_11_DXMUX_21888
    );
  reg_ID_instr_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(5),
      O => reg_ID_instr_11_DYMUX_21872
    );
  reg_ID_instr_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_instr_11_SRINV_21862
    );
  reg_ID_instr_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_instr_11_CLKINV_21861
    );
  reg_ID_instr_13_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X44Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_13_SRINV_21904,
      O => reg_ID_instr_13_FFY_RST
    );
  reg_ID_instr_12 : X_FF
    generic map(
      LOC => "SLICE_X44Y53",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_13_DYMUX_21914,
      CE => VCC,
      CLK => reg_ID_instr_13_CLKINV_21903,
      SET => GND,
      RST => reg_ID_instr_13_FFY_RST,
      O => reg_ID_instr_12_7509
    );
  reg_ID_instr_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X44Y53"
    )
    port map (
      ADR0 => reg_IF_instr_12_7604,
      ADR1 => branch_trigger,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(3)
    );
  reg_ID_instr_mux0001_2_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X44Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_13_7603,
      O => reg_ID_instr_mux0001(2)
    );
  reg_ID_instr_13_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X44Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_13_SRINV_21904,
      O => reg_ID_instr_13_FFX_RST
    );
  reg_ID_instr_13 : X_FF
    generic map(
      LOC => "SLICE_X44Y53",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_13_DXMUX_21930,
      CE => VCC,
      CLK => reg_ID_instr_13_CLKINV_21903,
      SET => GND,
      RST => reg_ID_instr_13_FFX_RST,
      O => reg_ID_instr_13_7511
    );
  reg_ID_instr_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(2),
      O => reg_ID_instr_13_DXMUX_21930
    );
  reg_ID_instr_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(3),
      O => reg_ID_instr_13_DYMUX_21914
    );
  reg_ID_instr_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_instr_13_SRINV_21904
    );
  reg_ID_instr_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_instr_13_CLKINV_21903
    );
  reg_ID_instr_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X45Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => branch_trigger,
      ADR3 => reg_IF_instr_15_7601,
      O => reg_ID_instr_mux0001(0)
    );
  reg_ID_instr_15_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X45Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_15_SRINV_21946,
      O => reg_ID_instr_15_FFY_RST
    );
  reg_ID_instr_14 : X_FF
    generic map(
      LOC => "SLICE_X45Y53",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_15_DYMUX_21956,
      CE => VCC,
      CLK => reg_ID_instr_15_CLKINV_21945,
      SET => GND,
      RST => reg_ID_instr_15_FFY_RST,
      O => reg_ID_instr_14_7510
    );
  reg_ID_instr_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(0),
      O => reg_ID_instr_15_DXMUX_21972
    );
  reg_ID_instr_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(1),
      O => reg_ID_instr_15_DYMUX_21956
    );
  reg_ID_instr_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_instr_15_SRINV_21946
    );
  reg_ID_instr_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_instr_15_CLKINV_21945
    );
  reg_ID_instr_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(14),
      O => reg_ID_instr_1_DXMUX_22014
    );
  reg_ID_instr_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(15),
      O => reg_ID_instr_1_DYMUX_21998
    );
  reg_ID_instr_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_instr_1_SRINV_21988
    );
  reg_ID_instr_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_instr_1_CLKINV_21987
    );
  reg_ID_instr_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(12),
      O => reg_ID_instr_3_DXMUX_22056
    );
  reg_ID_instr_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(13),
      O => reg_ID_instr_3_DYMUX_22040
    );
  reg_ID_instr_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_instr_3_SRINV_22030
    );
  reg_ID_instr_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_instr_3_CLKINV_22029
    );
  reg_ID_instr_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(10),
      O => reg_ID_instr_5_DXMUX_22098
    );
  reg_ID_instr_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(11),
      O => reg_ID_instr_5_DYMUX_22082
    );
  reg_ID_instr_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_instr_5_SRINV_22072
    );
  reg_ID_instr_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_instr_5_CLKINV_22071
    );
  reg_ID_instr_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(8),
      O => reg_ID_instr_7_DXMUX_22140
    );
  reg_ID_instr_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(9),
      O => reg_ID_instr_7_DYMUX_22124
    );
  reg_ID_instr_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_instr_7_SRINV_22114
    );
  reg_ID_instr_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_instr_7_CLKINV_22113
    );
  reg_ID_instr_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(6),
      O => reg_ID_instr_9_DXMUX_22182
    );
  reg_ID_instr_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_instr_mux0001(7),
      O => reg_ID_instr_9_DYMUX_22166
    );
  reg_ID_instr_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_instr_9_SRINV_22156
    );
  reg_ID_instr_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_instr_9_CLKINV_22155
    );
  reg_IF_instr_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(4),
      O => reg_IF_instr_11_DXMUX_22224
    );
  reg_IF_instr_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(5),
      O => reg_IF_instr_11_DYMUX_22208
    );
  reg_IF_instr_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_instr_11_SRINV_22198
    );
  reg_IF_instr_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_instr_11_CLKINV_22197
    );
  reg_IF_instr_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X75Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(2),
      O => reg_IF_instr_13_DXMUX_22266
    );
  reg_IF_instr_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X75Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(3),
      O => reg_IF_instr_13_DYMUX_22250
    );
  reg_IF_instr_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X75Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_instr_13_SRINV_22240
    );
  reg_IF_instr_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X75Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_instr_13_CLKINV_22239
    );
  reg_IF_instr_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(0),
      O => reg_IF_instr_15_DXMUX_22308
    );
  reg_IF_instr_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(1),
      O => reg_IF_instr_15_DYMUX_22292
    );
  reg_IF_instr_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_instr_15_SRINV_22282
    );
  reg_IF_instr_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_instr_15_CLKINV_22281
    );
  reg_IF_instr_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(14),
      O => reg_IF_instr_1_DXMUX_22350
    );
  reg_IF_instr_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(15),
      O => reg_IF_instr_1_DYMUX_22334
    );
  reg_IF_instr_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_instr_1_SRINV_22324
    );
  reg_IF_instr_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_instr_1_CLKINV_22323
    );
  reg_IF_instr_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(12),
      O => reg_IF_instr_3_DXMUX_22392
    );
  reg_IF_instr_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(13),
      O => reg_IF_instr_3_DYMUX_22376
    );
  reg_IF_instr_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_instr_3_SRINV_22366
    );
  reg_IF_instr_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_instr_3_CLKINV_22365
    );
  reg_IF_instr_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(10),
      O => reg_IF_instr_5_DXMUX_22434
    );
  reg_IF_instr_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(11),
      O => reg_IF_instr_5_DYMUX_22418
    );
  reg_IF_instr_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_instr_5_SRINV_22408
    );
  reg_IF_instr_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_instr_5_CLKINV_22407
    );
  reg_IF_instr_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(8),
      O => reg_IF_instr_7_DYMUX_22457
    );
  reg_IF_instr_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_instr_7_CLKINV_22446
    );
  reg_IF_instr_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(6),
      O => reg_IF_instr_9_DXMUX_22499
    );
  reg_IF_instr_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(7),
      O => reg_IF_instr_9_DYMUX_22483
    );
  reg_IF_instr_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_instr_9_SRINV_22473
    );
  reg_IF_instr_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_instr_9_CLKINV_22472
    );
  reg_EX_result_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(11),
      O => reg_EX_result_11_DXMUX_22541
    );
  reg_EX_result_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(10),
      O => reg_EX_result_11_DYMUX_22526
    );
  reg_EX_result_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_result_11_SRINV_22517
    );
  reg_EX_result_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_result_11_CLKINV_22516
    );
  reg_EX_result_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(13),
      O => reg_EX_result_13_DYMUX_22564
    );
  reg_EX_result_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_result_13_CLKINV_22554
    );
  reg_EX_result_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X41Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(15),
      O => reg_EX_result_15_DXMUX_22606
    );
  reg_EX_result_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X41Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(14),
      O => reg_EX_result_15_DYMUX_22591
    );
  reg_EX_result_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_result_15_SRINV_22582
    );
  reg_EX_result_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_result_15_CLKINV_22581
    );
  alu_mode_0_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode_0_15_22802,
      O => alu_mode_0_15_0
    );
  alu_mode_0_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and00075_22795,
      O => in1_and00075_0
    );
  N139_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X74Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N139,
      O => N139_0
    );
  N139_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X74Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N135,
      O => N135_0
    );
  N334_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N334,
      O => N334_0
    );
  N334_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N336,
      O => N336_0
    );
  N137_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N137,
      O => N137_0
    );
  in1_and000710 : X_LUT4
    generic map(
      INIT => X"00C0",
      LOC => "SLICE_X47Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_11_7470,
      ADR2 => reg_ID_instr_9_7400,
      ADR3 => reg_ID_instr_13_7511,
      O => in1_and000710_22886
    );
  in1_and000710_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000710_22886,
      O => in1_and000710_0
    );
  in1_and000710_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_or000892_22878,
      O => in1_or000892_0
    );
  in1_or000892 : X_LUT4
    generic map(
      INIT => X"000F",
      LOC => "SLICE_X47Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_12_7509,
      ADR3 => reg_ID_instr_13_7511,
      O => in1_or000892_22878
    );
  wr_index_1_1 : X_LUT4
    generic map(
      INIT => X"EEEE",
      LOC => "SLICE_X50Y61"
    )
    port map (
      ADR0 => reg_EX_instr_7_7543,
      ADR1 => branch_trigger_cmp_eq0001,
      ADR2 => VCC,
      ADR3 => VCC,
      O => wr_index(1)
    );
  wr_index_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_index(1),
      O => wr_index_1_0
    );
  wr_index_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(10),
      O => wr_overflow_data_10_0
    );
  wr_overflow_data_10_1 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X50Y61"
    )
    port map (
      ADR0 => branch_trigger_cmp_eq0001,
      ADR1 => reg_EX_overflow_10_7388,
      ADR2 => VCC,
      ADR3 => VCC,
      O => wr_overflow_data(10)
    );
  wr_index_2_1 : X_LUT4
    generic map(
      INIT => X"EEEE",
      LOC => "SLICE_X48Y57"
    )
    port map (
      ADR0 => reg_EX_instr_8_7544,
      ADR1 => branch_trigger_cmp_eq0001,
      ADR2 => VCC,
      ADR3 => VCC,
      O => wr_index(2)
    );
  wr_index_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_index(2),
      O => wr_index_2_0
    );
  wr_index_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(11),
      O => wr_overflow_data_11_0
    );
  wr_overflow_data_11_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X48Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger_cmp_eq0001,
      ADR2 => VCC,
      ADR3 => reg_EX_overflow_11_7390,
      O => wr_overflow_data(11)
    );
  wr_overflow_data_13_1 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X48Y69"
    )
    port map (
      ADR0 => branch_trigger_cmp_eq0001,
      ADR1 => reg_EX_overflow_13_7394,
      ADR2 => VCC,
      ADR3 => VCC,
      O => wr_overflow_data(13)
    );
  wr_overflow_data_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(13),
      O => wr_overflow_data_13_0
    );
  wr_overflow_data_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(12),
      O => wr_overflow_data_12_0
    );
  wr_overflow_data_12_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X48Y69"
    )
    port map (
      ADR0 => branch_trigger_cmp_eq0001,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_12_7392,
      ADR3 => VCC,
      O => wr_overflow_data(12)
    );
  wr_overflow_data_15_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X49Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_15_7398,
      ADR3 => branch_trigger_cmp_eq0001,
      O => wr_overflow_data(15)
    );
  wr_overflow_data_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(15),
      O => wr_overflow_data_15_0
    );
  wr_overflow_data_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(14),
      O => wr_overflow_data_14_0
    );
  wr_overflow_data_14_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X49Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_14_7396,
      ADR3 => branch_trigger_cmp_eq0001,
      O => wr_overflow_data(14)
    );
  rd_index1_or00041 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X65Y54"
    )
    port map (
      ADR0 => reg_IF_instr_13_7603,
      ADR1 => reg_IF_instr_15_7601,
      ADR2 => N129,
      ADR3 => reg_IF_instr_14_7602,
      O => N16
    );
  N16_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N16,
      O => N16_0
    );
  N16_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N129_pack_1,
      O => N129
    );
  rd_index1_or00041_SW0 : X_LUT4
    generic map(
      INIT => X"FFF0",
      LOC => "SLICE_X65Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_IF_instr_12_7604,
      ADR3 => reg_IF_instr_11_7408,
      O => N129_pack_1
    );
  rd_index2_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index2(0),
      O => rd_index2_0_0
    );
  rd_index2_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0007_pack_1,
      O => rd_index1_or0007
    );
  in1_and000312_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_and000312_23042,
      O => in1_and000312_0
    );
  reg_ID_data2_8_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X52Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_data2_8_FFX_RST
    );
  reg_ID_data2_8 : X_FF
    generic map(
      LOC => "SLICE_X52Y58",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_8_DXMUX_23073,
      CE => VCC,
      CLK => reg_ID_data2_8_CLKINV_23057,
      SET => GND,
      RST => reg_ID_data2_8_FFX_RST,
      O => reg_ID_data2_8_7438
    );
  reg_ID_data2_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(7),
      O => reg_ID_data2_8_DXMUX_23073
    );
  reg_ID_data2_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => N95_pack_1,
      O => N95
    );
  reg_ID_data2_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_8_CLKINV_23057
    );
  rd_index2_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index2(2),
      O => rd_index2_2_0
    );
  rd_index2_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007_10_13_23093,
      O => reg_ID_data2_mux0007_10_13_0
    );
  N125_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N125,
      O => N125_0
    );
  N125_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N127,
      O => N127_0
    );
  ram_wr_enable_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => ram_wr_enable(0),
      O => ram_wr_enable_0_0
    );
  ram_wr_enable_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N811,
      O => N811_0
    );
  N117_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N117,
      O => N117_0
    );
  N117_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N5_pack_1,
      O => N5
    );
  reg_ID_data2_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(10),
      O => reg_ID_data2_5_DXMUX_23204
    );
  reg_ID_data2_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007_10_2_pack_1,
      O => reg_ID_data2_mux0007_10_2_7653
    );
  reg_ID_data2_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_5_CLKINV_23187
    );
  reg_ID_data2_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007(11),
      O => reg_ID_data2_4_DXMUX_23239
    );
  reg_ID_data2_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007_11_2_pack_1,
      O => reg_ID_data2_mux0007_11_2_7655
    );
  reg_ID_data2_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data2_4_CLKINV_23222
    );
  reg_ID_data2_mux0007_11_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007_11_13_23267,
      O => reg_ID_data2_mux0007_11_13_0
    );
  reg_ID_data2_mux0007_11_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data2_mux0007_10_7_pack_1,
      O => reg_ID_data2_mux0007_10_7
    );
  N18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N18,
      O => N18_0
    );
  N18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N19_pack_1,
      O => N19
    );
  in2_and0002_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0002,
      O => in2_and0002_0
    );
  in2_and000552_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000552_23315,
      O => in2_and000552_0
    );
  in2_and000536_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and000536_23327,
      O => in2_and000536_0
    );
  N322_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N322,
      O => N322_0
    );
  N322_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2_and0005_pack_1,
      O => in2_and0005
    );
  N112_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => N112,
      O => N112_0
    );
  N112_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => or0000_0_or0000,
      O => or0000_0_or0000_0
    );
  reg_ID_data1_mux0007_10_134_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007_10_134_23399,
      O => reg_ID_data1_mux0007_10_134_0
    );
  reg_ID_data1_mux0007_10_134_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N113,
      O => N113_0
    );
  N121_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => N121,
      O => N121_0
    );
  N121_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => N123,
      O => N123_0
    );
  N110_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N110,
      O => N110_0
    );
  N110_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N7_pack_1,
      O => N7
    );
  rd_index1_or000629_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or000629_23459,
      O => rd_index1_or000629_0
    );
  N1011_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N1011,
      O => N1011_0
    );
  N1011_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or000638_pack_1,
      O => rd_index1_or000638_7556
    );
  rd_index2_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index2(1),
      O => rd_index2_1_0
    );
  rd_index2_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N119,
      O => N119_0
    );
  reg_EX_result_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X42Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => result(12),
      O => reg_EX_result_12_DXMUX_23538
    );
  reg_EX_result_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1_cmp_eq0008_pack_1,
      O => in1_cmp_eq0008
    );
  reg_EX_result_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_result_12_CLKINV_23520
    );
  N2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N2_23566,
      O => N2_0
    );
  N2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N108_pack_1,
      O => N108
    );
  rd_index1_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1(1),
      O => rd_index1_1_0
    );
  wr_enable_or000134_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_enable_or000134_23602,
      O => wr_enable_or000134_0
    );
  wr_enable_or000134_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_or000031_23595,
      O => wr_overflow_or000031_0
    );
  N96_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N96,
      O => N96_0
    );
  N96_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_or000017_23619,
      O => wr_overflow_or000017_0
    );
  reg_ID_PC_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_1_7481,
      O => reg_ID_PC_1_DXMUX_23646
    );
  reg_ID_PC_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_0_7475,
      O => reg_ID_PC_1_DYMUX_23638
    );
  reg_ID_PC_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_PC_1_SRINV_23636
    );
  reg_ID_PC_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_PC_1_CLKINV_23635
    );
  reg_ID_PC_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_3_7487,
      O => reg_ID_PC_3_DXMUX_23670
    );
  reg_ID_PC_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_2_7484,
      O => reg_ID_PC_3_DYMUX_23662
    );
  reg_ID_PC_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_PC_3_SRINV_23660
    );
  reg_ID_PC_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_PC_3_CLKINV_23659
    );
  reg_ID_PC_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_5_7493,
      O => reg_ID_PC_5_DXMUX_23694
    );
  reg_ID_PC_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_4_7490,
      O => reg_ID_PC_5_DYMUX_23686
    );
  reg_ID_PC_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_PC_5_SRINV_23684
    );
  reg_ID_PC_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_PC_5_CLKINV_23683
    );
  reg_ID_PC_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_PC_6_7496,
      O => reg_ID_PC_6_DYMUX_23708
    );
  reg_ID_PC_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_PC_6_CLKINV_23705
    );
  reg_IF_PC_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(1),
      O => reg_IF_PC_1_DXMUX_23732
    );
  reg_IF_PC_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(0),
      O => reg_IF_PC_1_DYMUX_23724
    );
  reg_IF_PC_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_PC_1_SRINV_23722
    );
  reg_IF_PC_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_PC_1_CLKINV_23721
    );
  reg_IF_PC_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(3),
      O => reg_IF_PC_3_DXMUX_23756
    );
  reg_IF_PC_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(2),
      O => reg_IF_PC_3_DYMUX_23748
    );
  reg_IF_PC_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_PC_3_SRINV_23746
    );
  reg_IF_PC_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_PC_3_CLKINV_23745
    );
  reg_IF_PC_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(5),
      O => reg_IF_PC_5_DXMUX_23780
    );
  reg_IF_PC_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(4),
      O => reg_IF_PC_5_DYMUX_23772
    );
  reg_IF_PC_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_PC_5_SRINV_23770
    );
  reg_IF_PC_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_PC_5_CLKINV_23769
    );
  reg_IF_PC_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X71Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => PC(6),
      O => reg_IF_PC_6_DYMUX_23794
    );
  reg_IF_PC_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X71Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_PC_6_CLKINV_23791
    );
  reg_EX_n_flag_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => n_flag,
      O => reg_EX_n_flag_DYMUX_23808
    );
  reg_EX_n_flag_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_n_flag_CLKINV_23805
    );
  wr_overflow_data_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(7),
      O => wr_overflow_data_7_0
    );
  wr_overflow_data_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(0),
      O => wr_overflow_data_0_0
    );
  wr_overflow_data_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(8),
      O => wr_overflow_data_8_0
    );
  wr_overflow_data_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(1),
      O => wr_overflow_data_1_0
    );
  wr_overflow_data_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(9),
      O => wr_overflow_data_9_0
    );
  wr_overflow_data_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(2),
      O => wr_overflow_data_2_0
    );
  wr_overflow_data_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(4),
      O => wr_overflow_data_4_0
    );
  wr_overflow_data_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(3),
      O => wr_overflow_data_3_0
    );
  wr_overflow_data_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(6),
      O => wr_overflow_data_6_0
    );
  wr_overflow_data_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => wr_overflow_data(5),
      O => wr_overflow_data_5_0
    );
  rd_index1_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X62Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1(2),
      O => rd_index1_2_0
    );
  rd_index1_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X62Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rd_index1_or0004_pack_1,
      O => rd_index1_or0004_7577
    );
  reg_EX_PC_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_1_7659,
      O => reg_EX_PC_1_DXMUX_23976
    );
  reg_EX_PC_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_0_7660,
      O => reg_EX_PC_1_DYMUX_23968
    );
  reg_EX_PC_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_PC_1_SRINV_23966
    );
  reg_EX_PC_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_PC_1_CLKINV_23965
    );
  reg_EX_PC_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_3_7661,
      O => reg_EX_PC_3_DXMUX_24000
    );
  reg_EX_PC_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_2_7662,
      O => reg_EX_PC_3_DYMUX_23992
    );
  reg_EX_PC_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_PC_3_SRINV_23990
    );
  reg_EX_PC_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_PC_3_CLKINV_23989
    );
  reg_EX_PC_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_5_7663,
      O => reg_EX_PC_5_DXMUX_24024
    );
  reg_EX_PC_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_4_7664,
      O => reg_EX_PC_5_DYMUX_24016
    );
  reg_EX_PC_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_PC_5_SRINV_24014
    );
  reg_EX_PC_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_PC_5_CLKINV_24013
    );
  reg_EX_PC_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_PC_6_7665,
      O => reg_EX_PC_6_DYMUX_24038
    );
  reg_EX_PC_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_PC_6_CLKINV_24035
    );
  PC_next_5_SW0 : X_LUT4
    generic map(
      INIT => X"3F3F",
      LOC => "SLICE_X76Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => PC(4),
      ADR2 => Madd_PC_next_addsub0000_cy(3),
      ADR3 => VCC,
      O => N133
    );
  N133_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N133,
      O => N133_0
    );
  N133_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_PC_next_addsub0000_cy_3_pack_1,
      O => Madd_PC_next_addsub0000_cy(3)
    );
  in2_5_SW2 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X39Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_data2_5_7432,
      ADR2 => reg_EX_result_5_7242,
      ADR3 => in2_and0005,
      O => N330
    );
  N330_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N330,
      O => N330_0
    );
  N330_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N332,
      O => N332_0
    );
  in2_4_SW2 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X39Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_4_7243,
      ADR2 => reg_ID_data2_4_7430,
      ADR3 => in2_and0005,
      O => N332
    );
  in2_7_SW2 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X38Y58"
    )
    port map (
      ADR0 => reg_EX_result_7_7240,
      ADR1 => VCC,
      ADR2 => in2_and0005,
      ADR3 => reg_ID_data2_7_7436,
      O => N326
    );
  N326_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => N326,
      O => N326_0
    );
  N326_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => N328,
      O => N328_0
    );
  in2_6_SW2 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X38Y58"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_6_7241,
      ADR2 => in2_and0005,
      ADR3 => reg_ID_data2_6_7434,
      O => N328
    );
  reg_EX_z_flag_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X52Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_z_flag_FFY_RST
    );
  reg_EX_z_flag : X_FF
    generic map(
      LOC => "SLICE_X52Y49",
      INIT => '0'
    )
    port map (
      I => reg_EX_z_flag_DYMUX_24124,
      CE => VCC,
      CLK => reg_EX_z_flag_CLKINV_24121,
      SET => GND,
      RST => reg_EX_z_flag_FFY_RST,
      O => reg_EX_z_flag_7674
    );
  reg_EX_z_flag_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => z_flag,
      O => reg_EX_z_flag_DYMUX_24124
    );
  reg_EX_z_flag_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_EX_z_flag_CLKINV_24121
    );
  in2_8_SW2 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X36Y57"
    )
    port map (
      ADR0 => reg_EX_result_8_7239,
      ADR1 => in2_and0005,
      ADR2 => VCC,
      ADR3 => reg_ID_data2_8_7438,
      O => N324
    );
  N324_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N324,
      O => N324_0
    );
  in1_and00035_SW0 : X_LUT4
    generic map(
      INIT => X"0FFF",
      LOC => "SLICE_X45Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_3_7551,
      ADR3 => reg_ID_instr_4_7552,
      O => N386
    );
  N386_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N386,
      O => N386_0
    );
  outport_9_1 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X76Y52"
    )
    port map (
      ADR0 => reg_EX_result_9_7238,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => outport_cmp_eq0000_7615,
      O => outport_9_OBUF_24176
    );
  outport_9_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_cmp_eq0000_pack_1,
      O => outport_cmp_eq0000_7615
    );
  outport_cmp_eq0000 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X76Y52"
    )
    port map (
      ADR0 => reg_EX_instr_9_7499,
      ADR1 => reg_EX_instr_11_7501,
      ADR2 => reg_EX_instr_13_7500,
      ADR3 => N104_0,
      O => outport_cmp_eq0000_pack_1
    );
  branch_trigger_or0002_SW1 : X_LUT4
    generic map(
      INIT => X"FE75",
      LOC => "SLICE_X57Y53"
    )
    port map (
      ADR0 => reg_EX_instr_9_7499,
      ADR1 => reg_EX_instr_10_7506,
      ADR2 => reg_EX_n_flag_7666,
      ADR3 => reg_EX_instr_11_7501,
      O => N142
    );
  N142_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N142,
      O => N142_0
    );
  N142_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N104,
      O => N104_0
    );
  outport_cmp_eq0000_SW0 : X_LUT4
    generic map(
      INIT => X"FEFF",
      LOC => "SLICE_X57Y53"
    )
    port map (
      ADR0 => reg_EX_instr_15_7504,
      ADR1 => reg_EX_instr_10_7506,
      ADR2 => reg_EX_instr_12_7503,
      ADR3 => reg_EX_instr_14_7505,
      O => N104
    );
  reg_IF_inport_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_11_INBUF,
      O => reg_IF_inport_11_DXMUX_24220
    );
  reg_IF_inport_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_10_INBUF,
      O => reg_IF_inport_11_DYMUX_24212
    );
  reg_IF_inport_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_inport_11_SRINV_24210
    );
  reg_IF_inport_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_inport_11_CLKINV_24209
    );
  reg_IF_inport_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_13_INBUF,
      O => reg_IF_inport_13_DXMUX_24244
    );
  reg_IF_inport_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_12_INBUF,
      O => reg_IF_inport_13_DYMUX_24236
    );
  reg_IF_inport_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_inport_13_SRINV_24234
    );
  reg_IF_inport_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y60",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_inport_13_CLKINV_24233
    );
  reg_IF_inport_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_15_INBUF,
      O => reg_IF_inport_15_DXMUX_24268
    );
  reg_IF_inport_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_14_INBUF,
      O => reg_IF_inport_15_DYMUX_24260
    );
  reg_IF_inport_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_inport_15_SRINV_24258
    );
  reg_IF_inport_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_inport_15_CLKINV_24257
    );
  N141_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N141,
      O => N141_0
    );
  N22_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N22,
      O => N22_0
    );
  N22_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N106_pack_1,
      O => N106
    );
  alu_mode_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_mode(1),
      O => alu_mode_1_0
    );
  alu_mode_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N372,
      O => N372_0
    );
  reg_ID_data1_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_ID_data1_mux0007(9),
      O => reg_ID_data1_9_DXMUX_24363
    );
  reg_ID_data1_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N02_pack_1,
      O => N02
    );
  reg_ID_data1_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_ID_data1_9_CLKINV_24347
    );
  reg_IF_inport_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_1_INBUF,
      O => reg_IF_inport_1_DXMUX_24387
    );
  reg_IF_inport_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_0_INBUF,
      O => reg_IF_inport_1_DYMUX_24379
    );
  reg_IF_inport_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_inport_1_SRINV_24377
    );
  reg_IF_inport_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_inport_1_CLKINV_24376
    );
  reg_IF_inport_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_3_INBUF,
      O => reg_IF_inport_3_DXMUX_24411
    );
  reg_IF_inport_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_2_INBUF,
      O => reg_IF_inport_3_DYMUX_24403
    );
  reg_IF_inport_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_inport_3_SRINV_24401
    );
  reg_IF_inport_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_inport_3_CLKINV_24400
    );
  reg_IF_inport_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_5_INBUF,
      O => reg_IF_inport_5_DXMUX_24435
    );
  reg_IF_inport_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_4_INBUF,
      O => reg_IF_inport_5_DYMUX_24427
    );
  reg_IF_inport_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_inport_5_SRINV_24425
    );
  reg_IF_inport_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_inport_5_CLKINV_24424
    );
  reg_IF_inport_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_7_INBUF,
      O => reg_IF_inport_7_DXMUX_24459
    );
  reg_IF_inport_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_6_INBUF,
      O => reg_IF_inport_7_DYMUX_24451
    );
  reg_IF_inport_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_inport_7_SRINV_24449
    );
  reg_IF_inport_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_inport_7_CLKINV_24448
    );
  reg_IF_inport_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_9_INBUF,
      O => reg_IF_inport_9_DXMUX_24483
    );
  reg_IF_inport_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => inport_8_INBUF,
      O => reg_IF_inport_9_DYMUX_24475
    );
  reg_IF_inport_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_inport_9_SRINV_24473
    );
  reg_IF_inport_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_inport_9_CLKINV_24472
    );
  N404_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N404,
      O => N404_0
    );
  N404_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N395,
      O => N395_0
    );
  N401_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N401,
      O => N401_0
    );
  N401_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N398,
      O => N398_0
    );
  reg_IF_instr_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_IF_instr_mux0001(9),
      O => reg_IF_instr_6_DXMUX_24566
    );
  reg_IF_instr_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => branch_trigger_pack_1,
      O => branch_trigger
    );
  reg_IF_instr_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_IF_instr_6_CLKINV_24548
    );
  in1_or0003 : X_LUT4
    generic map(
      INIT => X"0012",
      LOC => "SLICE_X46Y50"
    )
    port map (
      ADR0 => reg_EX_instr_9_7499,
      ADR1 => reg_EX_instr_11_7501,
      ADR2 => reg_EX_instr_13_7500,
      ADR3 => in1_or0003_SW0_O,
      O => in1_or0003_19109
    );
  in1_or0003_SW0 : X_LUT4
    generic map(
      INIT => X"FFEF",
      LOC => "SLICE_X46Y50"
    )
    port map (
      ADR0 => reg_EX_instr_12_7503,
      ADR1 => reg_EX_instr_15_7504,
      ADR2 => reg_EX_instr_10_7506,
      ADR3 => reg_EX_instr_14_7505,
      O => in1_or0003_SW0_O_pack_1
    );
  reg_ID_data1_mux0007_6_61 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X70Y51"
    )
    port map (
      ADR0 => N1011_0,
      ADR1 => N22_0,
      ADR2 => N2_0,
      ADR3 => reg_IF_inport_6_7497,
      O => reg_ID_data1_mux0007_6_61_19084
    );
  reg_ID_data1_mux0007_6_62 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X70Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N22_0,
      ADR2 => VCC,
      ADR3 => reg_IF_inport_6_7497,
      O => reg_ID_data1_mux0007_6_62_19077
    );
  reg_ID_data1_mux0007_5_61 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X69Y51"
    )
    port map (
      ADR0 => reg_IF_inport_5_7494,
      ADR1 => N1011_0,
      ADR2 => N2_0,
      ADR3 => N22_0,
      O => reg_ID_data1_mux0007_5_61_19059
    );
  reg_ID_data1_mux0007_4_61 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X67Y53"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => N22_0,
      ADR2 => reg_IF_inport_4_7491,
      ADR3 => N1011_0,
      O => reg_ID_data1_mux0007_4_61_19034
    );
  reg_ID_data1_mux0007_3_61 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X66Y57"
    )
    port map (
      ADR0 => reg_IF_inport_3_7488,
      ADR1 => N1011_0,
      ADR2 => N22_0,
      ADR3 => N2_0,
      O => reg_ID_data1_mux0007_3_61_19009
    );
  reg_ID_data1_mux0007_3_62 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X66Y57"
    )
    port map (
      ADR0 => reg_IF_inport_3_7488,
      ADR1 => VCC,
      ADR2 => N22_0,
      ADR3 => VCC,
      O => reg_ID_data1_mux0007_3_62_19002
    );
  reg_ID_data1_mux0007_4_62 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X67Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N22_0,
      ADR2 => reg_IF_inport_4_7491,
      ADR3 => VCC,
      O => reg_ID_data1_mux0007_4_62_19027
    );
  reg_ID_data1_mux0007_5_62 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X69Y51"
    )
    port map (
      ADR0 => reg_IF_inport_5_7494,
      ADR1 => VCC,
      ADR2 => N22_0,
      ADR3 => VCC,
      O => reg_ID_data1_mux0007_5_62_19052
    );
  in1_cmp_eq00131_SW0 : X_LUT4
    generic map(
      INIT => X"FEFF",
      LOC => "SLICE_X47Y52"
    )
    port map (
      ADR0 => reg_ID_instr_12_7509,
      ADR1 => reg_ID_instr_11_7470,
      ADR2 => reg_ID_instr_9_7400,
      ADR3 => reg_ID_instr_10_7471,
      O => in1_cmp_eq00131_SW0_O_pack_1
    );
  alu_mode_0_1 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X49Y56"
    )
    port map (
      ADR0 => reg_ID_instr_14_7510,
      ADR1 => reg_ID_instr_12_7509,
      ADR2 => alu_mode_0_1_SW0_O,
      ADR3 => reg_ID_instr_15_7512,
      O => N15
    );
  alu_mode_0_1_SW0 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X49Y56"
    )
    port map (
      ADR0 => reg_ID_instr_10_7471,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_11_7470,
      ADR3 => reg_ID_instr_13_7511,
      O => alu_mode_0_1_SW0_O_pack_1
    );
  alu_mode_0_37 : X_LUT4
    generic map(
      INIT => X"FFA8",
      LOC => "SLICE_X42Y53"
    )
    port map (
      ADR0 => N102,
      ADR1 => alu_mode_0_15_0,
      ADR2 => alu_mode_0_4_O,
      ADR3 => N15_0,
      O => alu_mode(0)
    );
  reg_ID_data2_mux0007_8_Q : X_LUT4
    generic map(
      INIT => X"E0A0",
      LOC => "SLICE_X50Y59"
    )
    port map (
      ADR0 => N127_0,
      ADR1 => rd_data2(7),
      ADR2 => N2_0,
      ADR3 => N95,
      O => reg_ID_data2_mux0007(8)
    );
  reg_ID_data2_mux0007_9_Q : X_LUT4
    generic map(
      INIT => X"A8A0",
      LOC => "SLICE_X50Y59"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => rd_data2(6),
      ADR2 => N125_0,
      ADR3 => N95,
      O => reg_ID_data2_mux0007(9)
    );
  reg_ID_data2_6 : X_FF
    generic map(
      LOC => "SLICE_X50Y59",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_7_DYMUX_21809,
      CE => VCC,
      CLK => reg_ID_data2_7_CLKINV_21800,
      SET => GND,
      RST => reg_ID_data2_7_SRINV_21801,
      O => reg_ID_data2_6_7434
    );
  reg_ID_data1_8 : X_FF
    generic map(
      LOC => "SLICE_X61Y57",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_8_DYMUX_21781,
      CE => VCC,
      CLK => reg_ID_data1_8_CLKINV_21772,
      SET => GND,
      RST => reg_ID_data1_8_FFY_RSTAND_21786,
      O => reg_ID_data1_8_7593
    );
  reg_ID_data1_8_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X61Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_data1_8_FFY_RSTAND_21786
    );
  reg_ID_data1_mux0007_8_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X61Y57"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => N02,
      ADR2 => rd_data1(8),
      ADR3 => reg_IF_inport_8_7632,
      O => reg_ID_data1_mux0007(8)
    );
  reg_ID_data1_7 : X_FF
    generic map(
      LOC => "SLICE_X55Y55",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_7_DXMUX_21758,
      CE => VCC,
      CLK => reg_ID_data1_7_CLKINV_21734,
      SET => GND,
      RST => reg_ID_data1_7_SRINV_21735,
      O => reg_ID_data1_7_7592
    );
  reg_ID_instr_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X45Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_14_7602,
      ADR2 => branch_trigger,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(1)
    );
  reg_ID_data2_mux0006_10_41 : X_LUT4
    generic map(
      INIT => X"1131",
      LOC => "SLICE_X52Y58"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_10_146_7414,
      ADR1 => rd_index1_or0006_0,
      ADR2 => reg_IF_instr_11_7408,
      ADR3 => N7,
      O => N95_pack_1
    );
  in1_and000312 : X_LUT4
    generic map(
      INIT => X"8080",
      LOC => "SLICE_X48Y54"
    )
    port map (
      ADR0 => reg_ID_instr_7_7545,
      ADR1 => reg_ID_instr_8_7546,
      ADR2 => reg_ID_instr_6_7541,
      ADR3 => VCC,
      O => in1_and000312_23042
    );
  rd_index2_0_1 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X60Y56"
    )
    port map (
      ADR0 => reg_IF_instr_0_7636,
      ADR1 => reg_IF_instr_3_7578,
      ADR2 => VCC,
      ADR3 => rd_index1_or0007,
      O => rd_index2(0)
    );
  rd_index1_or00071 : X_LUT4
    generic map(
      INIT => X"CC44",
      LOC => "SLICE_X60Y56"
    )
    port map (
      ADR0 => reg_IF_instr_10_7411,
      ADR1 => N16_0,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_9_7412,
      O => rd_index1_or0007_pack_1
    );
  Madd_PC_next_addsub0000_cy_3_11 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X76Y47"
    )
    port map (
      ADR0 => PC(2),
      ADR1 => PC(1),
      ADR2 => PC(0),
      ADR3 => PC(3),
      O => Madd_PC_next_addsub0000_cy_3_pack_1
    );
  in2_10_F : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X38Y49"
    )
    port map (
      ADR0 => reg_ID_data2_10_7389,
      ADR1 => reg_EX_overflow_10_7388,
      ADR2 => in2_and000221_0,
      ADR3 => VCC,
      O => N514
    );
  in2_10_G : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X38Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_10_7388,
      ADR2 => in2_and000221_0,
      ADR3 => reg_EX_result_10_7237,
      O => N515
    );
  in2_11_F : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X37Y50"
    )
    port map (
      ADR0 => in2_and000221_0,
      ADR1 => reg_EX_overflow_11_7390,
      ADR2 => reg_ID_data2_11_7391,
      ADR3 => VCC,
      O => N512
    );
  in2_11_G : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X37Y50"
    )
    port map (
      ADR0 => in2_and000221_0,
      ADR1 => reg_EX_overflow_11_7390,
      ADR2 => VCC,
      ADR3 => reg_EX_result_11_7236,
      O => N513
    );
  in2_12_F : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X38Y46"
    )
    port map (
      ADR0 => reg_EX_overflow_12_7392,
      ADR1 => reg_ID_data2_12_7393,
      ADR2 => in2_and000221_0,
      ADR3 => VCC,
      O => N506
    );
  in2_12_G : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X38Y46"
    )
    port map (
      ADR0 => reg_EX_overflow_12_7392,
      ADR1 => reg_EX_result_12_7235,
      ADR2 => in2_and000221_0,
      ADR3 => VCC,
      O => N507
    );
  in2_13_F : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X39Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in2_and000221_0,
      ADR2 => reg_ID_data2_13_7395,
      ADR3 => reg_EX_overflow_13_7394,
      O => N510
    );
  in2_13_G : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X39Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in2_and000221_0,
      ADR2 => reg_EX_overflow_13_7394,
      ADR3 => reg_EX_result_13_7234,
      O => N511
    );
  in2_14_F : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X43Y50"
    )
    port map (
      ADR0 => reg_EX_overflow_14_7396,
      ADR1 => VCC,
      ADR2 => in2_and000221_0,
      ADR3 => reg_ID_data2_14_7397,
      O => N504
    );
  in2_14_G : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X43Y50"
    )
    port map (
      ADR0 => reg_EX_overflow_14_7396,
      ADR1 => VCC,
      ADR2 => in2_and000221_0,
      ADR3 => reg_EX_result_14_7233,
      O => N505
    );
  in2_15_F : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X38Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in2_and000221_0,
      ADR2 => reg_ID_data2_15_7399,
      ADR3 => reg_EX_overflow_15_7398,
      O => N502
    );
  in2_15_G : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X38Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_15_7232,
      ADR2 => in2_and000221_0,
      ADR3 => reg_EX_overflow_15_7398,
      O => N503
    );
  ram_addr_10_1_F : X_LUT4
    generic map(
      INIT => X"88A0",
      LOC => "SLICE_X37Y58"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => reg_EX_overflow_10_7388,
      ADR2 => N336_0,
      ADR3 => in2_and0002_0,
      O => N472
    );
  ram_addr_10_1_G : X_LUT4
    generic map(
      INIT => X"8A80",
      LOC => "SLICE_X37Y58"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => reg_EX_overflow_10_7388,
      ADR2 => in1_and0003_0,
      ADR3 => N360,
      O => N473
    );
  ram_addr_11_1_F : X_LUT4
    generic map(
      INIT => X"8A80",
      LOC => "SLICE_X35Y58"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => reg_EX_overflow_11_7390,
      ADR2 => in2_and0002_0,
      ADR3 => N334_0,
      O => N470
    );
  ram_addr_11_1_G : X_LUT4
    generic map(
      INIT => X"8A80",
      LOC => "SLICE_X35Y58"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => reg_EX_overflow_11_7390,
      ADR2 => in1_and0003_0,
      ADR3 => N358,
      O => N471
    );
  reg_ID_data1_mux0007_10_1202 : X_LUT4
    generic map(
      INIT => X"DDEF",
      LOC => "SLICE_X59Y57"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_10_146_7414,
      ADR1 => rd_index1_or0006_0,
      ADR2 => N16_0,
      ADR3 => N7,
      O => reg_ID_data1_mux0007_10_1202_18277
    );
  reg_ID_data1_mux0007_10_1201 : X_LUT4
    generic map(
      INIT => X"DFFF",
      LOC => "SLICE_X59Y57"
    )
    port map (
      ADR0 => reg_IF_instr_9_7412,
      ADR1 => rd_index1_or0006_0,
      ADR2 => N16_0,
      ADR3 => reg_IF_instr_10_7411,
      O => reg_ID_data1_mux0007_10_1201_18284
    );
  in2_0_F : X_LUT4
    generic map(
      INIT => X"CAC0",
      LOC => "SLICE_X38Y50"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => reg_EX_overflow_0_7419,
      ADR2 => in2_and000221_0,
      ADR3 => N404_0,
      O => N500
    );
  in2_0_G : X_LUT4
    generic map(
      INIT => X"CFC5",
      LOC => "SLICE_X38Y50"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => reg_EX_overflow_0_7419,
      ADR2 => in2_and000221_0,
      ADR3 => N404_0,
      O => N501
    );
  in2_1_F : X_LUT4
    generic map(
      INIT => X"F088",
      LOC => "SLICE_X41Y53"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => N401_0,
      ADR2 => reg_EX_overflow_1_7422,
      ADR3 => in2_and000221_0,
      O => N498
    );
  in2_1_G : X_LUT4
    generic map(
      INIT => X"F0DD",
      LOC => "SLICE_X41Y53"
    )
    port map (
      ADR0 => in2_and000552_0,
      ADR1 => N401_0,
      ADR2 => reg_EX_overflow_1_7422,
      ADR3 => in2_and000221_0,
      O => N499
    );
  in2_2_F : X_LUT4
    generic map(
      INIT => X"E4A0",
      LOC => "SLICE_X41Y50"
    )
    port map (
      ADR0 => in2_and000221_0,
      ADR1 => in2_and000552_0,
      ADR2 => reg_EX_overflow_2_7425,
      ADR3 => N398_0,
      O => N496
    );
  in2_2_G : X_LUT4
    generic map(
      INIT => X"F5B1",
      LOC => "SLICE_X41Y50"
    )
    port map (
      ADR0 => in2_and000221_0,
      ADR1 => in2_and000552_0,
      ADR2 => reg_EX_overflow_2_7425,
      ADR3 => N398_0,
      O => N497
    );
  in2_3_F : X_LUT4
    generic map(
      INIT => X"F088",
      LOC => "SLICE_X36Y50"
    )
    port map (
      ADR0 => N395_0,
      ADR1 => in2_and000552_0,
      ADR2 => reg_EX_overflow_3_7428,
      ADR3 => in2_and000221_0,
      O => N494
    );
  in2_3_G : X_LUT4
    generic map(
      INIT => X"F0BB",
      LOC => "SLICE_X36Y50"
    )
    port map (
      ADR0 => N395_0,
      ADR1 => in2_and000552_0,
      ADR2 => reg_EX_overflow_3_7428,
      ADR3 => in2_and000221_0,
      O => N495
    );
  in2_4_F : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X36Y49"
    )
    port map (
      ADR0 => reg_ID_data2_4_7430,
      ADR1 => reg_EX_overflow_4_7429,
      ADR2 => in2_and000221_0,
      ADR3 => VCC,
      O => N524
    );
  in2_4_G : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X36Y49"
    )
    port map (
      ADR0 => reg_EX_result_4_7243,
      ADR1 => reg_EX_overflow_4_7429,
      ADR2 => in2_and000221_0,
      ADR3 => VCC,
      O => N525
    );
  in2_5_F : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X40Y57"
    )
    port map (
      ADR0 => reg_EX_overflow_5_7431,
      ADR1 => reg_ID_data2_5_7432,
      ADR2 => in2_and000221_0,
      ADR3 => VCC,
      O => N516
    );
  in2_5_G : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X40Y57"
    )
    port map (
      ADR0 => reg_EX_overflow_5_7431,
      ADR1 => reg_EX_result_5_7242,
      ADR2 => VCC,
      ADR3 => in2_and000221_0,
      O => N517
    );
  in2_6_F : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X41Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_data2_6_7434,
      ADR2 => reg_EX_overflow_6_7433,
      ADR3 => in2_and000221_0,
      O => N520
    );
  in2_6_G : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X41Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in2_and000221_0,
      ADR2 => reg_EX_overflow_6_7433,
      ADR3 => reg_EX_result_6_7241,
      O => N521
    );
  in2_7_F : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X38Y48"
    )
    port map (
      ADR0 => reg_ID_data2_7_7436,
      ADR1 => reg_EX_overflow_7_7435,
      ADR2 => VCC,
      ADR3 => in2_and000221_0,
      O => N508
    );
  in2_7_G : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X38Y48"
    )
    port map (
      ADR0 => in2_and000221_0,
      ADR1 => reg_EX_result_7_7240,
      ADR2 => VCC,
      ADR3 => reg_EX_overflow_7_7435,
      O => N509
    );
  in2_8_F : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X37Y48"
    )
    port map (
      ADR0 => reg_EX_overflow_8_7437,
      ADR1 => reg_ID_data2_8_7438,
      ADR2 => VCC,
      ADR3 => in2_and000221_0,
      O => N518
    );
  in2_8_G : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X37Y48"
    )
    port map (
      ADR0 => reg_EX_overflow_8_7437,
      ADR1 => reg_EX_result_8_7239,
      ADR2 => VCC,
      ADR3 => in2_and000221_0,
      O => N519
    );
  in2_9_F : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X41Y48"
    )
    port map (
      ADR0 => reg_ID_data2_9_7440,
      ADR1 => in2_and000221_0,
      ADR2 => reg_EX_overflow_9_7439,
      ADR3 => VCC,
      O => N522
    );
  in2_9_G : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X41Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in2_and000221_0,
      ADR2 => reg_EX_overflow_9_7439,
      ADR3 => reg_EX_result_9_7238,
      O => N523
    );
  in2_0_SW2_F : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X40Y50"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => reg_ID_data2_0_7441,
      ADR2 => N483,
      ADR3 => VCC,
      O => N532
    );
  in2_0_SW2_G : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X40Y50"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_ID_data2_0_7441,
      ADR2 => VCC,
      ADR3 => reg_EX_result_0_7247,
      O => N533
    );
  in2_1_SW2_F : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X43Y57"
    )
    port map (
      ADR0 => reg_ID_data2_1_7445,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => N481,
      ADR3 => VCC,
      O => N530
    );
  in2_1_SW2_G : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X43Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_1_7246,
      ADR2 => reg_ID_data2_1_7445,
      ADR3 => wr_enable_0,
      O => N531
    );
  in2_2_SW2_F : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X40Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_data2_2_7448,
      ADR2 => in1_cmp_eq0014_0,
      ADR3 => N479,
      O => N528
    );
  in2_2_SW2_G : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X40Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_2_7245,
      ADR2 => wr_enable_0,
      ADR3 => reg_ID_data2_2_7448,
      O => N529
    );
  in2_3_SW2_F : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X42Y56"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => reg_ID_data2_3_7451,
      ADR2 => N477,
      ADR3 => VCC,
      O => N526
    );
  in2_3_SW2_G : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X42Y56"
    )
    port map (
      ADR0 => wr_enable_0,
      ADR1 => reg_ID_data2_3_7451,
      ADR2 => reg_EX_result_3_7244,
      ADR3 => VCC,
      O => N527
    );
  ram_addr_0_1_F : X_LUT4
    generic map(
      INIT => X"B080",
      LOC => "SLICE_X36Y53"
    )
    port map (
      ADR0 => reg_EX_overflow_0_7419,
      ADR1 => in2_and0002_0,
      ADR2 => ram_addr_and0000_0,
      ADR3 => N384,
      O => N490
    );
  ram_addr_0_1_G : X_LUT4
    generic map(
      INIT => X"D080",
      LOC => "SLICE_X36Y53"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => reg_EX_overflow_0_7419,
      ADR2 => ram_addr_and0000_0,
      ADR3 => N338,
      O => N491
    );
  ram_addr_1_1_F : X_LUT4
    generic map(
      INIT => X"C480",
      LOC => "SLICE_X34Y57"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => ram_addr_and0000_0,
      ADR2 => reg_EX_overflow_1_7422,
      ADR3 => N382,
      O => N488
    );
  ram_addr_1_1_G : X_LUT4
    generic map(
      INIT => X"C480",
      LOC => "SLICE_X34Y57"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => ram_addr_and0000_0,
      ADR2 => reg_EX_overflow_1_7422,
      ADR3 => N340,
      O => N489
    );
  ram_addr_2_1_F : X_LUT4
    generic map(
      INIT => X"A820",
      LOC => "SLICE_X37Y54"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => in2_and0002_0,
      ADR2 => N380,
      ADR3 => reg_EX_overflow_2_7425,
      O => N486
    );
  ram_addr_2_1_G : X_LUT4
    generic map(
      INIT => X"C840",
      LOC => "SLICE_X37Y54"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => ram_addr_and0000_0,
      ADR2 => N342,
      ADR3 => reg_EX_overflow_2_7425,
      O => N487
    );
  ram_addr_3_1_F : X_LUT4
    generic map(
      INIT => X"8C80",
      LOC => "SLICE_X39Y58"
    )
    port map (
      ADR0 => reg_EX_overflow_3_7428,
      ADR1 => ram_addr_and0000_0,
      ADR2 => in2_and0002_0,
      ADR3 => N378,
      O => N484
    );
  ram_addr_3_1_G : X_LUT4
    generic map(
      INIT => X"88C0",
      LOC => "SLICE_X39Y58"
    )
    port map (
      ADR0 => reg_EX_overflow_3_7428,
      ADR1 => ram_addr_and0000_0,
      ADR2 => N350,
      ADR3 => in1_and0003_0,
      O => N485
    );
  ram_addr_4_1_F : X_LUT4
    generic map(
      INIT => X"A820",
      LOC => "SLICE_X35Y59"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => in2_and0002_0,
      ADR2 => N332_0,
      ADR3 => reg_EX_overflow_4_7429,
      O => N468
    );
  ram_addr_4_1_G : X_LUT4
    generic map(
      INIT => X"A808",
      LOC => "SLICE_X35Y59"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => N348,
      ADR2 => in1_and0003_0,
      ADR3 => reg_EX_overflow_4_7429,
      O => N469
    );
  ram_addr_5_1_F : X_LUT4
    generic map(
      INIT => X"B800",
      LOC => "SLICE_X38Y59"
    )
    port map (
      ADR0 => reg_EX_overflow_5_7431,
      ADR1 => in2_and0002_0,
      ADR2 => N330_0,
      ADR3 => ram_addr_and0000_0,
      O => N466
    );
  ram_addr_5_1_G : X_LUT4
    generic map(
      INIT => X"C0A0",
      LOC => "SLICE_X38Y59"
    )
    port map (
      ADR0 => N346,
      ADR1 => reg_EX_overflow_5_7431,
      ADR2 => ram_addr_and0000_0,
      ADR3 => in1_and0003_0,
      O => N467
    );
  ram_addr_6_1_F : X_LUT4
    generic map(
      INIT => X"D800",
      LOC => "SLICE_X36Y58"
    )
    port map (
      ADR0 => in2_and0002_0,
      ADR1 => reg_EX_overflow_6_7433,
      ADR2 => N328_0,
      ADR3 => ram_addr_and0000_0,
      O => N464
    );
  ram_addr_6_1_G : X_LUT4
    generic map(
      INIT => X"88A0",
      LOC => "SLICE_X36Y58"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => reg_EX_overflow_6_7433,
      ADR2 => N344,
      ADR3 => in1_and0003_0,
      O => N465
    );
  ram_addr_7_1_F : X_LUT4
    generic map(
      INIT => X"8A80",
      LOC => "SLICE_X35Y61"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => reg_EX_overflow_7_7435,
      ADR2 => in2_and0002_0,
      ADR3 => N326_0,
      O => N462
    );
  ram_addr_7_1_G : X_LUT4
    generic map(
      INIT => X"D080",
      LOC => "SLICE_X35Y61"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => reg_EX_overflow_7_7435,
      ADR2 => ram_addr_and0000_0,
      ADR3 => N356,
      O => N463
    );
  ram_addr_8_1_F : X_LUT4
    generic map(
      INIT => X"A820",
      LOC => "SLICE_X37Y57"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => in2_and0002_0,
      ADR2 => N324_0,
      ADR3 => reg_EX_overflow_8_7437,
      O => N460
    );
  ram_addr_8_1_G : X_LUT4
    generic map(
      INIT => X"88A0",
      LOC => "SLICE_X37Y57"
    )
    port map (
      ADR0 => ram_addr_and0000_0,
      ADR1 => reg_EX_overflow_8_7437,
      ADR2 => N354,
      ADR3 => in1_and0003_0,
      O => N461
    );
  ram_addr_9_1_F : X_LUT4
    generic map(
      INIT => X"8C80",
      LOC => "SLICE_X36Y56"
    )
    port map (
      ADR0 => reg_EX_overflow_9_7439,
      ADR1 => ram_addr_and0000_0,
      ADR2 => in2_and0002_0,
      ADR3 => N322_0,
      O => N458
    );
  ram_addr_9_1_G : X_LUT4
    generic map(
      INIT => X"D800",
      LOC => "SLICE_X36Y56"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => reg_EX_overflow_9_7439,
      ADR2 => N352,
      ADR3 => ram_addr_and0000_0,
      O => N459
    );
  in1_and0008_SW2_F : X_LUT4
    generic map(
      INIT => X"57AB",
      LOC => "SLICE_X45Y54"
    )
    port map (
      ADR0 => reg_ID_instr_0_7473,
      ADR1 => reg_ID_instr_9_7400,
      ADR2 => reg_ID_instr_10_7471,
      ADR3 => reg_EX_instr_6_7472,
      O => N474
    );
  in1_and0008_SW2_G : X_LUT4
    generic map(
      INIT => X"EFFE",
      LOC => "SLICE_X45Y54"
    )
    port map (
      ADR0 => reg_ID_instr_10_7471,
      ADR1 => reg_ID_instr_9_7400,
      ADR2 => reg_ID_instr_0_7473,
      ADR3 => reg_EX_instr_6_7472,
      O => N475
    );
  reg_ID_data1_mux0007_0_62 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X70Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N22_0,
      ADR2 => reg_IF_inport_0_7479,
      ADR3 => VCC,
      O => reg_ID_data1_mux0007_0_62_18927
    );
  reg_ID_data1_mux0007_0_61 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X70Y50"
    )
    port map (
      ADR0 => N1011_0,
      ADR1 => N22_0,
      ADR2 => reg_IF_inport_0_7479,
      ADR3 => N2_0,
      O => reg_ID_data1_mux0007_0_61_18934
    );
  reg_ID_data1_mux0007_1_62 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X66Y50"
    )
    port map (
      ADR0 => reg_IF_inport_1_7482,
      ADR1 => N22_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_ID_data1_mux0007_1_62_18952
    );
  reg_ID_data1_mux0007_1_61 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X66Y50"
    )
    port map (
      ADR0 => reg_IF_inport_1_7482,
      ADR1 => N2_0,
      ADR2 => N1011_0,
      ADR3 => N22_0,
      O => reg_ID_data1_mux0007_1_61_18959
    );
  reg_ID_data1_mux0007_2_62 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X69Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_inport_2_7485,
      ADR2 => N22_0,
      ADR3 => VCC,
      O => reg_ID_data1_mux0007_2_62_18977
    );
  reg_ID_data1_mux0007_2_61 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X69Y50"
    )
    port map (
      ADR0 => N1011_0,
      ADR1 => reg_IF_inport_2_7485,
      ADR2 => N2_0,
      ADR3 => N22_0,
      O => reg_ID_data1_mux0007_2_61_18984
    );
  in1_cmp_eq00143 : X_LUT4
    generic map(
      INIT => X"0909",
      LOC => "SLICE_X47Y56"
    )
    port map (
      ADR0 => reg_EX_instr_8_7544,
      ADR1 => reg_ID_instr_5_7553,
      ADR2 => in1_cmp_eq00143_SW0_O,
      ADR3 => VCC,
      O => in1_cmp_eq0014
    );
  wr_overflow_or000012 : X_LUT4
    generic map(
      INIT => X"0055",
      LOC => "SLICE_X46Y52"
    )
    port map (
      ADR0 => reg_EX_instr_12_7503,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_EX_instr_15_7504,
      O => wr_enable_or000181_pack_1
    );
  wr_enable_or000185_1 : X_LUT4
    generic map(
      INIT => X"F200",
      LOC => "SLICE_X46Y52"
    )
    port map (
      ADR0 => wr_enable_or000134_0,
      ADR1 => reg_EX_instr_14_7505,
      ADR2 => wr_enable_or000160_7563,
      ADR3 => wr_enable_or000181,
      O => wr_enable_or000185_19589
    );
  reg_EX_overflow_mux0001_0_SW2 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X40Y51"
    )
    port map (
      ADR0 => in1_0_0,
      ADR1 => reg_ID_instr_8_7546,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_0_7473,
      O => reg_EX_overflow_mux0001_0_SW2_O_pack_1
    );
  reg_EX_overflow_mux0001_0_Q : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X40Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => overflow(0),
      ADR2 => in1_cmp_eq0013_0,
      ADR3 => reg_EX_overflow_mux0001_0_SW2_O,
      O => reg_EX_overflow_mux0001(0)
    );
  reg_EX_overflow_0 : X_FF
    generic map(
      LOC => "SLICE_X40Y51",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_0_DXMUX_19620,
      CE => VCC,
      CLK => reg_EX_overflow_0_CLKINV_19602,
      SET => GND,
      RST => reg_EX_overflow_0_FFX_RSTAND_19625,
      O => reg_EX_overflow_0_7419
    );
  reg_EX_overflow_0_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X40Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_overflow_0_FFX_RSTAND_19625
    );
  reg_EX_overflow_mux0001_1_SW2 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X45Y59"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_8_7546,
      ADR2 => in1_1_0,
      ADR3 => reg_ID_instr_1_7523,
      O => reg_EX_overflow_mux0001_1_SW2_O_pack_1
    );
  reg_EX_overflow_mux0001_1_Q : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X45Y59"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => overflow(1),
      ADR2 => VCC,
      ADR3 => reg_EX_overflow_mux0001_1_SW2_O,
      O => reg_EX_overflow_mux0001(1)
    );
  reg_EX_overflow_1 : X_FF
    generic map(
      LOC => "SLICE_X45Y59",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_1_DXMUX_19655,
      CE => VCC,
      CLK => reg_EX_overflow_1_CLKINV_19637,
      SET => GND,
      RST => reg_EX_overflow_1_FFX_RSTAND_19660,
      O => reg_EX_overflow_1_7422
    );
  reg_EX_overflow_1_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X45Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_overflow_1_FFX_RSTAND_19660
    );
  reg_EX_overflow_mux0001_2_SW2 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X38Y51"
    )
    port map (
      ADR0 => reg_ID_instr_2_7521,
      ADR1 => VCC,
      ADR2 => in1_2_0,
      ADR3 => reg_ID_instr_8_7546,
      O => reg_EX_overflow_mux0001_2_SW2_O_pack_1
    );
  reg_EX_overflow_mux0001_2_Q : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X38Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => overflow(2),
      ADR2 => reg_EX_overflow_mux0001_2_SW2_O,
      ADR3 => in1_cmp_eq0013_0,
      O => reg_EX_overflow_mux0001(2)
    );
  reg_EX_overflow_2 : X_FF
    generic map(
      LOC => "SLICE_X38Y51",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_2_DXMUX_19690,
      CE => VCC,
      CLK => reg_EX_overflow_2_CLKINV_19672,
      SET => GND,
      RST => reg_EX_overflow_2_FFX_RSTAND_19695,
      O => reg_EX_overflow_2_7425
    );
  reg_EX_overflow_2_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X38Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_overflow_2_FFX_RSTAND_19695
    );
  reg_EX_overflow_mux0001_3_SW2 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X41Y56"
    )
    port map (
      ADR0 => reg_ID_instr_3_7551,
      ADR1 => in1_3_0,
      ADR2 => reg_ID_instr_8_7546,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001_3_SW2_O_pack_1
    );
  reg_EX_overflow_mux0001_3_Q : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X41Y56"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_mux0001_3_SW2_O,
      ADR3 => overflow(3),
      O => reg_EX_overflow_mux0001(3)
    );
  reg_EX_overflow_3 : X_FF
    generic map(
      LOC => "SLICE_X41Y56",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_3_DXMUX_19725,
      CE => VCC,
      CLK => reg_EX_overflow_3_CLKINV_19707,
      SET => GND,
      RST => reg_EX_overflow_3_FFX_RSTAND_19730,
      O => reg_EX_overflow_3_7428
    );
  reg_EX_overflow_3_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X41Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_overflow_3_FFX_RSTAND_19730
    );
  reg_EX_overflow_mux0001_4_SW2 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X41Y58"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_8_7546,
      ADR2 => reg_ID_instr_4_7552,
      ADR3 => in1_4_0,
      O => reg_EX_overflow_mux0001_4_SW2_O_pack_1
    );
  reg_EX_overflow_mux0001_4_Q : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X41Y58"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => overflow(4),
      ADR2 => reg_EX_overflow_mux0001_4_SW2_O,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001(4)
    );
  reg_EX_overflow_4 : X_FF
    generic map(
      LOC => "SLICE_X41Y58",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_4_DXMUX_19760,
      CE => VCC,
      CLK => reg_EX_overflow_4_CLKINV_19742,
      SET => GND,
      RST => reg_EX_overflow_4_FFX_RSTAND_19765,
      O => reg_EX_overflow_4_7429
    );
  reg_EX_overflow_4_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X41Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_overflow_4_FFX_RSTAND_19765
    );
  reg_EX_overflow_mux0001_5_SW2 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X42Y59"
    )
    port map (
      ADR0 => in1_5_0,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_8_7546,
      ADR3 => reg_ID_instr_5_7553,
      O => reg_EX_overflow_mux0001_5_SW2_O_pack_1
    );
  reg_EX_overflow_mux0001_5_Q : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X42Y59"
    )
    port map (
      ADR0 => overflow(5),
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_mux0001_5_SW2_O,
      ADR3 => in1_cmp_eq0013_0,
      O => reg_EX_overflow_mux0001(5)
    );
  reg_EX_overflow_5 : X_FF
    generic map(
      LOC => "SLICE_X42Y59",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_5_DXMUX_19795,
      CE => VCC,
      CLK => reg_EX_overflow_5_CLKINV_19777,
      SET => GND,
      RST => reg_EX_overflow_5_FFX_RSTAND_19800,
      O => reg_EX_overflow_5_7431
    );
  reg_EX_overflow_5_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X42Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_overflow_5_FFX_RSTAND_19800
    );
  reg_EX_overflow_mux0001_6_SW2 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X42Y58"
    )
    port map (
      ADR0 => reg_ID_instr_6_7541,
      ADR1 => in1_6_0,
      ADR2 => reg_ID_instr_8_7546,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001_6_SW2_O_pack_1
    );
  reg_EX_overflow_mux0001_6_Q : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X42Y58"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => overflow(6),
      ADR3 => reg_EX_overflow_mux0001_6_SW2_O,
      O => reg_EX_overflow_mux0001(6)
    );
  reg_EX_overflow_6 : X_FF
    generic map(
      LOC => "SLICE_X42Y58",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_6_DXMUX_19830,
      CE => VCC,
      CLK => reg_EX_overflow_6_CLKINV_19812,
      SET => GND,
      RST => reg_EX_overflow_6_FFX_RSTAND_19835,
      O => reg_EX_overflow_6_7433
    );
  reg_EX_overflow_6_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X42Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_overflow_6_FFX_RSTAND_19835
    );
  reg_EX_overflow_mux0001_7_SW2 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X39Y52"
    )
    port map (
      ADR0 => in1_7_0,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_8_7546,
      ADR3 => reg_ID_instr_7_7545,
      O => reg_EX_overflow_mux0001_7_SW2_O_pack_1
    );
  reg_EX_overflow_mux0001_7_Q : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X39Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => overflow(7),
      ADR2 => reg_EX_overflow_mux0001_7_SW2_O,
      ADR3 => in1_cmp_eq0013_0,
      O => reg_EX_overflow_mux0001(7)
    );
  reg_EX_overflow_7 : X_FF
    generic map(
      LOC => "SLICE_X39Y52",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_7_DXMUX_19865,
      CE => VCC,
      CLK => reg_EX_overflow_7_CLKINV_19847,
      SET => GND,
      RST => reg_EX_overflow_7_FFX_RSTAND_19870,
      O => reg_EX_overflow_7_7435
    );
  reg_EX_overflow_7_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X39Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_overflow_7_FFX_RSTAND_19870
    );
  reg_EX_overflow_mux0001_8_SW2 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X39Y49"
    )
    port map (
      ADR0 => reg_ID_instr_8_7546,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_0_7473,
      ADR3 => in1_8_0,
      O => reg_EX_overflow_mux0001_8_SW2_O_pack_1
    );
  reg_EX_overflow_mux0001_8_Q : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X39Y49"
    )
    port map (
      ADR0 => reg_EX_overflow_mux0001_8_SW2_O,
      ADR1 => overflow(8),
      ADR2 => in1_cmp_eq0013_0,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001(8)
    );
  reg_EX_overflow_8 : X_FF
    generic map(
      LOC => "SLICE_X39Y49",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_8_DXMUX_19900,
      CE => VCC,
      CLK => reg_EX_overflow_8_CLKINV_19882,
      SET => GND,
      RST => reg_EX_overflow_8_FFX_RSTAND_19905,
      O => reg_EX_overflow_8_7437
    );
  reg_EX_overflow_8_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X39Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_overflow_8_FFX_RSTAND_19905
    );
  reg_EX_overflow_mux0001_9_SW2 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X40Y55"
    )
    port map (
      ADR0 => reg_ID_instr_8_7546,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_1_7523,
      ADR3 => in1_9_0,
      O => reg_EX_overflow_mux0001_9_SW2_O_pack_1
    );
  reg_EX_overflow_mux0001_9_Q : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X40Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => overflow(9),
      ADR2 => reg_EX_overflow_mux0001_9_SW2_O,
      ADR3 => in1_cmp_eq0013_0,
      O => reg_EX_overflow_mux0001(9)
    );
  reg_EX_overflow_9 : X_FF
    generic map(
      LOC => "SLICE_X40Y55",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_9_DXMUX_19935,
      CE => VCC,
      CLK => reg_EX_overflow_9_CLKINV_19917,
      SET => GND,
      RST => reg_EX_overflow_9_FFX_RSTAND_19940,
      O => reg_EX_overflow_9_7439
    );
  reg_EX_overflow_9_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X40Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_overflow_9_FFX_RSTAND_19940
    );
  rd_index1_or00031 : X_LUT4
    generic map(
      INIT => X"FCF4",
      LOC => "SLICE_X60Y57"
    )
    port map (
      ADR0 => reg_IF_instr_10_7411,
      ADR1 => N16_0,
      ADR2 => rd_index1_or0006_0,
      ADR3 => reg_IF_instr_9_7412,
      O => rd_index1_or0003_pack_1
    );
  rd_index1_0_1 : X_LUT4
    generic map(
      INIT => X"CFCA",
      LOC => "SLICE_X60Y57"
    )
    port map (
      ADR0 => reg_IF_instr_3_7578,
      ADR1 => reg_IF_instr_6_7579,
      ADR2 => rd_index1_or0003,
      ADR3 => rd_index1_or0004_7577,
      O => rd_index1(0)
    );
  in1_cmp_eq000811 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X43Y52"
    )
    port map (
      ADR0 => N102,
      ADR1 => reg_ID_instr_13_7511,
      ADR2 => reg_ID_instr_15_7512,
      ADR3 => reg_ID_instr_11_7470,
      O => N13_pack_1
    );
  ram_addr_and00001 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X43Y52"
    )
    port map (
      ADR0 => reg_ID_instr_10_7471,
      ADR1 => VCC,
      ADR2 => N13,
      ADR3 => VCC,
      O => ram_addr_and0000
    );
  wr_overflow_or000034_SW0 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X53Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_instr_9_7499,
      ADR3 => wr_enable_or000185_0,
      O => wr_overflow_or000034_SW0_O_pack_1
    );
  wr_overflow_or000044 : X_LUT4
    generic map(
      INIT => X"FEAA",
      LOC => "SLICE_X53Y52"
    )
    port map (
      ADR0 => branch_trigger_cmp_eq0001,
      ADR1 => wr_overflow_or000017_0,
      ADR2 => wr_overflow_or000034_SW0_O,
      ADR3 => wr_overflow_or000031_0,
      O => wr_overflow
    );
  in1_0_SW2 : X_LUT4
    generic map(
      INIT => X"EC4C",
      LOC => "SLICE_X36Y52"
    )
    port map (
      ADR0 => in1_and0007101_0,
      ADR1 => reg_ID_data1_0_7585,
      ADR2 => wr_enable_0,
      ADR3 => reg_EX_result_0_7247,
      O => N338_pack_1
    );
  in1_0_Q : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X36Y52"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => reg_EX_overflow_0_7419,
      ADR2 => VCC,
      ADR3 => N338,
      O => in1(0)
    );
  in1_1_SW2 : X_LUT4
    generic map(
      INIT => X"CAAA",
      LOC => "SLICE_X34Y56"
    )
    port map (
      ADR0 => reg_ID_data1_1_7586,
      ADR1 => reg_EX_result_1_7246,
      ADR2 => in1_and0007101_0,
      ADR3 => wr_enable_0,
      O => N340_pack_1
    );
  in1_1_Q : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X34Y56"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => reg_EX_overflow_1_7422,
      ADR2 => VCC,
      ADR3 => N340,
      O => in1(1)
    );
  in1_2_SW2 : X_LUT4
    generic map(
      INIT => X"E2AA",
      LOC => "SLICE_X39Y54"
    )
    port map (
      ADR0 => reg_ID_data1_2_7587,
      ADR1 => wr_enable_0,
      ADR2 => reg_EX_result_2_7245,
      ADR3 => in1_and0007101_0,
      O => N342_pack_1
    );
  in1_2_Q : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X39Y54"
    )
    port map (
      ADR0 => reg_EX_overflow_2_7425,
      ADR1 => VCC,
      ADR2 => N342,
      ADR3 => in1_and0003_0,
      O => in1(2)
    );
  in1_3_SW2 : X_LUT4
    generic map(
      INIT => X"E2AA",
      LOC => "SLICE_X39Y56"
    )
    port map (
      ADR0 => reg_ID_data1_3_7588,
      ADR1 => in1_and0007101_0,
      ADR2 => reg_EX_result_3_7244,
      ADR3 => wr_enable_0,
      O => N350_pack_1
    );
  in1_3_Q : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X39Y56"
    )
    port map (
      ADR0 => reg_EX_overflow_3_7428,
      ADR1 => VCC,
      ADR2 => N350,
      ADR3 => in1_and0003_0,
      O => in1(3)
    );
  in1_4_SW2 : X_LUT4
    generic map(
      INIT => X"ACCC",
      LOC => "SLICE_X35Y54"
    )
    port map (
      ADR0 => reg_EX_result_4_7243,
      ADR1 => reg_ID_data1_4_7589,
      ADR2 => wr_enable_0,
      ADR3 => in1_and0007101_0,
      O => N348_pack_1
    );
  in1_4_Q : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X35Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_and0003_0,
      ADR2 => N348,
      ADR3 => reg_EX_overflow_4_7429,
      O => in1(4)
    );
  in1_5_SW2 : X_LUT4
    generic map(
      INIT => X"E2AA",
      LOC => "SLICE_X39Y55"
    )
    port map (
      ADR0 => reg_ID_data1_5_7590,
      ADR1 => wr_enable_0,
      ADR2 => reg_EX_result_5_7242,
      ADR3 => in1_and0007101_0,
      O => N346_pack_1
    );
  in1_5_Q : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X39Y55"
    )
    port map (
      ADR0 => N346,
      ADR1 => VCC,
      ADR2 => reg_EX_overflow_5_7431,
      ADR3 => in1_and0003_0,
      O => in1(5)
    );
  in1_6_SW2 : X_LUT4
    generic map(
      INIT => X"EC4C",
      LOC => "SLICE_X38Y55"
    )
    port map (
      ADR0 => in1_and0007101_0,
      ADR1 => reg_ID_data1_6_7591,
      ADR2 => wr_enable_0,
      ADR3 => reg_EX_result_6_7241,
      O => N344_pack_1
    );
  in1_6_Q : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X38Y55"
    )
    port map (
      ADR0 => in1_and0003_0,
      ADR1 => reg_EX_overflow_6_7433,
      ADR2 => N344,
      ADR3 => VCC,
      O => in1(6)
    );
  in1_7_SW2 : X_LUT4
    generic map(
      INIT => X"B8F0",
      LOC => "SLICE_X39Y57"
    )
    port map (
      ADR0 => reg_EX_result_7_7240,
      ADR1 => in1_and0007101_0,
      ADR2 => reg_ID_data1_7_7592,
      ADR3 => wr_enable_0,
      O => N356_pack_1
    );
  in1_7_Q : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X39Y57"
    )
    port map (
      ADR0 => reg_EX_overflow_7_7435,
      ADR1 => in1_and0003_0,
      ADR2 => VCC,
      ADR3 => N356,
      O => in1(7)
    );
  in1_8_SW2 : X_LUT4
    generic map(
      INIT => X"DF80",
      LOC => "SLICE_X36Y54"
    )
    port map (
      ADR0 => in1_and0007101_0,
      ADR1 => reg_EX_result_8_7239,
      ADR2 => wr_enable_0,
      ADR3 => reg_ID_data1_8_7593,
      O => N354_pack_1
    );
  in1_8_Q : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X36Y54"
    )
    port map (
      ADR0 => reg_EX_overflow_8_7437,
      ADR1 => VCC,
      ADR2 => in1_and0003_0,
      ADR3 => N354,
      O => in1(8)
    );
  in1_9_SW2 : X_LUT4
    generic map(
      INIT => X"CAAA",
      LOC => "SLICE_X36Y55"
    )
    port map (
      ADR0 => reg_ID_data1_9_7594,
      ADR1 => reg_EX_result_9_7238,
      ADR2 => in1_and0007101_0,
      ADR3 => wr_enable_0,
      O => N352_pack_1
    );
  in1_9_Q : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X36Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_9_7439,
      ADR2 => N352,
      ADR3 => in1_and0003_0,
      O => in1(9)
    );
  wr_enable_or000160 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X48Y53"
    )
    port map (
      ADR0 => reg_EX_instr_11_7501,
      ADR1 => reg_EX_instr_13_7500,
      ADR2 => reg_EX_instr_9_7499,
      ADR3 => reg_EX_instr_10_7506,
      O => wr_enable_or000160_pack_1
    );
  wr_enable_or000185 : X_LUT4
    generic map(
      INIT => X"C0C8",
      LOC => "SLICE_X48Y53"
    )
    port map (
      ADR0 => wr_enable_or000134_0,
      ADR1 => wr_enable_or000181,
      ADR2 => wr_enable_or000160_7563,
      ADR3 => reg_EX_instr_14_7505,
      O => wr_enable
    );
  reg_EX_overflow_mux0001_10_SW2 : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X40Y58"
    )
    port map (
      ADR0 => in1_10_0,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_8_7546,
      ADR3 => reg_ID_instr_2_7521,
      O => reg_EX_overflow_mux0001_10_SW2_O_pack_1
    );
  reg_EX_overflow_mux0001_10_Q : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X40Y58"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => overflow(10),
      ADR2 => VCC,
      ADR3 => reg_EX_overflow_mux0001_10_SW2_O,
      O => reg_EX_overflow_mux0001(10)
    );
  reg_EX_overflow_10 : X_FF
    generic map(
      LOC => "SLICE_X40Y58",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_10_DXMUX_20306,
      CE => VCC,
      CLK => reg_EX_overflow_10_CLKINV_20288,
      SET => GND,
      RST => reg_EX_overflow_10_FFX_RSTAND_20311,
      O => reg_EX_overflow_10_7388
    );
  reg_EX_overflow_10_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X40Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_overflow_10_FFX_RSTAND_20311
    );
  reg_EX_overflow_mux0001_11_SW2 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X39Y51"
    )
    port map (
      ADR0 => reg_ID_instr_8_7546,
      ADR1 => in1_11_0,
      ADR2 => reg_ID_instr_3_7551,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001_11_SW2_O_pack_1
    );
  reg_EX_overflow_mux0001_11_Q : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X39Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => overflow(11),
      ADR2 => in1_cmp_eq0013_0,
      ADR3 => reg_EX_overflow_mux0001_11_SW2_O,
      O => reg_EX_overflow_mux0001(11)
    );
  reg_EX_overflow_11 : X_FF
    generic map(
      LOC => "SLICE_X39Y51",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_11_DXMUX_20341,
      CE => VCC,
      CLK => reg_EX_overflow_11_CLKINV_20323,
      SET => GND,
      RST => reg_EX_overflow_11_FFX_RSTAND_20346,
      O => reg_EX_overflow_11_7390
    );
  reg_EX_overflow_11_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X39Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_overflow_11_FFX_RSTAND_20346
    );
  reg_EX_overflow_mux0001_12_SW0 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X40Y56"
    )
    port map (
      ADR0 => reg_ID_instr_8_7546,
      ADR1 => in1_12_0,
      ADR2 => reg_ID_instr_4_7552,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001_12_SW0_O_pack_1
    );
  reg_EX_overflow_mux0001_12_Q : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X40Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_mux0001_12_SW0_O,
      ADR2 => in1_cmp_eq0013_0,
      ADR3 => overflow(12),
      O => reg_EX_overflow_mux0001(12)
    );
  reg_EX_overflow_12 : X_FF
    generic map(
      LOC => "SLICE_X40Y56",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_12_DXMUX_20376,
      CE => VCC,
      CLK => reg_EX_overflow_12_CLKINV_20358,
      SET => GND,
      RST => reg_EX_overflow_12_FFX_RSTAND_20381,
      O => reg_EX_overflow_12_7392
    );
  reg_EX_overflow_12_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X40Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_overflow_12_FFX_RSTAND_20381
    );
  reg_EX_overflow_mux0001_13_SW0 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X43Y56"
    )
    port map (
      ADR0 => in1_13_0,
      ADR1 => reg_ID_instr_8_7546,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_5_7553,
      O => reg_EX_overflow_mux0001_13_SW0_O_pack_1
    );
  reg_EX_overflow_mux0001_13_Q : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X43Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => overflow(13),
      ADR3 => reg_EX_overflow_mux0001_13_SW0_O,
      O => reg_EX_overflow_mux0001(13)
    );
  reg_EX_overflow_13 : X_FF
    generic map(
      LOC => "SLICE_X43Y56",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_13_DXMUX_20411,
      CE => VCC,
      CLK => reg_EX_overflow_13_CLKINV_20393,
      SET => GND,
      RST => reg_EX_overflow_13_FFX_RSTAND_20416,
      O => reg_EX_overflow_13_7394
    );
  reg_EX_overflow_13_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X43Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_overflow_13_FFX_RSTAND_20416
    );
  reg_EX_overflow_mux0001_14_SW0 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X43Y58"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_8_7546,
      ADR2 => in1_14_0,
      ADR3 => reg_ID_instr_6_7541,
      O => reg_EX_overflow_mux0001_14_SW0_O_pack_1
    );
  reg_EX_overflow_mux0001_14_Q : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X43Y58"
    )
    port map (
      ADR0 => in1_cmp_eq0013_0,
      ADR1 => overflow(14),
      ADR2 => reg_EX_overflow_mux0001_14_SW0_O,
      ADR3 => VCC,
      O => reg_EX_overflow_mux0001(14)
    );
  reg_EX_overflow_14 : X_FF
    generic map(
      LOC => "SLICE_X43Y58",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_14_DXMUX_20446,
      CE => VCC,
      CLK => reg_EX_overflow_14_CLKINV_20428,
      SET => GND,
      RST => reg_EX_overflow_14_FFX_RSTAND_20451,
      O => reg_EX_overflow_14_7396
    );
  reg_EX_overflow_14_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X43Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_overflow_14_FFX_RSTAND_20451
    );
  reg_EX_overflow_mux0001_15_SW0 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X41Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_8_7546,
      ADR2 => in1_15_0,
      ADR3 => reg_ID_instr_7_7545,
      O => reg_EX_overflow_mux0001_15_SW0_O_pack_1
    );
  reg_EX_overflow_mux0001_15_Q : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X41Y55"
    )
    port map (
      ADR0 => overflow(15),
      ADR1 => in1_cmp_eq0013_0,
      ADR2 => VCC,
      ADR3 => reg_EX_overflow_mux0001_15_SW0_O,
      O => reg_EX_overflow_mux0001(15)
    );
  reg_EX_overflow_15 : X_FF
    generic map(
      LOC => "SLICE_X41Y55",
      INIT => '0'
    )
    port map (
      I => reg_EX_overflow_15_DXMUX_20481,
      CE => VCC,
      CLK => reg_EX_overflow_15_CLKINV_20463,
      SET => GND,
      RST => reg_EX_overflow_15_FFX_RSTAND_20486,
      O => reg_EX_overflow_15_7398
    );
  reg_EX_overflow_15_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X41Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_overflow_15_FFX_RSTAND_20486
    );
  reg_ID_data1_mux0007_10_146 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X64Y56"
    )
    port map (
      ADR0 => reg_IF_instr_14_7602,
      ADR1 => reg_IF_instr_12_7604,
      ADR2 => reg_IF_instr_15_7601,
      ADR3 => reg_IF_instr_13_7603,
      O => reg_ID_data1_mux0007_10_146_pack_1
    );
  rd_index1_or0004_SW0 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X64Y56"
    )
    port map (
      ADR0 => reg_IF_instr_11_7408,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_ID_data1_mux0007_10_146_7414,
      O => N115
    );
  in2_and000578_SW0_G : X_LUT4
    generic map(
      INIT => X"E2AA",
      LOC => "SLICE_X42Y55"
    )
    port map (
      ADR0 => reg_ID_data2_3_7451,
      ADR1 => in1_or0009_0,
      ADR2 => reg_EX_result_3_7244,
      ADR3 => wr_enable_or000185_0,
      O => N477_pack_2
    );
  in2_and000578_SW01 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X42Y55"
    )
    port map (
      ADR0 => reg_ID_data2_3_7451,
      ADR1 => in1_cmp_eq0014_0,
      ADR2 => N477,
      ADR3 => VCC,
      O => N394
    );
  in2_and000578_SW2_G : X_LUT4
    generic map(
      INIT => X"ACCC",
      LOC => "SLICE_X42Y51"
    )
    port map (
      ADR0 => reg_EX_result_2_7245,
      ADR1 => reg_ID_data2_2_7448,
      ADR2 => in1_or0009_0,
      ADR3 => wr_enable_or000185_0,
      O => N479_pack_2
    );
  in2_and000578_SW21 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X42Y51"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => reg_ID_data2_2_7448,
      ADR2 => N479,
      ADR3 => VCC,
      O => N397
    );
  in2_and000578_SW4_G : X_LUT4
    generic map(
      INIT => X"ACCC",
      LOC => "SLICE_X42Y54"
    )
    port map (
      ADR0 => reg_EX_result_1_7246,
      ADR1 => reg_ID_data2_1_7445,
      ADR2 => in1_or0009_0,
      ADR3 => wr_enable_or000185_0,
      O => N481_pack_2
    );
  in2_and000578_SW41 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X42Y54"
    )
    port map (
      ADR0 => in1_cmp_eq0014_0,
      ADR1 => reg_ID_data2_1_7445,
      ADR2 => VCC,
      ADR3 => N481,
      O => N400
    );
  in2_and000578_SW6_G : X_LUT4
    generic map(
      INIT => X"ACCC",
      LOC => "SLICE_X42Y50"
    )
    port map (
      ADR0 => reg_EX_result_0_7247,
      ADR1 => reg_ID_data2_0_7441,
      ADR2 => in1_or0009_0,
      ADR3 => wr_enable_or000185_0,
      O => N483_pack_2
    );
  in2_and000578_SW61 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X42Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_data2_0_7441,
      ADR2 => in1_cmp_eq0014_0,
      ADR3 => N483,
      O => N403
    );
  alu_mode_0_4 : X_LUT4
    generic map(
      INIT => X"0E0E",
      LOC => "SLICE_X42Y53"
    )
    port map (
      ADR0 => reg_ID_instr_9_7400,
      ADR1 => reg_ID_instr_15_7512,
      ADR2 => reg_ID_instr_13_7511,
      ADR3 => VCC,
      O => alu_mode_0_4_O_pack_1
    );
  reg_EX_instr_6 : X_FF
    generic map(
      LOC => "SLICE_X47Y54",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_7_DYMUX_20860,
      CE => VCC,
      CLK => reg_EX_instr_7_CLKINV_20849,
      SET => GND,
      RST => reg_EX_instr_7_SRINV_20850,
      O => reg_EX_instr_6_7472
    );
  reg_EX_instr_mux0001_8_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X47Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_7_7545,
      O => reg_EX_instr_mux0001(8)
    );
  reg_EX_instr_7 : X_FF
    generic map(
      LOC => "SLICE_X47Y54",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_7_DXMUX_20876,
      CE => VCC,
      CLK => reg_EX_instr_7_CLKINV_20849,
      SET => GND,
      RST => reg_EX_instr_7_SRINV_20850,
      O => reg_EX_instr_7_7543
    );
  reg_EX_instr_mux0001_7_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X48Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_8_7546,
      ADR2 => VCC,
      ADR3 => branch_trigger,
      O => reg_EX_instr_mux0001(7)
    );
  reg_EX_instr_8 : X_FF
    generic map(
      LOC => "SLICE_X48Y55",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_9_DYMUX_20902,
      CE => VCC,
      CLK => reg_EX_instr_9_CLKINV_20891,
      SET => GND,
      RST => reg_EX_instr_9_SRINV_20892,
      O => reg_EX_instr_8_7544
    );
  reg_EX_instr_mux0001_6_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X48Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_9_7400,
      O => reg_EX_instr_mux0001(6)
    );
  reg_EX_instr_9 : X_FF
    generic map(
      LOC => "SLICE_X48Y55",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_9_DXMUX_20918,
      CE => VCC,
      CLK => reg_EX_instr_9_CLKINV_20891,
      SET => GND,
      RST => reg_EX_instr_9_SRINV_20892,
      O => reg_EX_instr_9_7499
    );
  reg_EX_instr_mux0001_5_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X49Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_10_7471,
      ADR2 => VCC,
      ADR3 => branch_trigger,
      O => reg_EX_instr_mux0001(5)
    );
  reg_EX_instr_10 : X_FF
    generic map(
      LOC => "SLICE_X49Y53",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_11_DYMUX_20944,
      CE => VCC,
      CLK => reg_EX_instr_11_CLKINV_20933,
      SET => GND,
      RST => reg_EX_instr_11_SRINV_20934,
      O => reg_EX_instr_10_7506
    );
  reg_EX_instr_mux0001_4_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X49Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_11_7470,
      ADR3 => branch_trigger,
      O => reg_EX_instr_mux0001(4)
    );
  reg_EX_instr_11 : X_FF
    generic map(
      LOC => "SLICE_X49Y53",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_11_DXMUX_20960,
      CE => VCC,
      CLK => reg_EX_instr_11_CLKINV_20933,
      SET => GND,
      RST => reg_EX_instr_11_SRINV_20934,
      O => reg_EX_instr_11_7501
    );
  reg_EX_instr_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X49Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_ID_instr_12_7509,
      ADR2 => VCC,
      ADR3 => branch_trigger,
      O => reg_EX_instr_mux0001(3)
    );
  reg_EX_instr_12 : X_FF
    generic map(
      LOC => "SLICE_X49Y52",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_13_DYMUX_20986,
      CE => VCC,
      CLK => reg_EX_instr_13_CLKINV_20975,
      SET => GND,
      RST => reg_EX_instr_13_SRINV_20976,
      O => reg_EX_instr_12_7503
    );
  reg_EX_instr_mux0001_2_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X49Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_13_7511,
      ADR3 => branch_trigger,
      O => reg_EX_instr_mux0001(2)
    );
  reg_EX_instr_13 : X_FF
    generic map(
      LOC => "SLICE_X49Y52",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_13_DXMUX_21002,
      CE => VCC,
      CLK => reg_EX_instr_13_CLKINV_20975,
      SET => GND,
      RST => reg_EX_instr_13_SRINV_20976,
      O => reg_EX_instr_13_7500
    );
  reg_EX_instr_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X46Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger,
      ADR2 => VCC,
      ADR3 => reg_ID_instr_14_7510,
      O => reg_EX_instr_mux0001(1)
    );
  reg_EX_instr_14 : X_FF
    generic map(
      LOC => "SLICE_X46Y53",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_15_DYMUX_21028,
      CE => VCC,
      CLK => reg_EX_instr_15_CLKINV_21017,
      SET => GND,
      RST => reg_EX_instr_15_SRINV_21018,
      O => reg_EX_instr_14_7505
    );
  reg_EX_instr_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X46Y53"
    )
    port map (
      ADR0 => branch_trigger,
      ADR1 => VCC,
      ADR2 => reg_ID_instr_15_7512,
      ADR3 => VCC,
      O => reg_EX_instr_mux0001(0)
    );
  reg_EX_instr_15 : X_FF
    generic map(
      LOC => "SLICE_X46Y53",
      INIT => '0'
    )
    port map (
      I => reg_EX_instr_15_DXMUX_21044,
      CE => VCC,
      CLK => reg_EX_instr_15_CLKINV_21017,
      SET => GND,
      RST => reg_EX_instr_15_SRINV_21018,
      O => reg_EX_instr_15_7504
    );
  result_0_1 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X31Y52"
    )
    port map (
      ADR0 => alu_result(0),
      ADR1 => ram_data(0),
      ADR2 => VCC,
      ADR3 => in1_cmp_eq0008,
      O => result(0)
    );
  reg_EX_result_0 : X_FF
    generic map(
      LOC => "SLICE_X31Y52",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_1_DYMUX_21071,
      CE => VCC,
      CLK => reg_EX_result_1_CLKINV_21061,
      SET => GND,
      RST => reg_EX_result_1_SRINV_21062,
      O => reg_EX_result_0_7247
    );
  result_1_1 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X31Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => alu_result(1),
      ADR2 => ram_data(1),
      ADR3 => in1_cmp_eq0008,
      O => result(1)
    );
  reg_EX_result_1 : X_FF
    generic map(
      LOC => "SLICE_X31Y52",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_1_DXMUX_21086,
      CE => VCC,
      CLK => reg_EX_result_1_CLKINV_21061,
      SET => GND,
      RST => reg_EX_result_1_SRINV_21062,
      O => reg_EX_result_1_7246
    );
  result_2_1 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X34Y55"
    )
    port map (
      ADR0 => alu_result(2),
      ADR1 => ram_data(2),
      ADR2 => in1_cmp_eq0008,
      ADR3 => VCC,
      O => result(2)
    );
  reg_EX_result_2 : X_FF
    generic map(
      LOC => "SLICE_X34Y55",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_3_DYMUX_21113,
      CE => VCC,
      CLK => reg_EX_result_3_CLKINV_21103,
      SET => GND,
      RST => reg_EX_result_3_SRINV_21104,
      O => reg_EX_result_2_7245
    );
  result_3_1 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X34Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => alu_result(3),
      ADR2 => in1_cmp_eq0008,
      ADR3 => ram_data(3),
      O => result(3)
    );
  reg_EX_result_3 : X_FF
    generic map(
      LOC => "SLICE_X34Y55",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_3_DXMUX_21128,
      CE => VCC,
      CLK => reg_EX_result_3_CLKINV_21103,
      SET => GND,
      RST => reg_EX_result_3_SRINV_21104,
      O => reg_EX_result_3_7244
    );
  result_4_1 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X41Y59"
    )
    port map (
      ADR0 => in1_cmp_eq0008,
      ADR1 => ram_data(4),
      ADR2 => alu_result(4),
      ADR3 => VCC,
      O => result(4)
    );
  reg_EX_result_4 : X_FF
    generic map(
      LOC => "SLICE_X41Y59",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_5_DYMUX_21155,
      CE => VCC,
      CLK => reg_EX_result_5_CLKINV_21145,
      SET => GND,
      RST => reg_EX_result_5_SRINV_21146,
      O => reg_EX_result_4_7243
    );
  result_5_1 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X41Y59"
    )
    port map (
      ADR0 => in1_cmp_eq0008,
      ADR1 => ram_data(5),
      ADR2 => alu_result(5),
      ADR3 => VCC,
      O => result(5)
    );
  reg_EX_result_5 : X_FF
    generic map(
      LOC => "SLICE_X41Y59",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_5_DXMUX_21170,
      CE => VCC,
      CLK => reg_EX_result_5_CLKINV_21145,
      SET => GND,
      RST => reg_EX_result_5_SRINV_21146,
      O => reg_EX_result_5_7242
    );
  result_6_1 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X35Y52"
    )
    port map (
      ADR0 => ram_data(6),
      ADR1 => alu_result(6),
      ADR2 => VCC,
      ADR3 => in1_cmp_eq0008,
      O => result(6)
    );
  reg_EX_result_6 : X_FF
    generic map(
      LOC => "SLICE_X35Y52",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_7_DYMUX_21197,
      CE => VCC,
      CLK => reg_EX_result_7_CLKINV_21187,
      SET => GND,
      RST => reg_EX_result_7_SRINV_21188,
      O => reg_EX_result_6_7241
    );
  result_7_1 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X35Y52"
    )
    port map (
      ADR0 => ram_data(7),
      ADR1 => in1_cmp_eq0008,
      ADR2 => alu_result(7),
      ADR3 => VCC,
      O => result(7)
    );
  reg_EX_result_7 : X_FF
    generic map(
      LOC => "SLICE_X35Y52",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_7_DXMUX_21212,
      CE => VCC,
      CLK => reg_EX_result_7_CLKINV_21187,
      SET => GND,
      RST => reg_EX_result_7_SRINV_21188,
      O => reg_EX_result_7_7240
    );
  result_8_1 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X39Y59"
    )
    port map (
      ADR0 => in1_cmp_eq0008,
      ADR1 => ram_data(8),
      ADR2 => alu_result(8),
      ADR3 => VCC,
      O => result(8)
    );
  reg_EX_result_8 : X_FF
    generic map(
      LOC => "SLICE_X39Y59",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_9_DYMUX_21239,
      CE => VCC,
      CLK => reg_EX_result_9_CLKINV_21229,
      SET => GND,
      RST => reg_EX_result_9_SRINV_21230,
      O => reg_EX_result_8_7239
    );
  result_9_1 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X39Y59"
    )
    port map (
      ADR0 => in1_cmp_eq0008,
      ADR1 => alu_result(9),
      ADR2 => VCC,
      ADR3 => ram_data(9),
      O => result(9)
    );
  reg_EX_result_9 : X_FF
    generic map(
      LOC => "SLICE_X39Y59",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_9_DXMUX_21254,
      CE => VCC,
      CLK => reg_EX_result_9_CLKINV_21229,
      SET => GND,
      RST => reg_EX_result_9_SRINV_21230,
      O => reg_EX_result_9_7238
    );
  reg_ID_data1_10 : X_FF
    generic map(
      LOC => "SLICE_X56Y55",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_11_DYMUX_21282,
      CE => VCC,
      CLK => reg_ID_data1_11_CLKINV_21273,
      SET => GND,
      RST => reg_ID_data1_11_SRINV_21274,
      O => reg_ID_data1_10_7525
    );
  reg_ID_data1_mux0007_10_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X56Y55"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => rd_data1(10),
      ADR2 => N02,
      ADR3 => reg_IF_inport_10_7620,
      O => reg_ID_data1_mux0007(10)
    );
  reg_ID_data1_mux0007_11_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X56Y55"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => reg_IF_inport_11_7618,
      ADR2 => N02,
      ADR3 => rd_data1(11),
      O => reg_ID_data1_mux0007(11)
    );
  reg_ID_data1_11 : X_FF
    generic map(
      LOC => "SLICE_X56Y55",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_11_DXMUX_21296,
      CE => VCC,
      CLK => reg_ID_data1_11_CLKINV_21273,
      SET => GND,
      RST => reg_ID_data1_11_SRINV_21274,
      O => reg_ID_data1_11_7527
    );
  reg_ID_data1_12 : X_FF
    generic map(
      LOC => "SLICE_X57Y60",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_13_DYMUX_21324,
      CE => VCC,
      CLK => reg_ID_data1_13_CLKINV_21315,
      SET => GND,
      RST => reg_ID_data1_13_SRINV_21316,
      O => reg_ID_data1_12_7529
    );
  reg_ID_data1_mux0007_12_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X57Y60"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => N02,
      ADR2 => reg_IF_inport_12_7622,
      ADR3 => rd_data1(12),
      O => reg_ID_data1_mux0007(12)
    );
  reg_ID_data1_mux0007_13_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X57Y60"
    )
    port map (
      ADR0 => rd_data1(13),
      ADR1 => N02,
      ADR2 => N22_0,
      ADR3 => reg_IF_inport_13_7621,
      O => reg_ID_data1_mux0007(13)
    );
  reg_ID_data1_13 : X_FF
    generic map(
      LOC => "SLICE_X57Y60",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_13_DXMUX_21338,
      CE => VCC,
      CLK => reg_ID_data1_13_CLKINV_21315,
      SET => GND,
      RST => reg_ID_data1_13_SRINV_21316,
      O => reg_ID_data1_13_7531
    );
  reg_ID_data1_14 : X_FF
    generic map(
      LOC => "SLICE_X59Y61",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_15_DYMUX_21366,
      CE => VCC,
      CLK => reg_ID_data1_15_CLKINV_21357,
      SET => GND,
      RST => reg_ID_data1_15_SRINV_21358,
      O => reg_ID_data1_14_7533
    );
  reg_ID_data1_mux0007_14_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X59Y61"
    )
    port map (
      ADR0 => N02,
      ADR1 => N22_0,
      ADR2 => rd_data1(14),
      ADR3 => reg_IF_inport_14_7624,
      O => reg_ID_data1_mux0007(14)
    );
  reg_ID_data1_mux0007_15_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X59Y61"
    )
    port map (
      ADR0 => reg_IF_inport_15_7623,
      ADR1 => rd_data1(15),
      ADR2 => N22_0,
      ADR3 => N02,
      O => reg_ID_data1_mux0007(15)
    );
  reg_ID_data1_15 : X_FF
    generic map(
      LOC => "SLICE_X59Y61",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_15_DXMUX_21380,
      CE => VCC,
      CLK => reg_ID_data1_15_CLKINV_21357,
      SET => GND,
      RST => reg_ID_data1_15_SRINV_21358,
      O => reg_ID_data1_15_7535
    );
  reg_ID_data2_10 : X_FF
    generic map(
      LOC => "SLICE_X46Y62",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_11_DYMUX_21408,
      CE => VCC,
      CLK => reg_ID_data2_11_CLKINV_21399,
      SET => GND,
      RST => reg_ID_data2_11_SRINV_21400,
      O => reg_ID_data2_10_7389
    );
  reg_ID_data2_mux0007_5_1 : X_LUT4
    generic map(
      INIT => X"C8C0",
      LOC => "SLICE_X46Y62"
    )
    port map (
      ADR0 => N95,
      ADR1 => N2_0,
      ADR2 => N18_0,
      ADR3 => rd_data2(10),
      O => reg_ID_data2_mux0007(5)
    );
  reg_ID_data2_mux0007_4_1 : X_LUT4
    generic map(
      INIT => X"A888",
      LOC => "SLICE_X46Y62"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => N18_0,
      ADR2 => N95,
      ADR3 => rd_data2(11),
      O => reg_ID_data2_mux0007(4)
    );
  reg_ID_data2_11 : X_FF
    generic map(
      LOC => "SLICE_X46Y62",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_11_DXMUX_21422,
      CE => VCC,
      CLK => reg_ID_data2_11_CLKINV_21399,
      SET => GND,
      RST => reg_ID_data2_11_SRINV_21400,
      O => reg_ID_data2_11_7391
    );
  reg_ID_data2_12 : X_FF
    generic map(
      LOC => "SLICE_X48Y63",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_13_DYMUX_21450,
      CE => VCC,
      CLK => reg_ID_data2_13_CLKINV_21441,
      SET => GND,
      RST => reg_ID_data2_13_SRINV_21442,
      O => reg_ID_data2_12_7393
    );
  reg_ID_data2_mux0007_3_1 : X_LUT4
    generic map(
      INIT => X"A8A0",
      LOC => "SLICE_X48Y63"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => N95,
      ADR2 => N18_0,
      ADR3 => rd_data2(12),
      O => reg_ID_data2_mux0007(3)
    );
  reg_ID_data2_mux0007_2_1 : X_LUT4
    generic map(
      INIT => X"A8A0",
      LOC => "SLICE_X48Y63"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => N95,
      ADR2 => N18_0,
      ADR3 => rd_data2(13),
      O => reg_ID_data2_mux0007(2)
    );
  reg_ID_data2_13 : X_FF
    generic map(
      LOC => "SLICE_X48Y63",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_13_DXMUX_21464,
      CE => VCC,
      CLK => reg_ID_data2_13_CLKINV_21441,
      SET => GND,
      RST => reg_ID_data2_13_SRINV_21442,
      O => reg_ID_data2_13_7395
    );
  reg_ID_data2_14 : X_FF
    generic map(
      LOC => "SLICE_X47Y58",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_15_DYMUX_21492,
      CE => VCC,
      CLK => reg_ID_data2_15_CLKINV_21483,
      SET => GND,
      RST => reg_ID_data2_15_SRINV_21484,
      O => reg_ID_data2_14_7397
    );
  reg_ID_data2_mux0007_1_1 : X_LUT4
    generic map(
      INIT => X"CC80",
      LOC => "SLICE_X47Y58"
    )
    port map (
      ADR0 => N95,
      ADR1 => N2_0,
      ADR2 => rd_data2(14),
      ADR3 => N18_0,
      O => reg_ID_data2_mux0007(1)
    );
  reg_ID_data2_mux0007_0_1 : X_LUT4
    generic map(
      INIT => X"CC80",
      LOC => "SLICE_X47Y58"
    )
    port map (
      ADR0 => rd_data2(15),
      ADR1 => N2_0,
      ADR2 => N95,
      ADR3 => N18_0,
      O => reg_ID_data2_mux0007(0)
    );
  reg_ID_data2_15 : X_FF
    generic map(
      LOC => "SLICE_X47Y58",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_15_DXMUX_21506,
      CE => VCC,
      CLK => reg_ID_data2_15_CLKINV_21483,
      SET => GND,
      RST => reg_ID_data2_15_SRINV_21484,
      O => reg_ID_data2_15_7399
    );
  reg_ID_data1_mux0007_0_10 : X_LUT4
    generic map(
      INIT => X"FAAA",
      LOC => "SLICE_X54Y53"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_0_6,
      ADR1 => VCC,
      ADR2 => rd_data1(0),
      ADR3 => N02,
      O => reg_ID_data1_mux0007(0)
    );
  reg_ID_data1_0 : X_FF
    generic map(
      LOC => "SLICE_X54Y53",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_1_DYMUX_21533,
      CE => VCC,
      CLK => reg_ID_data1_1_CLKINV_21523,
      SET => GND,
      RST => reg_ID_data1_1_SRINV_21524,
      O => reg_ID_data1_0_7585
    );
  reg_ID_data1_mux0007_1_10 : X_LUT4
    generic map(
      INIT => X"EAEA",
      LOC => "SLICE_X54Y53"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_1_6,
      ADR1 => rd_data1(1),
      ADR2 => N02,
      ADR3 => VCC,
      O => reg_ID_data1_mux0007(1)
    );
  reg_ID_data1_1 : X_FF
    generic map(
      LOC => "SLICE_X54Y53",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_1_DXMUX_21548,
      CE => VCC,
      CLK => reg_ID_data1_1_CLKINV_21523,
      SET => GND,
      RST => reg_ID_data1_1_SRINV_21524,
      O => reg_ID_data1_1_7586
    );
  reg_ID_data1_mux0007_2_10 : X_LUT4
    generic map(
      INIT => X"EAEA",
      LOC => "SLICE_X54Y56"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_2_6,
      ADR1 => rd_data1(2),
      ADR2 => N02,
      ADR3 => VCC,
      O => reg_ID_data1_mux0007(2)
    );
  reg_ID_data1_2 : X_FF
    generic map(
      LOC => "SLICE_X54Y56",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_3_DYMUX_21575,
      CE => VCC,
      CLK => reg_ID_data1_3_CLKINV_21565,
      SET => GND,
      RST => reg_ID_data1_3_SRINV_21566,
      O => reg_ID_data1_2_7587
    );
  reg_ID_data1_mux0007_3_10 : X_LUT4
    generic map(
      INIT => X"FFC0",
      LOC => "SLICE_X54Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rd_data1(3),
      ADR2 => N02,
      ADR3 => reg_ID_data1_mux0007_3_6,
      O => reg_ID_data1_mux0007(3)
    );
  reg_ID_data1_3 : X_FF
    generic map(
      LOC => "SLICE_X54Y56",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_3_DXMUX_21590,
      CE => VCC,
      CLK => reg_ID_data1_3_CLKINV_21565,
      SET => GND,
      RST => reg_ID_data1_3_SRINV_21566,
      O => reg_ID_data1_3_7588
    );
  reg_ID_data2_0 : X_FF
    generic map(
      LOC => "SLICE_X52Y56",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_1_DYMUX_21618,
      CE => VCC,
      CLK => reg_ID_data2_1_CLKINV_21609,
      SET => GND,
      RST => reg_ID_data2_1_SRINV_21610,
      O => reg_ID_data2_0_7441
    );
  reg_ID_data2_mux0007_15_Q : X_LUT4
    generic map(
      INIT => X"F800",
      LOC => "SLICE_X52Y56"
    )
    port map (
      ADR0 => rd_data2(0),
      ADR1 => N95,
      ADR2 => N117_0,
      ADR3 => N2_0,
      O => reg_ID_data2_mux0007(15)
    );
  reg_ID_data2_mux0007_14_Q : X_LUT4
    generic map(
      INIT => X"F800",
      LOC => "SLICE_X52Y56"
    )
    port map (
      ADR0 => rd_data2(1),
      ADR1 => N95,
      ADR2 => N119_0,
      ADR3 => N2_0,
      O => reg_ID_data2_mux0007(14)
    );
  reg_ID_data2_1 : X_FF
    generic map(
      LOC => "SLICE_X52Y56",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_1_DXMUX_21632,
      CE => VCC,
      CLK => reg_ID_data2_1_CLKINV_21609,
      SET => GND,
      RST => reg_ID_data2_1_SRINV_21610,
      O => reg_ID_data2_1_7445
    );
  reg_ID_data1_mux0007_4_10 : X_LUT4
    generic map(
      INIT => X"FFC0",
      LOC => "SLICE_X57Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N02,
      ADR2 => rd_data1(4),
      ADR3 => reg_ID_data1_mux0007_4_6,
      O => reg_ID_data1_mux0007(4)
    );
  reg_ID_data1_4 : X_FF
    generic map(
      LOC => "SLICE_X57Y55",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_5_DYMUX_21659,
      CE => VCC,
      CLK => reg_ID_data1_5_CLKINV_21649,
      SET => GND,
      RST => reg_ID_data1_5_SRINV_21650,
      O => reg_ID_data1_4_7589
    );
  reg_ID_data1_mux0007_5_10 : X_LUT4
    generic map(
      INIT => X"EAEA",
      LOC => "SLICE_X57Y55"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_5_6,
      ADR1 => N02,
      ADR2 => rd_data1(5),
      ADR3 => VCC,
      O => reg_ID_data1_mux0007(5)
    );
  reg_ID_data1_5 : X_FF
    generic map(
      LOC => "SLICE_X57Y55",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_5_DXMUX_21674,
      CE => VCC,
      CLK => reg_ID_data1_5_CLKINV_21649,
      SET => GND,
      RST => reg_ID_data1_5_SRINV_21650,
      O => reg_ID_data1_5_7590
    );
  reg_ID_data2_2 : X_FF
    generic map(
      LOC => "SLICE_X51Y59",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_3_DYMUX_21702,
      CE => VCC,
      CLK => reg_ID_data2_3_CLKINV_21693,
      SET => GND,
      RST => reg_ID_data2_3_SRINV_21694,
      O => reg_ID_data2_2_7448
    );
  reg_ID_data2_mux0007_13_Q : X_LUT4
    generic map(
      INIT => X"AA80",
      LOC => "SLICE_X51Y59"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => N95,
      ADR2 => rd_data2(2),
      ADR3 => N121_0,
      O => reg_ID_data2_mux0007(13)
    );
  reg_ID_data2_mux0007_12_Q : X_LUT4
    generic map(
      INIT => X"CC80",
      LOC => "SLICE_X51Y59"
    )
    port map (
      ADR0 => N95,
      ADR1 => N2_0,
      ADR2 => rd_data2(3),
      ADR3 => N123_0,
      O => reg_ID_data2_mux0007(12)
    );
  reg_ID_data2_3 : X_FF
    generic map(
      LOC => "SLICE_X51Y59",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_3_DXMUX_21716,
      CE => VCC,
      CLK => reg_ID_data2_3_CLKINV_21693,
      SET => GND,
      RST => reg_ID_data2_3_SRINV_21694,
      O => reg_ID_data2_3_7451
    );
  reg_ID_data1_mux0007_6_10 : X_LUT4
    generic map(
      INIT => X"ECEC",
      LOC => "SLICE_X55Y55"
    )
    port map (
      ADR0 => N02,
      ADR1 => reg_ID_data1_mux0007_6_6,
      ADR2 => rd_data1(6),
      ADR3 => VCC,
      O => reg_ID_data1_mux0007(6)
    );
  reg_ID_data1_6 : X_FF
    generic map(
      LOC => "SLICE_X55Y55",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_7_DYMUX_21744,
      CE => VCC,
      CLK => reg_ID_data1_7_CLKINV_21734,
      SET => GND,
      RST => reg_ID_data1_7_SRINV_21735,
      O => reg_ID_data1_6_7591
    );
  reg_ID_data1_mux0007_7_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X55Y55"
    )
    port map (
      ADR0 => rd_data1(7),
      ADR1 => N02,
      ADR2 => reg_IF_inport_7_7631,
      ADR3 => N22_0,
      O => reg_ID_data1_mux0007(7)
    );
  reg_ID_instr_15 : X_FF
    generic map(
      LOC => "SLICE_X45Y53",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_15_DXMUX_21972,
      CE => VCC,
      CLK => reg_ID_instr_15_CLKINV_21945,
      SET => GND,
      RST => reg_ID_instr_15_SRINV_21946,
      O => reg_ID_instr_15_7512
    );
  reg_ID_data2_mux0007_7_1 : X_LUT4
    generic map(
      INIT => X"C888",
      LOC => "SLICE_X52Y58"
    )
    port map (
      ADR0 => N18_0,
      ADR1 => N2_0,
      ADR2 => rd_data2(8),
      ADR3 => N95,
      O => reg_ID_data2_mux0007(7)
    );
  reg_ID_instr_mux0001_15_1 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X45Y56"
    )
    port map (
      ADR0 => reg_IF_instr_0_7636,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => branch_trigger,
      O => reg_ID_instr_mux0001(15)
    );
  reg_ID_instr_0 : X_FF
    generic map(
      LOC => "SLICE_X45Y56",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_1_DYMUX_21998,
      CE => VCC,
      CLK => reg_ID_instr_1_CLKINV_21987,
      SET => GND,
      RST => reg_ID_instr_1_SRINV_21988,
      O => reg_ID_instr_0_7473
    );
  reg_ID_instr_mux0001_14_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X45Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_1_7635,
      ADR2 => VCC,
      ADR3 => branch_trigger,
      O => reg_ID_instr_mux0001(14)
    );
  reg_ID_instr_1 : X_FF
    generic map(
      LOC => "SLICE_X45Y56",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_1_DXMUX_22014,
      CE => VCC,
      CLK => reg_ID_instr_1_CLKINV_21987,
      SET => GND,
      RST => reg_ID_instr_1_SRINV_21988,
      O => reg_ID_instr_1_7523
    );
  reg_ID_instr_mux0001_13_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X46Y56"
    )
    port map (
      ADR0 => branch_trigger,
      ADR1 => VCC,
      ADR2 => reg_IF_instr_2_7637,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(13)
    );
  reg_ID_instr_2 : X_FF
    generic map(
      LOC => "SLICE_X46Y56",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_3_DYMUX_22040,
      CE => VCC,
      CLK => reg_ID_instr_3_CLKINV_22029,
      SET => GND,
      RST => reg_ID_instr_3_SRINV_22030,
      O => reg_ID_instr_2_7521
    );
  reg_ID_instr_mux0001_12_1 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X46Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger,
      ADR2 => reg_IF_instr_3_7578,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(12)
    );
  reg_ID_instr_3 : X_FF
    generic map(
      LOC => "SLICE_X46Y56",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_3_DXMUX_22056,
      CE => VCC,
      CLK => reg_ID_instr_3_CLKINV_22029,
      SET => GND,
      RST => reg_ID_instr_3_SRINV_22030,
      O => reg_ID_instr_3_7551
    );
  reg_ID_instr_mux0001_11_1 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X47Y57"
    )
    port map (
      ADR0 => reg_IF_instr_4_7639,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => branch_trigger,
      O => reg_ID_instr_mux0001(11)
    );
  reg_ID_instr_4 : X_FF
    generic map(
      LOC => "SLICE_X47Y57",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_5_DYMUX_22082,
      CE => VCC,
      CLK => reg_ID_instr_5_CLKINV_22071,
      SET => GND,
      RST => reg_ID_instr_5_SRINV_22072,
      O => reg_ID_instr_4_7552
    );
  reg_ID_instr_mux0001_10_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X47Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_5_7638,
      ADR2 => VCC,
      ADR3 => branch_trigger,
      O => reg_ID_instr_mux0001(10)
    );
  reg_ID_instr_5 : X_FF
    generic map(
      LOC => "SLICE_X47Y57",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_5_DXMUX_22098,
      CE => VCC,
      CLK => reg_ID_instr_5_CLKINV_22071,
      SET => GND,
      RST => reg_ID_instr_5_SRINV_22072,
      O => reg_ID_instr_5_7553
    );
  reg_ID_instr_mux0001_9_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X50Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_6_7579,
      ADR2 => VCC,
      ADR3 => branch_trigger,
      O => reg_ID_instr_mux0001(9)
    );
  reg_ID_instr_6 : X_FF
    generic map(
      LOC => "SLICE_X50Y56",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_7_DYMUX_22124,
      CE => VCC,
      CLK => reg_ID_instr_7_CLKINV_22113,
      SET => GND,
      RST => reg_ID_instr_7_SRINV_22114,
      O => reg_ID_instr_6_7541
    );
  reg_ID_instr_mux0001_8_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X50Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_7_7640,
      ADR2 => VCC,
      ADR3 => branch_trigger,
      O => reg_ID_instr_mux0001(8)
    );
  reg_ID_instr_7 : X_FF
    generic map(
      LOC => "SLICE_X50Y56",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_7_DXMUX_22140,
      CE => VCC,
      CLK => reg_ID_instr_7_CLKINV_22113,
      SET => GND,
      RST => reg_ID_instr_7_SRINV_22114,
      O => reg_ID_instr_7_7545
    );
  reg_ID_instr_mux0001_7_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X46Y54"
    )
    port map (
      ADR0 => reg_IF_instr_8_7641,
      ADR1 => VCC,
      ADR2 => branch_trigger,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(7)
    );
  reg_ID_instr_8 : X_FF
    generic map(
      LOC => "SLICE_X46Y54",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_9_DYMUX_22166,
      CE => VCC,
      CLK => reg_ID_instr_9_CLKINV_22155,
      SET => GND,
      RST => reg_ID_instr_9_SRINV_22156,
      O => reg_ID_instr_8_7546
    );
  reg_ID_instr_mux0001_6_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X46Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_9_7412,
      ADR2 => branch_trigger,
      ADR3 => VCC,
      O => reg_ID_instr_mux0001(6)
    );
  reg_ID_instr_9 : X_FF
    generic map(
      LOC => "SLICE_X46Y54",
      INIT => '0'
    )
    port map (
      I => reg_ID_instr_9_DXMUX_22182,
      CE => VCC,
      CLK => reg_ID_instr_9_CLKINV_22155,
      SET => GND,
      RST => reg_ID_instr_9_SRINV_22156,
      O => reg_ID_instr_9_7400
    );
  reg_IF_instr_mux0001_5_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X66Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rom_data(10),
      ADR2 => branch_trigger,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(5)
    );
  reg_IF_instr_10 : X_FF
    generic map(
      LOC => "SLICE_X66Y53",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_11_DYMUX_22208,
      CE => VCC,
      CLK => reg_IF_instr_11_CLKINV_22197,
      SET => GND,
      RST => reg_IF_instr_11_SRINV_22198,
      O => reg_IF_instr_10_7411
    );
  reg_IF_instr_mux0001_4_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X66Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => branch_trigger,
      ADR3 => rom_data(11),
      O => reg_IF_instr_mux0001(4)
    );
  reg_IF_instr_11 : X_FF
    generic map(
      LOC => "SLICE_X66Y53",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_11_DXMUX_22224,
      CE => VCC,
      CLK => reg_IF_instr_11_CLKINV_22197,
      SET => GND,
      RST => reg_IF_instr_11_SRINV_22198,
      O => reg_IF_instr_11_7408
    );
  reg_IF_instr_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X75Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rom_data(12),
      ADR2 => VCC,
      ADR3 => branch_trigger,
      O => reg_IF_instr_mux0001(3)
    );
  reg_IF_instr_12 : X_FF
    generic map(
      LOC => "SLICE_X75Y50",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_13_DYMUX_22250,
      CE => VCC,
      CLK => reg_IF_instr_13_CLKINV_22239,
      SET => GND,
      RST => reg_IF_instr_13_SRINV_22240,
      O => reg_IF_instr_12_7604
    );
  reg_IF_instr_mux0001_2_1 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X75Y50"
    )
    port map (
      ADR0 => branch_trigger,
      ADR1 => rom_data(13),
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(2)
    );
  reg_IF_instr_13 : X_FF
    generic map(
      LOC => "SLICE_X75Y50",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_13_DXMUX_22266,
      CE => VCC,
      CLK => reg_IF_instr_13_CLKINV_22239,
      SET => GND,
      RST => reg_IF_instr_13_SRINV_22240,
      O => reg_IF_instr_13_7603
    );
  reg_IF_instr_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X78Y53"
    )
    port map (
      ADR0 => rom_data(14),
      ADR1 => VCC,
      ADR2 => branch_trigger,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(1)
    );
  reg_IF_instr_14 : X_FF
    generic map(
      LOC => "SLICE_X78Y53",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_15_DYMUX_22292,
      CE => VCC,
      CLK => reg_IF_instr_15_CLKINV_22281,
      SET => GND,
      RST => reg_IF_instr_15_SRINV_22282,
      O => reg_IF_instr_14_7602
    );
  reg_IF_instr_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X78Y53"
    )
    port map (
      ADR0 => rom_data(15),
      ADR1 => VCC,
      ADR2 => branch_trigger,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(0)
    );
  reg_IF_instr_15 : X_FF
    generic map(
      LOC => "SLICE_X78Y53",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_15_DXMUX_22308,
      CE => VCC,
      CLK => reg_IF_instr_15_CLKINV_22281,
      SET => GND,
      RST => reg_IF_instr_15_SRINV_22282,
      O => reg_IF_instr_15_7601
    );
  reg_IF_instr_mux0001_15_1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X66Y55"
    )
    port map (
      ADR0 => rom_data(0),
      ADR1 => branch_trigger,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(15)
    );
  reg_IF_instr_0 : X_FF
    generic map(
      LOC => "SLICE_X66Y55",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_1_DYMUX_22334,
      CE => VCC,
      CLK => reg_IF_instr_1_CLKINV_22323,
      SET => GND,
      RST => reg_IF_instr_1_SRINV_22324,
      O => reg_IF_instr_0_7636
    );
  reg_IF_instr_mux0001_14_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X66Y55"
    )
    port map (
      ADR0 => branch_trigger,
      ADR1 => VCC,
      ADR2 => rom_data(1),
      ADR3 => VCC,
      O => reg_IF_instr_mux0001(14)
    );
  reg_IF_instr_1 : X_FF
    generic map(
      LOC => "SLICE_X66Y55",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_1_DXMUX_22350,
      CE => VCC,
      CLK => reg_IF_instr_1_CLKINV_22323,
      SET => GND,
      RST => reg_IF_instr_1_SRINV_22324,
      O => reg_IF_instr_1_7635
    );
  reg_IF_instr_mux0001_13_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X66Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger,
      ADR2 => VCC,
      ADR3 => rom_data(2),
      O => reg_IF_instr_mux0001(13)
    );
  reg_IF_instr_2 : X_FF
    generic map(
      LOC => "SLICE_X66Y54",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_3_DYMUX_22376,
      CE => VCC,
      CLK => reg_IF_instr_3_CLKINV_22365,
      SET => GND,
      RST => reg_IF_instr_3_SRINV_22366,
      O => reg_IF_instr_2_7637
    );
  reg_IF_instr_mux0001_12_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X66Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => branch_trigger,
      ADR2 => VCC,
      ADR3 => rom_data(3),
      O => reg_IF_instr_mux0001(12)
    );
  reg_IF_instr_3 : X_FF
    generic map(
      LOC => "SLICE_X66Y54",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_3_DXMUX_22392,
      CE => VCC,
      CLK => reg_IF_instr_3_CLKINV_22365,
      SET => GND,
      RST => reg_IF_instr_3_SRINV_22366,
      O => reg_IF_instr_3_7578
    );
  reg_IF_instr_mux0001_11_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X67Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => branch_trigger,
      ADR3 => rom_data(4),
      O => reg_IF_instr_mux0001(11)
    );
  reg_IF_instr_4 : X_FF
    generic map(
      LOC => "SLICE_X67Y57",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_5_DYMUX_22418,
      CE => VCC,
      CLK => reg_IF_instr_5_CLKINV_22407,
      SET => GND,
      RST => reg_IF_instr_5_SRINV_22408,
      O => reg_IF_instr_4_7639
    );
  reg_IF_instr_mux0001_10_1 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X67Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rom_data(5),
      ADR2 => VCC,
      ADR3 => branch_trigger,
      O => reg_IF_instr_mux0001(10)
    );
  reg_IF_instr_5 : X_FF
    generic map(
      LOC => "SLICE_X67Y57",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_5_DXMUX_22434,
      CE => VCC,
      CLK => reg_IF_instr_5_CLKINV_22407,
      SET => GND,
      RST => reg_IF_instr_5_SRINV_22408,
      O => reg_IF_instr_5_7638
    );
  reg_IF_instr_mux0001_8_1 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X66Y56"
    )
    port map (
      ADR0 => branch_trigger,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => rom_data(7),
      O => reg_IF_instr_mux0001(8)
    );
  reg_IF_instr_7 : X_FF
    generic map(
      LOC => "SLICE_X66Y56",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_7_DYMUX_22457,
      CE => VCC,
      CLK => reg_IF_instr_7_CLKINV_22446,
      SET => GND,
      RST => reg_IF_instr_7_FFY_RSTAND_22462,
      O => reg_IF_instr_7_7640
    );
  reg_IF_instr_7_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X66Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_instr_7_FFY_RSTAND_22462
    );
  reg_IF_instr_mux0001_7_1 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X67Y52"
    )
    port map (
      ADR0 => branch_trigger,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => rom_data(8),
      O => reg_IF_instr_mux0001(7)
    );
  reg_IF_instr_8 : X_FF
    generic map(
      LOC => "SLICE_X67Y52",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_9_DYMUX_22483,
      CE => VCC,
      CLK => reg_IF_instr_9_CLKINV_22472,
      SET => GND,
      RST => reg_IF_instr_9_SRINV_22473,
      O => reg_IF_instr_8_7641
    );
  reg_IF_instr_mux0001_6_1 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X67Y52"
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
      LOC => "SLICE_X67Y52",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_9_DXMUX_22499,
      CE => VCC,
      CLK => reg_IF_instr_9_CLKINV_22472,
      SET => GND,
      RST => reg_IF_instr_9_SRINV_22473,
      O => reg_IF_instr_9_7412
    );
  result_10_1 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X31Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1_cmp_eq0008,
      ADR2 => alu_result(10),
      ADR3 => ram_data(10),
      O => result(10)
    );
  reg_EX_result_10 : X_FF
    generic map(
      LOC => "SLICE_X31Y55",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_11_DYMUX_22526,
      CE => VCC,
      CLK => reg_EX_result_11_CLKINV_22516,
      SET => GND,
      RST => reg_EX_result_11_SRINV_22517,
      O => reg_EX_result_10_7237
    );
  result_11_1 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X31Y55"
    )
    port map (
      ADR0 => ram_data(11),
      ADR1 => alu_result(11),
      ADR2 => VCC,
      ADR3 => in1_cmp_eq0008,
      O => result(11)
    );
  reg_EX_result_11 : X_FF
    generic map(
      LOC => "SLICE_X31Y55",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_11_DXMUX_22541,
      CE => VCC,
      CLK => reg_EX_result_11_CLKINV_22516,
      SET => GND,
      RST => reg_EX_result_11_SRINV_22517,
      O => reg_EX_result_11_7236
    );
  result_13_1 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X43Y55"
    )
    port map (
      ADR0 => in1_cmp_eq0008,
      ADR1 => ram_data(13),
      ADR2 => alu_result(13),
      ADR3 => VCC,
      O => result(13)
    );
  reg_EX_result_13 : X_FF
    generic map(
      LOC => "SLICE_X43Y55",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_13_DYMUX_22564,
      CE => VCC,
      CLK => reg_EX_result_13_CLKINV_22554,
      SET => GND,
      RST => reg_EX_result_13_FFY_RSTAND_22569,
      O => reg_EX_result_13_7234
    );
  reg_EX_result_13_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X43Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_result_13_FFY_RSTAND_22569
    );
  result_14_1 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X41Y61"
    )
    port map (
      ADR0 => in1_cmp_eq0008,
      ADR1 => alu_result(14),
      ADR2 => VCC,
      ADR3 => ram_data(14),
      O => result(14)
    );
  reg_EX_result_14 : X_FF
    generic map(
      LOC => "SLICE_X41Y61",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_15_DYMUX_22591,
      CE => VCC,
      CLK => reg_EX_result_15_CLKINV_22581,
      SET => GND,
      RST => reg_EX_result_15_SRINV_22582,
      O => reg_EX_result_14_7233
    );
  result_15_1 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X41Y61"
    )
    port map (
      ADR0 => alu_result(15),
      ADR1 => in1_cmp_eq0008,
      ADR2 => VCC,
      ADR3 => ram_data(15),
      O => result(15)
    );
  reg_EX_result_15 : X_FF
    generic map(
      LOC => "SLICE_X41Y61",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_15_DXMUX_22606,
      CE => VCC,
      CLK => reg_EX_result_15_CLKINV_22581,
      SET => GND,
      RST => reg_EX_result_15_SRINV_22582,
      O => reg_EX_result_15_7232
    );
  outport_0_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X91Y28"
    )
    port map (
      ADR0 => reg_EX_result_0_7247,
      ADR1 => outport_cmp_eq0000_7615,
      ADR2 => VCC,
      ADR3 => VCC,
      O => outport_0_OBUF_22625
    );
  outport_10_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X91Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outport_cmp_eq0000_7615,
      ADR2 => VCC,
      ADR3 => reg_EX_result_10_7237,
      O => outport_10_OBUF_22634
    );
  outport_1_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X91Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outport_cmp_eq0000_7615,
      ADR2 => VCC,
      ADR3 => reg_EX_result_1_7246,
      O => outport_1_OBUF_22649
    );
  outport_11_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X91Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_result_11_7236,
      ADR3 => outport_cmp_eq0000_7615,
      O => outport_11_OBUF_22658
    );
  outport_2_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X90Y32"
    )
    port map (
      ADR0 => outport_cmp_eq0000_7615,
      ADR1 => VCC,
      ADR2 => reg_EX_result_2_7245,
      ADR3 => VCC,
      O => outport_2_OBUF_22673
    );
  outport_12_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X90Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_12_7235,
      ADR2 => outport_cmp_eq0000_7615,
      ADR3 => VCC,
      O => outport_12_OBUF_22682
    );
  outport_3_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X90Y45"
    )
    port map (
      ADR0 => reg_EX_result_3_7244,
      ADR1 => VCC,
      ADR2 => outport_cmp_eq0000_7615,
      ADR3 => VCC,
      O => outport_3_OBUF_22697
    );
  outport_13_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X90Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => outport_cmp_eq0000_7615,
      ADR3 => reg_EX_result_13_7234,
      O => outport_13_OBUF_22706
    );
  outport_4_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X91Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outport_cmp_eq0000_7615,
      ADR2 => VCC,
      ADR3 => reg_EX_result_4_7243,
      O => outport_4_OBUF_22721
    );
  outport_14_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X91Y49"
    )
    port map (
      ADR0 => outport_cmp_eq0000_7615,
      ADR1 => reg_EX_result_14_7233,
      ADR2 => VCC,
      ADR3 => VCC,
      O => outport_14_OBUF_22730
    );
  outport_5_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X90Y17"
    )
    port map (
      ADR0 => outport_cmp_eq0000_7615,
      ADR1 => VCC,
      ADR2 => reg_EX_result_5_7242,
      ADR3 => VCC,
      O => outport_5_OBUF_22745
    );
  outport_6_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X90Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => outport_cmp_eq0000_7615,
      ADR3 => reg_EX_result_6_7241,
      O => outport_6_OBUF_22754
    );
  outport_7_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X91Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => outport_cmp_eq0000_7615,
      ADR2 => VCC,
      ADR3 => reg_EX_result_7_7240,
      O => outport_7_OBUF_22769
    );
  outport_8_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X91Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_result_8_7239,
      ADR2 => VCC,
      ADR3 => outport_cmp_eq0000_7615,
      O => outport_8_OBUF_22778
    );
  in1_and00075 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X40Y52"
    )
    port map (
      ADR0 => reg_ID_instr_12_7509,
      ADR1 => reg_ID_instr_15_7512,
      ADR2 => reg_ID_instr_10_7471,
      ADR3 => reg_ID_instr_14_7510,
      O => in1_and00075_22795
    );
  alu_mode_0_15 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X40Y52"
    )
    port map (
      ADR0 => reg_ID_instr_9_7400,
      ADR1 => reg_ID_instr_15_7512,
      ADR2 => reg_ID_instr_10_7471,
      ADR3 => reg_ID_instr_11_7470,
      O => alu_mode_0_15_22802
    );
  PC_next_2_SW0 : X_LUT4
    generic map(
      INIT => X"0FFF",
      LOC => "SLICE_X74Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => PC(0),
      ADR3 => PC(1),
      O => N135
    );
  PC_next_3_SW0 : X_LUT4
    generic map(
      INIT => X"5FFF",
      LOC => "SLICE_X74Y47"
    )
    port map (
      ADR0 => PC(2),
      ADR1 => VCC,
      ADR2 => PC(0),
      ADR3 => PC(1),
      O => N139
    );
  in2_10_SW2 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X38Y56"
    )
    port map (
      ADR0 => reg_EX_result_10_7237,
      ADR1 => in2_and0005,
      ADR2 => VCC,
      ADR3 => reg_ID_data2_10_7389,
      O => N336
    );
  in2_11_SW2 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X38Y56"
    )
    port map (
      ADR0 => reg_ID_data2_11_7391,
      ADR1 => reg_EX_result_11_7236,
      ADR2 => VCC,
      ADR3 => in2_and0005,
      O => N334
    );
  PC_next_6_SW0 : X_LUT4
    generic map(
      INIT => X"3FFF",
      LOC => "SLICE_X78Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Madd_PC_next_addsub0000_cy(3),
      ADR2 => PC(4),
      ADR3 => PC(5),
      O => N137
    );
  reg_ID_data2_mux0007_10_13 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X59Y58"
    )
    port map (
      ADR0 => reg_ID_data2_mux0007_10_7,
      ADR1 => rd_data2(5),
      ADR2 => or0000_0_or0000_0,
      ADR3 => reg_IF_instr_5_7638,
      O => reg_ID_data2_mux0007_10_13_23093
    );
  rd_index2_2_1 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X59Y58"
    )
    port map (
      ADR0 => rd_index1_or0007,
      ADR1 => VCC,
      ADR2 => reg_IF_instr_2_7637,
      ADR3 => reg_IF_instr_5_7638,
      O => rd_index2(2)
    );
  reg_ID_data2_mux0007_8_SW0 : X_LUT4
    generic map(
      INIT => X"FCCC",
      LOC => "SLICE_X51Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N19,
      ADR2 => reg_IF_instr_7_7640,
      ADR3 => N1011_0,
      O => N127
    );
  reg_ID_data2_mux0007_9_SW0 : X_LUT4
    generic map(
      INIT => X"ECEC",
      LOC => "SLICE_X51Y56"
    )
    port map (
      ADR0 => N1011_0,
      ADR1 => N19,
      ADR2 => reg_IF_instr_6_7579,
      ADR3 => VCC,
      O => N125
    );
  reg_ID_data2_mux0006_10_3 : X_LUT4
    generic map(
      INIT => X"4500",
      LOC => "SLICE_X50Y57"
    )
    port map (
      ADR0 => N110_0,
      ADR1 => reg_ID_instr_9_7400,
      ADR2 => N15_0,
      ADR3 => rd_index1_or0006_0,
      O => N811
    );
  in1_cmp_eq00091 : X_LUT4
    generic map(
      INIT => X"00A0",
      LOC => "SLICE_X50Y57"
    )
    port map (
      ADR0 => reg_ID_instr_9_7400,
      ADR1 => VCC,
      ADR2 => N13,
      ADR3 => reg_ID_instr_10_7471,
      O => ram_wr_enable(0)
    );
  reg_ID_data2_mux0006_12_1 : X_LUT4
    generic map(
      INIT => X"FCAA",
      LOC => "SLICE_X57Y57"
    )
    port map (
      ADR0 => N112_0,
      ADR1 => N113_0,
      ADR2 => reg_ID_instr_9_7400,
      ADR3 => rd_index1_or0006_0,
      O => N5_pack_1
    );
  reg_ID_data2_mux0007_15_SW0 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X57Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_0_7636,
      ADR2 => VCC,
      ADR3 => N5,
      O => N117
    );
  reg_ID_data2_mux0007_10_2 : X_LUT4
    generic map(
      INIT => X"F8F8",
      LOC => "SLICE_X53Y58"
    )
    port map (
      ADR0 => reg_IF_instr_5_7638,
      ADR1 => rd_index1_or0005,
      ADR2 => N811_0,
      ADR3 => VCC,
      O => reg_ID_data2_mux0007_10_2_pack_1
    );
  reg_ID_data2_mux0007_10_37 : X_LUT4
    generic map(
      INIT => X"A2A0",
      LOC => "SLICE_X53Y58"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => rd_index1_or0006_0,
      ADR2 => reg_ID_data2_mux0007_10_2_7653,
      ADR3 => reg_ID_data2_mux0007_10_13_0,
      O => reg_ID_data2_mux0007(10)
    );
  reg_ID_data2_5 : X_FF
    generic map(
      LOC => "SLICE_X53Y58",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_5_DXMUX_23204,
      CE => VCC,
      CLK => reg_ID_data2_5_CLKINV_23187,
      SET => GND,
      RST => reg_ID_data2_5_FFX_RSTAND_23209,
      O => reg_ID_data2_5_7432
    );
  reg_ID_data2_5_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X53Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_data2_5_FFX_RSTAND_23209
    );
  reg_ID_data2_mux0007_11_2 : X_LUT4
    generic map(
      INIT => X"ECEC",
      LOC => "SLICE_X52Y57"
    )
    port map (
      ADR0 => reg_IF_instr_4_7639,
      ADR1 => N811_0,
      ADR2 => rd_index1_or0005,
      ADR3 => VCC,
      O => reg_ID_data2_mux0007_11_2_pack_1
    );
  reg_ID_data2_mux0007_11_37 : X_LUT4
    generic map(
      INIT => X"C0C8",
      LOC => "SLICE_X52Y57"
    )
    port map (
      ADR0 => reg_ID_data2_mux0007_11_13_0,
      ADR1 => N2_0,
      ADR2 => reg_ID_data2_mux0007_11_2_7655,
      ADR3 => rd_index1_or0006_0,
      O => reg_ID_data2_mux0007(11)
    );
  reg_ID_data2_4 : X_FF
    generic map(
      LOC => "SLICE_X52Y57",
      INIT => '0'
    )
    port map (
      I => reg_ID_data2_4_DXMUX_23239,
      CE => VCC,
      CLK => reg_ID_data2_4_CLKINV_23222,
      SET => GND,
      RST => reg_ID_data2_4_FFX_RSTAND_23244,
      O => reg_ID_data2_4_7430
    );
  reg_ID_data2_4_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X52Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_data2_4_FFX_RSTAND_23244
    );
  reg_ID_data2_mux0007_11_7 : X_LUT4
    generic map(
      INIT => X"B333",
      LOC => "SLICE_X58Y58"
    )
    port map (
      ADR0 => reg_IF_instr_10_7411,
      ADR1 => reg_ID_data1_mux0007_10_146_7414,
      ADR2 => reg_IF_instr_9_7412,
      ADR3 => reg_IF_instr_11_7408,
      O => reg_ID_data2_mux0007_10_7_pack_1
    );
  reg_ID_data2_mux0007_11_13 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X58Y58"
    )
    port map (
      ADR0 => reg_IF_instr_4_7639,
      ADR1 => rd_data2(4),
      ADR2 => or0000_0_or0000_0,
      ADR3 => reg_ID_data2_mux0007_10_7,
      O => reg_ID_data2_mux0007_11_13_23267
    );
  reg_ID_data2_mux0006_8_11 : X_LUT4
    generic map(
      INIT => X"AAEA",
      LOC => "SLICE_X53Y56"
    )
    port map (
      ADR0 => N811_0,
      ADR1 => rd_index1_or0005,
      ADR2 => reg_IF_instr_5_7638,
      ADR3 => or0000_0_or0000_0,
      O => N19_pack_1
    );
  reg_ID_data2_mux0006_0_21 : X_LUT4
    generic map(
      INIT => X"F8F8",
      LOC => "SLICE_X53Y56"
    )
    port map (
      ADR0 => N1011_0,
      ADR1 => reg_IF_instr_8_7641,
      ADR2 => N19,
      ADR3 => VCC,
      O => N18
    );
  in2_and000221 : X_LUT4
    generic map(
      INIT => X"AA80",
      LOC => "SLICE_X41Y51"
    )
    port map (
      ADR0 => in1_or0003_0,
      ADR1 => in2_and00028_7550,
      ADR2 => in1_or0009_0,
      ADR3 => in2_and00025_0,
      O => in2_and0002
    );
  in2_and000552 : X_LUT4
    generic map(
      INIT => X"0202",
      LOC => "SLICE_X44Y55"
    )
    port map (
      ADR0 => in2_and000536_0,
      ADR1 => N192,
      ADR2 => N392,
      ADR3 => VCC,
      O => in2_and000552_23315
    );
  in2_and000536 : X_LUT4
    generic map(
      INIT => X"9009",
      LOC => "SLICE_X44Y54"
    )
    port map (
      ADR0 => reg_ID_instr_2_7521,
      ADR1 => reg_EX_instr_8_7544,
      ADR2 => reg_ID_instr_1_7523,
      ADR3 => reg_EX_instr_7_7543,
      O => in2_and000536_23327
    );
  in2_and000578 : X_LUT4
    generic map(
      INIT => X"EC00",
      LOC => "SLICE_X40Y54"
    )
    port map (
      ADR0 => in1_or0009_0,
      ADR1 => in2_and000552_0,
      ADR2 => in1_cmp_eq0014_0,
      ADR3 => wr_enable_or000185_0,
      O => in2_and0005_pack_1
    );
  in2_9_SW2 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X40Y54"
    )
    port map (
      ADR0 => reg_ID_data2_9_7440,
      ADR1 => VCC,
      ADR2 => reg_EX_result_9_7238,
      ADR3 => in2_and0005,
      O => N322
    );
  or0000_0_or00001 : X_LUT4
    generic map(
      INIT => X"020A",
      LOC => "SLICE_X57Y59"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_10_146_7414,
      ADR1 => reg_IF_instr_10_7411,
      ADR2 => reg_IF_instr_11_7408,
      ADR3 => reg_IF_instr_9_7412,
      O => or0000_0_or0000
    );
  reg_ID_data2_mux0006_12_1_SW0 : X_LUT4
    generic map(
      INIT => X"2AAA",
      LOC => "SLICE_X57Y59"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_10_146_7414,
      ADR1 => reg_IF_instr_10_7411,
      ADR2 => reg_IF_instr_9_7412,
      ADR3 => reg_IF_instr_11_7408,
      O => N112
    );
  reg_ID_data2_mux0006_12_1_SW1 : X_LUT4
    generic map(
      INIT => X"D755",
      LOC => "SLICE_X58Y56"
    )
    port map (
      ADR0 => N15_0,
      ADR1 => reg_IF_instr_11_7408,
      ADR2 => N7,
      ADR3 => reg_ID_data1_mux0007_10_146_7414,
      O => N113
    );
  reg_ID_data1_mux0007_10_134 : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X58Y56"
    )
    port map (
      ADR0 => reg_IF_instr_10_7411,
      ADR1 => reg_IF_instr_11_7408,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_9_7412,
      O => reg_ID_data1_mux0007_10_134_23399
    );
  reg_ID_data2_mux0007_12_SW0 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X54Y59"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_IF_instr_3_7578,
      ADR3 => N5,
      O => N123
    );
  reg_ID_data2_mux0007_13_SW0 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X54Y59"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_2_7637,
      ADR2 => VCC,
      ADR3 => N5,
      O => N121
    );
  rd_index1_or000511 : X_LUT4
    generic map(
      INIT => X"55FF",
      LOC => "SLICE_X57Y56"
    )
    port map (
      ADR0 => reg_IF_instr_9_7412,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_10_7411,
      O => N7_pack_1
    );
  reg_ID_data2_mux0006_10_3_SW0 : X_LUT4
    generic map(
      INIT => X"D55D",
      LOC => "SLICE_X57Y56"
    )
    port map (
      ADR0 => reg_IF_instr_3_7578,
      ADR1 => reg_ID_data1_mux0007_10_146_7414,
      ADR2 => N7,
      ADR3 => reg_IF_instr_11_7408,
      O => N110
    );
  rd_index1_or000629 : X_LUT4
    generic map(
      INIT => X"5042",
      LOC => "SLICE_X64Y57"
    )
    port map (
      ADR0 => reg_IF_instr_14_7602,
      ADR1 => reg_IF_instr_10_7411,
      ADR2 => reg_IF_instr_11_7408,
      ADR3 => reg_IF_instr_9_7412,
      O => rd_index1_or000629_23459
    );
  rd_index1_or000638 : X_LUT4
    generic map(
      INIT => X"0003",
      LOC => "SLICE_X65Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_IF_instr_13_7603,
      ADR2 => reg_IF_instr_12_7604,
      ADR3 => reg_IF_instr_15_7601,
      O => rd_index1_or000638_pack_1
    );
  reg_ID_data2_mux0006_8_41 : X_LUT4
    generic map(
      INIT => X"8CCC",
      LOC => "SLICE_X65Y56"
    )
    port map (
      ADR0 => rd_index1_or0005,
      ADR1 => or0000_0_or0000_0,
      ADR2 => rd_index1_or000638_7556,
      ADR3 => rd_index1_or000629_0,
      O => N1011
    );
  reg_ID_data2_mux0007_14_SW0 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X59Y56"
    )
    port map (
      ADR0 => N5,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_1_7635,
      O => N119
    );
  rd_index2_1_1 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X59Y56"
    )
    port map (
      ADR0 => reg_IF_instr_1_7635,
      ADR1 => rd_index1_or0007,
      ADR2 => VCC,
      ADR3 => reg_IF_instr_4_7639,
      O => rd_index2(1)
    );
  in1_cmp_eq00082 : X_LUT4
    generic map(
      INIT => X"0050",
      LOC => "SLICE_X42Y57"
    )
    port map (
      ADR0 => reg_ID_instr_9_7400,
      ADR1 => VCC,
      ADR2 => N13,
      ADR3 => reg_ID_instr_10_7471,
      O => in1_cmp_eq0008_pack_1
    );
  result_12_1 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X42Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => alu_result(12),
      ADR2 => in1_cmp_eq0008,
      ADR3 => ram_data(12),
      O => result(12)
    );
  reg_EX_result_12 : X_FF
    generic map(
      LOC => "SLICE_X42Y57",
      INIT => '0'
    )
    port map (
      I => reg_EX_result_12_DXMUX_23538,
      CE => VCC,
      CLK => reg_EX_result_12_CLKINV_23520,
      SET => GND,
      RST => reg_EX_result_12_FFX_RSTAND_23543,
      O => reg_EX_result_12_7235
    );
  reg_EX_result_12_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X42Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_result_12_FFX_RSTAND_23543
    );
  N2_SW0 : X_LUT4
    generic map(
      INIT => X"FE7F",
      LOC => "SLICE_X65Y57"
    )
    port map (
      ADR0 => reg_IF_instr_11_7408,
      ADR1 => reg_IF_instr_15_7601,
      ADR2 => reg_IF_instr_10_7411,
      ADR3 => reg_IF_instr_14_7602,
      O => N108_pack_1
    );
  N2 : X_LUT4
    generic map(
      INIT => X"FFFB",
      LOC => "SLICE_X65Y57"
    )
    port map (
      ADR0 => reg_IF_instr_13_7603,
      ADR1 => reg_IF_instr_9_7412,
      ADR2 => reg_IF_instr_12_7604,
      ADR3 => N108,
      O => N2_23566
    );
  rd_index1_1_1 : X_LUT4
    generic map(
      INIT => X"F3E2",
      LOC => "SLICE_X61Y56"
    )
    port map (
      ADR0 => rd_index1_or0004_7577,
      ADR1 => rd_index1_or0003,
      ADR2 => reg_IF_instr_7_7640,
      ADR3 => reg_IF_instr_4_7639,
      O => rd_index1(1)
    );
  wr_overflow_or000031 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X48Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reg_EX_instr_11_7501,
      ADR3 => reg_EX_instr_10_7506,
      O => wr_overflow_or000031_23595
    );
  wr_enable_or000134 : X_LUT4
    generic map(
      INIT => X"1F34",
      LOC => "SLICE_X48Y52"
    )
    port map (
      ADR0 => reg_EX_instr_9_7499,
      ADR1 => reg_EX_instr_13_7500,
      ADR2 => reg_EX_instr_11_7501,
      ADR3 => reg_EX_instr_10_7506,
      O => wr_enable_or000134_23602
    );
  wr_overflow_or000017 : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X51Y52"
    )
    port map (
      ADR0 => reg_EX_instr_9_7499,
      ADR1 => wr_enable_or000181,
      ADR2 => reg_EX_instr_14_7505,
      ADR3 => reg_EX_instr_13_7500,
      O => wr_overflow_or000017_23619
    );
  branch_trigger_cmp_eq000111 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X51Y52"
    )
    port map (
      ADR0 => reg_EX_instr_15_7504,
      ADR1 => reg_EX_instr_14_7505,
      ADR2 => reg_EX_instr_13_7500,
      ADR3 => reg_EX_instr_12_7503,
      O => N96
    );
  reg_ID_PC_0 : X_FF
    generic map(
      LOC => "SLICE_X59Y51",
      INIT => '0'
    )
    port map (
      I => reg_ID_PC_1_DYMUX_23638,
      CE => VCC,
      CLK => reg_ID_PC_1_CLKINV_23635,
      SET => GND,
      RST => reg_ID_PC_1_SRINV_23636,
      O => reg_ID_PC_0_7660
    );
  reg_ID_PC_1 : X_FF
    generic map(
      LOC => "SLICE_X59Y51",
      INIT => '0'
    )
    port map (
      I => reg_ID_PC_1_DXMUX_23646,
      CE => VCC,
      CLK => reg_ID_PC_1_CLKINV_23635,
      SET => GND,
      RST => reg_ID_PC_1_SRINV_23636,
      O => reg_ID_PC_1_7659
    );
  reg_ID_PC_2 : X_FF
    generic map(
      LOC => "SLICE_X61Y59",
      INIT => '0'
    )
    port map (
      I => reg_ID_PC_3_DYMUX_23662,
      CE => VCC,
      CLK => reg_ID_PC_3_CLKINV_23659,
      SET => GND,
      RST => reg_ID_PC_3_SRINV_23660,
      O => reg_ID_PC_2_7662
    );
  reg_ID_PC_3 : X_FF
    generic map(
      LOC => "SLICE_X61Y59",
      INIT => '0'
    )
    port map (
      I => reg_ID_PC_3_DXMUX_23670,
      CE => VCC,
      CLK => reg_ID_PC_3_CLKINV_23659,
      SET => GND,
      RST => reg_ID_PC_3_SRINV_23660,
      O => reg_ID_PC_3_7661
    );
  reg_ID_PC_4 : X_FF
    generic map(
      LOC => "SLICE_X66Y59",
      INIT => '0'
    )
    port map (
      I => reg_ID_PC_5_DYMUX_23686,
      CE => VCC,
      CLK => reg_ID_PC_5_CLKINV_23683,
      SET => GND,
      RST => reg_ID_PC_5_SRINV_23684,
      O => reg_ID_PC_4_7664
    );
  reg_ID_PC_5 : X_FF
    generic map(
      LOC => "SLICE_X66Y59",
      INIT => '0'
    )
    port map (
      I => reg_ID_PC_5_DXMUX_23694,
      CE => VCC,
      CLK => reg_ID_PC_5_CLKINV_23683,
      SET => GND,
      RST => reg_ID_PC_5_SRINV_23684,
      O => reg_ID_PC_5_7663
    );
  reg_ID_PC_6 : X_FF
    generic map(
      LOC => "SLICE_X67Y59",
      INIT => '0'
    )
    port map (
      I => reg_ID_PC_6_DYMUX_23708,
      CE => VCC,
      CLK => reg_ID_PC_6_CLKINV_23705,
      SET => GND,
      RST => reg_ID_PC_6_FFY_RSTAND_23713,
      O => reg_ID_PC_6_7665
    );
  reg_ID_PC_6_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X67Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_PC_6_FFY_RSTAND_23713
    );
  reg_IF_PC_0 : X_FF
    generic map(
      LOC => "SLICE_X66Y51",
      INIT => '0'
    )
    port map (
      I => reg_IF_PC_1_DYMUX_23724,
      CE => VCC,
      CLK => reg_IF_PC_1_CLKINV_23721,
      SET => GND,
      RST => reg_IF_PC_1_SRINV_23722,
      O => reg_IF_PC_0_7475
    );
  reg_IF_PC_1 : X_FF
    generic map(
      LOC => "SLICE_X66Y51",
      INIT => '0'
    )
    port map (
      I => reg_IF_PC_1_DXMUX_23732,
      CE => VCC,
      CLK => reg_IF_PC_1_CLKINV_23721,
      SET => GND,
      RST => reg_IF_PC_1_SRINV_23722,
      O => reg_IF_PC_1_7481
    );
  reg_IF_PC_2 : X_FF
    generic map(
      LOC => "SLICE_X67Y50",
      INIT => '0'
    )
    port map (
      I => reg_IF_PC_3_DYMUX_23748,
      CE => VCC,
      CLK => reg_IF_PC_3_CLKINV_23745,
      SET => GND,
      RST => reg_IF_PC_3_SRINV_23746,
      O => reg_IF_PC_2_7484
    );
  reg_IF_PC_3 : X_FF
    generic map(
      LOC => "SLICE_X67Y50",
      INIT => '0'
    )
    port map (
      I => reg_IF_PC_3_DXMUX_23756,
      CE => VCC,
      CLK => reg_IF_PC_3_CLKINV_23745,
      SET => GND,
      RST => reg_IF_PC_3_SRINV_23746,
      O => reg_IF_PC_3_7487
    );
  reg_IF_PC_4 : X_FF
    generic map(
      LOC => "SLICE_X67Y51",
      INIT => '0'
    )
    port map (
      I => reg_IF_PC_5_DYMUX_23772,
      CE => VCC,
      CLK => reg_IF_PC_5_CLKINV_23769,
      SET => GND,
      RST => reg_IF_PC_5_SRINV_23770,
      O => reg_IF_PC_4_7490
    );
  reg_IF_PC_5 : X_FF
    generic map(
      LOC => "SLICE_X67Y51",
      INIT => '0'
    )
    port map (
      I => reg_IF_PC_5_DXMUX_23780,
      CE => VCC,
      CLK => reg_IF_PC_5_CLKINV_23769,
      SET => GND,
      RST => reg_IF_PC_5_SRINV_23770,
      O => reg_IF_PC_5_7493
    );
  reg_IF_PC_6 : X_FF
    generic map(
      LOC => "SLICE_X71Y50",
      INIT => '0'
    )
    port map (
      I => reg_IF_PC_6_DYMUX_23794,
      CE => VCC,
      CLK => reg_IF_PC_6_CLKINV_23791,
      SET => GND,
      RST => reg_IF_PC_6_FFY_RSTAND_23799,
      O => reg_IF_PC_6_7496
    );
  reg_IF_PC_6_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X71Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_PC_6_FFY_RSTAND_23799
    );
  reg_EX_n_flag : X_FF
    generic map(
      LOC => "SLICE_X52Y47",
      INIT => '0'
    )
    port map (
      I => reg_EX_n_flag_DYMUX_23808,
      CE => VCC,
      CLK => reg_EX_n_flag_CLKINV_23805,
      SET => GND,
      RST => reg_EX_n_flag_FFY_RSTAND_23813,
      O => reg_EX_n_flag_7666
    );
  reg_EX_n_flag_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X52Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_n_flag_FFY_RSTAND_23813
    );
  wr_overflow_data_0_1 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X51Y58"
    )
    port map (
      ADR0 => branch_trigger_cmp_eq0001,
      ADR1 => reg_EX_overflow_0_7419,
      ADR2 => reg_EX_PC_0_7667,
      ADR3 => VCC,
      O => wr_overflow_data(0)
    );
  wr_overflow_data_7_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X51Y58"
    )
    port map (
      ADR0 => reg_EX_overflow_7_7435,
      ADR1 => VCC,
      ADR2 => branch_trigger_cmp_eq0001,
      ADR3 => VCC,
      O => wr_overflow_data(7)
    );
  wr_overflow_data_1_1 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X53Y59"
    )
    port map (
      ADR0 => branch_trigger_cmp_eq0001,
      ADR1 => reg_EX_overflow_1_7422,
      ADR2 => VCC,
      ADR3 => reg_EX_PC_1_7668,
      O => wr_overflow_data(1)
    );
  wr_overflow_data_8_1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X53Y59"
    )
    port map (
      ADR0 => reg_EX_overflow_8_7437,
      ADR1 => branch_trigger_cmp_eq0001,
      ADR2 => VCC,
      ADR3 => VCC,
      O => wr_overflow_data(8)
    );
  wr_overflow_data_2_1 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X52Y60"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_PC_2_7669,
      ADR2 => reg_EX_overflow_2_7425,
      ADR3 => branch_trigger_cmp_eq0001,
      O => wr_overflow_data(2)
    );
  wr_overflow_data_9_1 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X52Y60"
    )
    port map (
      ADR0 => reg_EX_overflow_9_7439,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => branch_trigger_cmp_eq0001,
      O => wr_overflow_data(9)
    );
  wr_overflow_data_3_1 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X52Y59"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_PC_3_7671,
      ADR2 => branch_trigger_cmp_eq0001,
      ADR3 => reg_EX_overflow_3_7428,
      O => wr_overflow_data(3)
    );
  wr_overflow_data_4_1 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X52Y59"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_PC_4_7670,
      ADR2 => reg_EX_overflow_4_7429,
      ADR3 => branch_trigger_cmp_eq0001,
      O => wr_overflow_data(4)
    );
  wr_overflow_data_5_1 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X51Y60"
    )
    port map (
      ADR0 => reg_EX_overflow_5_7431,
      ADR1 => reg_EX_PC_5_7673,
      ADR2 => branch_trigger_cmp_eq0001,
      ADR3 => VCC,
      O => wr_overflow_data(5)
    );
  wr_overflow_data_6_1 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X51Y60"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_EX_overflow_6_7433,
      ADR2 => branch_trigger_cmp_eq0001,
      ADR3 => reg_EX_PC_6_7672,
      O => wr_overflow_data(6)
    );
  rd_index1_or0004 : X_LUT4
    generic map(
      INIT => X"D080",
      LOC => "SLICE_X62Y56"
    )
    port map (
      ADR0 => reg_IF_instr_9_7412,
      ADR1 => N115_0,
      ADR2 => reg_IF_instr_10_7411,
      ADR3 => N16_0,
      O => rd_index1_or0004_pack_1
    );
  rd_index1_2_1 : X_LUT4
    generic map(
      INIT => X"F3E2",
      LOC => "SLICE_X62Y56"
    )
    port map (
      ADR0 => reg_IF_instr_5_7638,
      ADR1 => rd_index1_or0003,
      ADR2 => reg_IF_instr_8_7641,
      ADR3 => rd_index1_or0004_7577,
      O => rd_index1(2)
    );
  reg_EX_PC_0 : X_FF
    generic map(
      LOC => "SLICE_X59Y59",
      INIT => '0'
    )
    port map (
      I => reg_EX_PC_1_DYMUX_23968,
      CE => VCC,
      CLK => reg_EX_PC_1_CLKINV_23965,
      SET => GND,
      RST => reg_EX_PC_1_SRINV_23966,
      O => reg_EX_PC_0_7667
    );
  reg_EX_PC_1 : X_FF
    generic map(
      LOC => "SLICE_X59Y59",
      INIT => '0'
    )
    port map (
      I => reg_EX_PC_1_DXMUX_23976,
      CE => VCC,
      CLK => reg_EX_PC_1_CLKINV_23965,
      SET => GND,
      RST => reg_EX_PC_1_SRINV_23966,
      O => reg_EX_PC_1_7668
    );
  reg_EX_PC_2 : X_FF
    generic map(
      LOC => "SLICE_X58Y59",
      INIT => '0'
    )
    port map (
      I => reg_EX_PC_3_DYMUX_23992,
      CE => VCC,
      CLK => reg_EX_PC_3_CLKINV_23989,
      SET => GND,
      RST => reg_EX_PC_3_SRINV_23990,
      O => reg_EX_PC_2_7669
    );
  reg_EX_PC_3 : X_FF
    generic map(
      LOC => "SLICE_X58Y59",
      INIT => '0'
    )
    port map (
      I => reg_EX_PC_3_DXMUX_24000,
      CE => VCC,
      CLK => reg_EX_PC_3_CLKINV_23989,
      SET => GND,
      RST => reg_EX_PC_3_SRINV_23990,
      O => reg_EX_PC_3_7671
    );
  reg_EX_PC_4 : X_FF
    generic map(
      LOC => "SLICE_X61Y58",
      INIT => '0'
    )
    port map (
      I => reg_EX_PC_5_DYMUX_24016,
      CE => VCC,
      CLK => reg_EX_PC_5_CLKINV_24013,
      SET => GND,
      RST => reg_EX_PC_5_SRINV_24014,
      O => reg_EX_PC_4_7670
    );
  reg_EX_PC_5 : X_FF
    generic map(
      LOC => "SLICE_X61Y58",
      INIT => '0'
    )
    port map (
      I => reg_EX_PC_5_DXMUX_24024,
      CE => VCC,
      CLK => reg_EX_PC_5_CLKINV_24013,
      SET => GND,
      RST => reg_EX_PC_5_SRINV_24014,
      O => reg_EX_PC_5_7673
    );
  reg_EX_PC_6 : X_FF
    generic map(
      LOC => "SLICE_X61Y61",
      INIT => '0'
    )
    port map (
      I => reg_EX_PC_6_DYMUX_24038,
      CE => VCC,
      CLK => reg_EX_PC_6_CLKINV_24035,
      SET => GND,
      RST => reg_EX_PC_6_FFY_RSTAND_24043,
      O => reg_EX_PC_6_7672
    );
  reg_EX_PC_6_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X61Y61",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_EX_PC_6_FFY_RSTAND_24043
    );
  reg_IF_inport_10 : X_FF
    generic map(
      LOC => "SLICE_X77Y54",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_11_DYMUX_24212,
      CE => VCC,
      CLK => reg_IF_inport_11_CLKINV_24209,
      SET => GND,
      RST => reg_IF_inport_11_SRINV_24210,
      O => reg_IF_inport_10_7620
    );
  reg_IF_inport_11 : X_FF
    generic map(
      LOC => "SLICE_X77Y54",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_11_DXMUX_24220,
      CE => VCC,
      CLK => reg_IF_inport_11_CLKINV_24209,
      SET => GND,
      RST => reg_IF_inport_11_SRINV_24210,
      O => reg_IF_inport_11_7618
    );
  reg_IF_inport_12 : X_FF
    generic map(
      LOC => "SLICE_X78Y60",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_13_DYMUX_24236,
      CE => VCC,
      CLK => reg_IF_inport_13_CLKINV_24233,
      SET => GND,
      RST => reg_IF_inport_13_SRINV_24234,
      O => reg_IF_inport_12_7622
    );
  reg_IF_inport_13 : X_FF
    generic map(
      LOC => "SLICE_X78Y60",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_13_DXMUX_24244,
      CE => VCC,
      CLK => reg_IF_inport_13_CLKINV_24233,
      SET => GND,
      RST => reg_IF_inport_13_SRINV_24234,
      O => reg_IF_inport_13_7621
    );
  reg_IF_inport_14 : X_FF
    generic map(
      LOC => "SLICE_X76Y61",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_15_DYMUX_24260,
      CE => VCC,
      CLK => reg_IF_inport_15_CLKINV_24257,
      SET => GND,
      RST => reg_IF_inport_15_SRINV_24258,
      O => reg_IF_inport_14_7624
    );
  reg_IF_inport_15 : X_FF
    generic map(
      LOC => "SLICE_X76Y61",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_15_DXMUX_24268,
      CE => VCC,
      CLK => reg_IF_inport_15_CLKINV_24257,
      SET => GND,
      RST => reg_IF_inport_15_SRINV_24258,
      O => reg_IF_inport_15_7623
    );
  branch_trigger_or0002_SW0 : X_LUT4
    generic map(
      INIT => X"A7A1",
      LOC => "SLICE_X56Y53"
    )
    port map (
      ADR0 => reg_EX_instr_11_7501,
      ADR1 => reg_EX_instr_9_7499,
      ADR2 => reg_EX_instr_10_7506,
      ADR3 => reg_EX_n_flag_7666,
      O => N141
    );
  reg_ID_data1_mux0007_0_2_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X67Y54"
    )
    port map (
      ADR0 => reg_IF_instr_12_7604,
      ADR1 => reg_IF_instr_13_7603,
      ADR2 => reg_IF_instr_11_7408,
      ADR3 => reg_IF_instr_10_7411,
      O => N106_pack_1
    );
  reg_ID_data1_mux0007_0_2 : X_LUT4
    generic map(
      INIT => X"0200",
      LOC => "SLICE_X67Y54"
    )
    port map (
      ADR0 => reg_IF_instr_9_7412,
      ADR1 => reg_IF_instr_15_7601,
      ADR2 => N106,
      ADR3 => reg_IF_instr_14_7602,
      O => N22
    );
  in1_and0008_SW1 : X_LUT4
    generic map(
      INIT => X"F3B7",
      LOC => "SLICE_X42Y52"
    )
    port map (
      ADR0 => reg_ID_instr_9_7400,
      ADR1 => reg_ID_instr_5_7553,
      ADR2 => reg_ID_instr_11_7470,
      ADR3 => reg_ID_instr_10_7471,
      O => N372
    );
  alu_mode_1_1 : X_LUT4
    generic map(
      INIT => X"0200",
      LOC => "SLICE_X42Y52"
    )
    port map (
      ADR0 => N102,
      ADR1 => reg_ID_instr_15_7512,
      ADR2 => reg_ID_instr_13_7511,
      ADR3 => reg_ID_instr_10_7471,
      O => alu_mode(1)
    );
  reg_ID_data1_mux0007_10_156 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X58Y57"
    )
    port map (
      ADR0 => reg_ID_data1_mux0007_10_134_0,
      ADR1 => reg_ID_data1_mux0007_10_146_7414,
      ADR2 => N2_0,
      ADR3 => reg_ID_data1_mux0007_10_120,
      O => N02_pack_1
    );
  reg_ID_data1_mux0007_9_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X58Y57"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => reg_IF_inport_9_7679,
      ADR2 => N02,
      ADR3 => rd_data1(9),
      O => reg_ID_data1_mux0007(9)
    );
  reg_ID_data1_9 : X_FF
    generic map(
      LOC => "SLICE_X58Y57",
      INIT => '0'
    )
    port map (
      I => reg_ID_data1_9_DXMUX_24363,
      CE => VCC,
      CLK => reg_ID_data1_9_CLKINV_24347,
      SET => GND,
      RST => reg_ID_data1_9_FFX_RSTAND_24368,
      O => reg_ID_data1_9_7594
    );
  reg_ID_data1_9_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X58Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_ID_data1_9_FFX_RSTAND_24368
    );
  reg_IF_inport_0 : X_FF
    generic map(
      LOC => "SLICE_X77Y28",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_1_DYMUX_24379,
      CE => VCC,
      CLK => reg_IF_inport_1_CLKINV_24376,
      SET => GND,
      RST => reg_IF_inport_1_SRINV_24377,
      O => reg_IF_inport_0_7479
    );
  reg_IF_inport_1 : X_FF
    generic map(
      LOC => "SLICE_X77Y28",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_1_DXMUX_24387,
      CE => VCC,
      CLK => reg_IF_inport_1_CLKINV_24376,
      SET => GND,
      RST => reg_IF_inport_1_SRINV_24377,
      O => reg_IF_inport_1_7482
    );
  reg_IF_inport_2 : X_FF
    generic map(
      LOC => "SLICE_X78Y39",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_3_DYMUX_24403,
      CE => VCC,
      CLK => reg_IF_inport_3_CLKINV_24400,
      SET => GND,
      RST => reg_IF_inport_3_SRINV_24401,
      O => reg_IF_inport_2_7485
    );
  reg_IF_inport_3 : X_FF
    generic map(
      LOC => "SLICE_X78Y39",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_3_DXMUX_24411,
      CE => VCC,
      CLK => reg_IF_inport_3_CLKINV_24400,
      SET => GND,
      RST => reg_IF_inport_3_SRINV_24401,
      O => reg_IF_inport_3_7488
    );
  reg_IF_inport_4 : X_FF
    generic map(
      LOC => "SLICE_X79Y47",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_5_DYMUX_24427,
      CE => VCC,
      CLK => reg_IF_inport_5_CLKINV_24424,
      SET => GND,
      RST => reg_IF_inport_5_SRINV_24425,
      O => reg_IF_inport_4_7491
    );
  reg_IF_inport_5 : X_FF
    generic map(
      LOC => "SLICE_X79Y47",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_5_DXMUX_24435,
      CE => VCC,
      CLK => reg_IF_inport_5_CLKINV_24424,
      SET => GND,
      RST => reg_IF_inport_5_SRINV_24425,
      O => reg_IF_inport_5_7494
    );
  reg_IF_inport_6 : X_FF
    generic map(
      LOC => "SLICE_X78Y52",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_7_DYMUX_24451,
      CE => VCC,
      CLK => reg_IF_inport_7_CLKINV_24448,
      SET => GND,
      RST => reg_IF_inport_7_SRINV_24449,
      O => reg_IF_inport_6_7497
    );
  reg_IF_inport_7 : X_FF
    generic map(
      LOC => "SLICE_X78Y52",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_7_DXMUX_24459,
      CE => VCC,
      CLK => reg_IF_inport_7_CLKINV_24448,
      SET => GND,
      RST => reg_IF_inport_7_SRINV_24449,
      O => reg_IF_inport_7_7631
    );
  reg_IF_inport_8 : X_FF
    generic map(
      LOC => "SLICE_X78Y56",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_9_DYMUX_24475,
      CE => VCC,
      CLK => reg_IF_inport_9_CLKINV_24472,
      SET => GND,
      RST => reg_IF_inport_9_SRINV_24473,
      O => reg_IF_inport_8_7632
    );
  reg_IF_inport_9 : X_FF
    generic map(
      LOC => "SLICE_X78Y56",
      INIT => '0'
    )
    port map (
      I => reg_IF_inport_9_DXMUX_24483,
      CE => VCC,
      CLK => reg_IF_inport_9_CLKINV_24472,
      SET => GND,
      RST => reg_IF_inport_9_SRINV_24473,
      O => reg_IF_inport_9_7679
    );
  in2_and000578_SW1 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X37Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => wr_enable_or000185_0,
      ADR2 => reg_EX_result_3_7244,
      ADR3 => reg_ID_data2_3_7451,
      O => N395
    );
  in2_and000578_SW7 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X37Y51"
    )
    port map (
      ADR0 => reg_ID_data2_0_7441,
      ADR1 => wr_enable_or000185_0,
      ADR2 => reg_EX_result_0_7247,
      ADR3 => VCC,
      O => N404
    );
  in2_and000578_SW3 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X41Y52"
    )
    port map (
      ADR0 => reg_ID_data2_2_7448,
      ADR1 => VCC,
      ADR2 => reg_EX_result_2_7245,
      ADR3 => wr_enable_or000185_0,
      O => N398
    );
  in2_and000578_SW5 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X41Y52"
    )
    port map (
      ADR0 => reg_ID_data2_1_7445,
      ADR1 => reg_EX_result_1_7246,
      ADR2 => VCC,
      ADR3 => wr_enable_or000185_0,
      O => N401
    );
  branch_trigger_or0002 : X_LUT4
    generic map(
      INIT => X"C808",
      LOC => "SLICE_X59Y53"
    )
    port map (
      ADR0 => N141_0,
      ADR1 => N96_0,
      ADR2 => reg_EX_z_flag_7674,
      ADR3 => N142_0,
      O => branch_trigger_pack_1
    );
  reg_IF_instr_mux0001_9_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X59Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => rom_data(6),
      ADR3 => branch_trigger,
      O => reg_IF_instr_mux0001(9)
    );
  reg_IF_instr_6 : X_FF
    generic map(
      LOC => "SLICE_X59Y53",
      INIT => '0'
    )
    port map (
      I => reg_IF_instr_6_DXMUX_24566,
      CE => VCC,
      CLK => reg_IF_instr_6_CLKINV_24548,
      SET => GND,
      RST => reg_IF_instr_6_FFX_RSTAND_24571,
      O => reg_IF_instr_6_7579
    );
  reg_IF_instr_6_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X59Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_IBUF_7223,
      O => reg_IF_instr_6_FFX_RSTAND_24571
    );
  outport_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_10_OBUF_22634,
      O => outport_10_O
    );
  outport_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_11_OBUF_22658,
      O => outport_11_O
    );
  outport_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_12_OBUF_22682,
      O => outport_12_O
    );
  outport_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_13_OBUF_22706,
      O => outport_13_O
    );
  outport_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_14_OBUF_22730,
      O => outport_14_O
    );
  outport_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_15_OBUF_20838,
      O => outport_15_O
    );
  outport_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_0_OBUF_22625,
      O => outport_0_O
    );
  outport_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_1_OBUF_22649,
      O => outport_1_O
    );
  outport_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_2_OBUF_22673,
      O => outport_2_O
    );
  outport_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_3_OBUF_22697,
      O => outport_3_O
    );
  outport_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_4_OBUF_22721,
      O => outport_4_O
    );
  outport_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_5_OBUF_22745,
      O => outport_5_O
    );
  outport_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_6_OBUF_22754,
      O => outport_6_O
    );
  outport_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_7_OBUF_22769,
      O => outport_7_O
    );
  outport_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_8_OBUF_22778,
      O => outport_8_O
    );
  outport_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 555 ps
    )
    port map (
      I => outport_9_OBUF_24176,
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

