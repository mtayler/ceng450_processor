--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: alu_sim.vhd
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
-- Module Name	: alu
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

entity alu is
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
end alu;

architecture Structure of alu is
  signal result_mux0002_0 : STD_LOGIC; 
  signal Maddsub_result_addsub0000_cy_1_Q : STD_LOGIC; 
  signal Maddsub_result_addsub0000_cy_3_Q : STD_LOGIC; 
  signal Maddsub_result_addsub0000_cy_5_Q : STD_LOGIC; 
  signal Maddsub_result_addsub0000_cy_7_Q : STD_LOGIC; 
  signal Maddsub_result_addsub0000_cy_9_Q : STD_LOGIC; 
  signal Maddsub_result_addsub0000_cy_11_Q : STD_LOGIC; 
  signal N406_0 : STD_LOGIC; 
  signal result_cmp_eq0003_0 : STD_LOGIC; 
  signal N88_0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N404_0 : STD_LOGIC; 
  signal result_cmp_eq0036_0 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N300 : STD_LOGIC; 
  signal result_or0000_0 : STD_LOGIC; 
  signal result_2_7_O_0 : STD_LOGIC; 
  signal result_cmp_eq0002_0 : STD_LOGIC; 
  signal result_2_9_0 : STD_LOGIC; 
  signal result_3_7_O_0 : STD_LOGIC; 
  signal result_3_9_0 : STD_LOGIC; 
  signal result_4_7_O_0 : STD_LOGIC; 
  signal result_4_9_0 : STD_LOGIC; 
  signal result_11_7_O_0 : STD_LOGIC; 
  signal result_11_9_0 : STD_LOGIC; 
  signal result_6_7_O_0 : STD_LOGIC; 
  signal result_6_9_0 : STD_LOGIC; 
  signal result_12_7_O_0 : STD_LOGIC; 
  signal result_12_9_0 : STD_LOGIC; 
  signal result_7_7_O_0 : STD_LOGIC; 
  signal result_7_9_0 : STD_LOGIC; 
  signal result_8_7_0 : STD_LOGIC; 
  signal result_0_25_0 : STD_LOGIC; 
  signal result_0_30_O_0 : STD_LOGIC; 
  signal N46_0 : STD_LOGIC; 
  signal N258_0 : STD_LOGIC; 
  signal N86_0 : STD_LOGIC; 
  signal N53_0 : STD_LOGIC; 
  signal result_0_41_0 : STD_LOGIC; 
  signal result_cmp_eq0014_0 : STD_LOGIC; 
  signal result_cmp_eq0026_0 : STD_LOGIC; 
  signal result_cmp_eq000519_0 : STD_LOGIC; 
  signal result_cmp_eq000514_0 : STD_LOGIC; 
  signal result_cmp_eq0005114_0 : STD_LOGIC; 
  signal N80_0 : STD_LOGIC; 
  signal N19_0 : STD_LOGIC; 
  signal result_cmp_eq0013_0 : STD_LOGIC; 
  signal result_cmp_eq0027_0 : STD_LOGIC; 
  signal N68_0 : STD_LOGIC; 
  signal N25_0 : STD_LOGIC; 
  signal result_0_78_0 : STD_LOGIC; 
  signal N128_0 : STD_LOGIC; 
  signal result_0_61_O_0 : STD_LOGIC; 
  signal N15_0 : STD_LOGIC; 
  signal result_0_80_0 : STD_LOGIC; 
  signal result_cmp_eq0012_0 : STD_LOGIC; 
  signal result_cmp_eq0028_0 : STD_LOGIC; 
  signal N70_0 : STD_LOGIC; 
  signal N28_0 : STD_LOGIC; 
  signal result_cmp_eq0011_0 : STD_LOGIC; 
  signal result_cmp_eq0029_0 : STD_LOGIC; 
  signal N72_0 : STD_LOGIC; 
  signal N32_0 : STD_LOGIC; 
  signal N51_0 : STD_LOGIC; 
  signal N65_0 : STD_LOGIC; 
  signal result_cmp_eq0034_0 : STD_LOGIC; 
  signal result_cmp_eq0006_0 : STD_LOGIC; 
  signal result_1_57_0 : STD_LOGIC; 
  signal N48_0 : STD_LOGIC; 
  signal result_cmp_eq0008_0 : STD_LOGIC; 
  signal result_cmp_eq0032_0 : STD_LOGIC; 
  signal result_2_57_0 : STD_LOGIC; 
  signal result_cmp_eq0017_0 : STD_LOGIC; 
  signal result_cmp_eq0023_0 : STD_LOGIC; 
  signal N94_0 : STD_LOGIC; 
  signal result_cmp_eq00201251_0 : STD_LOGIC; 
  signal result_cmp_eq00201491_0 : STD_LOGIC; 
  signal result_cmp_eq00201121_0 : STD_LOGIC; 
  signal N7_0 : STD_LOGIC; 
  signal result_cmp_eq0016_0 : STD_LOGIC; 
  signal result_cmp_eq0024_0 : STD_LOGIC; 
  signal N100_0 : STD_LOGIC; 
  signal N111_0 : STD_LOGIC; 
  signal N61_0 : STD_LOGIC; 
  signal result_10_53_SW0_O_0 : STD_LOGIC; 
  signal result_cmp_eq0020125_0 : STD_LOGIC; 
  signal result_cmp_eq0020112_0 : STD_LOGIC; 
  signal result_10_53_0 : STD_LOGIC; 
  signal result_cmp_eq0015_0 : STD_LOGIC; 
  signal result_cmp_eq0025_0 : STD_LOGIC; 
  signal N66_0 : STD_LOGIC; 
  signal N47_0 : STD_LOGIC; 
  signal N50_0 : STD_LOGIC; 
  signal result_4_57_0 : STD_LOGIC; 
  signal result_5_9_SW0_O_0 : STD_LOGIC; 
  signal N210_0 : STD_LOGIC; 
  signal result_5_7_0 : STD_LOGIC; 
  signal result_5_27_0 : STD_LOGIC; 
  signal result_10_52_0 : STD_LOGIC; 
  signal result_10_74_0 : STD_LOGIC; 
  signal result_10_611_SW0_O_0 : STD_LOGIC; 
  signal result_cmp_eq0020149_0 : STD_LOGIC; 
  signal N402_0 : STD_LOGIC; 
  signal N342_0 : STD_LOGIC; 
  signal result_10_75_0 : STD_LOGIC; 
  signal result_cmp_eq0009_0 : STD_LOGIC; 
  signal result_cmp_eq0031_0 : STD_LOGIC; 
  signal result_4_78_0 : STD_LOGIC; 
  signal result_6_17_0 : STD_LOGIC; 
  signal result_11_81_SW0_O_0 : STD_LOGIC; 
  signal N62_0 : STD_LOGIC; 
  signal result_11_81_0 : STD_LOGIC; 
  signal N36_0 : STD_LOGIC; 
  signal result_cmp_eq0030_0 : STD_LOGIC; 
  signal result_cmp_eq0010_0 : STD_LOGIC; 
  signal result_5_78_0 : STD_LOGIC; 
  signal result_13_7_0 : STD_LOGIC; 
  signal result_13_9_SW0_O_0 : STD_LOGIC; 
  signal result_13_15_0 : STD_LOGIC; 
  signal N64_0 : STD_LOGIC; 
  signal result_6_57_0 : STD_LOGIC; 
  signal result_6_52_SW0_O_0 : STD_LOGIC; 
  signal result_6_58_0 : STD_LOGIC; 
  signal result_11_63_O_0 : STD_LOGIC; 
  signal result_11_68_0 : STD_LOGIC; 
  signal result_11_80_0 : STD_LOGIC; 
  signal result_11_89_0 : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal N236_0 : STD_LOGIC; 
  signal result_cmp_eq0018_0 : STD_LOGIC; 
  signal N52_0 : STD_LOGIC; 
  signal result_13_25_0 : STD_LOGIC; 
  signal result_cmp_eq00301_SW1_O_0 : STD_LOGIC; 
  signal N316_0 : STD_LOGIC; 
  signal result_13_53_0 : STD_LOGIC; 
  signal N224_0 : STD_LOGIC; 
  signal result_7_55_SW0_SW0_O_0 : STD_LOGIC; 
  signal result_cmp_eq0022_0 : STD_LOGIC; 
  signal result_7_55_0 : STD_LOGIC; 
  signal result_14_7_0 : STD_LOGIC; 
  signal result_14_9_SW0_O_0 : STD_LOGIC; 
  signal result_14_15_0 : STD_LOGIC; 
  signal result_cmp_eq00221_SW1_O_0 : STD_LOGIC; 
  signal result_12_96_0 : STD_LOGIC; 
  signal result_8_9_SW0_O_0 : STD_LOGIC; 
  signal N164_0 : STD_LOGIC; 
  signal result_8_27_0 : STD_LOGIC; 
  signal result_14_35_0 : STD_LOGIC; 
  signal N338_0 : STD_LOGIC; 
  signal result_13_69_0 : STD_LOGIC; 
  signal N55_0 : STD_LOGIC; 
  signal result_cmp_eq0020_0 : STD_LOGIC; 
  signal result_8_74_0 : STD_LOGIC; 
  signal result_14_40_O_0 : STD_LOGIC; 
  signal result_14_52_0 : STD_LOGIC; 
  signal result_14_57_0 : STD_LOGIC; 
  signal result_14_67_0 : STD_LOGIC; 
  signal result_cmp_eq0007_0 : STD_LOGIC; 
  signal result_cmp_eq0033_0 : STD_LOGIC; 
  signal result_cmp_eq00261_SW2_O_0 : STD_LOGIC; 
  signal result_15_52_0 : STD_LOGIC; 
  signal result_15_35_0 : STD_LOGIC; 
  signal result_15_40_0 : STD_LOGIC; 
  signal result_15_53_O_0 : STD_LOGIC; 
  signal result_15_61_0 : STD_LOGIC; 
  signal result_0_124_O_0 : STD_LOGIC; 
  signal result_0_132_0 : STD_LOGIC; 
  signal result_0_134_0 : STD_LOGIC; 
  signal result_9_72_0 : STD_LOGIC; 
  signal result_9_77_SW0_O_0 : STD_LOGIC; 
  signal result_9_88_0 : STD_LOGIC; 
  signal result_0_114_O_0 : STD_LOGIC; 
  signal result_0_94_0 : STD_LOGIC; 
  signal overflow_cmp_eq0000_0 : STD_LOGIC; 
  signal N142_0 : STD_LOGIC; 
  signal result_15_77_0 : STD_LOGIC; 
  signal result_15_74_O_0 : STD_LOGIC; 
  signal N206_0 : STD_LOGIC; 
  signal result_15_87_0 : STD_LOGIC; 
  signal N156_0 : STD_LOGIC; 
  signal N216_0 : STD_LOGIC; 
  signal result_1_93_O_0 : STD_LOGIC; 
  signal result_1_73_0 : STD_LOGIC; 
  signal N140_0 : STD_LOGIC; 
  signal result_2_111_0 : STD_LOGIC; 
  signal N174_0 : STD_LOGIC; 
  signal N481_0 : STD_LOGIC; 
  signal result_2_93_SW1_O_0 : STD_LOGIC; 
  signal result_2_78_0 : STD_LOGIC; 
  signal result_2_73_0 : STD_LOGIC; 
  signal N242_0 : STD_LOGIC; 
  signal N461_0 : STD_LOGIC; 
  signal N150_0 : STD_LOGIC; 
  signal result_3_145_SW0_O_0 : STD_LOGIC; 
  signal result_3_106_0 : STD_LOGIC; 
  signal result_3_41_0 : STD_LOGIC; 
  signal N170_0 : STD_LOGIC; 
  signal N288_0 : STD_LOGIC; 
  signal result_10_123_O_0 : STD_LOGIC; 
  signal result_10_125_0 : STD_LOGIC; 
  signal N281_0 : STD_LOGIC; 
  signal N44_0 : STD_LOGIC; 
  signal result_4_93_SW1_O_0 : STD_LOGIC; 
  signal result_4_73_0 : STD_LOGIC; 
  signal N218_0 : STD_LOGIC; 
  signal result_10_213_SW0_O_0 : STD_LOGIC; 
  signal N230_0 : STD_LOGIC; 
  signal N148_0 : STD_LOGIC; 
  signal N274_0 : STD_LOGIC; 
  signal N881_0 : STD_LOGIC; 
  signal result_10_149_0 : STD_LOGIC; 
  signal result_10_169_0 : STD_LOGIC; 
  signal result_10_188_O_0 : STD_LOGIC; 
  signal result_10_154_0 : STD_LOGIC; 
  signal result_10_190_0 : STD_LOGIC; 
  signal result_10_166_SW0_O_0 : STD_LOGIC; 
  signal N320_0 : STD_LOGIC; 
  signal N376_0 : STD_LOGIC; 
  signal result_11_174_O_0 : STD_LOGIC; 
  signal result_11_147_0 : STD_LOGIC; 
  signal N184_0 : STD_LOGIC; 
  signal N200_0 : STD_LOGIC; 
  signal result_11_210_0 : STD_LOGIC; 
  signal N26_0 : STD_LOGIC; 
  signal result_5_93_O_0 : STD_LOGIC; 
  signal N138_0 : STD_LOGIC; 
  signal result_11_102_O_0 : STD_LOGIC; 
  signal result_11_107_0 : STD_LOGIC; 
  signal result_11_128_0 : STD_LOGIC; 
  signal result_11_146_O_0 : STD_LOGIC; 
  signal N108_0 : STD_LOGIC; 
  signal result_11_245_SW0_SW0_O_0 : STD_LOGIC; 
  signal N234_0 : STD_LOGIC; 
  signal result_6_123_SW0_O_0 : STD_LOGIC; 
  signal result_6_123_0 : STD_LOGIC; 
  signal N116_0 : STD_LOGIC; 
  signal result_6_107_SW0_O_0 : STD_LOGIC; 
  signal result_6_108_0 : STD_LOGIC; 
  signal result_12_68_O_0 : STD_LOGIC; 
  signal result_12_51_0 : STD_LOGIC; 
  signal N228_0 : STD_LOGIC; 
  signal result_12_122_0 : STD_LOGIC; 
  signal result_6_89_O_0 : STD_LOGIC; 
  signal result_6_80_0 : STD_LOGIC; 
  signal N334_0 : STD_LOGIC; 
  signal N76_0 : STD_LOGIC; 
  signal result_12_147_0 : STD_LOGIC; 
  signal result_12_229_SW0_O_0 : STD_LOGIC; 
  signal N146_0 : STD_LOGIC; 
  signal N250_0 : STD_LOGIC; 
  signal N386_0 : STD_LOGIC; 
  signal result_13_200_SW0_O_0 : STD_LOGIC; 
  signal N312_0 : STD_LOGIC; 
  signal result_13_200_0 : STD_LOGIC; 
  signal result_7_86_SW0_O_0 : STD_LOGIC; 
  signal N136_0 : STD_LOGIC; 
  signal N276_0 : STD_LOGIC; 
  signal N366_0 : STD_LOGIC; 
  signal result_7_170_SW1_O_0 : STD_LOGIC; 
  signal N294_0 : STD_LOGIC; 
  signal N314_0 : STD_LOGIC; 
  signal N296_0 : STD_LOGIC; 
  signal result_7_170_0 : STD_LOGIC; 
  signal N74_0 : STD_LOGIC; 
  signal result_13_151_0 : STD_LOGIC; 
  signal result_13_156_0 : STD_LOGIC; 
  signal result_13_167_SW0_O_0 : STD_LOGIC; 
  signal N384_0 : STD_LOGIC; 
  signal result_13_211_0 : STD_LOGIC; 
  signal result_13_225_0 : STD_LOGIC; 
  signal result_13_40_SW0_SW0_O_0 : STD_LOGIC; 
  signal N284_0 : STD_LOGIC; 
  signal N118_0 : STD_LOGIC; 
  signal result_8_86_O_0 : STD_LOGIC; 
  signal result_8_91_0 : STD_LOGIC; 
  signal result_8_126_0 : STD_LOGIC; 
  signal result_8_159_O_0 : STD_LOGIC; 
  signal result_8_162_0 : STD_LOGIC; 
  signal result_14_147_0 : STD_LOGIC; 
  signal result_14_213_O_0 : STD_LOGIC; 
  signal result_14_192_0 : STD_LOGIC; 
  signal N134_0 : STD_LOGIC; 
  signal result_14_223_0 : STD_LOGIC; 
  signal result_9_99_O_0 : STD_LOGIC; 
  signal result_9_102_0 : STD_LOGIC; 
  signal result_8_140_0 : STD_LOGIC; 
  signal result_8_150_SW0_O_0 : STD_LOGIC; 
  signal N214_0 : STD_LOGIC; 
  signal result_8_178_0 : STD_LOGIC; 
  signal N98_0 : STD_LOGIC; 
  signal result_15_113_0 : STD_LOGIC; 
  signal result_14_245_SW0_O_0 : STD_LOGIC; 
  signal N272_0 : STD_LOGIC; 
  signal result_9_67_O_0 : STD_LOGIC; 
  signal result_9_128_0 : STD_LOGIC; 
  signal result_15_114_O_0 : STD_LOGIC; 
  signal N112_0 : STD_LOGIC; 
  signal result_15_134_0 : STD_LOGIC; 
  signal N198_0 : STD_LOGIC; 
  signal result_15_152_0 : STD_LOGIC; 
  signal result_9_213_SW0_O_0 : STD_LOGIC; 
  signal result_9_34_0 : STD_LOGIC; 
  signal N38_0 : STD_LOGIC; 
  signal N390_0 : STD_LOGIC; 
  signal result_9_170_SW0_O_0 : STD_LOGIC; 
  signal N378_0 : STD_LOGIC; 
  signal result_9_155_0 : STD_LOGIC; 
  signal result_9_188_0 : STD_LOGIC; 
  signal result_9_191_0 : STD_LOGIC; 
  signal result_15_147_O_0 : STD_LOGIC; 
  signal result_15_164_0 : STD_LOGIC; 
  signal result_15_165_0 : STD_LOGIC; 
  signal result_15_173_0 : STD_LOGIC; 
  signal result_15_199_0 : STD_LOGIC; 
  signal result_15_226_O_0 : STD_LOGIC; 
  signal N114_0 : STD_LOGIC; 
  signal result_15_220_0 : STD_LOGIC; 
  signal result_15_246_0 : STD_LOGIC; 
  signal result_15_23_SW0_O_0 : STD_LOGIC; 
  signal N256_0 : STD_LOGIC; 
  signal N152_0 : STD_LOGIC; 
  signal result_15_189_SW0_O_0 : STD_LOGIC; 
  signal result_15_189_0 : STD_LOGIC; 
  signal result_15_186_O_0 : STD_LOGIC; 
  signal result_cmp_eq0020151_SW0_O_0 : STD_LOGIC; 
  signal result_cmp_eq0020151_SW1_O_0 : STD_LOGIC; 
  signal result_2_106_O_0 : STD_LOGIC; 
  signal result_2_41_0 : STD_LOGIC; 
  signal result_0_99_O_0 : STD_LOGIC; 
  signal result_13_178_SW0_O_0 : STD_LOGIC; 
  signal N96_0 : STD_LOGIC; 
  signal result_1_7_O_0 : STD_LOGIC; 
  signal N380_0 : STD_LOGIC; 
  signal result_0_7_0 : STD_LOGIC; 
  signal result_0_9_SW0_O_0 : STD_LOGIC; 
  signal result_1_411_SW0_O_0 : STD_LOGIC; 
  signal N178_0 : STD_LOGIC; 
  signal result_14_21_O_0 : STD_LOGIC; 
  signal result_2_25_SW0_O_0 : STD_LOGIC; 
  signal result_3_25_0 : STD_LOGIC; 
  signal result_3_111_O_0 : STD_LOGIC; 
  signal result_10_7_0 : STD_LOGIC; 
  signal result_10_211_O_0 : STD_LOGIC; 
  signal result_4_25_O_0 : STD_LOGIC; 
  signal result_3_73_0 : STD_LOGIC; 
  signal result_3_57_0 : STD_LOGIC; 
  signal result_3_78_O_0 : STD_LOGIC; 
  signal N290_0 : STD_LOGIC; 
  signal result_11_41_O_0 : STD_LOGIC; 
  signal N130_0 : STD_LOGIC; 
  signal N332_0 : STD_LOGIC; 
  signal result_12_35_O_0 : STD_LOGIC; 
  signal N348_0 : STD_LOGIC; 
  signal N292_0 : STD_LOGIC; 
  signal result_12_73_0 : STD_LOGIC; 
  signal result_12_56_0 : STD_LOGIC; 
  signal result_12_101_O_0 : STD_LOGIC; 
  signal N266_0 : STD_LOGIC; 
  signal N394_0 : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal result_7_101_SW0_O_0 : STD_LOGIC; 
  signal result_13_58_SW0_O_0 : STD_LOGIC; 
  signal N354_0 : STD_LOGIC; 
  signal result_9_7_O_0 : STD_LOGIC; 
  signal N158_0 : STD_LOGIC; 
  signal result_15_7_O_0 : STD_LOGIC; 
  signal result_9_51_O_0 : STD_LOGIC; 
  signal result_12_164_O_0 : STD_LOGIC; 
  signal result_12_169_0 : STD_LOGIC; 
  signal result_4_106_O_0 : STD_LOGIC; 
  signal result_4_41_0 : STD_LOGIC; 
  signal result_4_111_0 : STD_LOGIC; 
  signal result_5_57_0 : STD_LOGIC; 
  signal result_5_106_O_0 : STD_LOGIC; 
  signal result_5_41_0 : STD_LOGIC; 
  signal result_5_111_0 : STD_LOGIC; 
  signal N49_0 : STD_LOGIC; 
  signal result_5_73_O_0 : STD_LOGIC; 
  signal result_11_179_0 : STD_LOGIC; 
  signal result_11_158_O_0 : STD_LOGIC; 
  signal result_12_152_SW0_SW0_O_0 : STD_LOGIC; 
  signal N302_0 : STD_LOGIC; 
  signal result_6_36_0 : STD_LOGIC; 
  signal result_6_81_O_0 : STD_LOGIC; 
  signal result_13_101_SW0_O_0 : STD_LOGIC; 
  signal N340_0 : STD_LOGIC; 
  signal result_7_127_O_0 : STD_LOGIC; 
  signal N304_0 : STD_LOGIC; 
  signal result_12_192_O_0 : STD_LOGIC; 
  signal result_12_197_SW0_SW0_O_0 : STD_LOGIC; 
  signal N298_0 : STD_LOGIC; 
  signal N360_0 : STD_LOGIC; 
  signal result_14_80_O_0 : STD_LOGIC; 
  signal N326_0 : STD_LOGIC; 
  signal result_13_127_SW0_O_0 : STD_LOGIC; 
  signal N408_0 : STD_LOGIC; 
  signal N388_0 : STD_LOGIC; 
  signal N921_0 : STD_LOGIC; 
  signal result_14_152_O_0 : STD_LOGIC; 
  signal result_14_164_0 : STD_LOGIC; 
  signal result_14_169_0 : STD_LOGIC; 
  signal result_14_208_0 : STD_LOGIC; 
  signal result_15_225_SW0_SW0_O_0 : STD_LOGIC; 
  signal result_1_25_0 : STD_LOGIC; 
  signal result_1_111_O_0 : STD_LOGIC; 
  signal result_1_106_0 : STD_LOGIC; 
  signal result_1_78_O_0 : STD_LOGIC; 
  signal result_13_80_O_0 : STD_LOGIC; 
  signal result_13_113_SW0_O_0 : STD_LOGIC; 
  signal result_0_22_O_0 : STD_LOGIC; 
  signal result_8_41_0 : STD_LOGIC; 
  signal result_8_201_SW0_O_0 : STD_LOGIC; 
  signal N364_0 : STD_LOGIC; 
  signal N252_0 : STD_LOGIC; 
  signal result_7_113_O_0 : STD_LOGIC; 
  signal z_flag_cmp_eq000149_0 : STD_LOGIC; 
  signal z_flag_cmp_eq000125_0 : STD_LOGIC; 
  signal z_flag_cmp_eq0001_0 : STD_LOGIC; 
  signal z_flag_cmp_eq0000_0 : STD_LOGIC; 
  signal N54_0 : STD_LOGIC; 
  signal z_flag_cmp_eq000162_0 : STD_LOGIC; 
  signal N400_0 : STD_LOGIC; 
  signal alu0_result_addsub0000_0_XORF_11373 : STD_LOGIC; 
  signal alu0_result_addsub0000_0_CYINIT_11372 : STD_LOGIC; 
  signal alu0_result_addsub0000_0_CY0F_11371 : STD_LOGIC; 
  signal alu0_result_addsub0000_0_CYSELF_11364 : STD_LOGIC; 
  signal alu0_result_addsub0000_0_XORG_11360 : STD_LOGIC; 
  signal alu0_result_addsub0000_0_CYMUXG_11359 : STD_LOGIC; 
  signal Maddsub_result_addsub0000_cy_0_Q : STD_LOGIC; 
  signal alu0_result_addsub0000_0_CY0G_11357 : STD_LOGIC; 
  signal alu0_result_addsub0000_0_CYSELG_11350 : STD_LOGIC; 
  signal alu0_result_addsub0000_2_XORF_11412 : STD_LOGIC; 
  signal alu0_result_addsub0000_2_CYINIT_11411 : STD_LOGIC; 
  signal alu0_result_addsub0000_2_CY0F_11410 : STD_LOGIC; 
  signal alu0_result_addsub0000_2_XORG_11401 : STD_LOGIC; 
  signal Maddsub_result_addsub0000_cy_2_Q : STD_LOGIC; 
  signal alu0_result_addsub0000_2_CYSELF_11399 : STD_LOGIC; 
  signal alu0_result_addsub0000_2_CYMUXFAST_11398 : STD_LOGIC; 
  signal alu0_result_addsub0000_2_CYAND_11397 : STD_LOGIC; 
  signal alu0_result_addsub0000_2_FASTCARRY_11396 : STD_LOGIC; 
  signal alu0_result_addsub0000_2_CYMUXG2_11395 : STD_LOGIC; 
  signal alu0_result_addsub0000_2_CYMUXF2_11394 : STD_LOGIC; 
  signal alu0_result_addsub0000_2_CY0G_11393 : STD_LOGIC; 
  signal alu0_result_addsub0000_2_CYSELG_11386 : STD_LOGIC; 
  signal alu0_result_addsub0000_4_XORF_11451 : STD_LOGIC; 
  signal alu0_result_addsub0000_4_CYINIT_11450 : STD_LOGIC; 
  signal alu0_result_addsub0000_4_CY0F_11449 : STD_LOGIC; 
  signal alu0_result_addsub0000_4_XORG_11440 : STD_LOGIC; 
  signal Maddsub_result_addsub0000_cy_4_Q : STD_LOGIC; 
  signal alu0_result_addsub0000_4_CYSELF_11438 : STD_LOGIC; 
  signal alu0_result_addsub0000_4_CYMUXFAST_11437 : STD_LOGIC; 
  signal alu0_result_addsub0000_4_CYAND_11436 : STD_LOGIC; 
  signal alu0_result_addsub0000_4_FASTCARRY_11435 : STD_LOGIC; 
  signal alu0_result_addsub0000_4_CYMUXG2_11434 : STD_LOGIC; 
  signal alu0_result_addsub0000_4_CYMUXF2_11433 : STD_LOGIC; 
  signal alu0_result_addsub0000_4_CY0G_11432 : STD_LOGIC; 
  signal alu0_result_addsub0000_4_CYSELG_11425 : STD_LOGIC; 
  signal alu0_result_addsub0000_6_XORF_11490 : STD_LOGIC; 
  signal alu0_result_addsub0000_6_CYINIT_11489 : STD_LOGIC; 
  signal alu0_result_addsub0000_6_CY0F_11488 : STD_LOGIC; 
  signal alu0_result_addsub0000_6_XORG_11479 : STD_LOGIC; 
  signal Maddsub_result_addsub0000_cy_6_Q : STD_LOGIC; 
  signal alu0_result_addsub0000_6_CYSELF_11477 : STD_LOGIC; 
  signal alu0_result_addsub0000_6_CYMUXFAST_11476 : STD_LOGIC; 
  signal alu0_result_addsub0000_6_CYAND_11475 : STD_LOGIC; 
  signal alu0_result_addsub0000_6_FASTCARRY_11474 : STD_LOGIC; 
  signal alu0_result_addsub0000_6_CYMUXG2_11473 : STD_LOGIC; 
  signal alu0_result_addsub0000_6_CYMUXF2_11472 : STD_LOGIC; 
  signal alu0_result_addsub0000_6_CY0G_11471 : STD_LOGIC; 
  signal alu0_result_addsub0000_6_CYSELG_11464 : STD_LOGIC; 
  signal alu0_result_addsub0000_8_XORF_11529 : STD_LOGIC; 
  signal alu0_result_addsub0000_8_CYINIT_11528 : STD_LOGIC; 
  signal alu0_result_addsub0000_8_CY0F_11527 : STD_LOGIC; 
  signal alu0_result_addsub0000_8_XORG_11518 : STD_LOGIC; 
  signal Maddsub_result_addsub0000_cy_8_Q : STD_LOGIC; 
  signal alu0_result_addsub0000_8_CYSELF_11516 : STD_LOGIC; 
  signal alu0_result_addsub0000_8_CYMUXFAST_11515 : STD_LOGIC; 
  signal alu0_result_addsub0000_8_CYAND_11514 : STD_LOGIC; 
  signal alu0_result_addsub0000_8_FASTCARRY_11513 : STD_LOGIC; 
  signal alu0_result_addsub0000_8_CYMUXG2_11512 : STD_LOGIC; 
  signal alu0_result_addsub0000_8_CYMUXF2_11511 : STD_LOGIC; 
  signal alu0_result_addsub0000_8_CY0G_11510 : STD_LOGIC; 
  signal alu0_result_addsub0000_8_CYSELG_11503 : STD_LOGIC; 
  signal alu0_result_addsub0000_10_XORF_11568 : STD_LOGIC; 
  signal alu0_result_addsub0000_10_CYINIT_11567 : STD_LOGIC; 
  signal alu0_result_addsub0000_10_CY0F_11566 : STD_LOGIC; 
  signal alu0_result_addsub0000_10_XORG_11557 : STD_LOGIC; 
  signal Maddsub_result_addsub0000_cy_10_Q : STD_LOGIC; 
  signal alu0_result_addsub0000_10_CYSELF_11555 : STD_LOGIC; 
  signal alu0_result_addsub0000_10_CYMUXFAST_11554 : STD_LOGIC; 
  signal alu0_result_addsub0000_10_CYAND_11553 : STD_LOGIC; 
  signal alu0_result_addsub0000_10_FASTCARRY_11552 : STD_LOGIC; 
  signal alu0_result_addsub0000_10_CYMUXG2_11551 : STD_LOGIC; 
  signal alu0_result_addsub0000_10_CYMUXF2_11550 : STD_LOGIC; 
  signal alu0_result_addsub0000_10_CY0G_11549 : STD_LOGIC; 
  signal alu0_result_addsub0000_10_CYSELG_11542 : STD_LOGIC; 
  signal alu0_result_addsub0000_12_XORF_11607 : STD_LOGIC; 
  signal alu0_result_addsub0000_12_CYINIT_11606 : STD_LOGIC; 
  signal alu0_result_addsub0000_12_CY0F_11605 : STD_LOGIC; 
  signal alu0_result_addsub0000_12_XORG_11596 : STD_LOGIC; 
  signal Maddsub_result_addsub0000_cy_12_Q : STD_LOGIC; 
  signal alu0_result_addsub0000_12_CYSELF_11594 : STD_LOGIC; 
  signal alu0_result_addsub0000_12_CYMUXFAST_11593 : STD_LOGIC; 
  signal alu0_result_addsub0000_12_CYAND_11592 : STD_LOGIC; 
  signal alu0_result_addsub0000_12_FASTCARRY_11591 : STD_LOGIC; 
  signal alu0_result_addsub0000_12_CYMUXG2_11590 : STD_LOGIC; 
  signal alu0_result_addsub0000_12_CYMUXF2_11589 : STD_LOGIC; 
  signal alu0_result_addsub0000_12_CY0G_11588 : STD_LOGIC; 
  signal alu0_result_addsub0000_12_CYSELG_11581 : STD_LOGIC; 
  signal alu0_result_addsub0000_14_XORF_11638 : STD_LOGIC; 
  signal alu0_result_addsub0000_14_CYINIT_11637 : STD_LOGIC; 
  signal alu0_result_addsub0000_14_CY0F_11636 : STD_LOGIC; 
  signal alu0_result_addsub0000_14_CYSELF_11629 : STD_LOGIC; 
  signal alu0_result_addsub0000_14_XORG_11626 : STD_LOGIC; 
  signal Maddsub_result_addsub0000_cy_14_Q : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCOUT0 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCOUT1 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCOUT2 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCOUT3 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCOUT4 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCOUT5 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCOUT6 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCOUT7 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCOUT8 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCOUT9 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCOUT10 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCOUT11 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCOUT12 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCOUT13 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCOUT14 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCOUT15 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCOUT16 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCOUT17 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_P32 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_P33 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_P34 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_P35 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCIN0 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCIN1 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCIN2 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCIN3 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCIN4 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCIN5 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCIN6 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCIN7 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCIN8 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCIN9 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCIN10 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCIN11 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCIN12 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCIN13 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCIN14 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCIN15 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCIN16 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_BCIN17 : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_RSTP_INT : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_RSTB_INT : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_RSTA_INT : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_CLK_INT : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_CEP_INT : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_CEB_INT : STD_LOGIC; 
  signal alu0_Mmult_x_mult0000_CEA_INT : STD_LOGIC; 
  signal alu0_N01_F5MUX_11785 : STD_LOGIC; 
  signal N399 : STD_LOGIC; 
  signal alu0_N01_BXINV_11778 : STD_LOGIC; 
  signal N398 : STD_LOGIC; 
  signal alu0_N2_F5MUX_11810 : STD_LOGIC; 
  signal N397 : STD_LOGIC; 
  signal alu0_N2_BXINV_11803 : STD_LOGIC; 
  signal N396 : STD_LOGIC; 
  signal alu0_N300_F5MUX_11835 : STD_LOGIC; 
  signal N415 : STD_LOGIC; 
  signal alu0_N300_BXINV_11828 : STD_LOGIC; 
  signal N414 : STD_LOGIC; 
  signal result_2_9_11858 : STD_LOGIC; 
  signal result_2_7_O : STD_LOGIC; 
  signal result_3_9_11882 : STD_LOGIC; 
  signal result_3_7_O : STD_LOGIC; 
  signal result_4_9_11906 : STD_LOGIC; 
  signal result_4_7_O : STD_LOGIC; 
  signal result_11_9_11930 : STD_LOGIC; 
  signal result_11_7_O : STD_LOGIC; 
  signal result_6_9_11954 : STD_LOGIC; 
  signal result_6_7_O : STD_LOGIC; 
  signal result_12_9_11978 : STD_LOGIC; 
  signal result_12_7_O : STD_LOGIC; 
  signal result_7_9_12002 : STD_LOGIC; 
  signal result_7_7_O : STD_LOGIC; 
  signal result_8_7_12026 : STD_LOGIC; 
  signal result_cmp_eq0002 : STD_LOGIC; 
  signal result_0_25_12050 : STD_LOGIC; 
  signal result_cmp_eq0036 : STD_LOGIC; 
  signal result_0_41_12074 : STD_LOGIC; 
  signal result_0_30_O : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal result_cmp_eq0014 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal result_cmp_eq0013 : STD_LOGIC; 
  signal result_0_80_12146 : STD_LOGIC; 
  signal result_0_61_O : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal result_cmp_eq0012 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal result_cmp_eq0011 : STD_LOGIC; 
  signal result_1_57_12218 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal result_2_57_12242 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal result_cmp_eq0023 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal result_cmp_eq0016 : STD_LOGIC; 
  signal result_10_53_12314 : STD_LOGIC; 
  signal result_10_53_SW0_O : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal result_cmp_eq0015 : STD_LOGIC; 
  signal result_4_57_12362 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal result_5_27_12386 : STD_LOGIC; 
  signal result_5_9_SW0_O : STD_LOGIC; 
  signal result_10_75_12410 : STD_LOGIC; 
  signal result_10_611_SW0_O : STD_LOGIC; 
  signal result_4_78_12434 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal result_6_17_12458 : STD_LOGIC; 
  signal result_cmp_eq0003 : STD_LOGIC; 
  signal result_11_81_12482 : STD_LOGIC; 
  signal result_11_81_SW0_O : STD_LOGIC; 
  signal result_5_78_12506 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal result_13_15_12530 : STD_LOGIC; 
  signal result_13_9_SW0_O : STD_LOGIC; 
  signal result_6_57_12554 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal result_6_58_12578 : STD_LOGIC; 
  signal result_6_52_SW0_O : STD_LOGIC; 
  signal result_11_89_12602 : STD_LOGIC; 
  signal result_11_63_O : STD_LOGIC; 
  signal result_13_25_12626 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal result_13_53_12650 : STD_LOGIC; 
  signal result_cmp_eq00301_SW1_O : STD_LOGIC; 
  signal result_7_55_12674 : STD_LOGIC; 
  signal result_7_55_SW0_SW0_O : STD_LOGIC; 
  signal result_14_15_12698 : STD_LOGIC; 
  signal result_14_9_SW0_O : STD_LOGIC; 
  signal result_12_96_12722 : STD_LOGIC; 
  signal result_cmp_eq00221_SW1_O : STD_LOGIC; 
  signal result_8_27_12746 : STD_LOGIC; 
  signal result_8_9_SW0_O : STD_LOGIC; 
  signal result_14_35_12770 : STD_LOGIC; 
  signal result_cmp_eq0031 : STD_LOGIC; 
  signal result_13_69_12794 : STD_LOGIC; 
  signal result_cmp_eq0020149_12787 : STD_LOGIC; 
  signal result_8_74_12818 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal result_14_67_12842 : STD_LOGIC; 
  signal result_14_40_O : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal result_cmp_eq0007 : STD_LOGIC; 
  signal result_15_52_12890 : STD_LOGIC; 
  signal result_cmp_eq00261_SW2_O : STD_LOGIC; 
  signal result_15_61_12914 : STD_LOGIC; 
  signal result_15_53_O : STD_LOGIC; 
  signal result_0_134_12938 : STD_LOGIC; 
  signal result_0_124_O : STD_LOGIC; 
  signal result_9_88_12962 : STD_LOGIC; 
  signal result_9_77_SW0_O : STD_LOGIC; 
  signal alu_result_0_F : STD_LOGIC; 
  signal result_0_114_O : STD_LOGIC; 
  signal result_15_87_13010 : STD_LOGIC; 
  signal result_15_74_O : STD_LOGIC; 
  signal alu_result_1_F : STD_LOGIC; 
  signal result_1_93_O : STD_LOGIC; 
  signal result_2_111_13058 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal alu_result_2_F : STD_LOGIC; 
  signal result_2_93_SW1_O : STD_LOGIC; 
  signal alu_result_3_F : STD_LOGIC; 
  signal result_3_145_SW0_O : STD_LOGIC; 
  signal result_10_125_13130 : STD_LOGIC; 
  signal result_10_123_O : STD_LOGIC; 
  signal alu_result_4_F : STD_LOGIC; 
  signal result_4_93_SW1_O : STD_LOGIC; 
  signal alu_result_10_F : STD_LOGIC; 
  signal result_10_213_SW0_O : STD_LOGIC; 
  signal result_10_149_13202 : STD_LOGIC; 
  signal result_cmp_eq0010 : STD_LOGIC; 
  signal result_10_190_13226 : STD_LOGIC; 
  signal result_10_188_O : STD_LOGIC; 
  signal result_10_169_13250 : STD_LOGIC; 
  signal result_10_166_SW0_O : STD_LOGIC; 
  signal result_11_210_13274 : STD_LOGIC; 
  signal result_11_174_O : STD_LOGIC; 
  signal alu_result_5_F : STD_LOGIC; 
  signal result_5_93_O : STD_LOGIC; 
  signal result_11_128_13322 : STD_LOGIC; 
  signal result_11_102_O : STD_LOGIC; 
  signal result_11_147_13346 : STD_LOGIC; 
  signal result_11_146_O : STD_LOGIC; 
  signal alu_result_11_F : STD_LOGIC; 
  signal result_11_245_SW0_SW0_O : STD_LOGIC; 
  signal result_6_123_13394 : STD_LOGIC; 
  signal result_6_123_SW0_O : STD_LOGIC; 
  signal result_6_108_13418 : STD_LOGIC; 
  signal result_6_107_SW0_O : STD_LOGIC; 
  signal result_12_122_13442 : STD_LOGIC; 
  signal result_12_68_O : STD_LOGIC; 
  signal alu_result_6_F : STD_LOGIC; 
  signal result_6_89_O : STD_LOGIC; 
  signal result_12_147_13490 : STD_LOGIC; 
  signal result_cmp_eq0008 : STD_LOGIC; 
  signal alu_result_12_F : STD_LOGIC; 
  signal result_12_229_SW0_O : STD_LOGIC; 
  signal result_13_200_13538 : STD_LOGIC; 
  signal result_13_200_SW0_O : STD_LOGIC; 
  signal alu_result_7_F : STD_LOGIC; 
  signal result_7_86_SW0_O : STD_LOGIC; 
  signal result_7_170_13586 : STD_LOGIC; 
  signal result_7_170_SW1_O : STD_LOGIC; 
  signal result_13_151_13610 : STD_LOGIC; 
  signal result_cmp_eq0009 : STD_LOGIC; 
  signal result_13_225_13634 : STD_LOGIC; 
  signal result_13_167_SW0_O : STD_LOGIC; 
  signal alu_result_13_F : STD_LOGIC; 
  signal result_13_40_SW0_SW0_O : STD_LOGIC; 
  signal result_8_126_13682 : STD_LOGIC; 
  signal result_8_86_O : STD_LOGIC; 
  signal result_8_162_13706 : STD_LOGIC; 
  signal result_8_159_O : STD_LOGIC; 
  signal result_14_223_13730 : STD_LOGIC; 
  signal result_14_213_O : STD_LOGIC; 
  signal result_9_102_13754 : STD_LOGIC; 
  signal result_9_99_O : STD_LOGIC; 
  signal result_8_178_13778 : STD_LOGIC; 
  signal result_8_150_SW0_O : STD_LOGIC; 
  signal result_14_192_13802 : STD_LOGIC; 
  signal result_cmp_eq0006 : STD_LOGIC; 
  signal result_15_113_13826 : STD_LOGIC; 
  signal result_cmp_eq0033 : STD_LOGIC; 
  signal alu_result_14_F : STD_LOGIC; 
  signal result_14_245_SW0_O : STD_LOGIC; 
  signal result_9_128_13874 : STD_LOGIC; 
  signal result_9_67_O : STD_LOGIC; 
  signal result_15_134_13898 : STD_LOGIC; 
  signal result_15_114_O : STD_LOGIC; 
  signal result_15_152_13922 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal alu_result_9_F : STD_LOGIC; 
  signal result_9_213_SW0_O : STD_LOGIC; 
  signal result_9_191_13970 : STD_LOGIC; 
  signal result_9_170_SW0_O : STD_LOGIC; 
  signal result_15_173_13994 : STD_LOGIC; 
  signal result_15_147_O : STD_LOGIC; 
  signal result_15_246_14018 : STD_LOGIC; 
  signal result_15_226_O : STD_LOGIC; 
  signal alu_result_15_F : STD_LOGIC; 
  signal result_15_23_SW0_O : STD_LOGIC; 
  signal result_15_189_14066 : STD_LOGIC; 
  signal result_15_189_SW0_O : STD_LOGIC; 
  signal result_15_199_14090 : STD_LOGIC; 
  signal result_15_186_O : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal result_cmp_eq0020151_SW0_O : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal result_cmp_eq0020151_SW1_O : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal result_2_106_O : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal result_0_99_O : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal result_13_178_SW0_O : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal result_cmp_eq00201491 : STD_LOGIC; 
  signal N380 : STD_LOGIC; 
  signal result_1_7_O : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal result_0_9_SW0_O : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal result_1_411_SW0_O : STD_LOGIC; 
  signal N272 : STD_LOGIC; 
  signal result_14_21_O : STD_LOGIC; 
  signal N242 : STD_LOGIC; 
  signal result_2_25_SW0_O : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal result_3_111_O : STD_LOGIC; 
  signal N230 : STD_LOGIC; 
  signal result_10_211_O : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal result_4_25_O : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal result_3_78_O : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal result_11_41_O : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal result_12_35_O : STD_LOGIC; 
  signal N292 : STD_LOGIC; 
  signal N348 : STD_LOGIC; 
  signal N224 : STD_LOGIC; 
  signal N316 : STD_LOGIC; 
  signal N228 : STD_LOGIC; 
  signal result_12_101_O : STD_LOGIC; 
  signal N394 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N366 : STD_LOGIC; 
  signal result_7_101_SW0_O : STD_LOGIC; 
  signal N338 : STD_LOGIC; 
  signal result_13_58_SW0_O : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal result_or0000 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal result_9_7_O : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal result_15_7_O : STD_LOGIC; 
  signal N390 : STD_LOGIC; 
  signal result_9_51_O : STD_LOGIC; 
  signal N332 : STD_LOGIC; 
  signal result_12_164_O : STD_LOGIC; 
  signal N281 : STD_LOGIC; 
  signal result_4_106_O : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal result_5_106_O : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal result_5_73_O : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal result_11_158_O : STD_LOGIC; 
  signal N302 : STD_LOGIC; 
  signal result_12_152_SW0_SW0_O : STD_LOGIC; 
  signal N334 : STD_LOGIC; 
  signal result_6_81_O : STD_LOGIC; 
  signal N340 : STD_LOGIC; 
  signal result_13_101_SW0_O : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal result_7_127_O : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal result_12_192_O : STD_LOGIC; 
  signal N304 : STD_LOGIC; 
  signal result_12_197_SW0_SW0_O : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N320 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal result_14_80_O : STD_LOGIC; 
  signal N284 : STD_LOGIC; 
  signal result_13_127_SW0_O : STD_LOGIC; 
  signal result_cmp_eq0020 : STD_LOGIC; 
  signal N921 : STD_LOGIC; 
  signal result_cmp_eq0022 : STD_LOGIC; 
  signal N266 : STD_LOGIC; 
  signal result_cmp_eq0030 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal result_cmp_eq0024 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal result_cmp_eq0032 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal result_cmp_eq0017 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal result_cmp_eq0025 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal result_cmp_eq0034 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal result_cmp_eq0026 : STD_LOGIC; 
  signal N881 : STD_LOGIC; 
  signal result_cmp_eq0018 : STD_LOGIC; 
  signal result_cmp_eq000519_15379 : STD_LOGIC; 
  signal result_cmp_eq0027 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal result_cmp_eq0028 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal result_cmp_eq0029 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N312 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal result_14_152_O : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal result_15_225_SW0_SW0_O : STD_LOGIC; 
  signal N406 : STD_LOGIC; 
  signal result_cmp_eq0005114_15547 : STD_LOGIC; 
  signal N404 : STD_LOGIC; 
  signal result_cmp_eq000514_15571 : STD_LOGIC; 
  signal N216 : STD_LOGIC; 
  signal result_1_111_O : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal result_1_78_O : STD_LOGIC; 
  signal N388 : STD_LOGIC; 
  signal result_13_80_O : STD_LOGIC; 
  signal N408 : STD_LOGIC; 
  signal result_13_113_SW0_O : STD_LOGIC; 
  signal N342 : STD_LOGIC; 
  signal result_cmp_eq00201121 : STD_LOGIC; 
  signal N402 : STD_LOGIC; 
  signal result_cmp_eq0020112_15714 : STD_LOGIC; 
  signal N258 : STD_LOGIC; 
  signal result_0_22_O : STD_LOGIC; 
  signal N252 : STD_LOGIC; 
  signal result_8_201_SW0_O : STD_LOGIC; 
  signal N276 : STD_LOGIC; 
  signal result_7_113_O : STD_LOGIC; 
  signal result_14_7_15818 : STD_LOGIC; 
  signal result_10_7_15810 : STD_LOGIC; 
  signal N386 : STD_LOGIC; 
  signal result_5_7_15834 : STD_LOGIC; 
  signal result_0_7_15866 : STD_LOGIC; 
  signal result_13_7_15858 : STD_LOGIC; 
  signal result_3_73_15890 : STD_LOGIC; 
  signal result_1_25_15883 : STD_LOGIC; 
  signal result_1_73_15914 : STD_LOGIC; 
  signal result_0_94_15907 : STD_LOGIC; 
  signal z_flag_cmp_eq000149_15938 : STD_LOGIC; 
  signal result_0_78_15931 : STD_LOGIC; 
  signal result_4_41_15962 : STD_LOGIC; 
  signal result_2_41_15955 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal result_2_73_15979 : STD_LOGIC; 
  signal result_5_41_16010 : STD_LOGIC; 
  signal result_3_41_16003 : STD_LOGIC; 
  signal result_14_208_16034 : STD_LOGIC; 
  signal result_3_25_16027 : STD_LOGIC; 
  signal result_9_34_16058 : STD_LOGIC; 
  signal result_2_78_16051 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal result_3_57_16073 : STD_LOGIC; 
  signal result_14_57_16106 : STD_LOGIC; 
  signal result_10_52_16099 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal result_4_73_16121 : STD_LOGIC; 
  signal result_15_35_16154 : STD_LOGIC; 
  signal result_10_74_16147 : STD_LOGIC; 
  signal result_11_68_16178 : STD_LOGIC; 
  signal result_5_57_16171 : STD_LOGIC; 
  signal N378 : STD_LOGIC; 
  signal result_11_80_16195 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal result_6_36_16219 : STD_LOGIC; 
  signal N360 : STD_LOGIC; 
  signal result_12_51_16243 : STD_LOGIC; 
  signal result_8_41_16274 : STD_LOGIC; 
  signal result_6_80_16267 : STD_LOGIC; 
  signal result_9_72_16298 : STD_LOGIC; 
  signal result_12_56_16291 : STD_LOGIC; 
  signal result_11_179_16322 : STD_LOGIC; 
  signal result_12_73_16315 : STD_LOGIC; 
  signal result_14_164_16346 : STD_LOGIC; 
  signal result_14_52_16339 : STD_LOGIC; 
  signal result_8_140_16370 : STD_LOGIC; 
  signal result_15_40_16363 : STD_LOGIC; 
  signal result_15_164_16394 : STD_LOGIC; 
  signal result_8_91_16387 : STD_LOGIC; 
  signal result_4_111_16418 : STD_LOGIC; 
  signal result_0_132_16411 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal result_15_77_16433 : STD_LOGIC; 
  signal result_3_106_16466 : STD_LOGIC; 
  signal result_1_106_16459 : STD_LOGIC; 
  signal n_flag_DYMUX_16476 : STD_LOGIC; 
  signal n_flag_BYINV_16475 : STD_LOGIC; 
  signal n_flag_CLKINVNOT : STD_LOGIC; 
  signal result_14_147_16503 : STD_LOGIC; 
  signal result_10_154_16496 : STD_LOGIC; 
  signal N364 : STD_LOGIC; 
  signal result_5_111_16520 : STD_LOGIC; 
  signal result_9_188_16551 : STD_LOGIC; 
  signal result_11_107_16544 : STD_LOGIC; 
  signal result_14_169_16575 : STD_LOGIC; 
  signal result_12_169_16568 : STD_LOGIC; 
  signal result_15_220_16599 : STD_LOGIC; 
  signal result_13_211_16592 : STD_LOGIC; 
  signal N314 : STD_LOGIC; 
  signal result_13_156_16616 : STD_LOGIC; 
  signal N481 : STD_LOGIC; 
  signal alu0_N481_G : STD_LOGIC; 
  signal N294 : STD_LOGIC; 
  signal result_9_155_16664 : STD_LOGIC; 
  signal N146 : STD_LOGIC; 
  signal result_15_165_16688 : STD_LOGIC; 
  signal z_flag_DYMUX_16705 : STD_LOGIC; 
  signal z_flag_BYINV_16704 : STD_LOGIC; 
  signal z_flag_CLKINVNOT : STD_LOGIC; 
  signal result_cmp_eq00201251 : STD_LOGIC; 
  signal result_cmp_eq0020125_16725 : STD_LOGIC; 
  signal N288 : STD_LOGIC; 
  signal N290 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N326 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N461 : STD_LOGIC; 
  signal z_flag_cmp_eq000125_16828 : STD_LOGIC; 
  signal N210 : STD_LOGIC; 
  signal overflow_cmp_eq0000 : STD_LOGIC; 
  signal result_mux0002 : STD_LOGIC; 
  signal z_flag_and0000 : STD_LOGIC; 
  signal z_flag_cmp_eq0000 : STD_LOGIC; 
  signal N274 : STD_LOGIC; 
  signal N200 : STD_LOGIC; 
  signal N206 : STD_LOGIC; 
  signal overflow_10_F : STD_LOGIC; 
  signal overflow_10_G : STD_LOGIC; 
  signal overflow_11_F : STD_LOGIC; 
  signal overflow_11_G : STD_LOGIC; 
  signal overflow_12_F : STD_LOGIC; 
  signal overflow_12_G : STD_LOGIC; 
  signal overflow_13_F : STD_LOGIC; 
  signal overflow_13_G : STD_LOGIC; 
  signal overflow_14_F : STD_LOGIC; 
  signal overflow_14_G : STD_LOGIC; 
  signal overflow_15_F : STD_LOGIC; 
  signal overflow_15_G : STD_LOGIC; 
  signal overflow_8_F : STD_LOGIC; 
  signal overflow_8_G : STD_LOGIC; 
  signal overflow_9_F : STD_LOGIC; 
  signal N298 : STD_LOGIC; 
  signal N296 : STD_LOGIC; 
  signal N376 : STD_LOGIC; 
  signal N214 : STD_LOGIC; 
  signal n_flag_or0000 : STD_LOGIC; 
  signal n_flag_and0000 : STD_LOGIC; 
  signal N400 : STD_LOGIC; 
  signal z_flag_cmp_eq000162_17181 : STD_LOGIC; 
  signal z_flag_or0000 : STD_LOGIC; 
  signal z_flag_cmp_eq0001 : STD_LOGIC; 
  signal N354 : STD_LOGIC; 
  signal overflow_0_F : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal n_flag_FFY_SET : STD_LOGIC; 
  signal z_flag_FFY_SET : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NlwInverterSignal_alu0_n_flag_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_alu0_z_flag_CLK : STD_LOGIC; 
  signal result_addsub0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal x_mult0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Maddsub_result_addsub0000_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal NlwBufferSignal_alu0_Mmult_x_mult0000_A : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal NlwBufferSignal_alu0_Mmult_x_mult0000_B : STD_LOGIC_VECTOR ( 17 downto 0 ); 
begin
  alu0_result_addsub0000_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_0_XORF_11373,
      O => result_addsub0000(0)
    );
  alu0_result_addsub0000_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X61Y45"
    )
    port map (
      I0 => alu0_result_addsub0000_0_CYINIT_11372,
      I1 => Maddsub_result_addsub0000_lut(0),
      O => alu0_result_addsub0000_0_XORF_11373
    );
  alu0_result_addsub0000_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X61Y45"
    )
    port map (
      IA => alu0_result_addsub0000_0_CY0F_11371,
      IB => alu0_result_addsub0000_0_CYINIT_11372,
      SEL => alu0_result_addsub0000_0_CYSELF_11364,
      O => Maddsub_result_addsub0000_cy_0_Q
    );
  alu0_result_addsub0000_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X61Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_mux0002_0,
      O => alu0_result_addsub0000_0_CYINIT_11372
    );
  alu0_result_addsub0000_0_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X61Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(0),
      O => alu0_result_addsub0000_0_CY0F_11371
    );
  alu0_result_addsub0000_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X61Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_lut(0),
      O => alu0_result_addsub0000_0_CYSELF_11364
    );
  alu0_result_addsub0000_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_0_XORG_11360,
      O => result_addsub0000(1)
    );
  alu0_result_addsub0000_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X61Y45"
    )
    port map (
      I0 => Maddsub_result_addsub0000_cy_0_Q,
      I1 => Maddsub_result_addsub0000_lut(1),
      O => alu0_result_addsub0000_0_XORG_11360
    );
  alu0_result_addsub0000_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_0_CYMUXG_11359,
      O => Maddsub_result_addsub0000_cy_1_Q
    );
  alu0_result_addsub0000_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X61Y45"
    )
    port map (
      IA => alu0_result_addsub0000_0_CY0G_11357,
      IB => Maddsub_result_addsub0000_cy_0_Q,
      SEL => alu0_result_addsub0000_0_CYSELG_11350,
      O => alu0_result_addsub0000_0_CYMUXG_11359
    );
  alu0_result_addsub0000_0_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X61Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(1),
      O => alu0_result_addsub0000_0_CY0G_11357
    );
  alu0_result_addsub0000_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X61Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_lut(1),
      O => alu0_result_addsub0000_0_CYSELG_11350
    );
  Maddsub_result_addsub0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X61Y45"
    )
    port map (
      ADR0 => in1(1),
      ADR1 => result_mux0002_0,
      ADR2 => VCC,
      ADR3 => in2(1),
      O => Maddsub_result_addsub0000_lut(1)
    );
  alu0_result_addsub0000_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_2_XORF_11412,
      O => result_addsub0000(2)
    );
  alu0_result_addsub0000_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X61Y46"
    )
    port map (
      I0 => alu0_result_addsub0000_2_CYINIT_11411,
      I1 => Maddsub_result_addsub0000_lut(2),
      O => alu0_result_addsub0000_2_XORF_11412
    );
  alu0_result_addsub0000_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X61Y46"
    )
    port map (
      IA => alu0_result_addsub0000_2_CY0F_11410,
      IB => alu0_result_addsub0000_2_CYINIT_11411,
      SEL => alu0_result_addsub0000_2_CYSELF_11399,
      O => Maddsub_result_addsub0000_cy_2_Q
    );
  alu0_result_addsub0000_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X61Y46"
    )
    port map (
      IA => alu0_result_addsub0000_2_CY0F_11410,
      IB => alu0_result_addsub0000_2_CY0F_11410,
      SEL => alu0_result_addsub0000_2_CYSELF_11399,
      O => alu0_result_addsub0000_2_CYMUXF2_11394
    );
  alu0_result_addsub0000_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X61Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_cy_1_Q,
      O => alu0_result_addsub0000_2_CYINIT_11411
    );
  alu0_result_addsub0000_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X61Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(2),
      O => alu0_result_addsub0000_2_CY0F_11410
    );
  alu0_result_addsub0000_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X61Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_lut(2),
      O => alu0_result_addsub0000_2_CYSELF_11399
    );
  alu0_result_addsub0000_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_2_XORG_11401,
      O => result_addsub0000(3)
    );
  alu0_result_addsub0000_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X61Y46"
    )
    port map (
      I0 => Maddsub_result_addsub0000_cy_2_Q,
      I1 => Maddsub_result_addsub0000_lut(3),
      O => alu0_result_addsub0000_2_XORG_11401
    );
  alu0_result_addsub0000_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_2_CYMUXFAST_11398,
      O => Maddsub_result_addsub0000_cy_3_Q
    );
  alu0_result_addsub0000_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X61Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_cy_1_Q,
      O => alu0_result_addsub0000_2_FASTCARRY_11396
    );
  alu0_result_addsub0000_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X61Y46"
    )
    port map (
      I0 => alu0_result_addsub0000_2_CYSELG_11386,
      I1 => alu0_result_addsub0000_2_CYSELF_11399,
      O => alu0_result_addsub0000_2_CYAND_11397
    );
  alu0_result_addsub0000_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X61Y46"
    )
    port map (
      IA => alu0_result_addsub0000_2_CYMUXG2_11395,
      IB => alu0_result_addsub0000_2_FASTCARRY_11396,
      SEL => alu0_result_addsub0000_2_CYAND_11397,
      O => alu0_result_addsub0000_2_CYMUXFAST_11398
    );
  alu0_result_addsub0000_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X61Y46"
    )
    port map (
      IA => alu0_result_addsub0000_2_CY0G_11393,
      IB => alu0_result_addsub0000_2_CYMUXF2_11394,
      SEL => alu0_result_addsub0000_2_CYSELG_11386,
      O => alu0_result_addsub0000_2_CYMUXG2_11395
    );
  alu0_result_addsub0000_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X61Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(3),
      O => alu0_result_addsub0000_2_CY0G_11393
    );
  alu0_result_addsub0000_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X61Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_lut(3),
      O => alu0_result_addsub0000_2_CYSELG_11386
    );
  Maddsub_result_addsub0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X61Y46"
    )
    port map (
      ADR0 => in1(3),
      ADR1 => result_mux0002_0,
      ADR2 => in2(3),
      ADR3 => VCC,
      O => Maddsub_result_addsub0000_lut(3)
    );
  alu0_result_addsub0000_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_4_XORF_11451,
      O => result_addsub0000(4)
    );
  alu0_result_addsub0000_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X61Y47"
    )
    port map (
      I0 => alu0_result_addsub0000_4_CYINIT_11450,
      I1 => Maddsub_result_addsub0000_lut(4),
      O => alu0_result_addsub0000_4_XORF_11451
    );
  alu0_result_addsub0000_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X61Y47"
    )
    port map (
      IA => alu0_result_addsub0000_4_CY0F_11449,
      IB => alu0_result_addsub0000_4_CYINIT_11450,
      SEL => alu0_result_addsub0000_4_CYSELF_11438,
      O => Maddsub_result_addsub0000_cy_4_Q
    );
  alu0_result_addsub0000_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X61Y47"
    )
    port map (
      IA => alu0_result_addsub0000_4_CY0F_11449,
      IB => alu0_result_addsub0000_4_CY0F_11449,
      SEL => alu0_result_addsub0000_4_CYSELF_11438,
      O => alu0_result_addsub0000_4_CYMUXF2_11433
    );
  alu0_result_addsub0000_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X61Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_cy_3_Q,
      O => alu0_result_addsub0000_4_CYINIT_11450
    );
  alu0_result_addsub0000_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X61Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(4),
      O => alu0_result_addsub0000_4_CY0F_11449
    );
  alu0_result_addsub0000_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X61Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_lut(4),
      O => alu0_result_addsub0000_4_CYSELF_11438
    );
  alu0_result_addsub0000_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_4_XORG_11440,
      O => result_addsub0000(5)
    );
  alu0_result_addsub0000_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X61Y47"
    )
    port map (
      I0 => Maddsub_result_addsub0000_cy_4_Q,
      I1 => Maddsub_result_addsub0000_lut(5),
      O => alu0_result_addsub0000_4_XORG_11440
    );
  alu0_result_addsub0000_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_4_CYMUXFAST_11437,
      O => Maddsub_result_addsub0000_cy_5_Q
    );
  alu0_result_addsub0000_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X61Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_cy_3_Q,
      O => alu0_result_addsub0000_4_FASTCARRY_11435
    );
  alu0_result_addsub0000_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X61Y47"
    )
    port map (
      I0 => alu0_result_addsub0000_4_CYSELG_11425,
      I1 => alu0_result_addsub0000_4_CYSELF_11438,
      O => alu0_result_addsub0000_4_CYAND_11436
    );
  alu0_result_addsub0000_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X61Y47"
    )
    port map (
      IA => alu0_result_addsub0000_4_CYMUXG2_11434,
      IB => alu0_result_addsub0000_4_FASTCARRY_11435,
      SEL => alu0_result_addsub0000_4_CYAND_11436,
      O => alu0_result_addsub0000_4_CYMUXFAST_11437
    );
  alu0_result_addsub0000_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X61Y47"
    )
    port map (
      IA => alu0_result_addsub0000_4_CY0G_11432,
      IB => alu0_result_addsub0000_4_CYMUXF2_11433,
      SEL => alu0_result_addsub0000_4_CYSELG_11425,
      O => alu0_result_addsub0000_4_CYMUXG2_11434
    );
  alu0_result_addsub0000_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X61Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(5),
      O => alu0_result_addsub0000_4_CY0G_11432
    );
  alu0_result_addsub0000_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X61Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_lut(5),
      O => alu0_result_addsub0000_4_CYSELG_11425
    );
  Maddsub_result_addsub0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X61Y47"
    )
    port map (
      ADR0 => in1(5),
      ADR1 => result_mux0002_0,
      ADR2 => in2(5),
      ADR3 => VCC,
      O => Maddsub_result_addsub0000_lut(5)
    );
  alu0_result_addsub0000_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_6_XORF_11490,
      O => result_addsub0000(6)
    );
  alu0_result_addsub0000_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X61Y48"
    )
    port map (
      I0 => alu0_result_addsub0000_6_CYINIT_11489,
      I1 => Maddsub_result_addsub0000_lut(6),
      O => alu0_result_addsub0000_6_XORF_11490
    );
  alu0_result_addsub0000_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X61Y48"
    )
    port map (
      IA => alu0_result_addsub0000_6_CY0F_11488,
      IB => alu0_result_addsub0000_6_CYINIT_11489,
      SEL => alu0_result_addsub0000_6_CYSELF_11477,
      O => Maddsub_result_addsub0000_cy_6_Q
    );
  alu0_result_addsub0000_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X61Y48"
    )
    port map (
      IA => alu0_result_addsub0000_6_CY0F_11488,
      IB => alu0_result_addsub0000_6_CY0F_11488,
      SEL => alu0_result_addsub0000_6_CYSELF_11477,
      O => alu0_result_addsub0000_6_CYMUXF2_11472
    );
  alu0_result_addsub0000_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X61Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_cy_5_Q,
      O => alu0_result_addsub0000_6_CYINIT_11489
    );
  alu0_result_addsub0000_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X61Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(6),
      O => alu0_result_addsub0000_6_CY0F_11488
    );
  alu0_result_addsub0000_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X61Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_lut(6),
      O => alu0_result_addsub0000_6_CYSELF_11477
    );
  alu0_result_addsub0000_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_6_XORG_11479,
      O => result_addsub0000(7)
    );
  alu0_result_addsub0000_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X61Y48"
    )
    port map (
      I0 => Maddsub_result_addsub0000_cy_6_Q,
      I1 => Maddsub_result_addsub0000_lut(7),
      O => alu0_result_addsub0000_6_XORG_11479
    );
  alu0_result_addsub0000_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_6_CYMUXFAST_11476,
      O => Maddsub_result_addsub0000_cy_7_Q
    );
  alu0_result_addsub0000_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X61Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_cy_5_Q,
      O => alu0_result_addsub0000_6_FASTCARRY_11474
    );
  alu0_result_addsub0000_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X61Y48"
    )
    port map (
      I0 => alu0_result_addsub0000_6_CYSELG_11464,
      I1 => alu0_result_addsub0000_6_CYSELF_11477,
      O => alu0_result_addsub0000_6_CYAND_11475
    );
  alu0_result_addsub0000_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X61Y48"
    )
    port map (
      IA => alu0_result_addsub0000_6_CYMUXG2_11473,
      IB => alu0_result_addsub0000_6_FASTCARRY_11474,
      SEL => alu0_result_addsub0000_6_CYAND_11475,
      O => alu0_result_addsub0000_6_CYMUXFAST_11476
    );
  alu0_result_addsub0000_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X61Y48"
    )
    port map (
      IA => alu0_result_addsub0000_6_CY0G_11471,
      IB => alu0_result_addsub0000_6_CYMUXF2_11472,
      SEL => alu0_result_addsub0000_6_CYSELG_11464,
      O => alu0_result_addsub0000_6_CYMUXG2_11473
    );
  alu0_result_addsub0000_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X61Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(7),
      O => alu0_result_addsub0000_6_CY0G_11471
    );
  alu0_result_addsub0000_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X61Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_lut(7),
      O => alu0_result_addsub0000_6_CYSELG_11464
    );
  Maddsub_result_addsub0000_lut_7_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X61Y48"
    )
    port map (
      ADR0 => result_mux0002_0,
      ADR1 => in1(7),
      ADR2 => in2(7),
      ADR3 => VCC,
      O => Maddsub_result_addsub0000_lut(7)
    );
  alu0_result_addsub0000_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_8_XORF_11529,
      O => result_addsub0000(8)
    );
  alu0_result_addsub0000_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X61Y49"
    )
    port map (
      I0 => alu0_result_addsub0000_8_CYINIT_11528,
      I1 => Maddsub_result_addsub0000_lut(8),
      O => alu0_result_addsub0000_8_XORF_11529
    );
  alu0_result_addsub0000_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X61Y49"
    )
    port map (
      IA => alu0_result_addsub0000_8_CY0F_11527,
      IB => alu0_result_addsub0000_8_CYINIT_11528,
      SEL => alu0_result_addsub0000_8_CYSELF_11516,
      O => Maddsub_result_addsub0000_cy_8_Q
    );
  alu0_result_addsub0000_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X61Y49"
    )
    port map (
      IA => alu0_result_addsub0000_8_CY0F_11527,
      IB => alu0_result_addsub0000_8_CY0F_11527,
      SEL => alu0_result_addsub0000_8_CYSELF_11516,
      O => alu0_result_addsub0000_8_CYMUXF2_11511
    );
  alu0_result_addsub0000_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X61Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_cy_7_Q,
      O => alu0_result_addsub0000_8_CYINIT_11528
    );
  alu0_result_addsub0000_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X61Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(8),
      O => alu0_result_addsub0000_8_CY0F_11527
    );
  alu0_result_addsub0000_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X61Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_lut(8),
      O => alu0_result_addsub0000_8_CYSELF_11516
    );
  alu0_result_addsub0000_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_8_XORG_11518,
      O => result_addsub0000(9)
    );
  alu0_result_addsub0000_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X61Y49"
    )
    port map (
      I0 => Maddsub_result_addsub0000_cy_8_Q,
      I1 => Maddsub_result_addsub0000_lut(9),
      O => alu0_result_addsub0000_8_XORG_11518
    );
  alu0_result_addsub0000_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_8_CYMUXFAST_11515,
      O => Maddsub_result_addsub0000_cy_9_Q
    );
  alu0_result_addsub0000_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X61Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_cy_7_Q,
      O => alu0_result_addsub0000_8_FASTCARRY_11513
    );
  alu0_result_addsub0000_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X61Y49"
    )
    port map (
      I0 => alu0_result_addsub0000_8_CYSELG_11503,
      I1 => alu0_result_addsub0000_8_CYSELF_11516,
      O => alu0_result_addsub0000_8_CYAND_11514
    );
  alu0_result_addsub0000_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X61Y49"
    )
    port map (
      IA => alu0_result_addsub0000_8_CYMUXG2_11512,
      IB => alu0_result_addsub0000_8_FASTCARRY_11513,
      SEL => alu0_result_addsub0000_8_CYAND_11514,
      O => alu0_result_addsub0000_8_CYMUXFAST_11515
    );
  alu0_result_addsub0000_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X61Y49"
    )
    port map (
      IA => alu0_result_addsub0000_8_CY0G_11510,
      IB => alu0_result_addsub0000_8_CYMUXF2_11511,
      SEL => alu0_result_addsub0000_8_CYSELG_11503,
      O => alu0_result_addsub0000_8_CYMUXG2_11512
    );
  alu0_result_addsub0000_8_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X61Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(9),
      O => alu0_result_addsub0000_8_CY0G_11510
    );
  alu0_result_addsub0000_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X61Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_lut(9),
      O => alu0_result_addsub0000_8_CYSELG_11503
    );
  Maddsub_result_addsub0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X61Y49"
    )
    port map (
      ADR0 => in1(9),
      ADR1 => result_mux0002_0,
      ADR2 => VCC,
      ADR3 => in2(9),
      O => Maddsub_result_addsub0000_lut(9)
    );
  alu0_result_addsub0000_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_10_XORF_11568,
      O => result_addsub0000(10)
    );
  alu0_result_addsub0000_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X61Y50"
    )
    port map (
      I0 => alu0_result_addsub0000_10_CYINIT_11567,
      I1 => Maddsub_result_addsub0000_lut(10),
      O => alu0_result_addsub0000_10_XORF_11568
    );
  alu0_result_addsub0000_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X61Y50"
    )
    port map (
      IA => alu0_result_addsub0000_10_CY0F_11566,
      IB => alu0_result_addsub0000_10_CYINIT_11567,
      SEL => alu0_result_addsub0000_10_CYSELF_11555,
      O => Maddsub_result_addsub0000_cy_10_Q
    );
  alu0_result_addsub0000_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X61Y50"
    )
    port map (
      IA => alu0_result_addsub0000_10_CY0F_11566,
      IB => alu0_result_addsub0000_10_CY0F_11566,
      SEL => alu0_result_addsub0000_10_CYSELF_11555,
      O => alu0_result_addsub0000_10_CYMUXF2_11550
    );
  alu0_result_addsub0000_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X61Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_cy_9_Q,
      O => alu0_result_addsub0000_10_CYINIT_11567
    );
  alu0_result_addsub0000_10_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X61Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(10),
      O => alu0_result_addsub0000_10_CY0F_11566
    );
  alu0_result_addsub0000_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X61Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_lut(10),
      O => alu0_result_addsub0000_10_CYSELF_11555
    );
  alu0_result_addsub0000_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_10_XORG_11557,
      O => result_addsub0000(11)
    );
  alu0_result_addsub0000_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X61Y50"
    )
    port map (
      I0 => Maddsub_result_addsub0000_cy_10_Q,
      I1 => Maddsub_result_addsub0000_lut(11),
      O => alu0_result_addsub0000_10_XORG_11557
    );
  alu0_result_addsub0000_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_10_CYMUXFAST_11554,
      O => Maddsub_result_addsub0000_cy_11_Q
    );
  alu0_result_addsub0000_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X61Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_cy_9_Q,
      O => alu0_result_addsub0000_10_FASTCARRY_11552
    );
  alu0_result_addsub0000_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X61Y50"
    )
    port map (
      I0 => alu0_result_addsub0000_10_CYSELG_11542,
      I1 => alu0_result_addsub0000_10_CYSELF_11555,
      O => alu0_result_addsub0000_10_CYAND_11553
    );
  alu0_result_addsub0000_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X61Y50"
    )
    port map (
      IA => alu0_result_addsub0000_10_CYMUXG2_11551,
      IB => alu0_result_addsub0000_10_FASTCARRY_11552,
      SEL => alu0_result_addsub0000_10_CYAND_11553,
      O => alu0_result_addsub0000_10_CYMUXFAST_11554
    );
  alu0_result_addsub0000_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X61Y50"
    )
    port map (
      IA => alu0_result_addsub0000_10_CY0G_11549,
      IB => alu0_result_addsub0000_10_CYMUXF2_11550,
      SEL => alu0_result_addsub0000_10_CYSELG_11542,
      O => alu0_result_addsub0000_10_CYMUXG2_11551
    );
  alu0_result_addsub0000_10_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X61Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(11),
      O => alu0_result_addsub0000_10_CY0G_11549
    );
  alu0_result_addsub0000_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X61Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_lut(11),
      O => alu0_result_addsub0000_10_CYSELG_11542
    );
  Maddsub_result_addsub0000_lut_11_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X61Y50"
    )
    port map (
      ADR0 => in1(11),
      ADR1 => result_mux0002_0,
      ADR2 => in2(11),
      ADR3 => VCC,
      O => Maddsub_result_addsub0000_lut(11)
    );
  alu0_result_addsub0000_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_12_XORF_11607,
      O => result_addsub0000(12)
    );
  alu0_result_addsub0000_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X61Y51"
    )
    port map (
      I0 => alu0_result_addsub0000_12_CYINIT_11606,
      I1 => Maddsub_result_addsub0000_lut(12),
      O => alu0_result_addsub0000_12_XORF_11607
    );
  alu0_result_addsub0000_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X61Y51"
    )
    port map (
      IA => alu0_result_addsub0000_12_CY0F_11605,
      IB => alu0_result_addsub0000_12_CYINIT_11606,
      SEL => alu0_result_addsub0000_12_CYSELF_11594,
      O => Maddsub_result_addsub0000_cy_12_Q
    );
  alu0_result_addsub0000_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X61Y51"
    )
    port map (
      IA => alu0_result_addsub0000_12_CY0F_11605,
      IB => alu0_result_addsub0000_12_CY0F_11605,
      SEL => alu0_result_addsub0000_12_CYSELF_11594,
      O => alu0_result_addsub0000_12_CYMUXF2_11589
    );
  alu0_result_addsub0000_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X61Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_cy_11_Q,
      O => alu0_result_addsub0000_12_CYINIT_11606
    );
  alu0_result_addsub0000_12_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X61Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(12),
      O => alu0_result_addsub0000_12_CY0F_11605
    );
  alu0_result_addsub0000_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X61Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_lut(12),
      O => alu0_result_addsub0000_12_CYSELF_11594
    );
  alu0_result_addsub0000_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_12_XORG_11596,
      O => result_addsub0000(13)
    );
  alu0_result_addsub0000_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X61Y51"
    )
    port map (
      I0 => Maddsub_result_addsub0000_cy_12_Q,
      I1 => Maddsub_result_addsub0000_lut(13),
      O => alu0_result_addsub0000_12_XORG_11596
    );
  alu0_result_addsub0000_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X61Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_cy_11_Q,
      O => alu0_result_addsub0000_12_FASTCARRY_11591
    );
  alu0_result_addsub0000_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X61Y51"
    )
    port map (
      I0 => alu0_result_addsub0000_12_CYSELG_11581,
      I1 => alu0_result_addsub0000_12_CYSELF_11594,
      O => alu0_result_addsub0000_12_CYAND_11592
    );
  alu0_result_addsub0000_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X61Y51"
    )
    port map (
      IA => alu0_result_addsub0000_12_CYMUXG2_11590,
      IB => alu0_result_addsub0000_12_FASTCARRY_11591,
      SEL => alu0_result_addsub0000_12_CYAND_11592,
      O => alu0_result_addsub0000_12_CYMUXFAST_11593
    );
  alu0_result_addsub0000_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X61Y51"
    )
    port map (
      IA => alu0_result_addsub0000_12_CY0G_11588,
      IB => alu0_result_addsub0000_12_CYMUXF2_11589,
      SEL => alu0_result_addsub0000_12_CYSELG_11581,
      O => alu0_result_addsub0000_12_CYMUXG2_11590
    );
  alu0_result_addsub0000_12_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X61Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(13),
      O => alu0_result_addsub0000_12_CY0G_11588
    );
  alu0_result_addsub0000_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X61Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_lut(13),
      O => alu0_result_addsub0000_12_CYSELG_11581
    );
  Maddsub_result_addsub0000_lut_13_Q : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X61Y51"
    )
    port map (
      ADR0 => result_mux0002_0,
      ADR1 => in1(13),
      ADR2 => VCC,
      ADR3 => in2(13),
      O => Maddsub_result_addsub0000_lut(13)
    );
  alu0_result_addsub0000_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_14_XORF_11638,
      O => result_addsub0000(14)
    );
  alu0_result_addsub0000_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X61Y52"
    )
    port map (
      I0 => alu0_result_addsub0000_14_CYINIT_11637,
      I1 => Maddsub_result_addsub0000_lut(14),
      O => alu0_result_addsub0000_14_XORF_11638
    );
  alu0_result_addsub0000_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X61Y52"
    )
    port map (
      IA => alu0_result_addsub0000_14_CY0F_11636,
      IB => alu0_result_addsub0000_14_CYINIT_11637,
      SEL => alu0_result_addsub0000_14_CYSELF_11629,
      O => Maddsub_result_addsub0000_cy_14_Q
    );
  alu0_result_addsub0000_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X61Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_12_CYMUXFAST_11593,
      O => alu0_result_addsub0000_14_CYINIT_11637
    );
  alu0_result_addsub0000_14_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X61Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(14),
      O => alu0_result_addsub0000_14_CY0F_11636
    );
  alu0_result_addsub0000_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X61Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => Maddsub_result_addsub0000_lut(14),
      O => alu0_result_addsub0000_14_CYSELF_11629
    );
  alu0_result_addsub0000_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_result_addsub0000_14_XORG_11626,
      O => result_addsub0000(15)
    );
  alu0_result_addsub0000_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X61Y52"
    )
    port map (
      I0 => Maddsub_result_addsub0000_cy_14_Q,
      I1 => Maddsub_result_addsub0000_lut(15),
      O => alu0_result_addsub0000_14_XORG_11626
    );
  Maddsub_result_addsub0000_lut_15_Q : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X61Y52"
    )
    port map (
      ADR0 => in2(15),
      ADR1 => result_mux0002_0,
      ADR2 => VCC,
      ADR3 => in1(15),
      O => Maddsub_result_addsub0000_lut(15)
    );
  alu0_Mmult_x_mult0000_RSTPINV : X_BUF
    generic map(
      LOC => "MULT18X18_X1Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => alu0_Mmult_x_mult0000_RSTP_INT
    );
  alu0_Mmult_x_mult0000_RSTBINV : X_BUF
    generic map(
      LOC => "MULT18X18_X1Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => alu0_Mmult_x_mult0000_RSTB_INT
    );
  alu0_Mmult_x_mult0000_RSTAINV : X_BUF
    generic map(
      LOC => "MULT18X18_X1Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => alu0_Mmult_x_mult0000_RSTA_INT
    );
  alu0_Mmult_x_mult0000_CLKINV : X_BUF
    generic map(
      LOC => "MULT18X18_X1Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => alu0_Mmult_x_mult0000_CLK_INT
    );
  alu0_Mmult_x_mult0000_CEPINV : X_BUF
    generic map(
      LOC => "MULT18X18_X1Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => alu0_Mmult_x_mult0000_CEP_INT
    );
  alu0_Mmult_x_mult0000_CEBINV : X_BUF
    generic map(
      LOC => "MULT18X18_X1Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => alu0_Mmult_x_mult0000_CEB_INT
    );
  alu0_Mmult_x_mult0000_CEAINV : X_BUF
    generic map(
      LOC => "MULT18X18_X1Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => alu0_Mmult_x_mult0000_CEA_INT
    );
  Mmult_x_mult0000 : X_MULT18X18SIO
    generic map(
      AREG => 0,
      BREG => 0,
      PREG => 0,
      B_INPUT => "DIRECT",
      LOC => "MULT18X18_X1Y7"
    )
    port map (
      CEA => alu0_Mmult_x_mult0000_CEA_INT,
      CEB => alu0_Mmult_x_mult0000_CEB_INT,
      CEP => alu0_Mmult_x_mult0000_CEP_INT,
      CLK => alu0_Mmult_x_mult0000_CLK_INT,
      RSTA => alu0_Mmult_x_mult0000_RSTA_INT,
      RSTB => alu0_Mmult_x_mult0000_RSTB_INT,
      RSTP => alu0_Mmult_x_mult0000_RSTP_INT,
      A(17) => NlwBufferSignal_alu0_Mmult_x_mult0000_A(17),
      A(16) => NlwBufferSignal_alu0_Mmult_x_mult0000_A(16),
      A(15) => NlwBufferSignal_alu0_Mmult_x_mult0000_A(15),
      A(14) => NlwBufferSignal_alu0_Mmult_x_mult0000_A(14),
      A(13) => NlwBufferSignal_alu0_Mmult_x_mult0000_A(13),
      A(12) => NlwBufferSignal_alu0_Mmult_x_mult0000_A(12),
      A(11) => NlwBufferSignal_alu0_Mmult_x_mult0000_A(11),
      A(10) => NlwBufferSignal_alu0_Mmult_x_mult0000_A(10),
      A(9) => NlwBufferSignal_alu0_Mmult_x_mult0000_A(9),
      A(8) => NlwBufferSignal_alu0_Mmult_x_mult0000_A(8),
      A(7) => NlwBufferSignal_alu0_Mmult_x_mult0000_A(7),
      A(6) => NlwBufferSignal_alu0_Mmult_x_mult0000_A(6),
      A(5) => NlwBufferSignal_alu0_Mmult_x_mult0000_A(5),
      A(4) => NlwBufferSignal_alu0_Mmult_x_mult0000_A(4),
      A(3) => NlwBufferSignal_alu0_Mmult_x_mult0000_A(3),
      A(2) => NlwBufferSignal_alu0_Mmult_x_mult0000_A(2),
      A(1) => NlwBufferSignal_alu0_Mmult_x_mult0000_A(1),
      A(0) => NlwBufferSignal_alu0_Mmult_x_mult0000_A(0),
      B(17) => NlwBufferSignal_alu0_Mmult_x_mult0000_B(17),
      B(16) => NlwBufferSignal_alu0_Mmult_x_mult0000_B(16),
      B(15) => NlwBufferSignal_alu0_Mmult_x_mult0000_B(15),
      B(14) => NlwBufferSignal_alu0_Mmult_x_mult0000_B(14),
      B(13) => NlwBufferSignal_alu0_Mmult_x_mult0000_B(13),
      B(12) => NlwBufferSignal_alu0_Mmult_x_mult0000_B(12),
      B(11) => NlwBufferSignal_alu0_Mmult_x_mult0000_B(11),
      B(10) => NlwBufferSignal_alu0_Mmult_x_mult0000_B(10),
      B(9) => NlwBufferSignal_alu0_Mmult_x_mult0000_B(9),
      B(8) => NlwBufferSignal_alu0_Mmult_x_mult0000_B(8),
      B(7) => NlwBufferSignal_alu0_Mmult_x_mult0000_B(7),
      B(6) => NlwBufferSignal_alu0_Mmult_x_mult0000_B(6),
      B(5) => NlwBufferSignal_alu0_Mmult_x_mult0000_B(5),
      B(4) => NlwBufferSignal_alu0_Mmult_x_mult0000_B(4),
      B(3) => NlwBufferSignal_alu0_Mmult_x_mult0000_B(3),
      B(2) => NlwBufferSignal_alu0_Mmult_x_mult0000_B(2),
      B(1) => NlwBufferSignal_alu0_Mmult_x_mult0000_B(1),
      B(0) => NlwBufferSignal_alu0_Mmult_x_mult0000_B(0),
      BCIN(17) => alu0_Mmult_x_mult0000_BCIN17,
      BCIN(16) => alu0_Mmult_x_mult0000_BCIN16,
      BCIN(15) => alu0_Mmult_x_mult0000_BCIN15,
      BCIN(14) => alu0_Mmult_x_mult0000_BCIN14,
      BCIN(13) => alu0_Mmult_x_mult0000_BCIN13,
      BCIN(12) => alu0_Mmult_x_mult0000_BCIN12,
      BCIN(11) => alu0_Mmult_x_mult0000_BCIN11,
      BCIN(10) => alu0_Mmult_x_mult0000_BCIN10,
      BCIN(9) => alu0_Mmult_x_mult0000_BCIN9,
      BCIN(8) => alu0_Mmult_x_mult0000_BCIN8,
      BCIN(7) => alu0_Mmult_x_mult0000_BCIN7,
      BCIN(6) => alu0_Mmult_x_mult0000_BCIN6,
      BCIN(5) => alu0_Mmult_x_mult0000_BCIN5,
      BCIN(4) => alu0_Mmult_x_mult0000_BCIN4,
      BCIN(3) => alu0_Mmult_x_mult0000_BCIN3,
      BCIN(2) => alu0_Mmult_x_mult0000_BCIN2,
      BCIN(1) => alu0_Mmult_x_mult0000_BCIN1,
      BCIN(0) => alu0_Mmult_x_mult0000_BCIN0,
      P(35) => alu0_Mmult_x_mult0000_P35,
      P(34) => alu0_Mmult_x_mult0000_P34,
      P(33) => alu0_Mmult_x_mult0000_P33,
      P(32) => alu0_Mmult_x_mult0000_P32,
      P(31) => x_mult0000(31),
      P(30) => x_mult0000(30),
      P(29) => x_mult0000(29),
      P(28) => x_mult0000(28),
      P(27) => x_mult0000(27),
      P(26) => x_mult0000(26),
      P(25) => x_mult0000(25),
      P(24) => x_mult0000(24),
      P(23) => x_mult0000(23),
      P(22) => x_mult0000(22),
      P(21) => x_mult0000(21),
      P(20) => x_mult0000(20),
      P(19) => x_mult0000(19),
      P(18) => x_mult0000(18),
      P(17) => x_mult0000(17),
      P(16) => x_mult0000(16),
      P(15) => x_mult0000(15),
      P(14) => x_mult0000(14),
      P(13) => x_mult0000(13),
      P(12) => x_mult0000(12),
      P(11) => x_mult0000(11),
      P(10) => x_mult0000(10),
      P(9) => x_mult0000(9),
      P(8) => x_mult0000(8),
      P(7) => x_mult0000(7),
      P(6) => x_mult0000(6),
      P(5) => x_mult0000(5),
      P(4) => x_mult0000(4),
      P(3) => x_mult0000(3),
      P(2) => x_mult0000(2),
      P(1) => x_mult0000(1),
      P(0) => x_mult0000(0),
      BCOUT(17) => alu0_Mmult_x_mult0000_BCOUT17,
      BCOUT(16) => alu0_Mmult_x_mult0000_BCOUT16,
      BCOUT(15) => alu0_Mmult_x_mult0000_BCOUT15,
      BCOUT(14) => alu0_Mmult_x_mult0000_BCOUT14,
      BCOUT(13) => alu0_Mmult_x_mult0000_BCOUT13,
      BCOUT(12) => alu0_Mmult_x_mult0000_BCOUT12,
      BCOUT(11) => alu0_Mmult_x_mult0000_BCOUT11,
      BCOUT(10) => alu0_Mmult_x_mult0000_BCOUT10,
      BCOUT(9) => alu0_Mmult_x_mult0000_BCOUT9,
      BCOUT(8) => alu0_Mmult_x_mult0000_BCOUT8,
      BCOUT(7) => alu0_Mmult_x_mult0000_BCOUT7,
      BCOUT(6) => alu0_Mmult_x_mult0000_BCOUT6,
      BCOUT(5) => alu0_Mmult_x_mult0000_BCOUT5,
      BCOUT(4) => alu0_Mmult_x_mult0000_BCOUT4,
      BCOUT(3) => alu0_Mmult_x_mult0000_BCOUT3,
      BCOUT(2) => alu0_Mmult_x_mult0000_BCOUT2,
      BCOUT(1) => alu0_Mmult_x_mult0000_BCOUT1,
      BCOUT(0) => alu0_Mmult_x_mult0000_BCOUT0
    );
  alu0_N01_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_N01_F5MUX_11785,
      O => N01
    );
  alu0_N01_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y55"
    )
    port map (
      IA => N398,
      IB => N399,
      SEL => alu0_N01_BXINV_11778,
      O => alu0_N01_F5MUX_11785
    );
  alu0_N01_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(1),
      O => alu0_N01_BXINV_11778
    );
  result_10_1_F : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "SLICE_X42Y55"
    )
    port map (
      ADR0 => result_cmp_eq0003_0,
      ADR1 => VCC,
      ADR2 => N88_0,
      ADR3 => in2(0),
      O => N398
    );
  alu0_N2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_N2_F5MUX_11810,
      O => N2
    );
  alu0_N2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X45Y54"
    )
    port map (
      IA => N396,
      IB => N397,
      SEL => alu0_N2_BXINV_11803,
      O => alu0_N2_F5MUX_11810
    );
  alu0_N2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(1),
      O => alu0_N2_BXINV_11803
    );
  result_10_2_F : X_LUT4
    generic map(
      INIT => X"C000",
      LOC => "SLICE_X45Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => result_cmp_eq0036_0,
      ADR2 => N88_0,
      ADR3 => in2(0),
      O => N396
    );
  alu0_N300_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_N300_F5MUX_11835,
      O => N300
    );
  alu0_N300_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X37Y58"
    )
    port map (
      IA => N414,
      IB => N415,
      SEL => alu0_N300_BXINV_11828,
      O => alu0_N300_F5MUX_11835
    );
  alu0_N300_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(3),
      O => alu0_N300_BXINV_11828
    );
  result_10_35_SW0_F : X_LUT4
    generic map(
      INIT => X"FFBF",
      LOC => "SLICE_X37Y58"
    )
    port map (
      ADR0 => in2(1),
      ADR1 => in2(2),
      ADR2 => in1(6),
      ADR3 => in2(0),
      O => N414
    );
  result_10_35_SW0_G : X_LUT4
    generic map(
      INIT => X"FBFF",
      LOC => "SLICE_X37Y58"
    )
    port map (
      ADR0 => in2(1),
      ADR1 => in1(1),
      ADR2 => in2(2),
      ADR3 => in2(0),
      O => N415
    );
  alu0_result_2_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_2_9_11858,
      O => result_2_9_0
    );
  alu0_result_2_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_2_7_O,
      O => result_2_7_O_0
    );
  result_2_7 : X_LUT4
    generic map(
      INIT => X"0CCC",
      LOC => "SLICE_X54Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => result_cmp_eq0002_0,
      ADR2 => in1(2),
      ADR3 => in2(2),
      O => result_2_7_O
    );
  alu0_result_3_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_3_9_11882,
      O => result_3_9_0
    );
  alu0_result_3_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_3_7_O,
      O => result_3_7_O_0
    );
  result_3_7 : X_LUT4
    generic map(
      INIT => X"4C4C",
      LOC => "SLICE_X55Y48"
    )
    port map (
      ADR0 => in1(3),
      ADR1 => result_cmp_eq0002_0,
      ADR2 => in2(3),
      ADR3 => VCC,
      O => result_3_7_O
    );
  alu0_result_4_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_4_9_11906,
      O => result_4_9_0
    );
  alu0_result_4_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_4_7_O,
      O => result_4_7_O_0
    );
  result_4_7 : X_LUT4
    generic map(
      INIT => X"7070",
      LOC => "SLICE_X60Y48"
    )
    port map (
      ADR0 => in1(4),
      ADR1 => in2(4),
      ADR2 => result_cmp_eq0002_0,
      ADR3 => VCC,
      O => result_4_7_O
    );
  alu0_result_11_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_11_9_11930,
      O => result_11_9_0
    );
  alu0_result_11_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_11_7_O,
      O => result_11_7_O_0
    );
  result_11_7 : X_LUT4
    generic map(
      INIT => X"2A2A",
      LOC => "SLICE_X52Y52"
    )
    port map (
      ADR0 => result_cmp_eq0002_0,
      ADR1 => in1(11),
      ADR2 => in2(11),
      ADR3 => VCC,
      O => result_11_7_O
    );
  alu0_result_6_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_6_9_11954,
      O => result_6_9_0
    );
  alu0_result_6_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_6_7_O,
      O => result_6_7_O_0
    );
  result_6_7 : X_LUT4
    generic map(
      INIT => X"2A2A",
      LOC => "SLICE_X55Y52"
    )
    port map (
      ADR0 => result_cmp_eq0002_0,
      ADR1 => in2(6),
      ADR2 => in1(6),
      ADR3 => VCC,
      O => result_6_7_O
    );
  alu0_result_12_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_12_9_11978,
      O => result_12_9_0
    );
  alu0_result_12_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_12_7_O,
      O => result_12_7_O_0
    );
  result_12_7 : X_LUT4
    generic map(
      INIT => X"3F00",
      LOC => "SLICE_X60Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in2(12),
      ADR2 => in1(12),
      ADR3 => result_cmp_eq0002_0,
      O => result_12_7_O
    );
  alu0_result_7_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_7_9_12002,
      O => result_7_9_0
    );
  alu0_result_7_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_7_7_O,
      O => result_7_7_O_0
    );
  result_7_7 : X_LUT4
    generic map(
      INIT => X"0CCC",
      LOC => "SLICE_X53Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => result_cmp_eq0002_0,
      ADR2 => in2(7),
      ADR3 => in1(7),
      O => result_7_7_O
    );
  alu0_result_8_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_8_7_12026,
      O => result_8_7_0
    );
  alu0_result_8_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0002,
      O => result_cmp_eq0002_0
    );
  result_cmp_eq00021 : X_LUT4
    generic map(
      INIT => X"000A",
      LOC => "SLICE_X47Y50"
    )
    port map (
      ADR0 => alu_mode(2),
      ADR1 => VCC,
      ADR2 => alu_mode(0),
      ADR3 => alu_mode(1),
      O => result_cmp_eq0002
    );
  alu0_result_0_25_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_0_25_12050,
      O => result_0_25_0
    );
  alu0_result_0_25_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0036,
      O => result_cmp_eq0036_0
    );
  result_cmp_eq00361 : X_LUT4
    generic map(
      INIT => X"0A00",
      LOC => "SLICE_X36Y46"
    )
    port map (
      ADR0 => alu_mode(2),
      ADR1 => VCC,
      ADR2 => alu_mode(0),
      ADR3 => alu_mode(1),
      O => result_cmp_eq0036
    );
  alu0_result_0_41_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_0_41_12074,
      O => result_0_41_0
    );
  alu0_result_0_41_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_0_30_O,
      O => result_0_30_O_0
    );
  result_0_30 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X39Y47"
    )
    port map (
      ADR0 => N86_0,
      ADR1 => N53_0,
      ADR2 => result_0_25_0,
      ADR3 => N258_0,
      O => result_0_30_O
    );
  alu0_N19_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N19,
      O => N19_0
    );
  alu0_N19_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0014,
      O => result_cmp_eq0014_0
    );
  result_cmp_eq00141 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X36Y51"
    )
    port map (
      ADR0 => N80_0,
      ADR1 => result_cmp_eq0005114_0,
      ADR2 => result_cmp_eq000519_0,
      ADR3 => result_cmp_eq000514_0,
      O => result_cmp_eq0014
    );
  alu0_N25_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N25,
      O => N25_0
    );
  alu0_N25_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0013,
      O => result_cmp_eq0013_0
    );
  result_cmp_eq00131 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X36Y50"
    )
    port map (
      ADR0 => N68_0,
      ADR1 => result_cmp_eq000519_0,
      ADR2 => result_cmp_eq0005114_0,
      ADR3 => result_cmp_eq000514_0,
      O => result_cmp_eq0013
    );
  alu0_result_0_80_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_0_80_12146,
      O => result_0_80_0
    );
  alu0_result_0_80_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_0_61_O,
      O => result_0_61_O_0
    );
  result_0_61 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X49Y47"
    )
    port map (
      ADR0 => N2,
      ADR1 => in1(1),
      ADR2 => N15_0,
      ADR3 => in1(5),
      O => result_0_61_O
    );
  alu0_N28_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N28,
      O => N28_0
    );
  alu0_N28_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0012,
      O => result_cmp_eq0012_0
    );
  result_cmp_eq00121 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X36Y52"
    )
    port map (
      ADR0 => result_cmp_eq0005114_0,
      ADR1 => result_cmp_eq000514_0,
      ADR2 => result_cmp_eq000519_0,
      ADR3 => N70_0,
      O => result_cmp_eq0012
    );
  alu0_N32_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N32,
      O => N32_0
    );
  alu0_N32_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0011,
      O => result_cmp_eq0011_0
    );
  result_cmp_eq00111 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X39Y53"
    )
    port map (
      ADR0 => N72_0,
      ADR1 => result_cmp_eq0005114_0,
      ADR2 => result_cmp_eq000514_0,
      ADR3 => result_cmp_eq000519_0,
      O => result_cmp_eq0011
    );
  alu0_result_1_57_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_1_57_12218,
      O => result_1_57_0
    );
  alu0_result_1_57_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N65,
      O => N65_0
    );
  result_0_151 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X46Y47"
    )
    port map (
      ADR0 => result_cmp_eq0006_0,
      ADR1 => result_cmp_eq0034_0,
      ADR2 => result_cmp_eq0003_0,
      ADR3 => result_cmp_eq0036_0,
      O => N65
    );
  alu0_result_2_57_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_2_57_12242,
      O => result_2_57_0
    );
  alu0_result_2_57_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => N48,
      O => N48_0
    );
  result_0_121 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X43Y44"
    )
    port map (
      ADR0 => result_cmp_eq0036_0,
      ADR1 => result_cmp_eq0003_0,
      ADR2 => result_cmp_eq0008_0,
      ADR3 => result_cmp_eq0032_0,
      O => N48
    );
  alu0_N7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N7,
      O => N7_0
    );
  alu0_N7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0023,
      O => result_cmp_eq0023_0
    );
  result_cmp_eq00231 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X34Y49"
    )
    port map (
      ADR0 => result_cmp_eq00201491_0,
      ADR1 => N94_0,
      ADR2 => result_cmp_eq00201121_0,
      ADR3 => result_cmp_eq00201251_0,
      O => result_cmp_eq0023
    );
  alu0_N111_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N111,
      O => N111_0
    );
  alu0_N111_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0016,
      O => result_cmp_eq0016_0
    );
  result_cmp_eq00161 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X38Y47"
    )
    port map (
      ADR0 => result_cmp_eq0005114_0,
      ADR1 => N100_0,
      ADR2 => result_cmp_eq000519_0,
      ADR3 => result_cmp_eq000514_0,
      O => result_cmp_eq0016
    );
  alu0_result_10_53_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_10_53_12314,
      O => result_10_53_0
    );
  alu0_result_10_53_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_10_53_SW0_O,
      O => result_10_53_SW0_O_0
    );
  result_10_53_SW0 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X32Y57"
    )
    port map (
      ADR0 => result_cmp_eq0020125_0,
      ADR1 => result_cmp_eq00201491_0,
      ADR2 => result_cmp_eq0020112_0,
      ADR3 => in2(3),
      O => result_10_53_SW0_O
    );
  alu0_N15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N15,
      O => N15_0
    );
  alu0_N15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0015,
      O => result_cmp_eq0015_0
    );
  result_cmp_eq00151 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X35Y49"
    )
    port map (
      ADR0 => N66_0,
      ADR1 => result_cmp_eq000519_0,
      ADR2 => result_cmp_eq0005114_0,
      ADR3 => result_cmp_eq000514_0,
      O => result_cmp_eq0015
    );
  alu0_result_4_57_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_4_57_12362,
      O => result_4_57_0
    );
  alu0_result_4_57_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => N50,
      O => N50_0
    );
  result_6_131 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X42Y45"
    )
    port map (
      ADR0 => result_cmp_eq0017_0,
      ADR1 => result_cmp_eq0023_0,
      ADR2 => result_cmp_eq0003_0,
      ADR3 => result_cmp_eq0036_0,
      O => N50
    );
  alu0_result_5_27_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_5_27_12386,
      O => result_5_27_0
    );
  alu0_result_5_27_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_5_9_SW0_O,
      O => result_5_9_SW0_O_0
    );
  result_5_9_SW0 : X_LUT4
    generic map(
      INIT => X"FF88",
      LOC => "SLICE_X46Y48"
    )
    port map (
      ADR0 => in1(11),
      ADR1 => N19_0,
      ADR2 => VCC,
      ADR3 => result_5_7_0,
      O => result_5_9_SW0_O
    );
  alu0_result_10_75_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_10_75_12410,
      O => result_10_75_0
    );
  alu0_result_10_75_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_10_611_SW0_O,
      O => result_10_611_SW0_O_0
    );
  result_10_611_SW0 : X_LUT4
    generic map(
      INIT => X"20A0",
      LOC => "SLICE_X34Y56"
    )
    port map (
      ADR0 => result_cmp_eq0020125_0,
      ADR1 => N402_0,
      ADR2 => result_cmp_eq0020149_0,
      ADR3 => N342_0,
      O => result_10_611_SW0_O
    );
  alu0_result_4_78_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_4_78_12434,
      O => result_4_78_0
    );
  alu0_result_4_78_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N46,
      O => N46_0
    );
  result_0_111 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X39Y48"
    )
    port map (
      ADR0 => result_cmp_eq0036_0,
      ADR1 => result_cmp_eq0003_0,
      ADR2 => result_cmp_eq0009_0,
      ADR3 => result_cmp_eq0031_0,
      O => N46
    );
  alu0_result_6_17_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_6_17_12458,
      O => result_6_17_0
    );
  alu0_result_6_17_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0003,
      O => result_cmp_eq0003_0
    );
  result_cmp_eq00031 : X_LUT4
    generic map(
      INIT => X"2200",
      LOC => "SLICE_X40Y51"
    )
    port map (
      ADR0 => alu_mode(2),
      ADR1 => alu_mode(1),
      ADR2 => VCC,
      ADR3 => alu_mode(0),
      O => result_cmp_eq0003
    );
  alu0_result_11_81_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_11_81_12482,
      O => result_11_81_0
    );
  alu0_result_11_81_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_11_81_SW0_O,
      O => result_11_81_SW0_O_0
    );
  result_11_81_SW0 : X_LUT4
    generic map(
      INIT => X"BFFF",
      LOC => "SLICE_X37Y48"
    )
    port map (
      ADR0 => in2(3),
      ADR1 => in2(2),
      ADR2 => result_cmp_eq0005114_0,
      ADR3 => N62_0,
      O => result_11_81_SW0_O
    );
  alu0_result_5_78_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_5_78_12506,
      O => result_5_78_0
    );
  alu0_result_5_78_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N36,
      O => N36_0
    );
  result_1_61 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X45Y48"
    )
    port map (
      ADR0 => result_cmp_eq0010_0,
      ADR1 => result_cmp_eq0036_0,
      ADR2 => result_cmp_eq0003_0,
      ADR3 => result_cmp_eq0030_0,
      O => N36
    );
  alu0_result_13_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_15_12530,
      O => result_13_15_0
    );
  alu0_result_13_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_9_SW0_O,
      O => result_13_9_SW0_O_0
    );
  result_13_9_SW0 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X52Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N01,
      ADR2 => in1(12),
      ADR3 => VCC,
      O => result_13_9_SW0_O
    );
  alu0_result_6_57_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_6_57_12554,
      O => result_6_57_0
    );
  alu0_result_6_57_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N64,
      O => N64_0
    );
  result_6_141 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X38Y49"
    )
    port map (
      ADR0 => result_cmp_eq0025_0,
      ADR1 => result_cmp_eq0036_0,
      ADR2 => result_cmp_eq0015_0,
      ADR3 => result_cmp_eq0003_0,
      O => N64
    );
  alu0_result_6_58_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_6_58_12578,
      O => result_6_58_0
    );
  alu0_result_6_58_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_6_52_SW0_O,
      O => result_6_52_SW0_O_0
    );
  result_6_52_SW0 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X39Y49"
    )
    port map (
      ADR0 => in1(13),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => N25_0,
      O => result_6_52_SW0_O
    );
  alu0_result_11_89_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_11_89_12602,
      O => result_11_89_0
    );
  alu0_result_11_89_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_11_63_O,
      O => result_11_63_O_0
    );
  result_11_63 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X41Y48"
    )
    port map (
      ADR0 => result_cmp_eq0010_0,
      ADR1 => result_cmp_eq0015_0,
      ADR2 => in1(6),
      ADR3 => in1(1),
      O => result_11_63_O
    );
  alu0_result_13_25_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_25_12626,
      O => result_13_25_0
    );
  alu0_result_13_25_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N4,
      O => N4_0
    );
  result_10_31 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X40Y56"
    )
    port map (
      ADR0 => result_cmp_eq0018_0,
      ADR1 => N236_0,
      ADR2 => result_cmp_eq0003_0,
      ADR3 => N52_0,
      O => N4
    );
  alu0_result_13_53_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_53_12650,
      O => result_13_53_0
    );
  alu0_result_13_53_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq00301_SW1_O,
      O => result_cmp_eq00301_SW1_O_0
    );
  result_cmp_eq00301_SW1 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X31Y52"
    )
    port map (
      ADR0 => in2(3),
      ADR1 => in1(3),
      ADR2 => N61_0,
      ADR3 => in2(2),
      O => result_cmp_eq00301_SW1_O
    );
  alu0_result_7_55_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_7_55_12674,
      O => result_7_55_0
    );
  alu0_result_7_55_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_7_55_SW0_SW0_O,
      O => result_7_55_SW0_SW0_O_0
    );
  result_7_55_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X35Y54"
    )
    port map (
      ADR0 => result_cmp_eq0022_0,
      ADR1 => in1(4),
      ADR2 => in1(5),
      ADR3 => result_cmp_eq0023_0,
      O => result_7_55_SW0_SW0_O
    );
  alu0_result_14_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_14_15_12698,
      O => result_14_15_0
    );
  alu0_result_14_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_14_9_SW0_O,
      O => result_14_9_SW0_O_0
    );
  result_14_9_SW0 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X56Y53"
    )
    port map (
      ADR0 => in1(15),
      ADR1 => VCC,
      ADR2 => N2,
      ADR3 => VCC,
      O => result_14_9_SW0_O
    );
  alu0_result_12_96_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_12_96_12722,
      O => result_12_96_0
    );
  alu0_result_12_96_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq00221_SW1_O,
      O => result_cmp_eq00221_SW1_O_0
    );
  result_cmp_eq00221_SW1 : X_LUT4
    generic map(
      INIT => X"0040",
      LOC => "SLICE_X31Y53"
    )
    port map (
      ADR0 => in2(3),
      ADR1 => in1(10),
      ADR2 => N61_0,
      ADR3 => in2(2),
      O => result_cmp_eq00221_SW1_O
    );
  alu0_result_8_27_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_8_27_12746,
      O => result_8_27_0
    );
  alu0_result_8_27_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_8_9_SW0_O,
      O => result_8_9_SW0_O_0
    );
  result_8_9_SW0 : X_LUT4
    generic map(
      INIT => X"FFA0",
      LOC => "SLICE_X43Y46"
    )
    port map (
      ADR0 => in1(14),
      ADR1 => VCC,
      ADR2 => N19_0,
      ADR3 => result_8_7_0,
      O => result_8_9_SW0_O
    );
  alu0_result_14_35_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_14_35_12770,
      O => result_14_35_0
    );
  alu0_result_14_35_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0031,
      O => result_cmp_eq0031_0
    );
  result_cmp_eq00311 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X31Y50"
    )
    port map (
      ADR0 => result_cmp_eq00201251_0,
      ADR1 => N66_0,
      ADR2 => result_cmp_eq00201121_0,
      ADR3 => result_cmp_eq00201491_0,
      O => result_cmp_eq0031
    );
  alu0_result_13_69_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_69_12794,
      O => result_13_69_0
    );
  alu0_result_13_69_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0020149_12787,
      O => result_cmp_eq0020149_0
    );
  result_cmp_eq0020149 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X34Y57"
    )
    port map (
      ADR0 => in2(8),
      ADR1 => in2(5),
      ADR2 => in2(4),
      ADR3 => in2(6),
      O => result_cmp_eq0020149_12787
    );
  alu0_result_8_74_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_8_74_12818,
      O => result_8_74_0
    );
  alu0_result_8_74_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => N55,
      O => N55_0
    );
  result_0_141 : X_LUT4
    generic map(
      INIT => X"0880",
      LOC => "SLICE_X45Y42"
    )
    port map (
      ADR0 => alu_mode(2),
      ADR1 => result_cmp_eq0020_0,
      ADR2 => alu_mode(0),
      ADR3 => alu_mode(1),
      O => N55
    );
  alu0_result_14_67_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_14_67_12842,
      O => result_14_67_0
    );
  alu0_result_14_67_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_14_40_O,
      O => result_14_40_O_0
    );
  result_14_40 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X36Y53"
    )
    port map (
      ADR0 => in1(5),
      ADR1 => in1(4),
      ADR2 => result_cmp_eq0030_0,
      ADR3 => result_cmp_eq0029_0,
      O => result_14_40_O
    );
  alu0_N51_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N51,
      O => N51_0
    );
  alu0_N51_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0007,
      O => result_cmp_eq0007_0
    );
  result_cmp_eq00071 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X43Y47"
    )
    port map (
      ADR0 => result_cmp_eq0005114_0,
      ADR1 => N94_0,
      ADR2 => result_cmp_eq000519_0,
      ADR3 => result_cmp_eq000514_0,
      O => result_cmp_eq0007
    );
  alu0_result_15_52_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_52_12890,
      O => result_15_52_0
    );
  alu0_result_15_52_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq00261_SW2_O,
      O => result_cmp_eq00261_SW2_O_0
    );
  result_cmp_eq00261_SW2 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X33Y47"
    )
    port map (
      ADR0 => in1(9),
      ADR1 => in2(3),
      ADR2 => N61_0,
      ADR3 => in2(2),
      O => result_cmp_eq00261_SW2_O
    );
  alu0_result_15_61_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_61_12914,
      O => result_15_61_0
    );
  alu0_result_15_61_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_53_O,
      O => result_15_53_O_0
    );
  result_15_53 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X32Y47"
    )
    port map (
      ADR0 => in1(12),
      ADR1 => result_cmp_eq0023_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => result_15_53_O
    );
  alu0_result_0_134_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_0_134_12938,
      O => result_0_134_0
    );
  alu0_result_0_134_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_0_124_O,
      O => result_0_124_O_0
    );
  result_0_124 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X47Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => N4_0,
      ADR3 => in1(2),
      O => result_0_124_O
    );
  alu0_result_9_88_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_9_88_12962,
      O => result_9_88_0
    );
  alu0_result_9_88_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_9_77_SW0_O,
      O => result_9_77_SW0_O_0
    );
  result_9_77_SW0 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X32Y56"
    )
    port map (
      ADR0 => in1(2),
      ADR1 => result_cmp_eq0027_0,
      ADR2 => result_cmp_eq0023_0,
      ADR3 => in1(6),
      O => result_9_77_SW0_O
    );
  alu_result_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_result_0_F,
      O => result(0)
    );
  alu_result_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_0_114_O,
      O => result_0_114_O_0
    );
  result_0_114 : X_LUT4
    generic map(
      INIT => X"FFEC",
      LOC => "SLICE_X48Y49"
    )
    port map (
      ADR0 => x_mult0000(0),
      ADR1 => result_0_94_0,
      ADR2 => overflow_cmp_eq0000_0,
      ADR3 => N142_0,
      O => result_0_114_O
    );
  alu0_result_15_87_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_87_13010,
      O => result_15_87_0
    );
  alu0_result_15_87_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_74_O,
      O => result_15_74_O_0
    );
  result_15_74 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X33Y51"
    )
    port map (
      ADR0 => N206_0,
      ADR1 => N52_0,
      ADR2 => in1(6),
      ADR3 => result_cmp_eq0029_0,
      O => result_15_74_O
    );
  alu_result_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_result_1_F,
      O => result(1)
    );
  alu_result_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_1_93_O,
      O => result_1_93_O_0
    );
  result_1_93 : X_LUT4
    generic map(
      INIT => X"FFF8",
      LOC => "SLICE_X51Y49"
    )
    port map (
      ADR0 => x_mult0000(1),
      ADR1 => overflow_cmp_eq0000_0,
      ADR2 => result_1_73_0,
      ADR3 => N140_0,
      O => result_1_93_O
    );
  alu0_result_2_111_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_2_111_13058,
      O => result_2_111_0
    );
  alu0_result_2_111_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => N47,
      O => N47_0
    );
  result_6_111 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X40Y44"
    )
    port map (
      ADR0 => result_cmp_eq0036_0,
      ADR1 => result_cmp_eq0022_0,
      ADR2 => result_cmp_eq0018_0,
      ADR3 => result_cmp_eq0003_0,
      O => N47
    );
  alu_result_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_result_2_F,
      O => result(2)
    );
  alu_result_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_2_93_SW1_O,
      O => result_2_93_SW1_O_0
    );
  result_2_93_SW1 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X49Y48"
    )
    port map (
      ADR0 => result_2_9_0,
      ADR1 => result_2_73_0,
      ADR2 => result_2_78_0,
      ADR3 => N242_0,
      O => result_2_93_SW1_O
    );
  alu_result_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_result_3_F,
      O => result(3)
    );
  alu_result_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_3_145_SW0_O,
      O => result_3_145_SW0_O_0
    );
  result_3_145_SW0 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X51Y48"
    )
    port map (
      ADR0 => result_3_41_0,
      ADR1 => result_3_9_0,
      ADR2 => result_3_106_0,
      ADR3 => N170_0,
      O => result_3_145_SW0_O
    );
  alu0_result_10_125_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_10_125_13130,
      O => result_10_125_0
    );
  alu0_result_10_125_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_10_123_O,
      O => result_10_123_O_0
    );
  result_10_123 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X46Y55"
    )
    port map (
      ADR0 => in1(14),
      ADR1 => in1(13),
      ADR2 => N111_0,
      ADR3 => N7_0,
      O => result_10_123_O
    );
  alu_result_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_result_4_F,
      O => result(4)
    );
  alu_result_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_4_93_SW1_O,
      O => result_4_93_SW1_O_0
    );
  result_4_93_SW1 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X52Y50"
    )
    port map (
      ADR0 => result_4_73_0,
      ADR1 => N218_0,
      ADR2 => result_4_78_0,
      ADR3 => result_4_9_0,
      O => result_4_93_SW1_O
    );
  alu_result_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_result_10_F,
      O => result(10)
    );
  alu_result_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_10_213_SW0_O,
      O => result_10_213_SW0_O_0
    );
  result_10_213_SW0 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X48Y53"
    )
    port map (
      ADR0 => N274_0,
      ADR1 => N230_0,
      ADR2 => N148_0,
      ADR3 => result_10_125_0,
      O => result_10_213_SW0_O
    );
  alu0_result_10_149_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_10_149_13202,
      O => result_10_149_0
    );
  alu0_result_10_149_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0010,
      O => result_cmp_eq0010_0
    );
  result_cmp_eq00101 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X39Y54"
    )
    port map (
      ADR0 => result_cmp_eq000519_0,
      ADR1 => N881_0,
      ADR2 => result_cmp_eq000514_0,
      ADR3 => result_cmp_eq0005114_0,
      O => result_cmp_eq0010
    );
  alu0_result_10_190_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_10_190_13226,
      O => result_10_190_0
    );
  alu0_result_10_190_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_10_188_O,
      O => result_10_188_O_0
    );
  result_10_188 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X36Y54"
    )
    port map (
      ADR0 => in1(7),
      ADR1 => result_cmp_eq0017_0,
      ADR2 => in1(8),
      ADR3 => result_cmp_eq0018_0,
      O => result_10_188_O
    );
  alu0_result_10_169_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_10_169_13250,
      O => result_10_169_0
    );
  alu0_result_10_169_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_10_166_SW0_O,
      O => result_10_166_SW0_O_0
    );
  result_10_166_SW0 : X_LUT4
    generic map(
      INIT => X"DCDF",
      LOC => "SLICE_X38Y55"
    )
    port map (
      ADR0 => in1(5),
      ADR1 => N376_0,
      ADR2 => in2(0),
      ADR3 => in1(4),
      O => result_10_166_SW0_O
    );
  alu0_result_11_210_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_11_210_13274,
      O => result_11_210_0
    );
  alu0_result_11_210_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_11_174_O,
      O => result_11_174_O_0
    );
  result_11_174 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X32Y54"
    )
    port map (
      ADR0 => N52_0,
      ADR1 => N200_0,
      ADR2 => in1(4),
      ADR3 => result_cmp_eq0027_0,
      O => result_11_174_O
    );
  alu_result_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_result_5_F,
      O => result(5)
    );
  alu_result_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_5_93_O,
      O => result_5_93_O_0
    );
  result_5_93 : X_LUT4
    generic map(
      INIT => X"FEEE",
      LOC => "SLICE_X49Y49"
    )
    port map (
      ADR0 => N138_0,
      ADR1 => result_5_78_0,
      ADR2 => overflow_cmp_eq0000_0,
      ADR3 => x_mult0000(5),
      O => result_5_93_O
    );
  alu0_result_11_128_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_11_128_13322,
      O => result_11_128_0
    );
  alu0_result_11_128_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_11_102_O,
      O => result_11_102_O_0
    );
  result_11_102 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X41Y44"
    )
    port map (
      ADR0 => in1(7),
      ADR1 => in1(11),
      ADR2 => result_cmp_eq0020_0,
      ADR3 => result_cmp_eq0016_0,
      O => result_11_102_O
    );
  alu0_result_11_147_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_11_147_13346,
      O => result_11_147_0
    );
  alu0_result_11_147_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_11_146_O,
      O => result_11_146_O_0
    );
  result_11_146 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X30Y54"
    )
    port map (
      ADR0 => in1(2),
      ADR1 => result_cmp_eq0028_0,
      ADR2 => in1(3),
      ADR3 => result_cmp_eq0029_0,
      O => result_11_146_O
    );
  alu_result_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_result_11_F,
      O => result(11)
    );
  alu_result_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_11_245_SW0_SW0_O,
      O => result_11_245_SW0_SW0_O_0
    );
  result_11_245_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X48Y54"
    )
    port map (
      ADR0 => result_11_210_0,
      ADR1 => result_11_9_0,
      ADR2 => result_11_128_0,
      ADR3 => N234_0,
      O => result_11_245_SW0_SW0_O
    );
  alu0_result_6_123_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_6_123_13394,
      O => result_6_123_0
    );
  alu0_result_6_123_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_6_123_SW0_O,
      O => result_6_123_SW0_O_0
    );
  result_6_123_SW0 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X43Y54"
    )
    port map (
      ADR0 => in1(8),
      ADR1 => N7_0,
      ADR2 => N4_0,
      ADR3 => in1(9),
      O => result_6_123_SW0_O
    );
  alu0_result_6_108_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_6_108_13418,
      O => result_6_108_0
    );
  alu0_result_6_108_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_6_107_SW0_O,
      O => result_6_107_SW0_O_0
    );
  result_6_107_SW0 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X42Y47"
    )
    port map (
      ADR0 => N55_0,
      ADR1 => in1(6),
      ADR2 => N50_0,
      ADR3 => in1(3),
      O => result_6_107_SW0_O
    );
  alu0_result_12_122_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_12_122_13442,
      O => result_12_122_0
    );
  alu0_result_12_122_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_12_68_O,
      O => result_12_68_O_0
    );
  result_12_68 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X45Y50"
    )
    port map (
      ADR0 => result_cmp_eq0027_0,
      ADR1 => result_cmp_eq0026_0,
      ADR2 => in1(6),
      ADR3 => in1(5),
      O => result_12_68_O
    );
  alu_result_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_result_6_F,
      O => result(6)
    );
  alu_result_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_6_89_O,
      O => result_6_89_O_0
    );
  result_6_89 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X40Y53"
    )
    port map (
      ADR0 => result_6_80_0,
      ADR1 => result_6_58_0,
      ADR2 => result_6_9_0,
      ADR3 => N334_0,
      O => result_6_89_O
    );
  alu0_result_12_147_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_12_147_13490,
      O => result_12_147_0
    );
  alu0_result_12_147_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0008,
      O => result_cmp_eq0008_0
    );
  result_cmp_eq00081 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X38Y46"
    )
    port map (
      ADR0 => result_cmp_eq0005114_0,
      ADR1 => N76_0,
      ADR2 => result_cmp_eq000519_0,
      ADR3 => result_cmp_eq000514_0,
      O => result_cmp_eq0008
    );
  alu_result_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_result_12_F,
      O => result(12)
    );
  alu_result_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_12_229_SW0_O,
      O => result_12_229_SW0_O_0
    );
  result_12_229_SW0 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X60Y50"
    )
    port map (
      ADR0 => N250_0,
      ADR1 => result_12_9_0,
      ADR2 => result_12_122_0,
      ADR3 => N146_0,
      O => result_12_229_SW0_O
    );
  alu0_result_13_200_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_200_13538,
      O => result_13_200_0
    );
  alu0_result_13_200_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_200_SW0_O,
      O => result_13_200_SW0_O_0
    );
  result_13_200_SW0 : X_LUT4
    generic map(
      INIT => X"CF4F",
      LOC => "SLICE_X37Y49"
    )
    port map (
      ADR0 => in1(6),
      ADR1 => N312_0,
      ADR2 => result_cmp_eq0005114_0,
      ADR3 => N68_0,
      O => result_13_200_SW0_O
    );
  alu_result_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_result_7_F,
      O => result(7)
    );
  alu_result_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_7_86_SW0_O,
      O => result_7_86_SW0_O_0
    );
  result_7_86_SW0 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X41Y53"
    )
    port map (
      ADR0 => N136_0,
      ADR1 => N276_0,
      ADR2 => N366_0,
      ADR3 => result_7_9_0,
      O => result_7_86_SW0_O
    );
  alu0_result_7_170_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_7_170_13586,
      O => result_7_170_0
    );
  alu0_result_7_170_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_7_170_SW1_O,
      O => result_7_170_SW1_O_0
    );
  result_7_170_SW1 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X35Y51"
    )
    port map (
      ADR0 => result_cmp_eq000514_0,
      ADR1 => result_cmp_eq0036_0,
      ADR2 => result_cmp_eq0005114_0,
      ADR3 => result_cmp_eq000519_0,
      O => result_7_170_SW1_O
    );
  alu0_result_13_151_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_151_13610,
      O => result_13_151_0
    );
  alu0_result_13_151_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0009,
      O => result_cmp_eq0009_0
    );
  result_cmp_eq00091 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X38Y45"
    )
    port map (
      ADR0 => N74_0,
      ADR1 => result_cmp_eq000519_0,
      ADR2 => result_cmp_eq0005114_0,
      ADR3 => result_cmp_eq000514_0,
      O => result_cmp_eq0009
    );
  alu0_result_13_225_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_225_13634,
      O => result_13_225_0
    );
  alu0_result_13_225_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_167_SW0_O,
      O => result_13_167_SW0_O_0
    );
  result_13_167_SW0 : X_LUT4
    generic map(
      INIT => X"CECC",
      LOC => "SLICE_X40Y48"
    )
    port map (
      ADR0 => result_cmp_eq000519_0,
      ADR1 => result_13_211_0,
      ADR2 => N384_0,
      ADR3 => result_cmp_eq000514_0,
      O => result_13_167_SW0_O
    );
  alu_result_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_result_13_F,
      O => result(13)
    );
  alu_result_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y73",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_40_SW0_SW0_O,
      O => result_13_40_SW0_SW0_O_0
    );
  result_13_40_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"0111",
      LOC => "SLICE_X53Y73"
    )
    port map (
      ADR0 => result_13_15_0,
      ADR1 => N284_0,
      ADR2 => result_cmp_eq0036_0,
      ADR3 => result_13_225_0,
      O => result_13_40_SW0_SW0_O
    );
  alu0_result_8_126_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_8_126_13682,
      O => result_8_126_0
    );
  alu0_result_8_126_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_8_86_O,
      O => result_8_86_O_0
    );
  result_8_86 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X39Y45"
    )
    port map (
      ADR0 => result_cmp_eq0012_0,
      ADR1 => result_cmp_eq0013_0,
      ADR2 => in1(1),
      ADR3 => in1(0),
      O => result_8_86_O
    );
  alu0_result_8_162_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_8_162_13706,
      O => result_8_162_0
    );
  alu0_result_8_162_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_8_159_O,
      O => result_8_159_O_0
    );
  result_8_159 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X32Y50"
    )
    port map (
      ADR0 => result_cmp_eq0028_0,
      ADR1 => in1(3),
      ADR2 => result_cmp_eq0025_0,
      ADR3 => in1(0),
      O => result_8_159_O
    );
  alu0_result_14_223_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_14_223_13730,
      O => result_14_223_0
    );
  alu0_result_14_223_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_14_213_O,
      O => result_14_213_O_0
    );
  result_14_213 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X42Y46"
    )
    port map (
      ADR0 => result_cmp_eq0007_0,
      ADR1 => in1(1),
      ADR2 => result_cmp_eq0020_0,
      ADR3 => in1(14),
      O => result_14_213_O
    );
  alu0_result_9_102_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_9_102_13754,
      O => result_9_102_0
    );
  alu0_result_9_102_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_9_99_O,
      O => result_9_99_O_0
    );
  result_9_99 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X37Y44"
    )
    port map (
      ADR0 => in1(4),
      ADR1 => result_cmp_eq0025_0,
      ADR2 => result_cmp_eq0024_0,
      ADR3 => in1(5),
      O => result_9_99_O
    );
  alu0_result_8_178_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_8_178_13778,
      O => result_8_178_0
    );
  alu0_result_8_178_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_8_150_SW0_O,
      O => result_8_150_SW0_O_0
    );
  result_8_150_SW0 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X32Y51"
    )
    port map (
      ADR0 => N214_0,
      ADR1 => result_cmp_eq0023_0,
      ADR2 => N52_0,
      ADR3 => in1(5),
      O => result_8_150_SW0_O
    );
  alu0_result_14_192_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_14_192_13802,
      O => result_14_192_0
    );
  alu0_result_14_192_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0006,
      O => result_cmp_eq0006_0
    );
  result_cmp_eq00061 : X_LUT4
    generic map(
      INIT => X"0040",
      LOC => "SLICE_X45Y43"
    )
    port map (
      ADR0 => in2(2),
      ADR1 => N53_0,
      ADR2 => N61_0,
      ADR3 => in2(3),
      O => result_cmp_eq0006
    );
  alu0_result_15_113_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_113_13826,
      O => result_15_113_0
    );
  alu0_result_15_113_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0033,
      O => result_cmp_eq0033_0
    );
  result_cmp_eq00331 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X36Y48"
    )
    port map (
      ADR0 => result_cmp_eq00201121_0,
      ADR1 => result_cmp_eq00201491_0,
      ADR2 => N98_0,
      ADR3 => result_cmp_eq00201251_0,
      O => result_cmp_eq0033
    );
  alu_result_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_result_14_F,
      O => result(14)
    );
  alu_result_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_14_245_SW0_O,
      O => result_14_245_SW0_O_0
    );
  result_14_245_SW0 : X_LUT4
    generic map(
      INIT => X"0013",
      LOC => "SLICE_X56Y52"
    )
    port map (
      ADR0 => result_cmp_eq0036_0,
      ADR1 => result_14_15_0,
      ADR2 => result_14_223_0,
      ADR3 => N272_0,
      O => result_14_245_SW0_O
    );
  alu0_result_9_128_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_9_128_13874,
      O => result_9_128_0
    );
  alu0_result_9_128_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_9_67_O,
      O => result_9_67_O_0
    );
  result_9_67 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X49Y50"
    )
    port map (
      ADR0 => N111_0,
      ADR1 => in1(9),
      ADR2 => N55_0,
      ADR3 => in1(13),
      O => result_9_67_O
    );
  alu0_result_15_134_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_134_13898,
      O => result_15_134_0
    );
  alu0_result_15_134_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_114_O,
      O => result_15_114_O_0
    );
  result_15_114 : X_LUT4
    generic map(
      INIT => X"FFEA",
      LOC => "SLICE_X38Y48"
    )
    port map (
      ADR0 => result_15_113_0,
      ADR1 => in1(1),
      ADR2 => result_cmp_eq0034_0,
      ADR3 => N112_0,
      O => result_15_114_O
    );
  alu0_result_15_152_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_152_13922,
      O => result_15_152_0
    );
  alu0_result_15_152_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => N53,
      O => N53_0
    );
  result_cmp_eq0005123 : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "SLICE_X42Y42"
    )
    port map (
      ADR0 => result_cmp_eq0005114_0,
      ADR1 => VCC,
      ADR2 => result_cmp_eq000519_0,
      ADR3 => result_cmp_eq000514_0,
      O => N53
    );
  alu_result_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_result_9_F,
      O => result(9)
    );
  alu_result_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_9_213_SW0_O,
      O => result_9_213_SW0_O_0
    );
  result_9_213_SW0 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X54Y50"
    )
    port map (
      ADR0 => N38_0,
      ADR1 => N390_0,
      ADR2 => result_9_128_0,
      ADR3 => result_9_34_0,
      O => result_9_213_SW0_O
    );
  alu0_result_9_191_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_9_191_13970,
      O => result_9_191_0
    );
  alu0_result_9_191_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_9_170_SW0_O,
      O => result_9_170_SW0_O_0
    );
  result_9_170_SW0 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X41Y46"
    )
    port map (
      ADR0 => in1(2),
      ADR1 => result_cmp_eq0013_0,
      ADR2 => in1(0),
      ADR3 => result_cmp_eq0011_0,
      O => result_9_170_SW0_O
    );
  alu0_result_15_173_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_173_13994,
      O => result_15_173_0
    );
  alu0_result_15_173_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_147_O,
      O => result_15_147_O_0
    );
  result_15_147 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X42Y44"
    )
    port map (
      ADR0 => result_cmp_eq0013_0,
      ADR1 => result_cmp_eq0012_0,
      ADR2 => in1(8),
      ADR3 => in1(7),
      O => result_15_147_O
    );
  alu0_result_15_246_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_246_14018,
      O => result_15_246_0
    );
  alu0_result_15_246_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_226_O,
      O => result_15_226_O_0
    );
  result_15_226 : X_LUT4
    generic map(
      INIT => X"FEEE",
      LOC => "SLICE_X44Y46"
    )
    port map (
      ADR0 => N114_0,
      ADR1 => result_15_220_0,
      ADR2 => in1(2),
      ADR3 => result_cmp_eq0007_0,
      O => result_15_226_O
    );
  alu_result_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu_result_15_F,
      O => result(15)
    );
  alu_result_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_23_SW0_O,
      O => result_15_23_SW0_O_0
    );
  result_15_23_SW0 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X58Y50"
    )
    port map (
      ADR0 => result_15_246_0,
      ADR1 => N256_0,
      ADR2 => result_15_134_0,
      ADR3 => N152_0,
      O => result_15_23_SW0_O
    );
  alu0_result_15_189_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_189_14066,
      O => result_15_189_0
    );
  alu0_result_15_189_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_189_SW0_O,
      O => result_15_189_SW0_O_0
    );
  result_15_189_SW0 : X_LUT4
    generic map(
      INIT => X"FFAF",
      LOC => "SLICE_X44Y42"
    )
    port map (
      ADR0 => in2(1),
      ADR1 => VCC,
      ADR2 => in2(0),
      ADR3 => in2(2),
      O => result_15_189_SW0_O
    );
  alu0_result_15_199_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_199_14090,
      O => result_15_199_0
    );
  alu0_result_15_199_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_186_O,
      O => result_15_186_O_0
    );
  result_15_186 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X44Y47"
    )
    port map (
      ADR0 => in1(5),
      ADR1 => in1(6),
      ADR2 => result_cmp_eq0011_0,
      ADR3 => result_cmp_eq0010_0,
      O => result_15_186_O
    );
  alu0_N88_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N88,
      O => N88_0
    );
  alu0_N88_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0020151_SW0_O,
      O => result_cmp_eq0020151_SW0_O_0
    );
  result_cmp_eq0020151_SW0 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X39Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in2(3),
      ADR2 => VCC,
      ADR3 => in2(2),
      O => result_cmp_eq0020151_SW0_O
    );
  alu0_N86_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N86,
      O => N86_0
    );
  alu0_N86_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0020151_SW1_O,
      O => result_cmp_eq0020151_SW1_O_0
    );
  result_cmp_eq0020151_SW1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X31Y51"
    )
    port map (
      ADR0 => in2(2),
      ADR1 => VCC,
      ADR2 => in2(3),
      ADR3 => VCC,
      O => result_cmp_eq0020151_SW1_O
    );
  alu0_N174_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => N174,
      O => N174_0
    );
  alu0_N174_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_2_106_O,
      O => result_2_106_O_0
    );
  result_2_106 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X46Y44"
    )
    port map (
      ADR0 => in1(4),
      ADR1 => N4_0,
      ADR2 => in1(2),
      ADR3 => N55_0,
      O => result_2_106_O
    );
  alu0_N142_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N142,
      O => N142_0
    );
  alu0_N142_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_0_99_O,
      O => result_0_99_O_0
    );
  result_0_99 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X43Y48"
    )
    port map (
      ADR0 => N32_0,
      ADR1 => in1(9),
      ADR2 => N28_0,
      ADR3 => in1(8),
      O => result_0_99_O
    );
  alu0_N384_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N384,
      O => N384_0
    );
  alu0_N384_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_178_SW0_O,
      O => result_13_178_SW0_O_0
    );
  result_13_178_SW0 : X_LUT4
    generic map(
      INIT => X"F531",
      LOC => "SLICE_X34Y48"
    )
    port map (
      ADR0 => in1(10),
      ADR1 => in1(11),
      ADR2 => N98_0,
      ADR3 => N96_0,
      O => result_13_178_SW0_O
    );
  alu0_N52_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N52,
      O => N52_0
    );
  alu0_N52_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq00201491,
      O => result_cmp_eq00201491_0
    );
  result_cmp_eq0020149_1 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X35Y57"
    )
    port map (
      ADR0 => in2(6),
      ADR1 => in2(4),
      ADR2 => in2(5),
      ADR3 => in2(8),
      O => result_cmp_eq00201491
    );
  alu0_N380_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N380,
      O => N380_0
    );
  alu0_N380_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_1_7_O,
      O => result_1_7_O_0
    );
  result_1_7 : X_LUT4
    generic map(
      INIT => X"44CC",
      LOC => "SLICE_X53Y49"
    )
    port map (
      ADR0 => in1(1),
      ADR1 => result_cmp_eq0002_0,
      ADR2 => VCC,
      ADR3 => in2(1),
      O => result_1_7_O
    );
  alu0_N128_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N128,
      O => N128_0
    );
  alu0_N128_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_0_9_SW0_O,
      O => result_0_9_SW0_O_0
    );
  result_0_9_SW0 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X50Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => result_or0000_0,
      ADR2 => result_addsub0000(0),
      ADR3 => VCC,
      O => result_0_9_SW0_O
    );
  alu0_N156_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N156,
      O => N156_0
    );
  alu0_N156_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_1_411_SW0_O,
      O => result_1_411_SW0_O_0
    );
  result_1_411_SW0 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X52Y49"
    )
    port map (
      ADR0 => in1(10),
      ADR1 => N01,
      ADR2 => in1(0),
      ADR3 => N32_0,
      O => result_1_411_SW0_O
    );
  alu0_N272_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N272,
      O => N272_0
    );
  alu0_N272_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_14_21_O,
      O => result_14_21_O_0
    );
  result_14_21 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X51Y52"
    )
    port map (
      ADR0 => in1(13),
      ADR1 => N01,
      ADR2 => VCC,
      ADR3 => VCC,
      O => result_14_21_O
    );
  alu0_N242_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N242,
      O => N242_0
    );
  alu0_N242_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_2_25_SW0_O,
      O => result_2_25_SW0_O_0
    );
  result_2_25_SW0 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X48Y48"
    )
    port map (
      ADR0 => in1(10),
      ADR1 => N28_0,
      ADR2 => in1(11),
      ADR3 => N32_0,
      O => result_2_25_SW0_O
    );
  alu0_N170_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => N170,
      O => N170_0
    );
  alu0_N170_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_3_111_O,
      O => result_3_111_O_0
    );
  result_3_111 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X37Y45"
    )
    port map (
      ADR0 => N7_0,
      ADR1 => in1(6),
      ADR2 => in1(0),
      ADR3 => N50_0,
      O => result_3_111_O
    );
  alu0_N230_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N230,
      O => N230_0
    );
  alu0_N230_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_10_211_O,
      O => result_10_211_O_0
    );
  result_10_211 : X_LUT4
    generic map(
      INIT => X"8880",
      LOC => "SLICE_X50Y52"
    )
    port map (
      ADR0 => result_cmp_eq0020_0,
      ADR1 => in1(10),
      ADR2 => result_cmp_eq0003_0,
      ADR3 => result_cmp_eq0036_0,
      O => result_10_211_O
    );
  alu0_N218_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N218,
      O => N218_0
    );
  alu0_N218_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_4_25_O,
      O => result_4_25_O_0
    );
  result_4_25 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X55Y51"
    )
    port map (
      ADR0 => N28_0,
      ADR1 => in1(12),
      ADR2 => in1(11),
      ADR3 => N25_0,
      O => result_4_25_O
    );
  alu0_N150_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N150,
      O => N150_0
    );
  alu0_N150_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_3_78_O,
      O => result_3_78_O_0
    );
  result_3_78 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X45Y49"
    )
    port map (
      ADR0 => in1(9),
      ADR1 => N19_0,
      ADR2 => N15_0,
      ADR3 => in1(8),
      O => result_3_78_O
    );
  alu0_N234_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N234,
      O => N234_0
    );
  alu0_N234_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_11_41_O,
      O => result_11_41_O_0
    );
  result_11_41 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X47Y55"
    )
    port map (
      ADR0 => N7_0,
      ADR1 => N111_0,
      ADR2 => in1(15),
      ADR3 => in1(14),
      O => result_11_41_O
    );
  alu0_N250_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N250,
      O => N250_0
    );
  alu0_N250_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_12_35_O,
      O => result_12_35_O_0
    );
  result_12_35 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X47Y51"
    )
    port map (
      ADR0 => in1(15),
      ADR1 => N7_0,
      ADR2 => N2,
      ADR3 => in1(13),
      O => result_12_35_O
    );
  alu0_N292_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => N292,
      O => N292_0
    );
  alu0_N292_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => N348,
      O => N348_0
    );
  result_7_40_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"EEFF",
      LOC => "SLICE_X35Y58"
    )
    port map (
      ADR0 => in2(1),
      ADR1 => in2(3),
      ADR2 => VCC,
      ADR3 => in2(2),
      O => N348
    );
  alu0_N224_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N224,
      O => N224_0
    );
  alu0_N224_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N316,
      O => N316_0
    );
  result_13_53_SW0 : X_LUT4
    generic map(
      INIT => X"77FF",
      LOC => "SLICE_X34Y55"
    )
    port map (
      ADR0 => result_cmp_eq00201121_0,
      ADR1 => result_cmp_eq00201491_0,
      ADR2 => VCC,
      ADR3 => result_cmp_eq00201251_0,
      O => N316
    );
  alu0_N228_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N228,
      O => N228_0
    );
  alu0_N228_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_12_101_O,
      O => result_12_101_O_0
    );
  result_12_101 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X32Y55"
    )
    port map (
      ADR0 => result_cmp_eq0020_0,
      ADR1 => in1(9),
      ADR2 => result_cmp_eq0023_0,
      ADR3 => in1(12),
      O => result_12_101_O
    );
  alu0_N394_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N394,
      O => N394_0
    );
  alu0_N394_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N94,
      O => N94_0
    );
  result_cmp_eq00231_SW0 : X_LUT4
    generic map(
      INIT => X"FDFF",
      LOC => "SLICE_X36Y47"
    )
    port map (
      ADR0 => in2(1),
      ADR1 => in2(3),
      ADR2 => in2(2),
      ADR3 => in2(0),
      O => N94
    );
  alu0_N366_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N366,
      O => N366_0
    );
  alu0_N366_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_7_101_SW0_O,
      O => result_7_101_SW0_O_0
    );
  result_7_101_SW0 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X34Y53"
    )
    port map (
      ADR0 => in1(10),
      ADR1 => N7_0,
      ADR2 => in1(13),
      ADR3 => N19_0,
      O => result_7_101_SW0_O
    );
  alu0_N338_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => N338,
      O => N338_0
    );
  alu0_N338_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y58",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_58_SW0_O,
      O => result_13_58_SW0_O_0
    );
  result_13_58_SW0 : X_LUT4
    generic map(
      INIT => X"DCDF",
      LOC => "SLICE_X32Y58"
    )
    port map (
      ADR0 => in1(4),
      ADR1 => N354_0,
      ADR2 => in2(0),
      ADR3 => in1(5),
      O => result_13_58_SW0_O
    );
  alu0_N38_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N38,
      O => N38_0
    );
  alu0_N38_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_or0000,
      O => result_or0000_0
    );
  result_or00001 : X_LUT4
    generic map(
      INIT => X"1212",
      LOC => "SLICE_X54Y48"
    )
    port map (
      ADR0 => alu_mode(0),
      ADR1 => alu_mode(2),
      ADR2 => alu_mode(1),
      ADR3 => VCC,
      O => result_or0000
    );
  alu0_N158_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N158,
      O => N158_0
    );
  alu0_N158_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_9_7_O,
      O => result_9_7_O_0
    );
  result_9_7 : X_LUT4
    generic map(
      INIT => X"4C4C",
      LOC => "SLICE_X45Y46"
    )
    port map (
      ADR0 => in2(9),
      ADR1 => result_cmp_eq0002_0,
      ADR2 => in1(9),
      ADR3 => VCC,
      O => result_9_7_O
    );
  alu0_N256_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N256,
      O => N256_0
    );
  alu0_N256_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_7_O,
      O => result_15_7_O_0
    );
  result_15_7 : X_LUT4
    generic map(
      INIT => X"2A2A",
      LOC => "SLICE_X58Y51"
    )
    port map (
      ADR0 => result_cmp_eq0002_0,
      ADR1 => in1(15),
      ADR2 => in2(15),
      ADR3 => VCC,
      O => result_15_7_O
    );
  alu0_N390_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N390,
      O => N390_0
    );
  alu0_N390_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_9_51_O,
      O => result_9_51_O_0
    );
  result_9_51 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X40Y46"
    )
    port map (
      ADR0 => in1(12),
      ADR1 => N7_0,
      ADR2 => in1(11),
      ADR3 => N4_0,
      O => result_9_51_O
    );
  alu0_N332_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N332,
      O => N332_0
    );
  alu0_N332_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_12_164_O,
      O => result_12_164_O_0
    );
  result_12_164 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X39Y50"
    )
    port map (
      ADR0 => result_cmp_eq0013_0,
      ADR1 => result_cmp_eq0012_0,
      ADR2 => in1(4),
      ADR3 => in1(5),
      O => result_12_164_O
    );
  alu0_N281_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => N281,
      O => N281_0
    );
  alu0_N281_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_4_106_O,
      O => result_4_106_O_0
    );
  result_4_106 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X44Y44"
    )
    port map (
      ADR0 => in1(4),
      ADR1 => N4_0,
      ADR2 => in1(6),
      ADR3 => N55_0,
      O => result_4_106_O
    );
  alu0_N26_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => N26,
      O => N26_0
    );
  alu0_N26_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_5_106_O,
      O => result_5_106_O_0
    );
  result_5_106 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X48Y44"
    )
    port map (
      ADR0 => N4_0,
      ADR1 => N55_0,
      ADR2 => in1(7),
      ADR3 => in1(5),
      O => result_5_106_O
    );
  alu0_N116_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => N116,
      O => N116_0
    );
  alu0_N116_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => N49,
      O => N49_0
    );
  result_6_121 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X43Y45"
    )
    port map (
      ADR0 => result_cmp_eq0024_0,
      ADR1 => result_cmp_eq0016_0,
      ADR2 => result_cmp_eq0036_0,
      ADR3 => result_cmp_eq0003_0,
      O => N49
    );
  alu0_N138_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N138,
      O => N138_0
    );
  alu0_N138_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_5_73_O,
      O => result_5_73_O_0
    );
  result_5_73 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X49Y46"
    )
    port map (
      ADR0 => N28_0,
      ADR1 => in1(12),
      ADR2 => in1(13),
      ADR3 => N25_0,
      O => result_5_73_O
    );
  alu0_N184_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N184,
      O => N184_0
    );
  alu0_N184_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_11_158_O,
      O => result_11_158_O_0
    );
  result_11_158 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X30Y56"
    )
    port map (
      ADR0 => result_cmp_eq0020_0,
      ADR1 => in1(11),
      ADR2 => in1(8),
      ADR3 => result_cmp_eq0023_0,
      O => result_11_158_O
    );
  alu0_N302_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N302,
      O => N302_0
    );
  alu0_N302_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_12_152_SW0_SW0_O,
      O => result_12_152_SW0_SW0_O_0
    );
  result_12_152_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"BFBF",
      LOC => "SLICE_X32Y52"
    )
    port map (
      ADR0 => in2(3),
      ADR1 => in2(1),
      ADR2 => in2(2),
      ADR3 => VCC,
      O => result_12_152_SW0_SW0_O
    );
  alu0_N334_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N334,
      O => N334_0
    );
  alu0_N334_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_6_81_O,
      O => result_6_81_O_0
    );
  result_6_81 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X41Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => N111_0,
      ADR3 => in1(10),
      O => result_6_81_O
    );
  alu0_N340_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => N340,
      O => N340_0
    );
  alu0_N340_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_101_SW0_O,
      O => result_13_101_SW0_O_0
    );
  result_13_101_SW0 : X_LUT4
    generic map(
      INIT => X"CEDF",
      LOC => "SLICE_X34Y59"
    )
    port map (
      ADR0 => in2(0),
      ADR1 => N348_0,
      ADR2 => in1(8),
      ADR3 => in1(9),
      O => result_13_101_SW0_O
    );
  alu0_N136_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N136,
      O => N136_0
    );
  alu0_N136_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_7_127_O,
      O => result_7_127_O_0
    );
  result_7_127 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X43Y50"
    )
    port map (
      ADR0 => in1(15),
      ADR1 => in1(14),
      ADR2 => N28_0,
      ADR3 => N25_0,
      O => result_7_127_O
    );
  alu0_N236_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N236,
      O => N236_0
    );
  alu0_N236_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N61,
      O => N61_0
    );
  result_cmp_eq000611 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X39Y55"
    )
    port map (
      ADR0 => in2(1),
      ADR1 => in2(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => N61
    );
  alu0_N130_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N130,
      O => N130_0
    );
  alu0_N130_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_12_192_O,
      O => result_12_192_O_0
    );
  result_12_192 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X32Y53"
    )
    port map (
      ADR0 => in1(12),
      ADR1 => result_cmp_eq0018_0,
      ADR2 => result_cmp_eq0020_0,
      ADR3 => in1(10),
      O => result_12_192_O
    );
  alu0_N304_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N304,
      O => N304_0
    );
  alu0_N304_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_12_197_SW0_SW0_O,
      O => result_12_197_SW0_SW0_O_0
    );
  result_12_197_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FF77",
      LOC => "SLICE_X30Y51"
    )
    port map (
      ADR0 => in2(2),
      ADR1 => in2(3),
      ADR2 => VCC,
      ADR3 => in2(1),
      O => result_12_197_SW0_SW0_O
    );
  alu0_N198_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N198,
      O => N198_0
    );
  alu0_N198_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N62,
      O => N62_0
    );
  result_cmp_eq000531 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X40Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in2(0),
      ADR2 => VCC,
      ADR3 => in2(1),
      O => N62
    );
  alu0_N118_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N118,
      O => N118_0
    );
  alu0_N118_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N320,
      O => N320_0
    );
  result_12_179_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"7F7F",
      LOC => "SLICE_X38Y53"
    )
    port map (
      ADR0 => result_cmp_eq000519_0,
      ADR1 => result_cmp_eq000514_0,
      ADR2 => result_cmp_eq0005114_0,
      ADR3 => VCC,
      O => N320
    );
  alu0_N178_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N178,
      O => N178_0
    );
  alu0_N178_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_14_80_O,
      O => result_14_80_O_0
    );
  result_14_80 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X37Y52"
    )
    port map (
      ADR0 => in1(11),
      ADR1 => result_cmp_eq0034_0,
      ADR2 => in1(0),
      ADR3 => result_cmp_eq0023_0,
      O => result_14_80_O
    );
  alu0_N284_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N284,
      O => N284_0
    );
  alu0_N284_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_127_SW0_O,
      O => result_13_127_SW0_O_0
    );
  result_13_127_SW0 : X_LUT4
    generic map(
      INIT => X"F8F0",
      LOC => "SLICE_X41Y56"
    )
    port map (
      ADR0 => result_cmp_eq0020112_0,
      ADR1 => N408_0,
      ADR2 => N388_0,
      ADR3 => result_cmp_eq0020125_0,
      O => result_13_127_SW0_O
    );
  alu0_result_cmp_eq0020_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0020,
      O => result_cmp_eq0020_0
    );
  alu0_result_cmp_eq0020_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N921,
      O => N921_0
    );
  result_cmp_eq00203_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X38Y56"
    )
    port map (
      ADR0 => in2(0),
      ADR1 => in2(3),
      ADR2 => in2(2),
      ADR3 => in2(1),
      O => N921
    );
  alu0_result_cmp_eq0022_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0022,
      O => result_cmp_eq0022_0
    );
  alu0_result_cmp_eq0022_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => N266,
      O => N266_0
    );
  result_cmp_eq00221_SW2 : X_LUT4
    generic map(
      INIT => X"FEFF",
      LOC => "SLICE_X38Y44"
    )
    port map (
      ADR0 => in2(3),
      ADR1 => in2(0),
      ADR2 => in2(2),
      ADR3 => in2(1),
      O => N266
    );
  alu0_result_cmp_eq0030_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0030,
      O => result_cmp_eq0030_0
    );
  alu0_result_cmp_eq0030_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => N80,
      O => N80_0
    );
  result_cmp_eq00141_SW0 : X_LUT4
    generic map(
      INIT => X"FBFF",
      LOC => "SLICE_X36Y44"
    )
    port map (
      ADR0 => in2(0),
      ADR1 => in2(3),
      ADR2 => in2(2),
      ADR3 => in2(1),
      O => N80
    );
  alu0_result_cmp_eq0024_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0024,
      O => result_cmp_eq0024_0
    );
  alu0_result_cmp_eq0024_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N76,
      O => N76_0
    );
  result_cmp_eq00241_SW0 : X_LUT4
    generic map(
      INIT => X"FFEF",
      LOC => "SLICE_X34Y51"
    )
    port map (
      ADR0 => in2(1),
      ADR1 => in2(3),
      ADR2 => in2(2),
      ADR3 => in2(0),
      O => N76
    );
  alu0_result_cmp_eq0032_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0032,
      O => result_cmp_eq0032_0
    );
  alu0_result_cmp_eq0032_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N100,
      O => N100_0
    );
  result_cmp_eq00161_SW0 : X_LUT4
    generic map(
      INIT => X"FDFF",
      LOC => "SLICE_X30Y48"
    )
    port map (
      ADR0 => in2(3),
      ADR1 => in2(0),
      ADR2 => in2(1),
      ADR3 => in2(2),
      O => N100
    );
  alu0_result_cmp_eq0017_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0017,
      O => result_cmp_eq0017_0
    );
  alu0_result_cmp_eq0017_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N98,
      O => N98_0
    );
  result_cmp_eq00171_SW0 : X_LUT4
    generic map(
      INIT => X"FF7F",
      LOC => "SLICE_X36Y55"
    )
    port map (
      ADR0 => in2(0),
      ADR1 => in2(2),
      ADR2 => in2(3),
      ADR3 => in2(1),
      O => N98
    );
  alu0_result_cmp_eq0025_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0025,
      O => result_cmp_eq0025_0
    );
  alu0_result_cmp_eq0025_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N74,
      O => N74_0
    );
  result_cmp_eq00251_SW0 : X_LUT4
    generic map(
      INIT => X"FFF7",
      LOC => "SLICE_X32Y49"
    )
    port map (
      ADR0 => in2(2),
      ADR1 => in2(0),
      ADR2 => in2(1),
      ADR3 => in2(3),
      O => N74
    );
  alu0_result_cmp_eq0034_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0034,
      O => result_cmp_eq0034_0
    );
  alu0_result_cmp_eq0034_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N96,
      O => N96_0
    );
  result_cmp_eq00181_SW0 : X_LUT4
    generic map(
      INIT => X"BFFF",
      LOC => "SLICE_X36Y49"
    )
    port map (
      ADR0 => in2(0),
      ADR1 => in2(1),
      ADR2 => in2(2),
      ADR3 => in2(3),
      O => N96
    );
  alu0_result_cmp_eq0026_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0026,
      O => result_cmp_eq0026_0
    );
  alu0_result_cmp_eq0026_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N881,
      O => N881_0
    );
  result_cmp_eq00101_SW0 : X_LUT4
    generic map(
      INIT => X"FDFF",
      LOC => "SLICE_X37Y55"
    )
    port map (
      ADR0 => in2(1),
      ADR1 => in2(0),
      ADR2 => in2(3),
      ADR3 => in2(2),
      O => N881
    );
  alu0_result_cmp_eq0018_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0018,
      O => result_cmp_eq0018_0
    );
  alu0_result_cmp_eq0018_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq000519_15379,
      O => result_cmp_eq000519_0
    );
  result_cmp_eq000519 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X40Y55"
    )
    port map (
      ADR0 => in2(11),
      ADR1 => in2(7),
      ADR2 => in2(10),
      ADR3 => in2(9),
      O => result_cmp_eq000519_15379
    );
  alu0_result_cmp_eq0027_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0027,
      O => result_cmp_eq0027_0
    );
  alu0_result_cmp_eq0027_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N72,
      O => N72_0
    );
  result_cmp_eq00271_SW0 : X_LUT4
    generic map(
      INIT => X"F7FF",
      LOC => "SLICE_X35Y55"
    )
    port map (
      ADR0 => in2(1),
      ADR1 => in2(2),
      ADR2 => in2(3),
      ADR3 => in2(0),
      O => N72
    );
  alu0_result_cmp_eq0028_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0028,
      O => result_cmp_eq0028_0
    );
  alu0_result_cmp_eq0028_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N70,
      O => N70_0
    );
  result_cmp_eq00281_SW0 : X_LUT4
    generic map(
      INIT => X"FFFD",
      LOC => "SLICE_X35Y52"
    )
    port map (
      ADR0 => in2(3),
      ADR1 => in2(2),
      ADR2 => in2(1),
      ADR3 => in2(0),
      O => N70
    );
  alu0_result_cmp_eq0029_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0029,
      O => result_cmp_eq0029_0
    );
  alu0_result_cmp_eq0029_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => N68,
      O => N68_0
    );
  result_cmp_eq00291_SW0 : X_LUT4
    generic map(
      INIT => X"FDFF",
      LOC => "SLICE_X37Y53"
    )
    port map (
      ADR0 => in2(3),
      ADR1 => in2(2),
      ADR2 => in2(1),
      ADR3 => in2(0),
      O => N68
    );
  alu0_N312_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N312,
      O => N312_0
    );
  alu0_N312_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N66,
      O => N66_0
    );
  result_cmp_eq00311_SW0 : X_LUT4
    generic map(
      INIT => X"DFFF",
      LOC => "SLICE_X35Y48"
    )
    port map (
      ADR0 => in2(3),
      ADR1 => in2(2),
      ADR2 => in2(1),
      ADR3 => in2(0),
      O => N66
    );
  alu0_N134_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N134,
      O => N134_0
    );
  alu0_N134_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_14_152_O,
      O => result_14_152_O_0
    );
  result_14_152 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X43Y49"
    )
    port map (
      ADR0 => result_cmp_eq0010_0,
      ADR1 => in1(5),
      ADR2 => in1(4),
      ADR3 => result_cmp_eq0011_0,
      O => result_14_152_O
    );
  alu0_N114_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N114,
      O => N114_0
    );
  alu0_N114_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_225_SW0_SW0_O,
      O => result_15_225_SW0_SW0_O_0
    );
  result_15_225_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"DFFF",
      LOC => "SLICE_X45Y47"
    )
    port map (
      ADR0 => result_cmp_eq0005114_0,
      ADR1 => in2(3),
      ADR2 => result_cmp_eq000519_0,
      ADR3 => result_cmp_eq000514_0,
      O => result_15_225_SW0_SW0_O
    );
  alu0_N406_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N406,
      O => N406_0
    );
  alu0_N406_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0005114_15547,
      O => result_cmp_eq0005114_0
    );
  result_cmp_eq0005114 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X43Y57"
    )
    port map (
      ADR0 => in2(5),
      ADR1 => in2(4),
      ADR2 => in2(6),
      ADR3 => in2(8),
      O => result_cmp_eq0005114_15547
    );
  alu0_N404_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N404,
      O => N404_0
    );
  alu0_N404_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq000514_15571,
      O => result_cmp_eq000514_0
    );
  result_cmp_eq000514 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X44Y54"
    )
    port map (
      ADR0 => in2(15),
      ADR1 => in2(13),
      ADR2 => in2(14),
      ADR3 => in2(12),
      O => result_cmp_eq000514_15571
    );
  alu0_N216_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N216,
      O => N216_0
    );
  alu0_N216_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_1_111_O,
      O => result_1_111_O_0
    );
  result_1_111 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X46Y46"
    )
    port map (
      ADR0 => in1(13),
      ADR1 => N7_0,
      ADR2 => in1(4),
      ADR3 => N48_0,
      O => result_1_111_O
    );
  alu0_N140_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N140,
      O => N140_0
    );
  alu0_N140_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_1_78_O,
      O => result_1_78_O_0
    );
  result_1_78 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X44Y49"
    )
    port map (
      ADR0 => N25_0,
      ADR1 => N28_0,
      ADR2 => in1(8),
      ADR3 => in1(9),
      O => result_1_78_O
    );
  alu0_N388_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N388,
      O => N388_0
    );
  alu0_N388_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_80_O,
      O => result_13_80_O_0
    );
  result_13_80 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X37Y57"
    )
    port map (
      ADR0 => N394_0,
      ADR1 => result_cmp_eq0020125_0,
      ADR2 => result_cmp_eq0020112_0,
      ADR3 => result_cmp_eq00201491_0,
      O => result_13_80_O
    );
  alu0_N408_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N408,
      O => N408_0
    );
  alu0_N408_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_113_SW0_O,
      O => result_13_113_SW0_O_0
    );
  result_13_113_SW0 : X_LUT4
    generic map(
      INIT => X"BB0B",
      LOC => "SLICE_X39Y56"
    )
    port map (
      ADR0 => N921_0,
      ADR1 => in1(13),
      ADR2 => in1(1),
      ADR3 => N100_0,
      O => result_13_113_SW0_O
    );
  alu0_N342_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N342,
      O => N342_0
    );
  alu0_N342_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq00201121,
      O => result_cmp_eq00201121_0
    );
  result_cmp_eq0020112_1 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X36Y57"
    )
    port map (
      ADR0 => in2(12),
      ADR1 => in2(13),
      ADR2 => in2(15),
      ADR3 => in2(14),
      O => result_cmp_eq00201121
    );
  alu0_N402_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N402,
      O => N402_0
    );
  alu0_N402_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0020112_15714,
      O => result_cmp_eq0020112_0
    );
  result_cmp_eq0020112 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X37Y56"
    )
    port map (
      ADR0 => in2(14),
      ADR1 => in2(15),
      ADR2 => in2(13),
      ADR3 => in2(12),
      O => result_cmp_eq0020112_15714
    );
  alu0_N258_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N258,
      O => N258_0
    );
  alu0_N258_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_0_22_O,
      O => result_0_22_O_0
    );
  result_0_22 : X_LUT4
    generic map(
      INIT => X"0808",
      LOC => "SLICE_X37Y46"
    )
    port map (
      ADR0 => result_cmp_eq0003_0,
      ADR1 => in2(0),
      ADR2 => in2(1),
      ADR3 => VCC,
      O => result_0_22_O
    );
  alu0_N252_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => N252,
      O => N252_0
    );
  alu0_N252_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_8_201_SW0_O,
      O => result_8_201_SW0_O_0
    );
  result_8_201_SW0 : X_LUT4
    generic map(
      INIT => X"0011",
      LOC => "SLICE_X42Y43"
    )
    port map (
      ADR0 => N364_0,
      ADR1 => result_8_74_0,
      ADR2 => VCC,
      ADR3 => result_8_126_0,
      O => result_8_201_SW0_O
    );
  alu0_N276_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N276,
      O => N276_0
    );
  alu0_N276_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_7_113_O,
      O => result_7_113_O_0
    );
  result_7_113 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X42Y52"
    )
    port map (
      ADR0 => in1(7),
      ADR1 => in1(11),
      ADR2 => N55_0,
      ADR3 => N111_0,
      O => result_7_113_O
    );
  alu0_result_14_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_14_7_15818,
      O => result_14_7_0
    );
  alu0_result_14_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_10_7_15810,
      O => result_10_7_0
    );
  result_10_7 : X_LUT4
    generic map(
      INIT => X"4C4C",
      LOC => "SLICE_X53Y52"
    )
    port map (
      ADR0 => in1(10),
      ADR1 => result_cmp_eq0002_0,
      ADR2 => in2(10),
      ADR3 => VCC,
      O => result_10_7_15810
    );
  alu0_N386_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => N386,
      O => N386_0
    );
  alu0_N386_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_5_7_15834,
      O => result_5_7_0
    );
  result_5_7 : X_LUT4
    generic map(
      INIT => X"0AAA",
      LOC => "SLICE_X37Y54"
    )
    port map (
      ADR0 => result_cmp_eq0002_0,
      ADR1 => VCC,
      ADR2 => in2(5),
      ADR3 => in1(5),
      O => result_5_7_15834
    );
  alu0_result_0_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_0_7_15866,
      O => result_0_7_0
    );
  alu0_result_0_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_7_15858,
      O => result_13_7_0
    );
  result_13_7 : X_LUT4
    generic map(
      INIT => X"0AAA",
      LOC => "SLICE_X51Y50"
    )
    port map (
      ADR0 => result_cmp_eq0002_0,
      ADR1 => VCC,
      ADR2 => in2(13),
      ADR3 => in1(13),
      O => result_13_7_15858
    );
  alu0_result_3_73_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_3_73_15890,
      O => result_3_73_0
    );
  alu0_result_3_73_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_1_25_15883,
      O => result_1_25_0
    );
  result_1_25 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X44Y48"
    )
    port map (
      ADR0 => in1(12),
      ADR1 => N36_0,
      ADR2 => N46_0,
      ADR3 => in1(11),
      O => result_1_25_15883
    );
  alu0_result_1_73_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_1_73_15914,
      O => result_1_73_0
    );
  alu0_result_1_73_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_0_94_15907,
      O => result_0_94_0
    );
  result_0_94 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X50Y48"
    )
    port map (
      ADR0 => N25_0,
      ADR1 => in1(6),
      ADR2 => in1(7),
      ADR3 => N19_0,
      O => result_0_94_15907
    );
  alu0_z_flag_cmp_eq000149_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => z_flag_cmp_eq000149_15938,
      O => z_flag_cmp_eq000149_0
    );
  alu0_z_flag_cmp_eq000149_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_0_78_15931,
      O => result_0_78_0
    );
  result_0_78 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X47Y47"
    )
    port map (
      ADR0 => N51_0,
      ADR1 => N48_0,
      ADR2 => in1(12),
      ADR3 => in1(13),
      O => result_0_78_15931
    );
  alu0_result_4_41_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_4_41_15962,
      O => result_4_41_0
    );
  alu0_result_4_41_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_2_41_15955,
      O => result_2_41_0
    );
  result_2_41 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X47Y45"
    )
    port map (
      ADR0 => N2,
      ADR1 => in1(1),
      ADR2 => in1(3),
      ADR3 => N01,
      O => result_2_41_15955
    );
  alu0_N164_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N164,
      O => N164_0
    );
  alu0_N164_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_2_73_15979,
      O => result_2_73_0
    );
  result_2_73 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X39Y46"
    )
    port map (
      ADR0 => in1(13),
      ADR1 => N15_0,
      ADR2 => N46_0,
      ADR3 => in1(7),
      O => result_2_73_15979
    );
  alu0_result_5_41_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_5_41_16010,
      O => result_5_41_0
    );
  alu0_result_5_41_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_3_41_16003,
      O => result_3_41_0
    );
  result_3_41 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X48Y46"
    )
    port map (
      ADR0 => N01,
      ADR1 => N2,
      ADR2 => in1(2),
      ADR3 => in1(4),
      O => result_3_41_16003
    );
  alu0_result_14_208_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_14_208_16034,
      O => result_14_208_0
    );
  alu0_result_14_208_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_3_25_16027,
      O => result_3_25_0
    );
  result_3_25 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X39Y44"
    )
    port map (
      ADR0 => in1(11),
      ADR1 => in1(12),
      ADR2 => N28_0,
      ADR3 => N32_0,
      O => result_3_25_16027
    );
  alu0_result_9_34_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_9_34_16058,
      O => result_9_34_0
    );
  alu0_result_9_34_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_2_78_16051,
      O => result_2_78_0
    );
  result_2_78 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X49Y51"
    )
    port map (
      ADR0 => in1(9),
      ADR1 => N25_0,
      ADR2 => N19_0,
      ADR3 => in1(8),
      O => result_2_78_16051
    );
  alu0_N148_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N148,
      O => N148_0
    );
  alu0_N148_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_3_57_16073,
      O => result_3_57_0
    );
  result_3_57 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X47Y48"
    )
    port map (
      ADR0 => N48_0,
      ADR1 => N47_0,
      ADR2 => in1(1),
      ADR3 => in1(15),
      O => result_3_57_16073
    );
  alu0_result_14_57_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_14_57_16106,
      O => result_14_57_0
    );
  alu0_result_14_57_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_10_52_16099,
      O => result_10_52_0
    );
  result_10_52 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X36Y56"
    )
    port map (
      ADR0 => in1(5),
      ADR1 => in1(4),
      ADR2 => result_cmp_eq0025_0,
      ADR3 => result_cmp_eq0026_0,
      O => result_10_52_16099
    );
  alu0_N152_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N152,
      O => N152_0
    );
  alu0_N152_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_4_73_16121,
      O => result_4_73_0
    );
  result_4_73 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X52Y48"
    )
    port map (
      ADR0 => in1(13),
      ADR1 => in1(14),
      ADR2 => N36_0,
      ADR3 => N32_0,
      O => result_4_73_16121
    );
  alu0_result_15_35_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_35_16154,
      O => result_15_35_0
    );
  alu0_result_15_35_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_10_74_16147,
      O => result_10_74_0
    );
  result_10_74 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X34Y54"
    )
    port map (
      ADR0 => in1(7),
      ADR1 => in1(8),
      ADR2 => result_cmp_eq0023_0,
      ADR3 => result_cmp_eq0022_0,
      O => result_10_74_16147
    );
  alu0_result_11_68_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_11_68_16178,
      O => result_11_68_0
    );
  alu0_result_11_68_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_5_57_16171,
      O => result_5_57_0
    );
  result_5_57 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X40Y45"
    )
    port map (
      ADR0 => in1(2),
      ADR1 => in1(3),
      ADR2 => N50_0,
      ADR3 => N47_0,
      O => result_5_57_16171
    );
  alu0_N378_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N378,
      O => N378_0
    );
  alu0_N378_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_11_80_16195,
      O => result_11_80_0
    );
  result_11_80 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X40Y47"
    )
    port map (
      ADR0 => in1(4),
      ADR1 => result_cmp_eq0014_0,
      ADR2 => result_cmp_eq0013_0,
      ADR3 => in1(5),
      O => result_11_80_16195
    );
  alu0_N6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N6,
      O => N6_0
    );
  alu0_N6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_6_36_16219,
      O => result_6_36_0
    );
  result_6_36 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X35Y50"
    )
    port map (
      ADR0 => in1(12),
      ADR1 => N19_0,
      ADR2 => in1(11),
      ADR3 => N15_0,
      O => result_6_36_16219
    );
  alu0_N360_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N360,
      O => N360_0
    );
  alu0_N360_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_12_51_16243,
      O => result_12_51_0
    );
  result_12_51 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X37Y51"
    )
    port map (
      ADR0 => in1(1),
      ADR1 => in1(2),
      ADR2 => result_cmp_eq0031_0,
      ADR3 => result_cmp_eq0030_0,
      O => result_12_51_16243
    );
  alu0_result_8_41_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_8_41_16274,
      O => result_8_41_0
    );
  alu0_result_8_41_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_6_80_16267,
      O => result_6_80_0
    );
  result_6_80 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X43Y42"
    )
    port map (
      ADR0 => N2,
      ADR1 => in1(5),
      ADR2 => in1(7),
      ADR3 => N01,
      O => result_6_80_16267
    );
  alu0_result_9_72_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_9_72_16298,
      O => result_9_72_0
    );
  alu0_result_9_72_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_12_56_16291,
      O => result_12_56_0
    );
  result_12_56 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X33Y55"
    )
    port map (
      ADR0 => result_cmp_eq0028_0,
      ADR1 => result_cmp_eq0029_0,
      ADR2 => in1(3),
      ADR3 => in1(4),
      O => result_12_56_16291
    );
  alu0_result_11_179_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_11_179_16322,
      O => result_11_179_0
    );
  alu0_result_11_179_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_12_73_16315,
      O => result_12_73_0
    );
  result_12_73 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X33Y54"
    )
    port map (
      ADR0 => in1(8),
      ADR1 => in1(7),
      ADR2 => result_cmp_eq0024_0,
      ADR3 => result_cmp_eq0025_0,
      O => result_12_73_16315
    );
  alu0_result_14_164_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_14_164_16346,
      O => result_14_164_0
    );
  alu0_result_14_164_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_14_52_16339,
      O => result_14_52_0
    );
  result_14_52 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X34Y50"
    )
    port map (
      ADR0 => result_cmp_eq0028_0,
      ADR1 => result_cmp_eq0027_0,
      ADR2 => in1(6),
      ADR3 => in1(7),
      O => result_14_52_16339
    );
  alu0_result_8_140_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_8_140_16370,
      O => result_8_140_0
    );
  alu0_result_8_140_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_40_16363,
      O => result_15_40_0
    );
  result_15_40 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X33Y52"
    )
    port map (
      ADR0 => result_cmp_eq0024_0,
      ADR1 => in1(11),
      ADR2 => result_cmp_eq0031_0,
      ADR3 => in1(4),
      O => result_15_40_16363
    );
  alu0_result_15_164_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_164_16394,
      O => result_15_164_0
    );
  alu0_result_15_164_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_8_91_16387,
      O => result_8_91_0
    );
  result_8_91 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X37Y43"
    )
    port map (
      ADR0 => in1(2),
      ADR1 => result_cmp_eq0014_0,
      ADR2 => in1(3),
      ADR3 => result_cmp_eq0015_0,
      O => result_8_91_16387
    );
  alu0_result_4_111_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_4_111_16418,
      O => result_4_111_0
    );
  alu0_result_4_111_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_0_132_16411,
      O => result_0_132_0
    );
  result_0_132 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X45Y44"
    )
    port map (
      ADR0 => N55_0,
      ADR1 => N7_0,
      ADR2 => in1(3),
      ADR3 => in1(0),
      O => result_0_132_16411
    );
  alu0_N108_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N108,
      O => N108_0
    );
  alu0_N108_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_77_16433,
      O => result_15_77_0
    );
  result_15_77 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X30Y50"
    )
    port map (
      ADR0 => in2(1),
      ADR1 => in1(0),
      ADR2 => in2(0),
      ADR3 => N86_0,
      O => result_15_77_16433
    );
  alu0_result_3_106_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_3_106_16466,
      O => result_3_106_0
    );
  alu0_result_3_106_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_1_106_16459,
      O => result_1_106_0
    );
  result_1_106 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X48Y47"
    )
    port map (
      ADR0 => in1(1),
      ADR1 => N55_0,
      ADR2 => in1(3),
      ADR3 => N4_0,
      O => result_1_106_16459
    );
  n_flag_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => n_flag_BYINV_16475,
      O => n_flag_DYMUX_16476
    );
  n_flag_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => n_flag_BYINV_16475
    );
  n_flag_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X52Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => n_flag_or0000,
      O => n_flag_CLKINVNOT
    );
  alu0_result_14_147_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_14_147_16503,
      O => result_14_147_0
    );
  alu0_result_14_147_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_10_154_16496,
      O => result_10_154_0
    );
  result_10_154 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X37Y47"
    )
    port map (
      ADR0 => result_cmp_eq0013_0,
      ADR1 => result_cmp_eq0012_0,
      ADR2 => in1(2),
      ADR3 => in1(3),
      O => result_10_154_16496
    );
  alu0_N364_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => N364,
      O => N364_0
    );
  alu0_N364_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_5_111_16520,
      O => result_5_111_0
    );
  result_5_111 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X44Y45"
    )
    port map (
      ADR0 => in1(8),
      ADR1 => in1(1),
      ADR2 => N49_0,
      ADR3 => N7_0,
      O => result_5_111_16520
    );
  alu0_result_9_188_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_9_188_16551,
      O => result_9_188_0
    );
  alu0_result_9_188_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_11_107_16544,
      O => result_11_107_0
    );
  result_11_107 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X41Y45"
    )
    port map (
      ADR0 => result_cmp_eq0017_0,
      ADR1 => result_cmp_eq0018_0,
      ADR2 => in1(9),
      ADR3 => in1(8),
      O => result_11_107_16544
    );
  alu0_result_14_169_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_14_169_16575,
      O => result_14_169_0
    );
  alu0_result_14_169_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_12_169_16568,
      O => result_12_169_0
    );
  result_12_169 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X38Y51"
    )
    port map (
      ADR0 => result_cmp_eq0014_0,
      ADR1 => in1(6),
      ADR2 => result_cmp_eq0015_0,
      ADR3 => in1(7),
      O => result_12_169_16568
    );
  alu0_result_15_220_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_220_16599,
      O => result_15_220_0
    );
  alu0_result_15_220_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_211_16592,
      O => result_13_211_0
    );
  result_13_211 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X41Y47"
    )
    port map (
      ADR0 => in1(13),
      ADR1 => result_cmp_eq0020_0,
      ADR2 => result_cmp_eq0016_0,
      ADR3 => in1(9),
      O => result_13_211_16592
    );
  alu0_N314_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N314,
      O => N314_0
    );
  alu0_N314_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_13_156_16616,
      O => result_13_156_0
    );
  result_13_156 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X38Y52"
    )
    port map (
      ADR0 => result_cmp_eq0011_0,
      ADR1 => result_cmp_eq0010_0,
      ADR2 => in1(3),
      ADR3 => in1(4),
      O => result_13_156_16616
    );
  alu0_N481_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => N481,
      O => N481_0
    );
  alu0_N481_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => alu0_N481_G,
      O => result(8)
    );
  result_8_224 : X_LUT4
    generic map(
      INIT => X"008F",
      LOC => "SLICE_X55Y57"
    )
    port map (
      ADR0 => overflow_cmp_eq0000_0,
      ADR1 => x_mult0000(8),
      ADR2 => N252_0,
      ADR3 => rst,
      O => alu0_N481_G
    );
  alu0_N294_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N294,
      O => N294_0
    );
  alu0_N294_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_9_155_16664,
      O => result_9_155_0
    );
  result_9_155 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X34Y46"
    )
    port map (
      ADR0 => result_cmp_eq0015_0,
      ADR1 => in1(1),
      ADR2 => result_cmp_eq0012_0,
      ADR3 => in1(4),
      O => result_9_155_16664
    );
  alu0_N146_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => N146,
      O => N146_0
    );
  alu0_N146_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_15_165_16688,
      O => result_15_165_0
    );
  result_15_165 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X45Y45"
    )
    port map (
      ADR0 => in1(11),
      ADR1 => result_cmp_eq0016_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => result_15_165_16688
    );
  z_flag_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => z_flag_BYINV_16704,
      O => z_flag_DYMUX_16705
    );
  z_flag_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => z_flag_BYINV_16704
    );
  z_flag_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X51Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => z_flag_or0000,
      O => z_flag_CLKINVNOT
    );
  alu0_result_cmp_eq00201251_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq00201251,
      O => result_cmp_eq00201251_0
    );
  alu0_result_cmp_eq00201251_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_cmp_eq0020125_16725,
      O => result_cmp_eq0020125_0
    );
  result_cmp_eq0020125 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X40Y57"
    )
    port map (
      ADR0 => in2(9),
      ADR1 => in2(11),
      ADR2 => in2(10),
      ADR3 => in2(7),
      O => result_cmp_eq0020125_16725
    );
  alu0_N288_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N288,
      O => N288_0
    );
  alu0_N288_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N290,
      O => N290_0
    );
  result_11_28_SW0_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X44Y55"
    )
    port map (
      ADR0 => in1(10),
      ADR1 => N4_0,
      ADR2 => N01,
      ADR3 => in1(13),
      O => N290
    );
  alu0_N112_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N112,
      O => N112_0
    );
  alu0_N112_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N326,
      O => N326_0
    );
  result_14_96_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X35Y47"
    )
    port map (
      ADR0 => result_cmp_eq0022_0,
      ADR1 => in1(12),
      ADR2 => in1(14),
      ADR3 => result_cmp_eq0020_0,
      O => N326
    );
  alu0_N44_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X63Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N44,
      O => N44_0
    );
  alu0_N44_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X63Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N461,
      O => N461_0
    );
  result_3_93_SW0 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X63Y50"
    )
    port map (
      ADR0 => x_mult0000(3),
      ADR1 => in1(7),
      ADR2 => N111_0,
      ADR3 => overflow_cmp_eq0000_0,
      O => N461
    );
  alu0_z_flag_cmp_eq000125_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => z_flag_cmp_eq000125_16828,
      O => z_flag_cmp_eq000125_0
    );
  alu0_z_flag_cmp_eq000125_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N210,
      O => N210_0
    );
  result_5_25_SW0 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X47Y49"
    )
    port map (
      ADR0 => in1(10),
      ADR1 => N64_0,
      ADR2 => N15_0,
      ADR3 => in1(0),
      O => N210
    );
  alu0_overflow_cmp_eq0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => overflow_cmp_eq0000,
      O => overflow_cmp_eq0000_0
    );
  alu0_overflow_cmp_eq0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => result_mux0002,
      O => result_mux0002_0
    );
  result_mux00022 : X_LUT4
    generic map(
      INIT => X"EFEF",
      LOC => "SLICE_X60Y53"
    )
    port map (
      ADR0 => alu_mode(1),
      ADR1 => alu_mode(2),
      ADR2 => alu_mode(0),
      ADR3 => VCC,
      O => result_mux0002
    );
  alu0_z_flag_and0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => z_flag_cmp_eq0000,
      O => z_flag_cmp_eq0000_0
    );
  z_flag_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X50Y67"
    )
    port map (
      ADR0 => alu_mode(2),
      ADR1 => alu_mode(0),
      ADR2 => VCC,
      ADR3 => alu_mode(1),
      O => z_flag_cmp_eq0000
    );
  alu0_N274_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => N274,
      O => N274_0
    );
  result_10_99_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X34Y52"
    )
    port map (
      ADR0 => result_cmp_eq0036_0,
      ADR1 => result_cmp_eq0003_0,
      ADR2 => result_10_75_0,
      ADR3 => result_10_190_0,
      O => N274
    );
  alu0_N200_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N200,
      O => N200_0
    );
  alu0_N200_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => N206,
      O => N206_0
    );
  result_cmp_eq00301_SW2 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X33Y56"
    )
    port map (
      ADR0 => in1(5),
      ADR1 => in2(3),
      ADR2 => N61_0,
      ADR3 => in2(2),
      O => N206
    );
  overflow_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => overflow_10_F,
      O => overflow(10)
    );
  overflow_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => overflow_10_G,
      O => overflow(1)
    );
  overflow_1_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X77Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => x_mult0000(17),
      ADR3 => N54_0,
      O => overflow_10_G
    );
  overflow_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => overflow_11_F,
      O => overflow(11)
    );
  overflow_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X78Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => overflow_11_G,
      O => overflow(2)
    );
  overflow_2_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X78Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N54_0,
      ADR2 => VCC,
      ADR3 => x_mult0000(18),
      O => overflow_11_G
    );
  overflow_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => overflow_12_F,
      O => overflow(12)
    );
  overflow_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X79Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => overflow_12_G,
      O => overflow(3)
    );
  overflow_3_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X79Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x_mult0000(19),
      ADR2 => VCC,
      ADR3 => N54_0,
      O => overflow_12_G
    );
  overflow_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => overflow_13_F,
      O => overflow(13)
    );
  overflow_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => overflow_13_G,
      O => overflow(4)
    );
  overflow_4_1 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X76Y52"
    )
    port map (
      ADR0 => N54_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x_mult0000(20),
      O => overflow_13_G
    );
  overflow_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => overflow_14_F,
      O => overflow(14)
    );
  overflow_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => overflow_14_G,
      O => overflow(5)
    );
  overflow_5_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X76Y55"
    )
    port map (
      ADR0 => N54_0,
      ADR1 => VCC,
      ADR2 => x_mult0000(21),
      ADR3 => VCC,
      O => overflow_14_G
    );
  overflow_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => overflow_15_F,
      O => overflow(15)
    );
  overflow_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X77Y54",
      PATHPULSE => 555 ps
    )
    port map (
      I => overflow_15_G,
      O => overflow(6)
    );
  overflow_6_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X77Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => x_mult0000(22),
      ADR3 => N54_0,
      O => overflow_15_G
    );
  overflow_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X63Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => overflow_8_F,
      O => overflow(8)
    );
  overflow_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X63Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => overflow_8_G,
      O => overflow(7)
    );
  overflow_7_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X63Y55"
    )
    port map (
      ADR0 => N54_0,
      ADR1 => x_mult0000(23),
      ADR2 => VCC,
      ADR3 => VCC,
      O => overflow_8_G
    );
  overflow_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X76Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => overflow_9_F,
      O => overflow(9)
    );
  overflow_9_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X76Y51"
    )
    port map (
      ADR0 => N54_0,
      ADR1 => VCC,
      ADR2 => x_mult0000(25),
      ADR3 => VCC,
      O => overflow_9_F
    );
  alu0_N298_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N298,
      O => N298_0
    );
  alu0_N298_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => N296,
      O => N296_0
    );
  result_7_157_SW0 : X_LUT4
    generic map(
      INIT => X"CF45",
      LOC => "SLICE_X37Y50"
    )
    port map (
      ADR0 => in1(5),
      ADR1 => N98_0,
      ADR2 => in1(4),
      ADR3 => N96_0,
      O => N296
    );
  alu0_N376_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N376,
      O => N376_0
    );
  alu0_N376_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y55",
      PATHPULSE => 555 ps
    )
    port map (
      I => N214,
      O => N214_0
    );
  result_8_141_SW0 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X31Y55"
    )
    port map (
      ADR0 => in1(2),
      ADR1 => N61_0,
      ADR2 => in2(3),
      ADR3 => in2(2),
      O => N214
    );
  n_flag_and00001 : X_LUT4
    generic map(
      INIT => X"00C0",
      LOC => "SLICE_X52Y75"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1(15),
      ADR2 => z_flag_cmp_eq0000_0,
      ADR3 => rst,
      O => n_flag_and0000
    );
  alu0_N400_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N400,
      O => N400_0
    );
  alu0_N400_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => z_flag_cmp_eq000162_17181,
      O => z_flag_cmp_eq000162_0
    );
  z_flag_cmp_eq000162 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X46Y49"
    )
    port map (
      ADR0 => in1(11),
      ADR1 => in1(9),
      ADR2 => in1(8),
      ADR3 => in1(10),
      O => z_flag_cmp_eq000162_17181
    );
  alu0_z_flag_or0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => z_flag_cmp_eq0001,
      O => z_flag_cmp_eq0001_0
    );
  z_flag_cmp_eq000175 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X50Y66"
    )
    port map (
      ADR0 => in1(5),
      ADR1 => N400_0,
      ADR2 => in1(4),
      ADR3 => in1(6),
      O => z_flag_cmp_eq0001
    );
  alu0_N354_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => N354,
      O => N354_0
    );
  result_13_58_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FFBB",
      LOC => "SLICE_X31Y59"
    )
    port map (
      ADR0 => in2(1),
      ADR1 => in2(3),
      ADR2 => VCC,
      ADR3 => in2(2),
      O => N354
    );
  overflow_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X72Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => overflow_0_F,
      O => overflow(0)
    );
  overflow_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X72Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => N54,
      O => N54_0
    );
  overflow_0_11 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X72Y51"
    )
    port map (
      ADR0 => alu_mode(1),
      ADR1 => rst,
      ADR2 => alu_mode(0),
      ADR3 => alu_mode(2),
      O => N54
    );
  Maddsub_result_addsub0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X61Y45"
    )
    port map (
      ADR0 => in1(0),
      ADR1 => result_mux0002_0,
      ADR2 => in2(0),
      ADR3 => VCC,
      O => Maddsub_result_addsub0000_lut(0)
    );
  Maddsub_result_addsub0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X61Y46"
    )
    port map (
      ADR0 => in1(2),
      ADR1 => result_mux0002_0,
      ADR2 => VCC,
      ADR3 => in2(2),
      O => Maddsub_result_addsub0000_lut(2)
    );
  Maddsub_result_addsub0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X61Y47"
    )
    port map (
      ADR0 => in1(4),
      ADR1 => result_mux0002_0,
      ADR2 => in2(4),
      ADR3 => VCC,
      O => Maddsub_result_addsub0000_lut(4)
    );
  result_7_40_SW0 : X_LUT4
    generic map(
      INIT => X"CEDF",
      LOC => "SLICE_X35Y58"
    )
    port map (
      ADR0 => in2(0),
      ADR1 => N348_0,
      ADR2 => in1(2),
      ADR3 => in1(3),
      O => N292
    );
  result_7_35_SW0 : X_LUT4
    generic map(
      INIT => X"0703",
      LOC => "SLICE_X34Y55"
    )
    port map (
      ADR0 => N72_0,
      ADR1 => N292_0,
      ADR2 => N316_0,
      ADR3 => in1(0),
      O => N224
    );
  result_12_83_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X32Y55"
    )
    port map (
      ADR0 => result_12_56_0,
      ADR1 => result_12_96_0,
      ADR2 => result_12_101_O_0,
      ADR3 => result_12_73_0,
      O => N228
    );
  result_13_80_SW0 : X_LUT4
    generic map(
      INIT => X"DD0D",
      LOC => "SLICE_X36Y47"
    )
    port map (
      ADR0 => in1(10),
      ADR1 => N94_0,
      ADR2 => in1(11),
      ADR3 => N266_0,
      O => N394
    );
  result_7_77_SW1 : X_LUT4
    generic map(
      INIT => X"FEFA",
      LOC => "SLICE_X34Y53"
    )
    port map (
      ADR0 => N6_0,
      ADR1 => result_cmp_eq0003_0,
      ADR2 => result_7_101_SW0_O_0,
      ADR3 => result_7_55_0,
      O => N366
    );
  result_13_69_SW0 : X_LUT4
    generic map(
      INIT => X"F733",
      LOC => "SLICE_X32Y58"
    )
    port map (
      ADR0 => in1(0),
      ADR1 => result_cmp_eq0020112_0,
      ADR2 => N98_0,
      ADR3 => result_13_58_SW0_O_0,
      O => N338
    );
  result_9_24_SW0 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X54Y48"
    )
    port map (
      ADR0 => result_or0000_0,
      ADR1 => N15_0,
      ADR2 => in1(14),
      ADR3 => result_addsub0000(9),
      O => N38
    );
  Maddsub_result_addsub0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X61Y48"
    )
    port map (
      ADR0 => in1(6),
      ADR1 => result_mux0002_0,
      ADR2 => in2(6),
      ADR3 => VCC,
      O => Maddsub_result_addsub0000_lut(6)
    );
  Maddsub_result_addsub0000_lut_8_Q : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X61Y49"
    )
    port map (
      ADR0 => in1(8),
      ADR1 => result_mux0002_0,
      ADR2 => VCC,
      ADR3 => in2(8),
      O => Maddsub_result_addsub0000_lut(8)
    );
  Maddsub_result_addsub0000_lut_10_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X61Y50"
    )
    port map (
      ADR0 => in1(10),
      ADR1 => result_mux0002_0,
      ADR2 => in2(10),
      ADR3 => VCC,
      O => Maddsub_result_addsub0000_lut(10)
    );
  Maddsub_result_addsub0000_lut_12_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X61Y51"
    )
    port map (
      ADR0 => result_mux0002_0,
      ADR1 => in1(12),
      ADR2 => in2(12),
      ADR3 => VCC,
      O => Maddsub_result_addsub0000_lut(12)
    );
  Maddsub_result_addsub0000_lut_14_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X61Y52"
    )
    port map (
      ADR0 => in1(14),
      ADR1 => result_mux0002_0,
      ADR2 => in2(14),
      ADR3 => VCC,
      O => Maddsub_result_addsub0000_lut(14)
    );
  result_6_9 : X_LUT4
    generic map(
      INIT => X"FAF0",
      LOC => "SLICE_X55Y52"
    )
    port map (
      ADR0 => result_or0000_0,
      ADR1 => VCC,
      ADR2 => result_6_7_O_0,
      ADR3 => result_addsub0000(6),
      O => result_6_9_11954
    );
  result_12_9 : X_LUT4
    generic map(
      INIT => X"FCF0",
      LOC => "SLICE_X60Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => result_or0000_0,
      ADR2 => result_12_7_O_0,
      ADR3 => result_addsub0000(12),
      O => result_12_9_11978
    );
  result_7_9 : X_LUT4
    generic map(
      INIT => X"FCF0",
      LOC => "SLICE_X53Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => result_addsub0000(7),
      ADR2 => result_7_7_O_0,
      ADR3 => result_or0000_0,
      O => result_7_9_12002
    );
  result_8_7 : X_LUT4
    generic map(
      INIT => X"30F0",
      LOC => "SLICE_X47Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in2(8),
      ADR2 => result_cmp_eq0002_0,
      ADR3 => in1(8),
      O => result_8_7_12026
    );
  result_0_25 : X_LUT4
    generic map(
      INIT => X"C000",
      LOC => "SLICE_X36Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in2(1),
      ADR2 => in2(0),
      ADR3 => result_cmp_eq0036_0,
      O => result_0_25_12050
    );
  result_0_41 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X39Y47"
    )
    port map (
      ADR0 => in1(15),
      ADR1 => in1(11),
      ADR2 => N46_0,
      ADR3 => result_0_30_O_0,
      O => result_0_41_12074
    );
  result_1_11 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X36Y51"
    )
    port map (
      ADR0 => result_cmp_eq0003_0,
      ADR1 => result_cmp_eq0036_0,
      ADR2 => result_cmp_eq0014_0,
      ADR3 => result_cmp_eq0026_0,
      O => N19
    );
  result_10_51 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X38Y47"
    )
    port map (
      ADR0 => result_cmp_eq0016_0,
      ADR1 => result_cmp_eq0024_0,
      ADR2 => result_cmp_eq0036_0,
      ADR3 => result_cmp_eq0003_0,
      O => N111
    );
  result_10_53 : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X32Y57"
    )
    port map (
      ADR0 => in2(2),
      ADR1 => N61_0,
      ADR2 => result_10_53_SW0_O_0,
      ADR3 => in1(0),
      O => result_10_53_12314
    );
  result_10_61 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X35Y49"
    )
    port map (
      ADR0 => result_cmp_eq0003_0,
      ADR1 => result_cmp_eq0025_0,
      ADR2 => result_cmp_eq0036_0,
      ADR3 => result_cmp_eq0015_0,
      O => N15
    );
  result_4_57 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X42Y45"
    )
    port map (
      ADR0 => in1(2),
      ADR1 => N47_0,
      ADR2 => N50_0,
      ADR3 => in1(1),
      O => result_4_57_12362
    );
  result_5_27 : X_LUT4
    generic map(
      INIT => X"FFEA",
      LOC => "SLICE_X46Y48"
    )
    port map (
      ADR0 => N210_0,
      ADR1 => result_addsub0000(5),
      ADR2 => result_or0000_0,
      ADR3 => result_5_9_SW0_O_0,
      O => result_5_27_12386
    );
  result_10_75 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X34Y56"
    )
    port map (
      ADR0 => result_10_74_0,
      ADR1 => result_10_53_0,
      ADR2 => result_10_611_SW0_O_0,
      ADR3 => result_10_52_0,
      O => result_10_75_12410
    );
  result_1_31 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X36Y50"
    )
    port map (
      ADR0 => result_cmp_eq0003_0,
      ADR1 => result_cmp_eq0036_0,
      ADR2 => result_cmp_eq0013_0,
      ADR3 => result_cmp_eq0027_0,
      O => N25
    );
  result_0_80 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X49Y47"
    )
    port map (
      ADR0 => result_0_61_O_0,
      ADR1 => result_0_78_0,
      ADR2 => result_0_41_0,
      ADR3 => N128_0,
      O => result_0_80_12146
    );
  result_1_41 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X36Y52"
    )
    port map (
      ADR0 => result_cmp_eq0028_0,
      ADR1 => result_cmp_eq0003_0,
      ADR2 => result_cmp_eq0036_0,
      ADR3 => result_cmp_eq0012_0,
      O => N28
    );
  result_1_51 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X39Y53"
    )
    port map (
      ADR0 => result_cmp_eq0003_0,
      ADR1 => result_cmp_eq0029_0,
      ADR2 => result_cmp_eq0036_0,
      ADR3 => result_cmp_eq0011_0,
      O => N32
    );
  result_1_57 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X46Y47"
    )
    port map (
      ADR0 => in1(14),
      ADR1 => in1(15),
      ADR2 => N51_0,
      ADR3 => N65_0,
      O => result_1_57_12218
    );
  result_2_57 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X43Y44"
    )
    port map (
      ADR0 => N51_0,
      ADR1 => in1(14),
      ADR2 => N48_0,
      ADR3 => in1(15),
      O => result_2_57_12242
    );
  result_10_41 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X34Y49"
    )
    port map (
      ADR0 => result_cmp_eq0017_0,
      ADR1 => result_cmp_eq0036_0,
      ADR2 => result_cmp_eq0023_0,
      ADR3 => result_cmp_eq0003_0,
      O => N7
    );
  result_10_1_G : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X42Y55"
    )
    port map (
      ADR0 => in2(3),
      ADR1 => N406_0,
      ADR2 => in2(2),
      ADR3 => in2(0),
      O => N399
    );
  result_10_2_G : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X45Y54"
    )
    port map (
      ADR0 => N404_0,
      ADR1 => in2(0),
      ADR2 => in2(3),
      ADR3 => in2(2),
      O => N397
    );
  result_2_9 : X_LUT4
    generic map(
      INIT => X"FF88",
      LOC => "SLICE_X54Y46"
    )
    port map (
      ADR0 => result_or0000_0,
      ADR1 => result_addsub0000(2),
      ADR2 => VCC,
      ADR3 => result_2_7_O_0,
      O => result_2_9_11858
    );
  result_3_9 : X_LUT4
    generic map(
      INIT => X"FAF0",
      LOC => "SLICE_X55Y48"
    )
    port map (
      ADR0 => result_addsub0000(3),
      ADR1 => VCC,
      ADR2 => result_3_7_O_0,
      ADR3 => result_or0000_0,
      O => result_3_9_11882
    );
  result_4_9 : X_LUT4
    generic map(
      INIT => X"FF88",
      LOC => "SLICE_X60Y48"
    )
    port map (
      ADR0 => result_addsub0000(4),
      ADR1 => result_or0000_0,
      ADR2 => VCC,
      ADR3 => result_4_7_O_0,
      O => result_4_9_11906
    );
  result_11_9 : X_LUT4
    generic map(
      INIT => X"FF88",
      LOC => "SLICE_X52Y52"
    )
    port map (
      ADR0 => result_or0000_0,
      ADR1 => result_addsub0000(11),
      ADR2 => VCC,
      ADR3 => result_11_7_O_0,
      O => result_11_9_11930
    );
  result_4_78 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X39Y48"
    )
    port map (
      ADR0 => N15_0,
      ADR1 => in1(15),
      ADR2 => N46_0,
      ADR3 => in1(9),
      O => result_4_78_12434
    );
  result_6_17 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X40Y51"
    )
    port map (
      ADR0 => result_cmp_eq0003_0,
      ADR1 => result_cmp_eq0036_0,
      ADR2 => result_cmp_eq0014_0,
      ADR3 => result_cmp_eq0026_0,
      O => result_6_17_12458
    );
  result_11_81 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X37Y48"
    )
    port map (
      ADR0 => result_cmp_eq000514_0,
      ADR1 => in1(0),
      ADR2 => result_11_81_SW0_O_0,
      ADR3 => result_cmp_eq000519_0,
      O => result_11_81_12482
    );
  result_5_78 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X45Y48"
    )
    port map (
      ADR0 => N32_0,
      ADR1 => in1(15),
      ADR2 => N36_0,
      ADR3 => in1(14),
      O => result_5_78_12506
    );
  result_13_15 : X_LUT4
    generic map(
      INIT => X"FEFC",
      LOC => "SLICE_X52Y53"
    )
    port map (
      ADR0 => result_or0000_0,
      ADR1 => result_13_7_0,
      ADR2 => result_13_9_SW0_O_0,
      ADR3 => result_addsub0000(13),
      O => result_13_15_12530
    );
  result_6_57 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X38Y49"
    )
    port map (
      ADR0 => in1(1),
      ADR1 => N32_0,
      ADR2 => N64_0,
      ADR3 => in1(15),
      O => result_6_57_12554
    );
  result_6_58 : X_LUT4
    generic map(
      INIT => X"FFEC",
      LOC => "SLICE_X39Y49"
    )
    port map (
      ADR0 => in1(14),
      ADR1 => result_6_57_0,
      ADR2 => N28_0,
      ADR3 => result_6_52_SW0_O_0,
      O => result_6_58_12578
    );
  result_11_89 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X41Y48"
    )
    port map (
      ADR0 => result_11_81_0,
      ADR1 => result_11_68_0,
      ADR2 => result_11_63_O_0,
      ADR3 => result_11_80_0,
      O => result_11_89_12602
    );
  result_13_25 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X40Y56"
    )
    port map (
      ADR0 => in1(14),
      ADR1 => N2,
      ADR2 => in1(15),
      ADR3 => N4_0,
      O => result_13_25_12626
    );
  result_13_53 : X_LUT4
    generic map(
      INIT => X"00F2",
      LOC => "SLICE_X31Y52"
    )
    port map (
      ADR0 => in1(2),
      ADR1 => N66_0,
      ADR2 => result_cmp_eq00301_SW1_O_0,
      ADR3 => N316_0,
      O => result_13_53_12650
    );
  result_7_55 : X_LUT4
    generic map(
      INIT => X"FFF8",
      LOC => "SLICE_X35Y54"
    )
    port map (
      ADR0 => in1(1),
      ADR1 => result_cmp_eq0026_0,
      ADR2 => result_7_55_SW0_SW0_O_0,
      ADR3 => N224_0,
      O => result_7_55_12674
    );
  result_14_15 : X_LUT4
    generic map(
      INIT => X"FEFC",
      LOC => "SLICE_X56Y53"
    )
    port map (
      ADR0 => result_addsub0000(14),
      ADR1 => result_14_7_0,
      ADR2 => result_14_9_SW0_O_0,
      ADR3 => result_or0000_0,
      O => result_14_15_12698
    );
  result_12_96 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X31Y53"
    )
    port map (
      ADR0 => N52_0,
      ADR1 => result_cmp_eq0032_0,
      ADR2 => in1(0),
      ADR3 => result_cmp_eq00221_SW1_O_0,
      O => result_12_96_12722
    );
  result_8_27 : X_LUT4
    generic map(
      INIT => X"FEFC",
      LOC => "SLICE_X43Y46"
    )
    port map (
      ADR0 => result_addsub0000(8),
      ADR1 => N164_0,
      ADR2 => result_8_9_SW0_O_0,
      ADR3 => result_or0000_0,
      O => result_8_27_12746
    );
  result_14_35 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X31Y50"
    )
    port map (
      ADR0 => in1(10),
      ADR1 => in1(3),
      ADR2 => result_cmp_eq0031_0,
      ADR3 => result_cmp_eq0024_0,
      O => result_14_35_12770
    );
  result_13_69 : X_LUT4
    generic map(
      INIT => X"F4F0",
      LOC => "SLICE_X34Y57"
    )
    port map (
      ADR0 => N338_0,
      ADR1 => result_cmp_eq0020125_0,
      ADR2 => result_13_53_0,
      ADR3 => result_cmp_eq0020149_0,
      O => result_13_69_12794
    );
  result_8_74 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X45Y42"
    )
    port map (
      ADR0 => in1(12),
      ADR1 => in1(8),
      ADR2 => N55_0,
      ADR3 => N111_0,
      O => result_8_74_12818
    );
  result_14_67 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X36Y53"
    )
    port map (
      ADR0 => result_14_52_0,
      ADR1 => result_14_35_0,
      ADR2 => result_14_40_O_0,
      ADR3 => result_14_57_0,
      O => result_14_67_12842
    );
  result_0_131 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X43Y47"
    )
    port map (
      ADR0 => result_cmp_eq0036_0,
      ADR1 => result_cmp_eq0007_0,
      ADR2 => result_cmp_eq0003_0,
      ADR3 => result_cmp_eq0033_0,
      O => N51
    );
  result_15_52 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X33Y47"
    )
    port map (
      ADR0 => in1(10),
      ADR1 => N52_0,
      ADR2 => result_cmp_eq0025_0,
      ADR3 => result_cmp_eq00261_SW2_O_0,
      O => result_15_52_12890
    );
  result_6_123 : X_LUT4
    generic map(
      INIT => X"FCF0",
      LOC => "SLICE_X43Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => overflow_cmp_eq0000_0,
      ADR2 => result_6_123_SW0_O_0,
      ADR3 => x_mult0000(6),
      O => result_6_123_13394
    );
  result_6_108 : X_LUT4
    generic map(
      INIT => X"FEFA",
      LOC => "SLICE_X42Y47"
    )
    port map (
      ADR0 => N116_0,
      ADR1 => N47_0,
      ADR2 => result_6_107_SW0_O_0,
      ADR3 => in1(4),
      O => result_6_108_13418
    );
  result_12_122 : X_LUT4
    generic map(
      INIT => X"FE00",
      LOC => "SLICE_X45Y50"
    )
    port map (
      ADR0 => N228_0,
      ADR1 => result_12_51_0,
      ADR2 => result_12_68_O_0,
      ADR3 => result_cmp_eq0003_0,
      O => result_12_122_13442
    );
  result_6_152 : X_LUT4
    generic map(
      INIT => X"00FE",
      LOC => "SLICE_X40Y53"
    )
    port map (
      ADR0 => result_6_108_0,
      ADR1 => result_6_89_O_0,
      ADR2 => result_6_123_0,
      ADR3 => rst,
      O => alu_result_6_F
    );
  result_12_147 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X38Y46"
    )
    port map (
      ADR0 => result_cmp_eq0009_0,
      ADR1 => in1(0),
      ADR2 => in1(1),
      ADR3 => result_cmp_eq0008_0,
      O => result_12_147_13490
    );
  result_12_253 : X_LUT4
    generic map(
      INIT => X"4055",
      LOC => "SLICE_X60Y50"
    )
    port map (
      ADR0 => rst,
      ADR1 => overflow_cmp_eq0000_0,
      ADR2 => x_mult0000(12),
      ADR3 => result_12_229_SW0_O_0,
      O => alu_result_12_F
    );
  result_13_200 : X_LUT4
    generic map(
      INIT => X"0888",
      LOC => "SLICE_X37Y49"
    )
    port map (
      ADR0 => result_cmp_eq000514_0,
      ADR1 => result_cmp_eq000519_0,
      ADR2 => N386_0,
      ADR3 => result_13_200_SW0_O_0,
      O => result_13_200_13538
    );
  result_15_61 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X32Y47"
    )
    port map (
      ADR0 => result_15_35_0,
      ADR1 => result_15_53_O_0,
      ADR2 => result_15_40_0,
      ADR3 => result_15_52_0,
      O => result_15_61_12914
    );
  result_0_134 : X_LUT4
    generic map(
      INIT => X"FEFA",
      LOC => "SLICE_X47Y46"
    )
    port map (
      ADR0 => result_0_132_0,
      ADR1 => N65_0,
      ADR2 => result_0_124_O_0,
      ADR3 => in1(14),
      O => result_0_134_12938
    );
  result_9_88 : X_LUT4
    generic map(
      INIT => X"FFEA",
      LOC => "SLICE_X32Y56"
    )
    port map (
      ADR0 => result_9_72_0,
      ADR1 => result_cmp_eq0026_0,
      ADR2 => in1(3),
      ADR3 => result_9_77_SW0_O_0,
      O => result_9_88_12962
    );
  result_0_166 : X_LUT4
    generic map(
      INIT => X"00FE",
      LOC => "SLICE_X48Y49"
    )
    port map (
      ADR0 => result_0_80_0,
      ADR1 => result_0_134_0,
      ADR2 => result_0_114_O_0,
      ADR3 => rst,
      O => alu_result_0_F
    );
  result_15_87 : X_LUT4
    generic map(
      INIT => X"FFEA",
      LOC => "SLICE_X33Y51"
    )
    port map (
      ADR0 => result_15_74_O_0,
      ADR1 => result_cmp_eq0022_0,
      ADR2 => in1(13),
      ADR3 => result_15_77_0,
      O => result_15_87_13010
    );
  result_1_145 : X_LUT4
    generic map(
      INIT => X"0F0D",
      LOC => "SLICE_X51Y49"
    )
    port map (
      ADR0 => N216_0,
      ADR1 => N156_0,
      ADR2 => rst,
      ADR3 => result_1_93_O_0,
      O => alu_result_1_F
    );
  result_2_111 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X40Y44"
    )
    port map (
      ADR0 => in1(5),
      ADR1 => N7_0,
      ADR2 => in1(0),
      ADR3 => N47_0,
      O => result_2_111_13058
    );
  result_10_169 : X_LUT4
    generic map(
      INIT => X"0323",
      LOC => "SLICE_X38Y55"
    )
    port map (
      ADR0 => in1(6),
      ADR1 => N320_0,
      ADR2 => result_10_166_SW0_O_0,
      ADR3 => N100_0,
      O => result_10_169_13250
    );
  result_11_210 : X_LUT4
    generic map(
      INIT => X"AAA8",
      LOC => "SLICE_X32Y54"
    )
    port map (
      ADR0 => result_cmp_eq0003_0,
      ADR1 => result_11_147_0,
      ADR2 => N184_0,
      ADR3 => result_11_174_O_0,
      O => result_11_210_13274
    );
  result_5_145 : X_LUT4
    generic map(
      INIT => X"5545",
      LOC => "SLICE_X49Y49"
    )
    port map (
      ADR0 => rst,
      ADR1 => result_5_27_0,
      ADR2 => N26_0,
      ADR3 => result_5_93_O_0,
      O => alu_result_5_F
    );
  result_11_128 : X_LUT4
    generic map(
      INIT => X"F0E0",
      LOC => "SLICE_X41Y44"
    )
    port map (
      ADR0 => result_11_102_O_0,
      ADR1 => result_11_89_0,
      ADR2 => result_cmp_eq0036_0,
      ADR3 => result_11_107_0,
      O => result_11_128_13322
    );
  result_11_147 : X_LUT4
    generic map(
      INIT => X"FFEA",
      LOC => "SLICE_X30Y54"
    )
    port map (
      ADR0 => N108_0,
      ADR1 => result_cmp_eq0030_0,
      ADR2 => in1(1),
      ADR3 => result_11_146_O_0,
      O => result_11_147_13346
    );
  result_11_245 : X_LUT4
    generic map(
      INIT => X"4055",
      LOC => "SLICE_X48Y54"
    )
    port map (
      ADR0 => rst,
      ADR1 => x_mult0000(11),
      ADR2 => overflow_cmp_eq0000_0,
      ADR3 => result_11_245_SW0_SW0_O_0,
      O => alu_result_11_F
    );
  result_2_145 : X_LUT4
    generic map(
      INIT => X"5155",
      LOC => "SLICE_X49Y48"
    )
    port map (
      ADR0 => rst,
      ADR1 => N174_0,
      ADR2 => N481_0,
      ADR3 => result_2_93_SW1_O_0,
      O => alu_result_2_F
    );
  result_3_145 : X_LUT4
    generic map(
      INIT => X"4555",
      LOC => "SLICE_X51Y48"
    )
    port map (
      ADR0 => rst,
      ADR1 => N461_0,
      ADR2 => result_3_145_SW0_O_0,
      ADR3 => N150_0,
      O => alu_result_3_F
    );
  result_10_125 : X_LUT4
    generic map(
      INIT => X"FFF8",
      LOC => "SLICE_X46Y55"
    )
    port map (
      ADR0 => in1(11),
      ADR1 => N2,
      ADR2 => result_10_123_O_0,
      ADR3 => N288_0,
      O => result_10_125_13130
    );
  result_4_145 : X_LUT4
    generic map(
      INIT => X"4555",
      LOC => "SLICE_X52Y50"
    )
    port map (
      ADR0 => rst,
      ADR1 => N44_0,
      ADR2 => N281_0,
      ADR3 => result_4_93_SW1_O_0,
      O => alu_result_4_F
    );
  result_10_237 : X_LUT4
    generic map(
      INIT => X"008F",
      LOC => "SLICE_X48Y53"
    )
    port map (
      ADR0 => overflow_cmp_eq0000_0,
      ADR1 => x_mult0000(10),
      ADR2 => result_10_213_SW0_O_0,
      ADR3 => rst,
      O => alu_result_10_F
    );
  result_10_149 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X39Y54"
    )
    port map (
      ADR0 => in1(0),
      ADR1 => result_cmp_eq0011_0,
      ADR2 => result_cmp_eq0010_0,
      ADR3 => in1(1),
      O => result_10_149_13202
    );
  result_10_190 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X36Y54"
    )
    port map (
      ADR0 => result_10_154_0,
      ADR1 => result_10_169_0,
      ADR2 => result_10_188_O_0,
      ADR3 => result_10_149_0,
      O => result_10_190_13226
    );
  result_cmp_eq00251 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X32Y49"
    )
    port map (
      ADR0 => N74_0,
      ADR1 => result_cmp_eq00201121_0,
      ADR2 => result_cmp_eq00201491_0,
      ADR3 => result_cmp_eq00201251_0,
      O => result_cmp_eq0025
    );
  result_cmp_eq00341 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X36Y49"
    )
    port map (
      ADR0 => result_cmp_eq00201121_0,
      ADR1 => result_cmp_eq00201251_0,
      ADR2 => result_cmp_eq00201491_0,
      ADR3 => N96_0,
      O => result_cmp_eq0034
    );
  result_cmp_eq00261 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X37Y55"
    )
    port map (
      ADR0 => result_cmp_eq00201491_0,
      ADR1 => result_cmp_eq00201251_0,
      ADR2 => result_cmp_eq00201121_0,
      ADR3 => N881_0,
      O => result_cmp_eq0026
    );
  result_cmp_eq00181 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X40Y55"
    )
    port map (
      ADR0 => result_cmp_eq000519_0,
      ADR1 => result_cmp_eq000514_0,
      ADR2 => result_cmp_eq0005114_0,
      ADR3 => N96_0,
      O => result_cmp_eq0018
    );
  result_cmp_eq00271 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X35Y55"
    )
    port map (
      ADR0 => N72_0,
      ADR1 => result_cmp_eq00201251_0,
      ADR2 => result_cmp_eq00201491_0,
      ADR3 => result_cmp_eq00201121_0,
      O => result_cmp_eq0027
    );
  result_cmp_eq00281 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X35Y52"
    )
    port map (
      ADR0 => result_cmp_eq00201251_0,
      ADR1 => result_cmp_eq00201121_0,
      ADR2 => N70_0,
      ADR3 => result_cmp_eq00201491_0,
      O => result_cmp_eq0028
    );
  result_cmp_eq00291 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X37Y53"
    )
    port map (
      ADR0 => result_cmp_eq00201251_0,
      ADR1 => N68_0,
      ADR2 => result_cmp_eq00201121_0,
      ADR3 => result_cmp_eq00201491_0,
      O => result_cmp_eq0029
    );
  result_7_215 : X_LUT4
    generic map(
      INIT => X"2033",
      LOC => "SLICE_X41Y53"
    )
    port map (
      ADR0 => overflow_cmp_eq0000_0,
      ADR1 => rst,
      ADR2 => x_mult0000(7),
      ADR3 => result_7_86_SW0_O_0,
      O => alu_result_7_F
    );
  result_7_170 : X_LUT4
    generic map(
      INIT => X"1333",
      LOC => "SLICE_X35Y51"
    )
    port map (
      ADR0 => N314_0,
      ADR1 => result_7_170_SW1_O_0,
      ADR2 => N296_0,
      ADR3 => N294_0,
      O => result_7_170_13586
    );
  result_13_151 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X38Y45"
    )
    port map (
      ADR0 => result_cmp_eq0008_0,
      ADR1 => in1(1),
      ADR2 => result_cmp_eq0009_0,
      ADR3 => in1(2),
      O => result_13_151_13610
    );
  result_13_225 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X40Y48"
    )
    port map (
      ADR0 => result_13_156_0,
      ADR1 => result_13_200_0,
      ADR2 => result_13_151_0,
      ADR3 => result_13_167_SW0_O_0,
      O => result_13_225_13634
    );
  result_13_270 : X_LUT4
    generic map(
      INIT => X"080F",
      LOC => "SLICE_X53Y73"
    )
    port map (
      ADR0 => overflow_cmp_eq0000_0,
      ADR1 => x_mult0000(13),
      ADR2 => rst,
      ADR3 => result_13_40_SW0_SW0_O_0,
      O => alu_result_13_F
    );
  result_8_126 : X_LUT4
    generic map(
      INIT => X"CCC8",
      LOC => "SLICE_X39Y45"
    )
    port map (
      ADR0 => result_8_86_O_0,
      ADR1 => result_cmp_eq0036_0,
      ADR2 => result_8_91_0,
      ADR3 => N118_0,
      O => result_8_126_13682
    );
  result_8_162 : X_LUT4
    generic map(
      INIT => X"FFC0",
      LOC => "SLICE_X32Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1(6),
      ADR2 => result_cmp_eq0022_0,
      ADR3 => result_8_159_O_0,
      O => result_8_162_13706
    );
  result_14_223 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X42Y46"
    )
    port map (
      ADR0 => result_14_147_0,
      ADR1 => result_14_192_0,
      ADR2 => result_14_213_O_0,
      ADR3 => N134_0,
      O => result_14_223_13730
    );
  result_9_102 : X_LUT4
    generic map(
      INIT => X"FAF0",
      LOC => "SLICE_X37Y44"
    )
    port map (
      ADR0 => result_cmp_eq0022_0,
      ADR1 => VCC,
      ADR2 => result_9_99_O_0,
      ADR3 => in1(7),
      O => result_9_102_13754
    );
  result_8_178 : X_LUT4
    generic map(
      INIT => X"CCC8",
      LOC => "SLICE_X32Y51"
    )
    port map (
      ADR0 => result_8_162_0,
      ADR1 => result_cmp_eq0003_0,
      ADR2 => result_8_150_SW0_O_0,
      ADR3 => result_8_140_0,
      O => result_8_178_13778
    );
  result_14_192 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X45Y43"
    )
    port map (
      ADR0 => in1(10),
      ADR1 => result_cmp_eq0016_0,
      ADR2 => in1(0),
      ADR3 => result_cmp_eq0006_0,
      O => result_14_192_13802
    );
  result_15_113 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X36Y48"
    )
    port map (
      ADR0 => result_cmp_eq0032_0,
      ADR1 => result_cmp_eq0033_0,
      ADR2 => in1(3),
      ADR3 => in1(2),
      O => result_15_113_13826
    );
  result_14_268 : X_LUT4
    generic map(
      INIT => X"4055",
      LOC => "SLICE_X56Y52"
    )
    port map (
      ADR0 => rst,
      ADR1 => x_mult0000(14),
      ADR2 => overflow_cmp_eq0000_0,
      ADR3 => result_14_245_SW0_O_0,
      O => alu_result_14_F
    );
  result_9_128 : X_LUT4
    generic map(
      INIT => X"FAF8",
      LOC => "SLICE_X49Y50"
    )
    port map (
      ADR0 => result_cmp_eq0003_0,
      ADR1 => result_9_102_0,
      ADR2 => result_9_67_O_0,
      ADR3 => result_9_88_0,
      O => result_9_128_13874
    );
  result_15_134 : X_LUT4
    generic map(
      INIT => X"F0E0",
      LOC => "SLICE_X38Y48"
    )
    port map (
      ADR0 => result_15_87_0,
      ADR1 => result_15_61_0,
      ADR2 => result_cmp_eq0003_0,
      ADR3 => result_15_114_O_0,
      O => result_15_134_13898
    );
  result_15_152 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X42Y42"
    )
    port map (
      ADR0 => N198_0,
      ADR1 => result_cmp_eq0008_0,
      ADR2 => in1(3),
      ADR3 => N53_0,
      O => result_15_152_13922
    );
  result_9_237 : X_LUT4
    generic map(
      INIT => X"4055",
      LOC => "SLICE_X54Y50"
    )
    port map (
      ADR0 => rst,
      ADR1 => overflow_cmp_eq0000_0,
      ADR2 => x_mult0000(9),
      ADR3 => result_9_213_SW0_O_0,
      O => alu_result_9_F
    );
  result_9_191 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X41Y46"
    )
    port map (
      ADR0 => result_9_155_0,
      ADR1 => result_9_170_SW0_O_0,
      ADR2 => N378_0,
      ADR3 => result_9_188_0,
      O => result_9_191_13970
    );
  result_15_173 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X42Y44"
    )
    port map (
      ADR0 => result_15_152_0,
      ADR1 => result_15_147_O_0,
      ADR2 => result_15_165_0,
      ADR3 => result_15_164_0,
      O => result_15_173_13994
    );
  result_15_246 : X_LUT4
    generic map(
      INIT => X"F0E0",
      LOC => "SLICE_X44Y46"
    )
    port map (
      ADR0 => result_15_199_0,
      ADR1 => result_15_173_0,
      ADR2 => result_cmp_eq0036_0,
      ADR3 => result_15_226_O_0,
      O => result_15_246_14018
    );
  result_15_281 : X_LUT4
    generic map(
      INIT => X"4055",
      LOC => "SLICE_X58Y50"
    )
    port map (
      ADR0 => rst,
      ADR1 => x_mult0000(15),
      ADR2 => overflow_cmp_eq0000_0,
      ADR3 => result_15_23_SW0_O_0,
      O => alu_result_15_F
    );
  result_15_189 : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X44Y42"
    )
    port map (
      ADR0 => result_15_189_SW0_O_0,
      ADR1 => in2(3),
      ADR2 => in1(0),
      ADR3 => N53_0,
      O => result_15_189_14066
    );
  result_15_199 : X_LUT4
    generic map(
      INIT => X"FEFA",
      LOC => "SLICE_X44Y47"
    )
    port map (
      ADR0 => result_15_189_0,
      ADR1 => in1(12),
      ADR2 => result_15_186_O_0,
      ADR3 => result_cmp_eq0017_0,
      O => result_15_199_14090
    );
  result_cmp_eq002021 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X39Y51"
    )
    port map (
      ADR0 => result_cmp_eq0020151_SW0_O_0,
      ADR1 => result_cmp_eq00201121_0,
      ADR2 => result_cmp_eq00201251_0,
      ADR3 => result_cmp_eq00201491_0,
      O => N88
    );
  result_cmp_eq003211 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X31Y51"
    )
    port map (
      ADR0 => result_cmp_eq00201251_0,
      ADR1 => result_cmp_eq0020151_SW1_O_0,
      ADR2 => result_cmp_eq00201121_0,
      ADR3 => result_cmp_eq00201491_0,
      O => N86
    );
  result_2_145_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X46Y44"
    )
    port map (
      ADR0 => result_2_41_0,
      ADR1 => result_2_111_0,
      ADR2 => result_2_106_O_0,
      ADR3 => result_2_57_0,
      O => N174
    );
  result_0_114_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"F8F8",
      LOC => "SLICE_X43Y48"
    )
    port map (
      ADR0 => N111_0,
      ADR1 => in1(4),
      ADR2 => result_0_99_O_0,
      ADR3 => VCC,
      O => N142
    );
  result_13_167_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"DF55",
      LOC => "SLICE_X34Y48"
    )
    port map (
      ADR0 => result_cmp_eq0005114_0,
      ADR1 => N94_0,
      ADR2 => in1(0),
      ADR3 => result_13_178_SW0_O_0,
      O => N384
    );
  result_cmp_eq0020151 : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X35Y57"
    )
    port map (
      ADR0 => result_cmp_eq00201121_0,
      ADR1 => result_cmp_eq00201251_0,
      ADR2 => VCC,
      ADR3 => result_cmp_eq00201491_0,
      O => N52
    );
  result_1_9_SW0 : X_LUT4
    generic map(
      INIT => X"FF88",
      LOC => "SLICE_X53Y49"
    )
    port map (
      ADR0 => N2,
      ADR1 => in1(2),
      ADR2 => VCC,
      ADR3 => result_1_7_O_0,
      O => N380
    );
  result_0_48_SW0 : X_LUT4
    generic map(
      INIT => X"FFF8",
      LOC => "SLICE_X50Y49"
    )
    port map (
      ADR0 => N36_0,
      ADR1 => in1(10),
      ADR2 => result_0_9_SW0_O_0,
      ADR3 => result_0_7_0,
      O => N128
    );
  result_1_27_SW0 : X_LUT4
    generic map(
      INIT => X"FFF8",
      LOC => "SLICE_X52Y49"
    )
    port map (
      ADR0 => result_addsub0000(1),
      ADR1 => result_or0000_0,
      ADR2 => result_1_411_SW0_O_0,
      ADR3 => N380_0,
      O => N156
    );
  result_14_133_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FEF0",
      LOC => "SLICE_X51Y52"
    )
    port map (
      ADR0 => result_14_67_0,
      ADR1 => N178_0,
      ADR2 => result_14_21_O_0,
      ADR3 => result_cmp_eq0003_0,
      O => N272
    );
  result_2_27_SW0 : X_LUT4
    generic map(
      INIT => X"FF88",
      LOC => "SLICE_X48Y48"
    )
    port map (
      ADR0 => N36_0,
      ADR1 => in1(12),
      ADR2 => VCC,
      ADR3 => result_2_25_SW0_O_0,
      O => N242
    );
  result_3_27_SW0 : X_LUT4
    generic map(
      INIT => X"FFEC",
      LOC => "SLICE_X37Y45"
    )
    port map (
      ADR0 => N25_0,
      ADR1 => result_3_25_0,
      ADR2 => in1(10),
      ADR3 => result_3_111_O_0,
      O => N170
    );
  result_10_16_SW0 : X_LUT4
    generic map(
      INIT => X"FEEE",
      LOC => "SLICE_X50Y52"
    )
    port map (
      ADR0 => result_10_211_O_0,
      ADR1 => result_10_7_0,
      ADR2 => result_or0000_0,
      ADR3 => result_addsub0000(10),
      O => N230
    );
  result_4_27_SW0 : X_LUT4
    generic map(
      INIT => X"FFA0",
      LOC => "SLICE_X55Y51"
    )
    port map (
      ADR0 => in1(10),
      ADR1 => VCC,
      ADR2 => N19_0,
      ADR3 => result_4_25_O_0,
      O => N218
    );
  result_3_93_SW1 : X_LUT4
    generic map(
      INIT => X"0011",
      LOC => "SLICE_X45Y49"
    )
    port map (
      ADR0 => result_3_78_O_0,
      ADR1 => result_3_57_0,
      ADR2 => VCC,
      ADR3 => result_3_73_0,
      O => N150
    );
  result_11_28_SW0 : X_LUT4
    generic map(
      INIT => X"FFEC",
      LOC => "SLICE_X47Y55"
    )
    port map (
      ADR0 => in1(12),
      ADR1 => N290_0,
      ADR2 => N2,
      ADR3 => result_11_41_O_0,
      O => N234
    );
  result_12_37_SW0 : X_LUT4
    generic map(
      INIT => X"FFA8",
      LOC => "SLICE_X47Y51"
    )
    port map (
      ADR0 => result_cmp_eq0036_0,
      ADR1 => N332_0,
      ADR2 => N130_0,
      ADR3 => result_12_35_O_0,
      O => N250
    );
  result_cmp_eq00203 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X38Y56"
    )
    port map (
      ADR0 => N921_0,
      ADR1 => result_cmp_eq00201251_0,
      ADR2 => result_cmp_eq00201491_0,
      ADR3 => result_cmp_eq00201121_0,
      O => result_cmp_eq0020
    );
  result_cmp_eq00221 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X38Y44"
    )
    port map (
      ADR0 => result_cmp_eq00201491_0,
      ADR1 => N266_0,
      ADR2 => result_cmp_eq00201121_0,
      ADR3 => result_cmp_eq00201251_0,
      O => result_cmp_eq0022
    );
  result_cmp_eq00301 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X36Y44"
    )
    port map (
      ADR0 => result_cmp_eq00201491_0,
      ADR1 => result_cmp_eq00201251_0,
      ADR2 => result_cmp_eq00201121_0,
      ADR3 => N80_0,
      O => result_cmp_eq0030
    );
  result_cmp_eq00241 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X34Y51"
    )
    port map (
      ADR0 => result_cmp_eq00201491_0,
      ADR1 => N76_0,
      ADR2 => result_cmp_eq00201121_0,
      ADR3 => result_cmp_eq00201251_0,
      O => result_cmp_eq0024
    );
  result_cmp_eq00322 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X30Y48"
    )
    port map (
      ADR0 => result_cmp_eq00201491_0,
      ADR1 => N100_0,
      ADR2 => result_cmp_eq00201121_0,
      ADR3 => result_cmp_eq00201251_0,
      O => result_cmp_eq0032
    );
  result_cmp_eq00171 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X36Y55"
    )
    port map (
      ADR0 => result_cmp_eq000519_0,
      ADR1 => result_cmp_eq000514_0,
      ADR2 => result_cmp_eq0005114_0,
      ADR3 => N98_0,
      O => result_cmp_eq0017
    );
  result_9_24_SW1 : X_LUT4
    generic map(
      INIT => X"FFC0",
      LOC => "SLICE_X45Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1(10),
      ADR2 => N2,
      ADR3 => result_9_7_O_0,
      O => N158
    );
  result_15_15_SW0 : X_LUT4
    generic map(
      INIT => X"F8F8",
      LOC => "SLICE_X58Y51"
    )
    port map (
      ADR0 => result_addsub0000(15),
      ADR1 => result_or0000_0,
      ADR2 => result_15_7_O_0,
      ADR3 => VCC,
      O => N256
    );
  result_9_53_SW0 : X_LUT4
    generic map(
      INIT => X"FFEA",
      LOC => "SLICE_X40Y46"
    )
    port map (
      ADR0 => N158_0,
      ADR1 => result_cmp_eq0036_0,
      ADR2 => result_9_191_0,
      ADR3 => result_9_51_O_0,
      O => N390
    );
  result_12_206_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FFFC",
      LOC => "SLICE_X39Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => result_12_169_0,
      ADR2 => result_12_164_O_0,
      ADR3 => result_12_147_0,
      O => N332
    );
  result_4_145_SW0 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X44Y44"
    )
    port map (
      ADR0 => result_4_106_O_0,
      ADR1 => result_4_57_0,
      ADR2 => result_4_111_0,
      ADR3 => result_4_41_0,
      O => N281
    );
  result_5_145_SW0 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X48Y44"
    )
    port map (
      ADR0 => result_5_111_0,
      ADR1 => result_5_41_0,
      ADR2 => result_5_57_0,
      ADR3 => result_5_106_O_0,
      O => N26
    );
  result_6_102_SW0 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X43Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1(2),
      ADR2 => VCC,
      ADR3 => N49_0,
      O => N116
    );
  result_5_93_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FAF0",
      LOC => "SLICE_X49Y46"
    )
    port map (
      ADR0 => in1(9),
      ADR1 => VCC,
      ADR2 => result_5_73_O_0,
      ADR3 => N111_0,
      O => N138
    );
  result_11_190_SW0 : X_LUT4
    generic map(
      INIT => X"FFF8",
      LOC => "SLICE_X30Y56"
    )
    port map (
      ADR0 => in1(9),
      ADR1 => result_cmp_eq0022_0,
      ADR2 => result_11_158_O_0,
      ADR3 => result_11_179_0,
      O => N184
    );
  result_12_152_SW0 : X_LUT4
    generic map(
      INIT => X"FF27",
      LOC => "SLICE_X32Y52"
    )
    port map (
      ADR0 => in2(0),
      ADR1 => in1(3),
      ADR2 => in1(2),
      ADR3 => result_12_152_SW0_SW0_O_0,
      O => N302
    );
  result_6_38_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FFEC",
      LOC => "SLICE_X41Y51"
    )
    port map (
      ADR0 => in1(0),
      ADR1 => result_6_36_0,
      ADR2 => result_6_17_0,
      ADR3 => result_6_81_O_0,
      O => N334
    );
  result_13_102_SW0 : X_LUT4
    generic map(
      INIT => X"D5F5",
      LOC => "SLICE_X34Y59"
    )
    port map (
      ADR0 => result_cmp_eq00201121_0,
      ADR1 => N881_0,
      ADR2 => result_13_101_SW0_O_0,
      ADR3 => in1(7),
      O => N340
    );
  result_7_115_SW0 : X_LUT4
    generic map(
      INIT => X"FEFA",
      LOC => "SLICE_X43Y50"
    )
    port map (
      ADR0 => result_7_170_0,
      ADR1 => in1(8),
      ADR2 => result_7_127_O_0,
      ADR3 => N2,
      O => N136
    );
  result_cmp_eq00221_SW0 : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X39Y55"
    )
    port map (
      ADR0 => in2(3),
      ADR1 => in2(2),
      ADR2 => result_cmp_eq0036_0,
      ADR3 => N61_0,
      O => N236
    );
  result_12_179_SW0 : X_LUT4
    generic map(
      INIT => X"F1F3",
      LOC => "SLICE_X32Y53"
    )
    port map (
      ADR0 => N302_0,
      ADR1 => N320_0,
      ADR2 => result_12_192_O_0,
      ADR3 => N304_0,
      O => N130
    );
  result_12_197_SW0 : X_LUT4
    generic map(
      INIT => X"F5F3",
      LOC => "SLICE_X30Y51"
    )
    port map (
      ADR0 => in1(9),
      ADR1 => in1(8),
      ADR2 => result_12_197_SW0_SW0_O_0,
      ADR3 => in2(0),
      O => N304
    );
  result_cmp_eq00091_SW1 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X40Y49"
    )
    port map (
      ADR0 => in1(4),
      ADR1 => in2(3),
      ADR2 => in2(2),
      ADR3 => N62_0,
      O => N198
    );
  result_8_102_SW0 : X_LUT4
    generic map(
      INIT => X"0703",
      LOC => "SLICE_X38Y53"
    )
    port map (
      ADR0 => N100_0,
      ADR1 => N298_0,
      ADR2 => N320_0,
      ADR3 => in1(4),
      O => N118
    );
  result_14_111_SW0 : X_LUT4
    generic map(
      INIT => X"FAFB",
      LOC => "SLICE_X37Y52"
    )
    port map (
      ADR0 => N326_0,
      ADR1 => N316_0,
      ADR2 => result_14_80_O_0,
      ADR3 => N360_0,
      O => N178
    );
  result_13_247_SW0 : X_LUT4
    generic map(
      INIT => X"FFC8",
      LOC => "SLICE_X41Y56"
    )
    port map (
      ADR0 => result_13_69_0,
      ADR1 => result_cmp_eq0003_0,
      ADR2 => result_13_127_SW0_O_0,
      ADR3 => result_13_25_0,
      O => N284
    );
  result_7_204_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FFC0",
      LOC => "SLICE_X42Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1(9),
      ADR2 => N4_0,
      ADR3 => result_7_113_O_0,
      O => N276
    );
  result_14_7 : X_LUT4
    generic map(
      INIT => X"3F00",
      LOC => "SLICE_X53Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => in1(14),
      ADR2 => in2(14),
      ADR3 => result_cmp_eq0002_0,
      O => result_14_7_15818
    );
  result_13_200_SW1 : X_LUT4
    generic map(
      INIT => X"F3FF",
      LOC => "SLICE_X37Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => result_cmp_eq0005114_0,
      ADR2 => N70_0,
      ADR3 => in1(5),
      O => N386
    );
  result_0_7 : X_LUT4
    generic map(
      INIT => X"0CCC",
      LOC => "SLICE_X51Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => result_cmp_eq0002_0,
      ADR2 => in2(0),
      ADR3 => in1(0),
      O => result_0_7_15866
    );
  result_3_73 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X44Y48"
    )
    port map (
      ADR0 => in1(14),
      ADR1 => N36_0,
      ADR2 => N46_0,
      ADR3 => in1(13),
      O => result_3_73_15890
    );
  result_1_73 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X50Y48"
    )
    port map (
      ADR0 => N19_0,
      ADR1 => in1(6),
      ADR2 => in1(7),
      ADR3 => N15_0,
      O => result_1_73_15914
    );
  z_flag_cmp_eq000149 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X47Y47"
    )
    port map (
      ADR0 => in1(13),
      ADR1 => in1(12),
      ADR2 => in1(15),
      ADR3 => in1(14),
      O => z_flag_cmp_eq000149_15938
    );
  result_13_199_SW0 : X_LUT4
    generic map(
      INIT => X"F351",
      LOC => "SLICE_X35Y48"
    )
    port map (
      ADR0 => in1(7),
      ADR1 => in1(8),
      ADR2 => N66_0,
      ADR3 => N80_0,
      O => N312
    );
  result_14_179_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X43Y49"
    )
    port map (
      ADR0 => result_14_152_O_0,
      ADR1 => result_14_164_0,
      ADR2 => result_14_169_0,
      ADR3 => result_14_208_0,
      O => N134
    );
  result_15_225_SW0 : X_LUT4
    generic map(
      INIT => X"0040",
      LOC => "SLICE_X45Y47"
    )
    port map (
      ADR0 => in2(2),
      ADR1 => in1(1),
      ADR2 => N61_0,
      ADR3 => result_15_225_SW0_SW0_O_0,
      O => N114
    );
  result_10_1_G_SW0 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X43Y57"
    )
    port map (
      ADR0 => result_cmp_eq0036_0,
      ADR1 => result_cmp_eq000519_0,
      ADR2 => result_cmp_eq000514_0,
      ADR3 => result_cmp_eq0005114_0,
      O => N406
    );
  result_10_2_G_SW0 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X44Y54"
    )
    port map (
      ADR0 => result_cmp_eq0005114_0,
      ADR1 => result_cmp_eq0003_0,
      ADR2 => result_cmp_eq000519_0,
      ADR3 => result_cmp_eq000514_0,
      O => N404
    );
  result_1_145_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X46Y46"
    )
    port map (
      ADR0 => result_1_106_0,
      ADR1 => result_1_57_0,
      ADR2 => result_1_25_0,
      ADR3 => result_1_111_O_0,
      O => N216
    );
  result_1_93_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FAF0",
      LOC => "SLICE_X44Y49"
    )
    port map (
      ADR0 => in1(5),
      ADR1 => VCC,
      ADR2 => result_1_78_O_0,
      ADR3 => N111_0,
      O => N140
    );
  result_13_127_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FF20",
      LOC => "SLICE_X37Y57"
    )
    port map (
      ADR0 => result_cmp_eq0020149_0,
      ADR1 => N340_0,
      ADR2 => result_cmp_eq0020125_0,
      ADR3 => result_13_80_O_0,
      O => N388
    );
  result_13_127_SW0_SW1 : X_LUT4
    generic map(
      INIT => X"4C0C",
      LOC => "SLICE_X39Y56"
    )
    port map (
      ADR0 => N72_0,
      ADR1 => result_cmp_eq0020149_0,
      ADR2 => result_13_113_SW0_O_0,
      ADR3 => in1(6),
      O => N408
    );
  result_10_611_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"C4FF",
      LOC => "SLICE_X36Y57"
    )
    port map (
      ADR0 => in1(2),
      ADR1 => N300,
      ADR2 => N70_0,
      ADR3 => result_cmp_eq00201121_0,
      O => N342
    );
  result_10_611_SW0_SW1 : X_LUT4
    generic map(
      INIT => X"BFBF",
      LOC => "SLICE_X37Y56"
    )
    port map (
      ADR0 => N72_0,
      ADR1 => in1(3),
      ADR2 => result_cmp_eq0020112_0,
      ADR3 => VCC,
      O => N402
    );
  result_cmp_eq000541_SW0 : X_LUT4
    generic map(
      INIT => X"0404",
      LOC => "SLICE_X37Y46"
    )
    port map (
      ADR0 => in2(3),
      ADR1 => result_0_22_O_0,
      ADR2 => in2(2),
      ADR3 => VCC,
      O => N258
    );
  result_8_56_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X42Y43"
    )
    port map (
      ADR0 => result_8_27_0,
      ADR1 => result_8_41_0,
      ADR2 => result_8_201_SW0_O_0,
      ADR3 => result_8_178_0,
      O => N252
    );
  result_11_141_SW0 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X30Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => result_cmp_eq0031_0,
      ADR2 => in1(0),
      ADR3 => VCC,
      O => N108
    );
  result_3_106 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X48Y47"
    )
    port map (
      ADR0 => in1(5),
      ADR1 => N55_0,
      ADR2 => in1(3),
      ADR3 => N4_0,
      O => result_3_106_16466
    );
  n_flag_5369 : X_LATCHE
    generic map(
      LOC => "SLICE_X52Y74",
      INIT => '1'
    )
    port map (
      I => n_flag_DYMUX_16476,
      GE => VCC,
      CLK => NlwInverterSignal_alu0_n_flag_CLK,
      SET => n_flag_FFY_SET,
      RST => GND,
      O => n_flag
    );
  n_flag_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X52Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => n_flag_and0000,
      O => n_flag_FFY_SET
    );
  result_14_147 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X37Y47"
    )
    port map (
      ADR0 => in1(2),
      ADR1 => in1(3),
      ADR2 => result_cmp_eq0009_0,
      ADR3 => result_cmp_eq0008_0,
      O => result_14_147_16503
    );
  result_8_69_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X44Y45"
    )
    port map (
      ADR0 => in1(10),
      ADR1 => N4_0,
      ADR2 => in1(11),
      ADR3 => N7_0,
      O => N364
    );
  result_9_188 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X41Y45"
    )
    port map (
      ADR0 => result_cmp_eq0017_0,
      ADR1 => result_cmp_eq0018_0,
      ADR2 => in1(6),
      ADR3 => in1(7),
      O => result_9_188_16551
    );
  result_14_169 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X38Y51"
    )
    port map (
      ADR0 => result_cmp_eq0014_0,
      ADR1 => in1(9),
      ADR2 => result_cmp_eq0015_0,
      ADR3 => in1(8),
      O => result_14_169_16575
    );
  result_15_9_SW0_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X52Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N01,
      ADR2 => VCC,
      ADR3 => in1(14),
      O => N152
    );
  result_15_35 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X34Y54"
    )
    port map (
      ADR0 => in1(7),
      ADR1 => in1(8),
      ADR2 => result_cmp_eq0028_0,
      ADR3 => result_cmp_eq0027_0,
      O => result_15_35_16154
    );
  result_11_68 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X40Y45"
    )
    port map (
      ADR0 => in1(2),
      ADR1 => result_cmp_eq0012_0,
      ADR2 => result_cmp_eq0011_0,
      ADR3 => in1(3),
      O => result_11_68_16178
    );
  result_9_191_SW0 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X40Y47"
    )
    port map (
      ADR0 => result_cmp_eq0016_0,
      ADR1 => result_cmp_eq0014_0,
      ADR2 => in1(5),
      ADR3 => in1(3),
      O => N378
    );
  result_7_77_SW0 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X35Y50"
    )
    port map (
      ADR0 => in1(12),
      ADR1 => in1(6),
      ADR2 => N01,
      ADR3 => N15_0,
      O => N6
    );
  result_14_101_SW0 : X_LUT4
    generic map(
      INIT => X"CF45",
      LOC => "SLICE_X37Y51"
    )
    port map (
      ADR0 => in1(1),
      ADR1 => N100_0,
      ADR2 => in1(2),
      ADR3 => N98_0,
      O => N360
    );
  result_4_41 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X47Y45"
    )
    port map (
      ADR0 => N2,
      ADR1 => in1(5),
      ADR2 => in1(3),
      ADR3 => N01,
      O => result_4_41_15962
    );
  result_8_25_SW0 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X39Y46"
    )
    port map (
      ADR0 => in1(13),
      ADR1 => N15_0,
      ADR2 => in1(15),
      ADR3 => N25_0,
      O => N164
    );
  result_5_41 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X48Y46"
    )
    port map (
      ADR0 => N01,
      ADR1 => N2,
      ADR2 => in1(4),
      ADR3 => in1(6),
      O => result_5_41_16010
    );
  result_14_208 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X39Y44"
    )
    port map (
      ADR0 => result_cmp_eq0017_0,
      ADR1 => in1(11),
      ADR2 => in1(12),
      ADR3 => result_cmp_eq0018_0,
      O => result_14_208_16034
    );
  result_9_34 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X49Y51"
    )
    port map (
      ADR0 => in1(15),
      ADR1 => N01,
      ADR2 => N19_0,
      ADR3 => in1(8),
      O => result_9_34_16058
    );
  result_10_0_SW0 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X47Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => N15_0,
      ADR3 => in1(15),
      O => N148
    );
  result_14_57 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X36Y56"
    )
    port map (
      ADR0 => in1(9),
      ADR1 => result_cmp_eq0025_0,
      ADR2 => in1(8),
      ADR3 => result_cmp_eq0026_0,
      O => result_14_57_16106
    );
  result_cmp_eq0020125_1 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X40Y57"
    )
    port map (
      ADR0 => in2(9),
      ADR1 => in2(11),
      ADR2 => in2(10),
      ADR3 => in2(7),
      O => result_cmp_eq00201251
    );
  result_10_112_SW0 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X44Y55"
    )
    port map (
      ADR0 => in1(12),
      ADR1 => in1(9),
      ADR2 => N4_0,
      ADR3 => N01,
      O => N288
    );
  result_15_108_SW0 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X35Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => in1(15),
      ADR3 => result_cmp_eq0020_0,
      O => N112
    );
  result_4_93_SW0 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X63Y50"
    )
    port map (
      ADR0 => overflow_cmp_eq0000_0,
      ADR1 => x_mult0000(4),
      ADR2 => N111_0,
      ADR3 => in1(8),
      O => N44
    );
  z_flag_cmp_eq000125 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X47Y49"
    )
    port map (
      ADR0 => in1(3),
      ADR1 => in1(0),
      ADR2 => in1(1),
      ADR3 => in1(2),
      O => z_flag_cmp_eq000125_16828
    );
  overflow_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"2020",
      LOC => "SLICE_X60Y53"
    )
    port map (
      ADR0 => alu_mode(1),
      ADR1 => alu_mode(2),
      ADR2 => alu_mode(0),
      ADR3 => VCC,
      O => overflow_cmp_eq0000
    );
  z_flag_and00001 : X_LUT4
    generic map(
      INIT => X"3000",
      LOC => "SLICE_X50Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rst,
      ADR2 => z_flag_cmp_eq0000_0,
      ADR3 => z_flag_cmp_eq0001_0,
      O => z_flag_and0000
    );
  result_15_220 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X41Y47"
    )
    port map (
      ADR0 => result_cmp_eq0018_0,
      ADR1 => result_cmp_eq0020_0,
      ADR2 => in1(15),
      ADR3 => in1(13),
      O => result_15_220_16599
    );
  result_7_170_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"DD0D",
      LOC => "SLICE_X38Y52"
    )
    port map (
      ADR0 => in1(0),
      ADR1 => N68_0,
      ADR2 => in1(3),
      ADR3 => N100_0,
      O => N314
    );
  result_2_93_SW0 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X55Y57"
    )
    port map (
      ADR0 => in1(6),
      ADR1 => x_mult0000(2),
      ADR2 => overflow_cmp_eq0000_0,
      ADR3 => N111_0,
      O => N481
    );
  result_7_138_SW0 : X_LUT4
    generic map(
      INIT => X"DD0D",
      LOC => "SLICE_X34Y46"
    )
    port map (
      ADR0 => in1(2),
      ADR1 => N66_0,
      ADR2 => in1(1),
      ADR3 => N80_0,
      O => N294
    );
  result_12_15_SW0 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X45Y45"
    )
    port map (
      ADR0 => in1(11),
      ADR1 => in1(14),
      ADR2 => N4_0,
      ADR3 => N01,
      O => N146
    );
  z_flag_5448 : X_LATCHE
    generic map(
      LOC => "SLICE_X51Y67",
      INIT => '1'
    )
    port map (
      I => z_flag_DYMUX_16705,
      GE => VCC,
      CLK => NlwInverterSignal_alu0_z_flag_CLK,
      SET => z_flag_FFY_SET,
      RST => GND,
      O => z_flag
    );
  z_flag_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X51Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => z_flag_and0000,
      O => z_flag_FFY_SET
    );
  result_8_41 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X43Y42"
    )
    port map (
      ADR0 => N2,
      ADR1 => in1(9),
      ADR2 => in1(7),
      ADR3 => N01,
      O => result_8_41_16274
    );
  result_9_72 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X33Y55"
    )
    port map (
      ADR0 => result_cmp_eq0029_0,
      ADR1 => in1(1),
      ADR2 => result_cmp_eq0028_0,
      ADR3 => in1(0),
      O => result_9_72_16298
    );
  result_11_179 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X33Y54"
    )
    port map (
      ADR0 => in1(6),
      ADR1 => in1(7),
      ADR2 => result_cmp_eq0024_0,
      ADR3 => result_cmp_eq0025_0,
      O => result_11_179_16322
    );
  result_14_164 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X34Y50"
    )
    port map (
      ADR0 => result_cmp_eq0012_0,
      ADR1 => in1(7),
      ADR2 => in1(6),
      ADR3 => result_cmp_eq0013_0,
      O => result_14_164_16346
    );
  result_8_140 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X33Y52"
    )
    port map (
      ADR0 => in1(4),
      ADR1 => in1(1),
      ADR2 => result_cmp_eq0024_0,
      ADR3 => result_cmp_eq0027_0,
      O => result_8_140_16370
    );
  result_15_164 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X37Y43"
    )
    port map (
      ADR0 => in1(9),
      ADR1 => result_cmp_eq0014_0,
      ADR2 => in1(10),
      ADR3 => result_cmp_eq0015_0,
      O => result_15_164_16394
    );
  result_4_111 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X45Y44"
    )
    port map (
      ADR0 => N7_0,
      ADR1 => N49_0,
      ADR2 => in1(0),
      ADR3 => in1(7),
      O => result_4_111_16418
    );
  result_cmp_eq00261_SW1 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X33Y56"
    )
    port map (
      ADR0 => in1(5),
      ADR1 => in2(3),
      ADR2 => N61_0,
      ADR3 => in2(2),
      O => N200
    );
  overflow_10_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X77Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N54_0,
      ADR2 => VCC,
      ADR3 => x_mult0000(26),
      O => overflow_10_F
    );
  overflow_11_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X78Y54"
    )
    port map (
      ADR0 => N54_0,
      ADR1 => x_mult0000(27),
      ADR2 => VCC,
      ADR3 => VCC,
      O => overflow_11_F
    );
  overflow_12_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X79Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => N54_0,
      ADR3 => x_mult0000(28),
      O => overflow_12_F
    );
  overflow_13_1 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X76Y52"
    )
    port map (
      ADR0 => N54_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x_mult0000(29),
      O => overflow_13_F
    );
  overflow_14_1 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X76Y55"
    )
    port map (
      ADR0 => N54_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x_mult0000(30),
      O => overflow_14_F
    );
  z_flag_or00001 : X_LUT4
    generic map(
      INIT => X"CCFC",
      LOC => "SLICE_X50Y66"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rst,
      ADR2 => z_flag_cmp_eq0000_0,
      ADR3 => z_flag_cmp_eq0001_0,
      O => z_flag_or0000
    );
  overflow_0_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X72Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => N54_0,
      ADR3 => x_mult0000(16),
      O => overflow_0_F
    );
  overflow_15_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X77Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N54_0,
      ADR2 => VCC,
      ADR3 => x_mult0000(31),
      O => overflow_15_F
    );
  overflow_8_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X63Y55"
    )
    port map (
      ADR0 => N54_0,
      ADR1 => x_mult0000(24),
      ADR2 => VCC,
      ADR3 => VCC,
      O => overflow_8_F
    );
  result_8_113_SW0 : X_LUT4
    generic map(
      INIT => X"DD0D",
      LOC => "SLICE_X37Y50"
    )
    port map (
      ADR0 => in1(5),
      ADR1 => N98_0,
      ADR2 => in1(6),
      ADR3 => N96_0,
      O => N298
    );
  result_10_166_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FF77",
      LOC => "SLICE_X31Y55"
    )
    port map (
      ADR0 => in2(1),
      ADR1 => in2(3),
      ADR2 => VCC,
      ADR3 => in2(2),
      O => N376
    );
  n_flag_or00001 : X_LUT4
    generic map(
      INIT => X"BABA",
      LOC => "SLICE_X52Y75"
    )
    port map (
      ADR0 => rst,
      ADR1 => in1(15),
      ADR2 => z_flag_cmp_eq0000_0,
      ADR3 => VCC,
      O => n_flag_or0000
    );
  z_flag_cmp_eq000175_SW0 : X_LUT4
    generic map(
      INIT => X"DFFF",
      LOC => "SLICE_X46Y49"
    )
    port map (
      ADR0 => z_flag_cmp_eq000149_0,
      ADR1 => in1(7),
      ADR2 => z_flag_cmp_eq000162_0,
      ADR3 => z_flag_cmp_eq000125_0,
      O => N400
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_A_17_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(15),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_A(17)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_A_16_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(15),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_A(16)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_A_15_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(15),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_A(15)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_A_14_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(14),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_A(14)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_A_13_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(13),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_A(13)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_A_12_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(12),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_A(12)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_A_11_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(11),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_A(11)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_A_10_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(10),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_A(10)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_A_9_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(9),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_A(9)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_A_8_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(8),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_A(8)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_A_7_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(7),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_A(7)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_A_6_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(6),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_A(6)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_A_5_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(5),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_A(5)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_A_4_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(4),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_A(4)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_A_3_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(3),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_A(3)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_A_2_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(2),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_A(2)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_A_1_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(1),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_A(1)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_A_0_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in1(0),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_A(0)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_B_17_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(15),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_B(17)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_B_16_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(15),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_B(16)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_B_15_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(15),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_B(15)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_B_14_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(14),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_B(14)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_B_13_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(13),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_B(13)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_B_12_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(12),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_B(12)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_B_11_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(11),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_B(11)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_B_10_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(10),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_B(10)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_B_9_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(9),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_B(9)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_B_8_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(8),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_B(8)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_B_7_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(7),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_B(7)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_B_6_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(6),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_B(6)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_B_5_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(5),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_B(5)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_B_4_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(4),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_B(4)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_B_3_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(3),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_B(3)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_B_2_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(2),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_B(2)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_B_1_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(1),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_B(1)
    );
  NlwBufferBlock_alu0_Mmult_x_mult0000_B_0_Q : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => in2(0),
      O => NlwBufferSignal_alu0_Mmult_x_mult0000_B(0)
    );
  NlwBlock_alu0_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwInverterBlock_alu0_n_flag_CLK : X_INV
    port map (
      I => n_flag_CLKINVNOT,
      O => NlwInverterSignal_alu0_n_flag_CLK
    );
  NlwBlock_alu0_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_alu0_z_flag_CLK : X_INV
    port map (
      I => z_flag_CLKINVNOT,
      O => NlwInverterSignal_alu0_z_flag_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

