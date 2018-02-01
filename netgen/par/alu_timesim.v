////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.87xd
//  \   \         Application: netgen
//  /   /         Filename: alu_timesim.v
// /___/   /\     Timestamp: Wed Jan 31 18:14:17 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 5 -pcf alu.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim alu.ncd alu_timesim.v 
// Device	: 3s1200efg320-5 (PRODUCTION 1.27 2012-01-07)
// Input file	: alu.ncd
// Output file	: C:\Users\mfarrow\ceng450_rf_and_alu-master\netgen\par\alu_timesim.v
// # of Modules	: 1
// Design Name	: alu
// Xilinx        : C:\Xilinx\13.4\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module alu (
  clk, z_flag, rst, n_flag, result, alu_mode, in1, in2
);
  input clk;
  output z_flag;
  input rst;
  output n_flag;
  output [15 : 0] result;
  input [2 : 0] alu_mode;
  input [15 : 0] in1;
  input [15 : 0] in2;
  wire \result<1>_bdd9_0 ;
  wire in2_2_IBUF_1600;
  wire N41_0;
  wire \result<10>_bdd8_0 ;
  wire in2_1_IBUF_1603;
  wire \result<5>_bdd5 ;
  wire \result<10>25 ;
  wire in2_3_IBUF_1606;
  wire \result<0>_bdd64_0 ;
  wire in1_13_IBUF_1608;
  wire \result<0>_bdd32_0 ;
  wire \result<12>_bdd15 ;
  wire \result<10>_bdd45_0 ;
  wire alu_mode_0_IBUF_1612;
  wire in2_0_IBUF_1613;
  wire \result<12>_bdd5 ;
  wire \result<11>_bdd5 ;
  wire alu_mode_1_IBUF_1616;
  wire \result<12>126_0 ;
  wire in1_12_IBUF_1618;
  wire in2_12_IBUF_1619;
  wire N165;
  wire N39_0;
  wire \result<0>2512_0 ;
  wire \result<0>_bdd54_0 ;
  wire \result<0>_bdd43 ;
  wire \result<0>_bdd7 ;
  wire \result<10>_bdd53_0 ;
  wire in1_14_IBUF_1627;
  wire \result<0>_bdd57_0 ;
  wire \result<10>_bdd50 ;
  wire \result<10>32_0 ;
  wire \result<15>1259_0 ;
  wire \result<14>_bdd5 ;
  wire \result<15>1271_0 ;
  wire in2_15_IBUF_1634;
  wire in1_15_IBUF_1635;
  wire N173;
  wire \result<10>_bdd6_0 ;
  wire \result<11>126_0 ;
  wire in1_11_IBUF_1639;
  wire in2_11_IBUF_1640;
  wire N167;
  wire \result<0>_bdd13 ;
  wire \result<10>_bdd24 ;
  wire \result<0>_bdd107_0 ;
  wire \result<10>_bdd21 ;
  wire \result<4>_bdd5 ;
  wire N75_0;
  wire in2_5_IBUF_1648;
  wire in1_5_IBUF_1649;
  wire N151;
  wire \result<0>_bdd84_0 ;
  wire N35_0;
  wire \result<0>4316_0 ;
  wire \result<0>_bdd79_0 ;
  wire \result<0>_bdd74 ;
  wire \result<13>_bdd5 ;
  wire \result<14>126_0 ;
  wire in2_14_IBUF_1658;
  wire N161;
  wire \result<8>_bdd5 ;
  wire \result<7>_bdd5_0 ;
  wire \result<8>126_0 ;
  wire in1_8_IBUF_1663;
  wire in2_8_IBUF_1664;
  wire N145;
  wire \result<6>_bdd5 ;
  wire N71_0;
  wire in2_6_IBUF_1668;
  wire in1_6_IBUF_1669;
  wire N149;
  wire \result<10>_bdd40_0 ;
  wire \result<10>_bdd38 ;
  wire \result<10>_bdd34 ;
  wire \result<13>126_0 ;
  wire in2_13_IBUF_1675;
  wire N163;
  wire N67_0;
  wire in2_7_IBUF_1678;
  wire in1_7_IBUF_1679;
  wire N147;
  wire \result<1>_bdd5 ;
  wire N89_0;
  wire in1_1_IBUF_1683;
  wire N159;
  wire \result<1>_bdd16_0 ;
  wire \result<1>_bdd14 ;
  wire \result<10>_bdd12_0 ;
  wire \result<0>_bdd87 ;
  wire \result<11>_bdd7 ;
  wire \result<1>812_0 ;
  wire \result<0>_bdd28_0 ;
  wire \result<4>_bdd7_0 ;
  wire \result<12>312_0 ;
  wire N45_0;
  wire \result<10>_bdd29_0 ;
  wire \result<12>_bdd8_0 ;
  wire \result<2>324_0 ;
  wire N51;
  wire \result<2>_bdd9 ;
  wire \result<2>_bdd5 ;
  wire \result<11>_bdd17_0 ;
  wire N4_0;
  wire \result<11>_bdd14 ;
  wire \result<0>54_0 ;
  wire \result<0>59_0 ;
  wire \result<0>514_1706 ;
  wire \result<10>_bdd5 ;
  wire \result<9>126_0 ;
  wire in1_9_IBUF_1709;
  wire in2_9_IBUF_1710;
  wire N143;
  wire \result<10>_bdd22 ;
  wire in1_2_IBUF_1713;
  wire in1_10_IBUF_1714;
  wire N53_0;
  wire \result<12>_bdd12 ;
  wire \result<13>_bdd10 ;
  wire \result<0>1185_0 ;
  wire \result<0>_bdd6 ;
  wire \result<0>1203_0 ;
  wire \result<0>1238_0 ;
  wire \result<10>_bdd11_0 ;
  wire \result<10>_bdd60 ;
  wire \result<6>_bdd8_0 ;
  wire \result<7>_bdd8_0 ;
  wire \result<5>_bdd8 ;
  wire rst_IBUF_1727;
  wire alu_mode_2_IBUF_1728;
  wire N117;
  wire \result_mult0000[5] ;
  wire in2_10_IBUF_1733;
  wire \result<13>_bdd12 ;
  wire N105;
  wire \result<15>186_0 ;
  wire N129;
  wire \result_mult0000[13] ;
  wire N139;
  wire \result<13>_bdd7_0 ;
  wire N137;
  wire \result<0>1316 ;
  wire \result_mult0000[0] ;
  wire N47_0;
  wire \result<14>_bdd12 ;
  wire \result<13>60_0 ;
  wire \result<13>615_0 ;
  wire N115;
  wire \result_mult0000[6] ;
  wire \result<1>_bdd12 ;
  wire \result<2>_bdd12 ;
  wire \result<2>126_0 ;
  wire \result<0>_bdd42 ;
  wire \result_mult0000[31] ;
  wire result_mux0002_0;
  wire N107_0;
  wire in1_4_IBUF_1764;
  wire \result<0>_bdd104_0 ;
  wire N157;
  wire N123;
  wire \result_mult0000[2] ;
  wire in1_3_IBUF_1771;
  wire z_flag_mux000212_0;
  wire N61;
  wire \result<3>_bdd7 ;
  wire \result<3>_bdd5_0 ;
  wire \result<12>_bdd14_0 ;
  wire \result<0>_bdd80_0 ;
  wire \result<2>_bdd16_0 ;
  wire in1_0_IBUF_1779;
  wire \result<0>374_1780 ;
  wire \result<0>379_1781 ;
  wire \result<0>3714_1782 ;
  wire \result<0>_bdd61_0 ;
  wire z_flag_mux000225_0;
  wire \result<3>_bdd10 ;
  wire \result<4>_bdd10 ;
  wire \result<0>_bdd75 ;
  wire \result<3>_bdd12 ;
  wire N79_0;
  wire N113;
  wire \result_mult0000[7] ;
  wire \result<10>_bdd17_0 ;
  wire N6;
  wire \result<10>_bdd61 ;
  wire z_flag_mux000249_0;
  wire z_flag_mux000262_1798;
  wire N155;
  wire N121;
  wire \result_mult0000[3] ;
  wire \result<0>_bdd24 ;
  wire \result<0>_bdd23 ;
  wire \result<0>_bdd33 ;
  wire \result<14>712_0 ;
  wire \result<4>_bdd12 ;
  wire \result<10>_bdd46_0 ;
  wire \result<8>_bdd8_0 ;
  wire N83_0;
  wire z_flag_cmp_eq0000_0;
  wire \result<10>_bdd51_0 ;
  wire N153;
  wire N119;
  wire \result_mult0000[4] ;
  wire N125;
  wire \result_mult0000[1] ;
  wire N171_0;
  wire \result<0>141_0 ;
  wire N131;
  wire \result_mult0000[12] ;
  wire N109;
  wire \result_mult0000[9] ;
  wire \result<10>_bdd35 ;
  wire \result<0>_bdd81_0 ;
  wire \result<0>_bdd117 ;
  wire \result<0>_bdd41_0 ;
  wire \result<0>177_1838 ;
  wire \result<0>121_0 ;
  wire \result<0>1128_0 ;
  wire in2_4_IBUF_1841;
  wire \result<2>_bdd14 ;
  wire \result<10>726_0 ;
  wire N127;
  wire \result_mult0000[14] ;
  wire N141;
  wire \result<15>1136_0 ;
  wire \Maddsub_result_addsub0000_cy[1] ;
  wire \Maddsub_result_addsub0000_cy[3] ;
  wire \Maddsub_result_addsub0000_cy[5] ;
  wire N111;
  wire \result_mult0000[8] ;
  wire \Maddsub_result_addsub0000_cy[7] ;
  wire \Maddsub_result_addsub0000_cy[9] ;
  wire \Maddsub_result_addsub0000_cy[11] ;
  wire N133;
  wire \result_mult0000[11] ;
  wire \result<14>3_f6/F5.I1 ;
  wire \result<14>3_f5 ;
  wire N169;
  wire N135;
  wire \result_mult0000[10] ;
  wire \result<15>1101_1875 ;
  wire clk_BUFGP;
  wire n_flag_OBUF_1877;
  wire \result<5>_bdd5/F5MUX_1902 ;
  wire \result<5>31 ;
  wire \result<5>_bdd5/BXINV_1895 ;
  wire \result<5>311_1893 ;
  wire \result<12>_bdd15/F5MUX_1929 ;
  wire \result<10>25_rt_1927 ;
  wire \result<12>_bdd15/BXINV_1919 ;
  wire \result<10>_bdd45 ;
  wire \N165/F5MUX_1954 ;
  wire N218;
  wire \N165/BXINV_1947 ;
  wire N217;
  wire \result<0>_bdd7/F5MUX_1979 ;
  wire N190;
  wire \result<0>_bdd7/BXINV_1971 ;
  wire N189;
  wire \result<10>_bdd50/F5MUX_2006 ;
  wire \result<10>_bdd53_rt_2004 ;
  wire \result<10>_bdd50/BXINV_1996 ;
  wire \result<10>32 ;
  wire \N173/F5MUX_2031 ;
  wire \result<15>1425_SW0_SW0 ;
  wire \N173/BXINV_2024 ;
  wire \result<15>1425_SW0_SW01_2022 ;
  wire \N167/F5MUX_2056 ;
  wire N220;
  wire \N167/BXINV_2049 ;
  wire N219;
  wire \result<10>_bdd21/F5MUX_2081 ;
  wire \result<10>17 ;
  wire \result<10>_bdd21/BXINV_2074 ;
  wire \result<10>171_2072 ;
  wire \N151/F5MUX_2106 ;
  wire N204;
  wire \N151/BXINV_2099 ;
  wire N203;
  wire \result<0>_bdd74/F5MUX_2131 ;
  wire N178;
  wire \result<0>_bdd74/BXINV_2123 ;
  wire N177;
  wire \N161/F5MUX_2156 ;
  wire N214;
  wire \N161/BXINV_2149 ;
  wire N213;
  wire \N145/F5MUX_2181 ;
  wire N198;
  wire \N145/BXINV_2174 ;
  wire N197;
  wire \N149/F5MUX_2206 ;
  wire N202;
  wire \N149/BXINV_2199 ;
  wire N201;
  wire \result<10>_bdd34/F5MUX_2231 ;
  wire \result<10>241 ;
  wire \result<10>_bdd34/BXINV_2224 ;
  wire \result<10>2411_2222 ;
  wire \N163/F5MUX_2256 ;
  wire N216;
  wire \N163/BXINV_2249 ;
  wire N215;
  wire \N147/F5MUX_2281 ;
  wire N200;
  wire \N147/BXINV_2274 ;
  wire N199;
  wire \N159/F5MUX_2306 ;
  wire N212;
  wire \N159/BXINV_2299 ;
  wire N211;
  wire \result<1>_bdd14/F5MUX_2331 ;
  wire \result<1>_bdd16_rt_2329 ;
  wire \result<1>_bdd14/BXINV_2321 ;
  wire \result<1>13 ;
  wire \result<11>_bdd7/F5MUX_2356 ;
  wire \result<10>_bdd12_rt_2354 ;
  wire \result<11>_bdd7/BXINV_2346 ;
  wire \result<11>4 ;
  wire \result<1>_bdd5/F5MUX_2381 ;
  wire N192;
  wire \result<1>_bdd5/BXINV_2373 ;
  wire N191;
  wire \result<4>_bdd5/F5MUX_2406 ;
  wire \result<4>31 ;
  wire \result<4>_bdd5/BXINV_2399 ;
  wire \result<4>311_2397 ;
  wire \result<12>_bdd5/F5MUX_2431 ;
  wire N194;
  wire \result<12>_bdd5/BXINV_2423 ;
  wire N193;
  wire \result<2>_bdd5/F5MUX_2456 ;
  wire N188;
  wire \result<2>_bdd5/BXINV_2448 ;
  wire N187;
  wire \result<11>_bdd14/F5MUX_2481 ;
  wire \result<11>81 ;
  wire \result<11>_bdd14/BXINV_2474 ;
  wire \result<11>811_2472 ;
  wire \result<10>25/F5MUX_2506 ;
  wire \result<10>251 ;
  wire \result<10>25/BXINV_2499 ;
  wire \result<10>2511_2497 ;
  wire \N143/F5MUX_2531 ;
  wire N196;
  wire \N143/BXINV_2524 ;
  wire N195;
  wire \result<10>_bdd6 ;
  wire \result<10>_bdd22_pack_1 ;
  wire N53;
  wire \result<12>312 ;
  wire \result<12>126_2602 ;
  wire \result<13>126_2595 ;
  wire \result<0>1238_2626 ;
  wire \result<0>_bdd6_pack_1 ;
  wire \result<10>_bdd8 ;
  wire \result<11>_bdd17 ;
  wire \result<0>54_2662 ;
  wire N67;
  wire N71;
  wire result_5_OBUF_2710;
  wire N117_pack_1;
  wire \result<0>59_2722 ;
  wire \result<15>186_2746 ;
  wire N105_pack_1;
  wire result_13_OBUF_2770;
  wire N129_pack_1;
  wire \result<15>1259_2794 ;
  wire N139_pack_1;
  wire result_0_OBUF_2818;
  wire N137_pack_1;
  wire N45;
  wire N39;
  wire N41;
  wire N47;
  wire \result<14>126_2890 ;
  wire \result<13>_bdd10_pack_1 ;
  wire result_6_OBUF_2914;
  wire N115_pack_1;
  wire \result<2>126_2938 ;
  wire N89;
  wire \result<4>_bdd7 ;
  wire \result<2>_bdd9_pack_1 ;
  wire result_mux0002;
  wire N107;
  wire \result<0>_bdd104 ;
  wire \result<12>_bdd8 ;
  wire result_2_OBUF_3034;
  wire N123_pack_1;
  wire \result<0>_bdd79 ;
  wire z_flag_mux000212_3051;
  wire \result<0>1185_3082 ;
  wire N61_pack_1;
  wire \result<3>_bdd5 ;
  wire \result<7>_bdd5 ;
  wire \result<3>_bdd7_pack_1 ;
  wire \result<0>_bdd28 ;
  wire \result<12>_bdd14 ;
  wire \result<10>_bdd40 ;
  wire \result<2>_bdd16 ;
  wire \result<0>_bdd84 ;
  wire \result<13>_bdd7 ;
  wire \result<0>_bdd61 ;
  wire z_flag_mux000225_3207;
  wire N79;
  wire \result<3>_bdd10_pack_1 ;
  wire result_7_OBUF_3262;
  wire N113_pack_1;
  wire \result<15>1271_3286 ;
  wire N6_pack_1;
  wire \result<7>_bdd8 ;
  wire \result<3>_bdd12_pack_1 ;
  wire z_flag_mux0002;
  wire z_flag_mux000262_pack_1;
  wire result_3_OBUF_3358;
  wire N121_pack_1;
  wire \result<0>1203_3382 ;
  wire \result<14>712_3375 ;
  wire \result<13>60_3406 ;
  wire \result<13>_bdd12_pack_1 ;
  wire z_flag_mux000249_3418;
  wire \result<8>_bdd8 ;
  wire \result<4>_bdd12_pack_1 ;
  wire N83;
  wire z_flag_cmp_eq0000;
  wire \result<0>_bdd57 ;
  wire \result<0>_bdd32 ;
  wire N75;
  wire \result<5>_bdd8_pack_1 ;
  wire result_4_OBUF_3538;
  wire N119_pack_1;
  wire \result<10>_bdd12 ;
  wire \result<0>_bdd33_pack_1 ;
  wire result_1_OBUF_3586;
  wire N125_pack_1;
  wire \result<0>_bdd107 ;
  wire \result<0>141_3603 ;
  wire \result<10>_bdd17 ;
  wire \result<10>_bdd29 ;
  wire result_12_OBUF_3658;
  wire N131_pack_1;
  wire \result<10>_bdd46 ;
  wire \result<0>_bdd23_pack_1 ;
  wire result_9_OBUF_3706;
  wire N109_pack_1;
  wire \result<10>_bdd11 ;
  wire \result<0>_bdd24_pack_1 ;
  wire \result<9>126_3754 ;
  wire \result<10>_bdd35_pack_1 ;
  wire N4;
  wire \result<1>_bdd9 ;
  wire \result<1>_bdd16 ;
  wire \result<0>_bdd54 ;
  wire \result<13>615_3826 ;
  wire \result<0>_bdd42_pack_1 ;
  wire \result<0>4316_3850 ;
  wire \result<0>2512_3843 ;
  wire \result<0>1128_3874 ;
  wire \result<0>177_pack_1 ;
  wire \result<2>324_3898 ;
  wire \result<0>_bdd43_pack_2 ;
  wire \result<0>_bdd41 ;
  wire \result<0>514_pack_1 ;
  wire \result<10>_bdd53 ;
  wire \result<0>_bdd13_pack_1 ;
  wire N35;
  wire \result<0>_bdd87_pack_1 ;
  wire \result<6>_bdd8 ;
  wire \result<10>_bdd38_pack_1 ;
  wire \result<0>_bdd80 ;
  wire \result<0>374_pack_1 ;
  wire \result<0>_bdd81 ;
  wire \result<10>_bdd51 ;
  wire \result<10>_bdd61_pack_1 ;
  wire \result<10>726_4078 ;
  wire \result<11>126_4071 ;
  wire N171;
  wire \result<0>379_pack_1 ;
  wire result_14_OBUF_4126;
  wire N127_pack_1;
  wire \result<0>121_4150 ;
  wire \result<0>_bdd117_pack_1 ;
  wire \result<0>_bdd64 ;
  wire \result<0>3714_pack_1 ;
  wire \result<8>126_4186 ;
  wire result_15_OBUF_4210;
  wire N141_pack_1;
  wire \result_addsub0000<0>/XORF_4247 ;
  wire \result_addsub0000<0>/CYINIT_4246 ;
  wire \result_addsub0000<0>/CY0F_4245 ;
  wire \result_addsub0000<0>/CYSELF_4238 ;
  wire \result_addsub0000<0>/XORG_4234 ;
  wire \result_addsub0000<0>/CYMUXG_4233 ;
  wire \Maddsub_result_addsub0000_cy[0] ;
  wire \result_addsub0000<0>/CY0G_4231 ;
  wire \result_addsub0000<0>/CYSELG_4224 ;
  wire \result<1>812_4258 ;
  wire \result_addsub0000<2>/XORF_4298 ;
  wire \result_addsub0000<2>/CYINIT_4297 ;
  wire \result_addsub0000<2>/CY0F_4296 ;
  wire \result_addsub0000<2>/XORG_4287 ;
  wire \Maddsub_result_addsub0000_cy[2] ;
  wire \result_addsub0000<2>/CYSELF_4285 ;
  wire \result_addsub0000<2>/CYMUXFAST_4284 ;
  wire \result_addsub0000<2>/CYAND_4283 ;
  wire \result_addsub0000<2>/FASTCARRY_4282 ;
  wire \result_addsub0000<2>/CYMUXG2_4281 ;
  wire \result_addsub0000<2>/CYMUXF2_4280 ;
  wire \result_addsub0000<2>/CY0G_4279 ;
  wire \result_addsub0000<2>/CYSELG_4272 ;
  wire \result_addsub0000<4>/XORF_4337 ;
  wire \result_addsub0000<4>/CYINIT_4336 ;
  wire \result_addsub0000<4>/CY0F_4335 ;
  wire \result_addsub0000<4>/XORG_4326 ;
  wire \Maddsub_result_addsub0000_cy[4] ;
  wire \result_addsub0000<4>/CYSELF_4324 ;
  wire \result_addsub0000<4>/CYMUXFAST_4323 ;
  wire \result_addsub0000<4>/CYAND_4322 ;
  wire \result_addsub0000<4>/FASTCARRY_4321 ;
  wire \result_addsub0000<4>/CYMUXG2_4320 ;
  wire \result_addsub0000<4>/CYMUXF2_4319 ;
  wire \result_addsub0000<4>/CY0G_4318 ;
  wire \result_addsub0000<4>/CYSELG_4311 ;
  wire result_8_OBUF_4360;
  wire N111_pack_1;
  wire \result_addsub0000<6>/XORF_4400 ;
  wire \result_addsub0000<6>/CYINIT_4399 ;
  wire \result_addsub0000<6>/CY0F_4398 ;
  wire \result_addsub0000<6>/XORG_4389 ;
  wire \Maddsub_result_addsub0000_cy[6] ;
  wire \result_addsub0000<6>/CYSELF_4387 ;
  wire \result_addsub0000<6>/CYMUXFAST_4386 ;
  wire \result_addsub0000<6>/CYAND_4385 ;
  wire \result_addsub0000<6>/FASTCARRY_4384 ;
  wire \result_addsub0000<6>/CYMUXG2_4383 ;
  wire \result_addsub0000<6>/CYMUXF2_4382 ;
  wire \result_addsub0000<6>/CY0G_4381 ;
  wire \result_addsub0000<6>/CYSELG_4374 ;
  wire \result_addsub0000<8>/XORF_4439 ;
  wire \result_addsub0000<8>/CYINIT_4438 ;
  wire \result_addsub0000<8>/CY0F_4437 ;
  wire \result_addsub0000<8>/XORG_4428 ;
  wire \Maddsub_result_addsub0000_cy[8] ;
  wire \result_addsub0000<8>/CYSELF_4426 ;
  wire \result_addsub0000<8>/CYMUXFAST_4425 ;
  wire \result_addsub0000<8>/CYAND_4424 ;
  wire \result_addsub0000<8>/FASTCARRY_4423 ;
  wire \result_addsub0000<8>/CYMUXG2_4422 ;
  wire \result_addsub0000<8>/CYMUXF2_4421 ;
  wire \result_addsub0000<8>/CY0G_4420 ;
  wire \result_addsub0000<8>/CYSELG_4413 ;
  wire \result_addsub0000<10>/XORF_4478 ;
  wire \result_addsub0000<10>/CYINIT_4477 ;
  wire \result_addsub0000<10>/CY0F_4476 ;
  wire \result_addsub0000<10>/XORG_4467 ;
  wire \Maddsub_result_addsub0000_cy[10] ;
  wire \result_addsub0000<10>/CYSELF_4465 ;
  wire \result_addsub0000<10>/CYMUXFAST_4464 ;
  wire \result_addsub0000<10>/CYAND_4463 ;
  wire \result_addsub0000<10>/FASTCARRY_4462 ;
  wire \result_addsub0000<10>/CYMUXG2_4461 ;
  wire \result_addsub0000<10>/CYMUXF2_4460 ;
  wire \result_addsub0000<10>/CY0G_4459 ;
  wire \result_addsub0000<10>/CYSELG_4452 ;
  wire \result_addsub0000<12>/XORF_4517 ;
  wire \result_addsub0000<12>/CYINIT_4516 ;
  wire \result_addsub0000<12>/CY0F_4515 ;
  wire \result_addsub0000<12>/XORG_4506 ;
  wire \Maddsub_result_addsub0000_cy[12] ;
  wire \result_addsub0000<12>/CYSELF_4504 ;
  wire \result_addsub0000<12>/CYMUXFAST_4503 ;
  wire \result_addsub0000<12>/CYAND_4502 ;
  wire \result_addsub0000<12>/FASTCARRY_4501 ;
  wire \result_addsub0000<12>/CYMUXG2_4500 ;
  wire \result_addsub0000<12>/CYMUXF2_4499 ;
  wire \result_addsub0000<12>/CY0G_4498 ;
  wire \result_addsub0000<12>/CYSELG_4491 ;
  wire \result_addsub0000<14>/XORF_4548 ;
  wire \result_addsub0000<14>/CYINIT_4547 ;
  wire \result_addsub0000<14>/CY0F_4546 ;
  wire \result_addsub0000<14>/CYSELF_4539 ;
  wire \result_addsub0000<14>/XORG_4536 ;
  wire \Maddsub_result_addsub0000_cy[14] ;
  wire result_11_OBUF_4571;
  wire N133_pack_1;
  wire \result<14>_bdd5/F5MUX_4594 ;
  wire \result<14>_bdd5/BXINV_4593 ;
  wire \result<14>_bdd5/F6MUX_4591 ;
  wire \result<10>_bdd22_rt_4589 ;
  wire \result<14>_bdd5/BYINV_4581 ;
  wire \result<14>3_f5/F5MUX_4618 ;
  wire \result<14>3 ;
  wire \result<14>3_f5/BXINV_4611 ;
  wire \result<14>31_4609 ;
  wire result_10_OBUF_4640;
  wire N135_pack_1;
  wire \clk/INBUF ;
  wire \result<0>/O ;
  wire \result<1>/O ;
  wire \result<15>1136_4686 ;
  wire \result<15>1101_pack_1 ;
  wire \result<2>/O ;
  wire \result<3>/O ;
  wire \result<4>/O ;
  wire \result<5>/O ;
  wire \result<6>/O ;
  wire \result<7>/O ;
  wire \result<8>/O ;
  wire \result<9>/O ;
  wire \in1<10>/INBUF ;
  wire \in1<11>/INBUF ;
  wire \in1<12>/INBUF ;
  wire \in1<13>/INBUF ;
  wire \in1<14>/INBUF ;
  wire \in1<15>/INBUF ;
  wire \in1<0>/INBUF ;
  wire \in1<1>/INBUF ;
  wire \in1<2>/INBUF ;
  wire \in2<10>/INBUF ;
  wire \in1<3>/INBUF ;
  wire \in2<11>/INBUF ;
  wire \in2<0>/INBUF ;
  wire \in1<4>/INBUF ;
  wire \in2<12>/INBUF ;
  wire \in2<1>/INBUF ;
  wire \in1<5>/INBUF ;
  wire \in2<13>/INBUF ;
  wire \result<10>/O ;
  wire \in2<2>/INBUF ;
  wire \in1<6>/INBUF ;
  wire \in2<14>/INBUF ;
  wire \result<11>/O ;
  wire \in2<3>/INBUF ;
  wire \in1<7>/INBUF ;
  wire \in2<15>/INBUF ;
  wire \result<12>/O ;
  wire \in2<4>/INBUF ;
  wire \in1<8>/INBUF ;
  wire \result<13>/O ;
  wire \in2<5>/INBUF ;
  wire \in1<9>/INBUF ;
  wire \result<14>/O ;
  wire \in2<6>/INBUF ;
  wire \result<15>/O ;
  wire \in2<7>/INBUF ;
  wire \in2<8>/INBUF ;
  wire \z_flag/O ;
  wire \z_flag/OUTPUT/OTCLK1INV_5025 ;
  wire \in2<9>/INBUF ;
  wire \alu_mode<0>/INBUF ;
  wire \alu_mode<1>/INBUF ;
  wire \rst/INBUF ;
  wire \n_flag/O ;
  wire \alu_mode<2>/INBUF ;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \clk_BUFGP/BUFG/I0_INV ;
  wire \Mmult_result_mult0000/BCOUT0 ;
  wire \Mmult_result_mult0000/BCOUT1 ;
  wire \Mmult_result_mult0000/BCOUT2 ;
  wire \Mmult_result_mult0000/BCOUT3 ;
  wire \Mmult_result_mult0000/BCOUT4 ;
  wire \Mmult_result_mult0000/BCOUT5 ;
  wire \Mmult_result_mult0000/BCOUT6 ;
  wire \Mmult_result_mult0000/BCOUT7 ;
  wire \Mmult_result_mult0000/BCOUT8 ;
  wire \Mmult_result_mult0000/BCOUT9 ;
  wire \Mmult_result_mult0000/BCOUT10 ;
  wire \Mmult_result_mult0000/BCOUT11 ;
  wire \Mmult_result_mult0000/BCOUT12 ;
  wire \Mmult_result_mult0000/BCOUT13 ;
  wire \Mmult_result_mult0000/BCOUT14 ;
  wire \Mmult_result_mult0000/BCOUT15 ;
  wire \Mmult_result_mult0000/BCOUT16 ;
  wire \Mmult_result_mult0000/BCOUT17 ;
  wire \Mmult_result_mult0000/P15 ;
  wire \Mmult_result_mult0000/P16 ;
  wire \Mmult_result_mult0000/P17 ;
  wire \Mmult_result_mult0000/P18 ;
  wire \Mmult_result_mult0000/P19 ;
  wire \Mmult_result_mult0000/P20 ;
  wire \Mmult_result_mult0000/P21 ;
  wire \Mmult_result_mult0000/P22 ;
  wire \Mmult_result_mult0000/P23 ;
  wire \Mmult_result_mult0000/P24 ;
  wire \Mmult_result_mult0000/P25 ;
  wire \Mmult_result_mult0000/P26 ;
  wire \Mmult_result_mult0000/P27 ;
  wire \Mmult_result_mult0000/P28 ;
  wire \Mmult_result_mult0000/P29 ;
  wire \Mmult_result_mult0000/P30 ;
  wire \Mmult_result_mult0000/P32 ;
  wire \Mmult_result_mult0000/P33 ;
  wire \Mmult_result_mult0000/P34 ;
  wire \Mmult_result_mult0000/P35 ;
  wire \Mmult_result_mult0000/BCIN0 ;
  wire \Mmult_result_mult0000/BCIN1 ;
  wire \Mmult_result_mult0000/BCIN2 ;
  wire \Mmult_result_mult0000/BCIN3 ;
  wire \Mmult_result_mult0000/BCIN4 ;
  wire \Mmult_result_mult0000/BCIN5 ;
  wire \Mmult_result_mult0000/BCIN6 ;
  wire \Mmult_result_mult0000/BCIN7 ;
  wire \Mmult_result_mult0000/BCIN8 ;
  wire \Mmult_result_mult0000/BCIN9 ;
  wire \Mmult_result_mult0000/BCIN10 ;
  wire \Mmult_result_mult0000/BCIN11 ;
  wire \Mmult_result_mult0000/BCIN12 ;
  wire \Mmult_result_mult0000/BCIN13 ;
  wire \Mmult_result_mult0000/BCIN14 ;
  wire \Mmult_result_mult0000/BCIN15 ;
  wire \Mmult_result_mult0000/BCIN16 ;
  wire \Mmult_result_mult0000/BCIN17 ;
  wire \Mmult_result_mult0000/RSTP_INT ;
  wire \Mmult_result_mult0000/RSTB_INT ;
  wire \Mmult_result_mult0000/RSTA_INT ;
  wire \Mmult_result_mult0000/CLK_INT ;
  wire \Mmult_result_mult0000/CEP_INT ;
  wire \Mmult_result_mult0000/CEB_INT ;
  wire \Mmult_result_mult0000/CEA_INT ;
  wire \result<10>_bdd24/F5MUX_5230 ;
  wire N186;
  wire \result<10>_bdd24/BXINV_5223 ;
  wire N185;
  wire \N169/F5MUX_5255 ;
  wire N222;
  wire \N169/BXINV_5248 ;
  wire N221;
  wire \result<10>_bdd60/F5MUX_5280 ;
  wire N184;
  wire \result<10>_bdd60/BXINV_5273 ;
  wire N183;
  wire \result<13>_bdd5/F5MUX_5305 ;
  wire N182;
  wire \result<13>_bdd5/BXINV_5297 ;
  wire N181;
  wire \result<0>_bdd75/F5MUX_5330 ;
  wire \result<0>56 ;
  wire \result<0>_bdd75/BXINV_5323 ;
  wire \result<0>561_5321 ;
  wire \result<11>_bdd5/F5MUX_5355 ;
  wire \result<11>31 ;
  wire \result<11>_bdd5/BXINV_5348 ;
  wire \result<11>311_5346 ;
  wire \result<6>_bdd5/F5MUX_5380 ;
  wire \result<6>31 ;
  wire \result<6>_bdd5/BXINV_5373 ;
  wire \result<6>311_5371 ;
  wire \result<1>_bdd12/F5MUX_5405 ;
  wire \result<1>1240 ;
  wire \result<1>_bdd12/BXINV_5398 ;
  wire \result<1>12401_5396 ;
  wire \N51/F5MUX_5430 ;
  wire \result<2>365_SW0 ;
  wire \N51/BXINV_5421 ;
  wire \result<2>365_SW01_5419 ;
  wire \N157/F5MUX_5455 ;
  wire N210;
  wire \N157/BXINV_5448 ;
  wire N209;
  wire \result<2>_bdd12/F5MUX_5480 ;
  wire \result<2>7 ;
  wire \result<2>_bdd12/BXINV_5473 ;
  wire \result<2>71_5471 ;
  wire \result<14>_bdd12/F5MUX_5505 ;
  wire N180;
  wire \result<14>_bdd12/BXINV_5497 ;
  wire N179;
  wire \result<4>_bdd10/F5MUX_5530 ;
  wire \result<4>61 ;
  wire \result<4>_bdd10/BXINV_5523 ;
  wire \result<4>611_5521 ;
  wire \N155/F5MUX_5555 ;
  wire N208;
  wire \N155/BXINV_5548 ;
  wire N207;
  wire \result<12>_bdd12/F5MUX_5580 ;
  wire \result<12>7 ;
  wire \result<12>_bdd12/BXINV_5573 ;
  wire \result<12>71_5571 ;
  wire \result<2>_bdd14/F5MUX_5605 ;
  wire \result<2>_bdd16_rt_5603 ;
  wire \result<2>_bdd14/BXINV_5595 ;
  wire \result<2>8 ;
  wire \result<8>_bdd5/F5MUX_5630 ;
  wire \result<8>31 ;
  wire \result<8>_bdd5/BXINV_5623 ;
  wire \result<8>311_5621 ;
  wire \result<0>1316/F5MUX_5655 ;
  wire N176;
  wire \result<0>1316/BXINV_5648 ;
  wire N175;
  wire \N153/F5MUX_5680 ;
  wire N206;
  wire \N153/BXINV_5673 ;
  wire N205;
  wire \result<10>_bdd5/F5MUX_5705 ;
  wire \result<10>91 ;
  wire \result<10>_bdd5/BXINV_5698 ;
  wire \result<10>911_5696 ;
  wire \z_flag/OUTPUT/OFF/OCEINV_5041 ;
  wire z_flag_OBUF_5036;
  wire \z_flag/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \z_flag/OUTPUT/OFF/OFF1/RSTAND_5038 ;
  wire \in1<15>/IFF/IFF1/RST ;
  wire \in1<15>/IFF/ICLK1INV_4801 ;
  wire \in1<15>/IFF/ICEINV_4799 ;
  wire \in1<15>/IFF/IDDRIN_MUX_4797 ;
  wire VCC;
  wire \NLW_result<14>_bdd5/F5MUX_IB_UNCONNECTED ;
  wire GND;
  wire [15 : 0] result_addsub0000;
  wire [15 : 0] Maddsub_result_addsub0000_lut;
  wire [17 : 0] \NlwBufferSignal_Mmult_result_mult0000/A ;
  wire [17 : 0] \NlwBufferSignal_Mmult_result_mult0000/B ;
  initial $sdf_annotate("netgen/par/alu_timesim.sdf");
  X_BUF #(
    .LOC ( "SLICE_X3Y62" ))
  \result<5>_bdd5/XUSED  (
    .I(\result<5>_bdd5/F5MUX_1902 ),
    .O(\result<5>_bdd5 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y62" ))
  \result<5>_bdd5/F5MUX  (
    .IA(\result<5>311_1893 ),
    .IB(\result<5>31 ),
    .SEL(\result<5>_bdd5/BXINV_1895 ),
    .O(\result<5>_bdd5/F5MUX_1902 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y62" ))
  \result<5>_bdd5/BXINV  (
    .I(\result<1>_bdd9_0 ),
    .O(\result<5>_bdd5/BXINV_1895 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y51" ))
  \result<12>_bdd15/XUSED  (
    .I(\result<12>_bdd15/F5MUX_1929 ),
    .O(\result<12>_bdd15 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X2Y51" ))
  \result<12>_bdd15/F5MUX  (
    .IA(\result<10>_bdd45 ),
    .IB(\result<10>25_rt_1927 ),
    .SEL(\result<12>_bdd15/BXINV_1919 ),
    .O(\result<12>_bdd15/F5MUX_1929 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y51" ))
  \result<12>_bdd15/BXINV  (
    .I(in2_1_IBUF_1603),
    .O(\result<12>_bdd15/BXINV_1919 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y51" ))
  \result<12>_bdd15/YUSED  (
    .I(\result<10>_bdd45 ),
    .O(\result<10>_bdd45_0 )
  );
  X_LUT4 #(
    .INIT ( 16'hABEF ),
    .LOC ( "SLICE_X0Y43" ))
  \result<12>1140_SW1_G  (
    .ADR0(alu_mode_1_IBUF_1616),
    .ADR1(in2_0_IBUF_1613),
    .ADR2(\result<12>_bdd5 ),
    .ADR3(\result<11>_bdd5 ),
    .O(N218)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y43" ))
  \N165/XUSED  (
    .I(\N165/F5MUX_1954 ),
    .O(N165)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y43" ))
  \N165/F5MUX  (
    .IA(N217),
    .IB(N218),
    .SEL(\N165/BXINV_1947 ),
    .O(\N165/F5MUX_1954 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y43" ))
  \N165/BXINV  (
    .I(alu_mode_0_IBUF_1612),
    .O(\N165/BXINV_1947 )
  );
  X_LUT4 #(
    .INIT ( 16'h0E0A ),
    .LOC ( "SLICE_X0Y43" ))
  \result<12>1140_SW1_F  (
    .ADR0(alu_mode_1_IBUF_1616),
    .ADR1(in2_12_IBUF_1619),
    .ADR2(\result<12>126_0 ),
    .ADR3(in1_12_IBUF_1618),
    .O(N217)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y74" ))
  \result<0>_bdd7/XUSED  (
    .I(\result<0>_bdd7/F5MUX_1979 ),
    .O(\result<0>_bdd7 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X2Y74" ))
  \result<0>_bdd7/F5MUX  (
    .IA(N189),
    .IB(N190),
    .SEL(\result<0>_bdd7/BXINV_1971 ),
    .O(\result<0>_bdd7/F5MUX_1979 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y74" ))
  \result<0>_bdd7/BXINV  (
    .I(in2_1_IBUF_1603),
    .O(\result<0>_bdd7/BXINV_1971 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y41" ))
  \result<10>_bdd50/XUSED  (
    .I(\result<10>_bdd50/F5MUX_2006 ),
    .O(\result<10>_bdd50 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y41" ))
  \result<10>_bdd50/F5MUX  (
    .IA(\result<10>32 ),
    .IB(\result<10>_bdd53_rt_2004 ),
    .SEL(\result<10>_bdd50/BXINV_1996 ),
    .O(\result<10>_bdd50/F5MUX_2006 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y41" ))
  \result<10>_bdd50/BXINV  (
    .I(in2_1_IBUF_1603),
    .O(\result<10>_bdd50/BXINV_1996 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y41" ))
  \result<10>_bdd50/YUSED  (
    .I(\result<10>32 ),
    .O(\result<10>32_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y45" ))
  \N173/XUSED  (
    .I(\N173/F5MUX_2031 ),
    .O(N173)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X2Y45" ))
  \N173/F5MUX  (
    .IA(\result<15>1425_SW0_SW01_2022 ),
    .IB(\result<15>1425_SW0_SW0 ),
    .SEL(\N173/BXINV_2024 ),
    .O(\N173/F5MUX_2031 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y45" ))
  \N173/BXINV  (
    .I(alu_mode_0_IBUF_1612),
    .O(\N173/BXINV_2024 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF35 ),
    .LOC ( "SLICE_X1Y42" ))
  \result<11>1141_SW1_G  (
    .ADR0(\result<11>_bdd5 ),
    .ADR1(\result<10>_bdd6_0 ),
    .ADR2(in2_0_IBUF_1613),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(N220)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y42" ))
  \N167/XUSED  (
    .I(\N167/F5MUX_2056 ),
    .O(N167)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y42" ))
  \N167/F5MUX  (
    .IA(N219),
    .IB(N220),
    .SEL(\N167/BXINV_2049 ),
    .O(\N167/F5MUX_2056 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y42" ))
  \N167/BXINV  (
    .I(alu_mode_0_IBUF_1612),
    .O(\N167/BXINV_2049 )
  );
  X_LUT4 #(
    .INIT ( 16'h5444 ),
    .LOC ( "SLICE_X1Y42" ))
  \result<11>1141_SW1_F  (
    .ADR0(\result<11>126_0 ),
    .ADR1(alu_mode_1_IBUF_1616),
    .ADR2(in2_11_IBUF_1640),
    .ADR3(in1_11_IBUF_1639),
    .O(N219)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y61" ))
  \result<10>_bdd21/XUSED  (
    .I(\result<10>_bdd21/F5MUX_2081 ),
    .O(\result<10>_bdd21 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y61" ))
  \result<10>_bdd21/F5MUX  (
    .IA(\result<10>171_2072 ),
    .IB(\result<10>17 ),
    .SEL(\result<10>_bdd21/BXINV_2074 ),
    .O(\result<10>_bdd21/F5MUX_2081 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y61" ))
  \result<10>_bdd21/BXINV  (
    .I(in2_3_IBUF_1606),
    .O(\result<10>_bdd21/BXINV_2074 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y67" ))
  \N151/XUSED  (
    .I(\N151/F5MUX_2106 ),
    .O(N151)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y67" ))
  \N151/F5MUX  (
    .IA(N203),
    .IB(N204),
    .SEL(\N151/BXINV_2099 ),
    .O(\N151/F5MUX_2106 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y67" ))
  \N151/BXINV  (
    .I(alu_mode_0_IBUF_1612),
    .O(\N151/BXINV_2099 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y70" ))
  \result<0>_bdd74/XUSED  (
    .I(\result<0>_bdd74/F5MUX_2131 ),
    .O(\result<0>_bdd74 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y70" ))
  \result<0>_bdd74/F5MUX  (
    .IA(N177),
    .IB(N178),
    .SEL(\result<0>_bdd74/BXINV_2123 ),
    .O(\result<0>_bdd74/F5MUX_2131 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y70" ))
  \result<0>_bdd74/BXINV  (
    .I(in2_2_IBUF_1600),
    .O(\result<0>_bdd74/BXINV_2123 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y41" ))
  \N161/XUSED  (
    .I(\N161/F5MUX_2156 ),
    .O(N161)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y41" ))
  \N161/F5MUX  (
    .IA(N213),
    .IB(N214),
    .SEL(\N161/BXINV_2149 ),
    .O(\N161/F5MUX_2156 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y41" ))
  \N161/BXINV  (
    .I(alu_mode_0_IBUF_1612),
    .O(\N161/BXINV_2149 )
  );
  X_LUT4 #(
    .INIT ( 16'hABFB ),
    .LOC ( "SLICE_X3Y57" ))
  \result<8>1140_SW1_G  (
    .ADR0(alu_mode_1_IBUF_1616),
    .ADR1(\result<8>_bdd5 ),
    .ADR2(in2_0_IBUF_1613),
    .ADR3(\result<7>_bdd5_0 ),
    .O(N198)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y57" ))
  \N145/XUSED  (
    .I(\N145/F5MUX_2181 ),
    .O(N145)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y57" ))
  \N145/F5MUX  (
    .IA(N197),
    .IB(N198),
    .SEL(\N145/BXINV_2174 ),
    .O(\N145/F5MUX_2181 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y57" ))
  \N145/BXINV  (
    .I(alu_mode_0_IBUF_1612),
    .O(\N145/BXINV_2174 )
  );
  X_LUT4 #(
    .INIT ( 16'h00F8 ),
    .LOC ( "SLICE_X3Y57" ))
  \result<8>1140_SW1_F  (
    .ADR0(in2_8_IBUF_1664),
    .ADR1(in1_8_IBUF_1663),
    .ADR2(alu_mode_1_IBUF_1616),
    .ADR3(\result<8>126_0 ),
    .O(N197)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y62" ))
  \N149/XUSED  (
    .I(\N149/F5MUX_2206 ),
    .O(N149)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X2Y62" ))
  \N149/F5MUX  (
    .IA(N201),
    .IB(N202),
    .SEL(\N149/BXINV_2199 ),
    .O(\N149/F5MUX_2206 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y62" ))
  \N149/BXINV  (
    .I(alu_mode_0_IBUF_1612),
    .O(\N149/BXINV_2199 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF1D ),
    .LOC ( "SLICE_X2Y62" ))
  \result<6>1141_SW1_G  (
    .ADR0(\result<6>_bdd5 ),
    .ADR1(in2_0_IBUF_1613),
    .ADR2(\result<5>_bdd5 ),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(N202)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y46" ))
  \result<10>_bdd34/XUSED  (
    .I(\result<10>_bdd34/F5MUX_2231 ),
    .O(\result<10>_bdd34 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y46" ))
  \result<10>_bdd34/F5MUX  (
    .IA(\result<10>2411_2222 ),
    .IB(\result<10>241 ),
    .SEL(\result<10>_bdd34/BXINV_2224 ),
    .O(\result<10>_bdd34/F5MUX_2231 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y46" ))
  \result<10>_bdd34/BXINV  (
    .I(\result<10>_bdd40_0 ),
    .O(\result<10>_bdd34/BXINV_2224 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y40" ))
  \N163/XUSED  (
    .I(\N163/F5MUX_2256 ),
    .O(N163)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y40" ))
  \N163/F5MUX  (
    .IA(N215),
    .IB(N216),
    .SEL(\N163/BXINV_2249 ),
    .O(\N163/F5MUX_2256 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y40" ))
  \N163/BXINV  (
    .I(alu_mode_0_IBUF_1612),
    .O(\N163/BXINV_2249 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y60" ))
  \N147/XUSED  (
    .I(\N147/F5MUX_2281 ),
    .O(N147)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X2Y60" ))
  \N147/F5MUX  (
    .IA(N199),
    .IB(N200),
    .SEL(\N147/BXINV_2274 ),
    .O(\N147/F5MUX_2281 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y60" ))
  \N147/BXINV  (
    .I(alu_mode_0_IBUF_1612),
    .O(\N147/BXINV_2274 )
  );
  X_LUT4 #(
    .INIT ( 16'hBBAF ),
    .LOC ( "SLICE_X0Y82" ))
  \result<1>2142_SW1_G  (
    .ADR0(alu_mode_1_IBUF_1616),
    .ADR1(\result<0>_bdd7 ),
    .ADR2(\result<1>_bdd5 ),
    .ADR3(in2_0_IBUF_1613),
    .O(N212)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y82" ))
  \N159/XUSED  (
    .I(\N159/F5MUX_2306 ),
    .O(N159)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y82" ))
  \N159/F5MUX  (
    .IA(N211),
    .IB(N212),
    .SEL(\N159/BXINV_2299 ),
    .O(\N159/F5MUX_2306 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y82" ))
  \N159/BXINV  (
    .I(alu_mode_0_IBUF_1612),
    .O(\N159/BXINV_2299 )
  );
  X_LUT4 #(
    .INIT ( 16'h3320 ),
    .LOC ( "SLICE_X0Y82" ))
  \result<1>2142_SW1_F  (
    .ADR0(in1_1_IBUF_1683),
    .ADR1(N89_0),
    .ADR2(in2_1_IBUF_1603),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(N211)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y80" ))
  \result<1>_bdd14/XUSED  (
    .I(\result<1>_bdd14/F5MUX_2331 ),
    .O(\result<1>_bdd14 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y80" ))
  \result<1>_bdd14/F5MUX  (
    .IA(\result<1>13 ),
    .IB(\result<1>_bdd16_rt_2329 ),
    .SEL(\result<1>_bdd14/BXINV_2321 ),
    .O(\result<1>_bdd14/F5MUX_2331 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y80" ))
  \result<1>_bdd14/BXINV  (
    .I(in2_1_IBUF_1603),
    .O(\result<1>_bdd14/BXINV_2321 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y49" ))
  \result<11>_bdd7/XUSED  (
    .I(\result<11>_bdd7/F5MUX_2356 ),
    .O(\result<11>_bdd7 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y49" ))
  \result<11>_bdd7/F5MUX  (
    .IA(\result<11>4 ),
    .IB(\result<10>_bdd12_rt_2354 ),
    .SEL(\result<11>_bdd7/BXINV_2346 ),
    .O(\result<11>_bdd7/F5MUX_2356 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y49" ))
  \result<11>_bdd7/BXINV  (
    .I(in2_1_IBUF_1603),
    .O(\result<11>_bdd7/BXINV_2346 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y72" ))
  \result<1>_bdd5/XUSED  (
    .I(\result<1>_bdd5/F5MUX_2381 ),
    .O(\result<1>_bdd5 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y72" ))
  \result<1>_bdd5/F5MUX  (
    .IA(N191),
    .IB(N192),
    .SEL(\result<1>_bdd5/BXINV_2373 ),
    .O(\result<1>_bdd5/F5MUX_2381 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y72" ))
  \result<1>_bdd5/BXINV  (
    .I(in2_1_IBUF_1603),
    .O(\result<1>_bdd5/BXINV_2373 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y70" ))
  \result<4>_bdd5/XUSED  (
    .I(\result<4>_bdd5/F5MUX_2406 ),
    .O(\result<4>_bdd5 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X2Y70" ))
  \result<4>_bdd5/F5MUX  (
    .IA(\result<4>311_2397 ),
    .IB(\result<4>31 ),
    .SEL(\result<4>_bdd5/BXINV_2399 ),
    .O(\result<4>_bdd5/F5MUX_2406 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y70" ))
  \result<4>_bdd5/BXINV  (
    .I(\result<4>_bdd7_0 ),
    .O(\result<4>_bdd5/BXINV_2399 )
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ),
    .LOC ( "SLICE_X1Y56" ))
  \result<12>342_G  (
    .ADR0(N45_0),
    .ADR1(\result<12>312_0 ),
    .ADR2(in2_2_IBUF_1600),
    .ADR3(VCC),
    .O(N194)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y56" ))
  \result<12>_bdd5/XUSED  (
    .I(\result<12>_bdd5/F5MUX_2431 ),
    .O(\result<12>_bdd5 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y56" ))
  \result<12>_bdd5/F5MUX  (
    .IA(N193),
    .IB(N194),
    .SEL(\result<12>_bdd5/BXINV_2423 ),
    .O(\result<12>_bdd5/F5MUX_2431 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y56" ))
  \result<12>_bdd5/BXINV  (
    .I(in2_1_IBUF_1603),
    .O(\result<12>_bdd5/BXINV_2423 )
  );
  X_LUT4 #(
    .INIT ( 16'h03F3 ),
    .LOC ( "SLICE_X1Y56" ))
  \result<12>342_F  (
    .ADR0(VCC),
    .ADR1(\result<12>_bdd8_0 ),
    .ADR2(in2_2_IBUF_1600),
    .ADR3(\result<10>_bdd29_0 ),
    .O(N193)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y81" ))
  \result<2>_bdd5/XUSED  (
    .I(\result<2>_bdd5/F5MUX_2456 ),
    .O(\result<2>_bdd5 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y81" ))
  \result<2>_bdd5/F5MUX  (
    .IA(N187),
    .IB(N188),
    .SEL(\result<2>_bdd5/BXINV_2448 ),
    .O(\result<2>_bdd5/F5MUX_2456 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y81" ))
  \result<2>_bdd5/BXINV  (
    .I(in2_2_IBUF_1600),
    .O(\result<2>_bdd5/BXINV_2448 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y39" ))
  \result<11>_bdd14/XUSED  (
    .I(\result<11>_bdd14/F5MUX_2481 ),
    .O(\result<11>_bdd14 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y39" ))
  \result<11>_bdd14/F5MUX  (
    .IA(\result<11>811_2472 ),
    .IB(\result<11>81 ),
    .SEL(\result<11>_bdd14/BXINV_2474 ),
    .O(\result<11>_bdd14/F5MUX_2481 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y39" ))
  \result<11>_bdd14/BXINV  (
    .I(\result<11>_bdd17_0 ),
    .O(\result<11>_bdd14/BXINV_2474 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y50" ))
  \result<10>25/XUSED  (
    .I(\result<10>25/F5MUX_2506 ),
    .O(\result<10>25 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y50" ))
  \result<10>25/F5MUX  (
    .IA(\result<10>2511_2497 ),
    .IB(\result<10>251 ),
    .SEL(\result<10>25/BXINV_2499 ),
    .O(\result<10>25/F5MUX_2506 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y50" ))
  \result<10>25/BXINV  (
    .I(in2_3_IBUF_1606),
    .O(\result<10>25/BXINV_2499 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y56" ))
  \N143/XUSED  (
    .I(\N143/F5MUX_2531 ),
    .O(N143)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y56" ))
  \N143/F5MUX  (
    .IA(N195),
    .IB(N196),
    .SEL(\N143/BXINV_2524 ),
    .O(\N143/F5MUX_2531 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y56" ))
  \N143/BXINV  (
    .I(alu_mode_0_IBUF_1612),
    .O(\N143/BXINV_2524 )
  );
  X_LUT4 #(
    .INIT ( 16'hEE22 ),
    .LOC ( "SLICE_X0Y52" ))
  \result<10>161  (
    .ADR0(\result<10>_bdd22 ),
    .ADR1(in2_2_IBUF_1600),
    .ADR2(VCC),
    .ADR3(\result<10>_bdd21 ),
    .O(\result<10>_bdd6 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y52" ))
  \result<10>_bdd6/XUSED  (
    .I(\result<10>_bdd6 ),
    .O(\result<10>_bdd6_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y52" ))
  \result<10>_bdd6/YUSED  (
    .I(\result<10>_bdd22_pack_1 ),
    .O(\result<10>_bdd22 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y79" ))
  \N53/XUSED  (
    .I(N53),
    .O(N53_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y79" ))
  \N53/YUSED  (
    .I(\result<12>312 ),
    .O(\result<12>312_0 )
  );
  X_LUT4 #(
    .INIT ( 16'h5140 ),
    .LOC ( "SLICE_X0Y79" ))
  \result<10>20_SW0  (
    .ADR0(\result<0>_bdd64_0 ),
    .ADR1(in2_3_IBUF_1606),
    .ADR2(in1_2_IBUF_1713),
    .ADR3(in1_10_IBUF_1714),
    .O(\result<12>312 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y40" ))
  \result<12>126/XUSED  (
    .I(\result<12>126_2602 ),
    .O(\result<12>126_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y40" ))
  \result<12>126/YUSED  (
    .I(\result<13>126_2595 ),
    .O(\result<13>126_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y74" ))
  \result<0>1238/XUSED  (
    .I(\result<0>1238_2626 ),
    .O(\result<0>1238_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y74" ))
  \result<0>1238/YUSED  (
    .I(\result<0>_bdd6_pack_1 ),
    .O(\result<0>_bdd6 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y49" ))
  \result<10>_bdd8/XUSED  (
    .I(\result<10>_bdd8 ),
    .O(\result<10>_bdd8_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y49" ))
  \result<10>_bdd8/YUSED  (
    .I(\result<11>_bdd17 ),
    .O(\result<11>_bdd17_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y38" ))
  \result<0>54/XUSED  (
    .I(\result<0>54_2662 ),
    .O(\result<0>54_0 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X0Y38" ))
  \result<0>54  (
    .ADR0(in2_13_IBUF_1675),
    .ADR1(in2_14_IBUF_1658),
    .ADR2(in2_12_IBUF_1619),
    .ADR3(in2_15_IBUF_1634),
    .O(\result<0>54_2662 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y60" ))
  \N67/XUSED  (
    .I(N67),
    .O(N67_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y60" ))
  \N67/YUSED  (
    .I(N71),
    .O(N71_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y85" ))
  \result_5_OBUF/YUSED  (
    .I(N117_pack_1),
    .O(N117)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y39" ))
  \result<0>59/XUSED  (
    .I(\result<0>59_2722 ),
    .O(\result<0>59_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y46" ))
  \result<15>186/XUSED  (
    .I(\result<15>186_2746 ),
    .O(\result<15>186_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y46" ))
  \result<15>186/YUSED  (
    .I(N105_pack_1),
    .O(N105)
  );
  X_LUT4 #(
    .INIT ( 16'h0454 ),
    .LOC ( "SLICE_X0Y64" ))
  \result<13>1141  (
    .ADR0(rst_IBUF_1727),
    .ADR1(N129),
    .ADR2(alu_mode_2_IBUF_1728),
    .ADR3(N163),
    .O(result_13_OBUF_2770)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y64" ))
  \result_13_OBUF/YUSED  (
    .I(N129_pack_1),
    .O(N129)
  );
  X_LUT4 #(
    .INIT ( 16'hE488 ),
    .LOC ( "SLICE_X0Y64" ))
  \result<13>1141_SW0_SW0  (
    .ADR0(alu_mode_0_IBUF_1612),
    .ADR1(result_addsub0000[13]),
    .ADR2(\result_mult0000[13] ),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(N129_pack_1)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y45" ))
  \result<15>1259/XUSED  (
    .I(\result<15>1259_2794 ),
    .O(\result<15>1259_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y45" ))
  \result<15>1259/YUSED  (
    .I(N139_pack_1),
    .O(N139)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y80" ))
  \result_0_OBUF/YUSED  (
    .I(N137_pack_1),
    .O(N137)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y58" ))
  \N45/XUSED  (
    .I(N45),
    .O(N45_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y58" ))
  \N45/YUSED  (
    .I(N39),
    .O(N39_0)
  );
  X_LUT4 #(
    .INIT ( 16'hA280 ),
    .LOC ( "SLICE_X1Y49" ))
  \result<0>18_SW2  (
    .ADR0(\result<0>_bdd13 ),
    .ADR1(in2_3_IBUF_1606),
    .ADR2(in1_7_IBUF_1679),
    .ADR3(in1_15_IBUF_1635),
    .O(N41)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y49" ))
  \N41/XUSED  (
    .I(N41),
    .O(N41_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y49" ))
  \N41/YUSED  (
    .I(N47),
    .O(N47_0)
  );
  X_LUT4 #(
    .INIT ( 16'h80B3 ),
    .LOC ( "SLICE_X1Y49" ))
  \result<10>13_SW2  (
    .ADR0(\result<0>_bdd13 ),
    .ADR1(in2_3_IBUF_1606),
    .ADR2(in1_15_IBUF_1635),
    .ADR3(\result<0>_bdd87 ),
    .O(N47)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y43" ))
  \result<14>126/XUSED  (
    .I(\result<14>126_2890 ),
    .O(\result<14>126_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y43" ))
  \result<14>126/YUSED  (
    .I(\result<13>_bdd10_pack_1 ),
    .O(\result<13>_bdd10 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y77" ))
  \result_6_OBUF/YUSED  (
    .I(N115_pack_1),
    .O(N115)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y83" ))
  \result<2>126/XUSED  (
    .I(\result<2>126_2938 ),
    .O(\result<2>126_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y83" ))
  \result<2>126/YUSED  (
    .I(N89),
    .O(N89_0)
  );
  X_LUT4 #(
    .INIT ( 16'hFC30 ),
    .LOC ( "SLICE_X1Y63" ))
  \result<4>41  (
    .ADR0(VCC),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(\result<10>_bdd24 ),
    .ADR3(\result<2>_bdd9 ),
    .O(\result<4>_bdd7 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y63" ))
  \result<4>_bdd7/XUSED  (
    .I(\result<4>_bdd7 ),
    .O(\result<4>_bdd7_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y63" ))
  \result<4>_bdd7/YUSED  (
    .I(\result<2>_bdd9_pack_1 ),
    .O(\result<2>_bdd9 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y65" ))
  \result_mux0002/XUSED  (
    .I(result_mux0002),
    .O(result_mux0002_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y65" ))
  \result_mux0002/YUSED  (
    .I(N107),
    .O(N107_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y59" ))
  \result<0>_bdd104/XUSED  (
    .I(\result<0>_bdd104 ),
    .O(\result<0>_bdd104_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y59" ))
  \result<0>_bdd104/YUSED  (
    .I(\result<12>_bdd8 ),
    .O(\result<12>_bdd8_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y80" ))
  \result_2_OBUF/YUSED  (
    .I(N123_pack_1),
    .O(N123)
  );
  X_LUT4 #(
    .INIT ( 16'hFF47 ),
    .LOC ( "SLICE_X1Y73" ))
  \result<0>511  (
    .ADR0(in1_11_IBUF_1639),
    .ADR1(in2_3_IBUF_1606),
    .ADR2(in1_3_IBUF_1771),
    .ADR3(\result<0>_bdd64_0 ),
    .O(\result<0>_bdd79 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y73" ))
  \result<0>_bdd79/XUSED  (
    .I(\result<0>_bdd79 ),
    .O(\result<0>_bdd79_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y73" ))
  \result<0>_bdd79/YUSED  (
    .I(z_flag_mux000212_3051),
    .O(z_flag_mux000212_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y69" ))
  \result<0>1185/XUSED  (
    .I(\result<0>1185_3082 ),
    .O(\result<0>1185_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y69" ))
  \result<0>1185/YUSED  (
    .I(N61_pack_1),
    .O(N61)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y74" ))
  \result<3>_bdd5/XUSED  (
    .I(\result<3>_bdd5 ),
    .O(\result<3>_bdd5_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y59" ))
  \result<7>_bdd5/XUSED  (
    .I(\result<7>_bdd5 ),
    .O(\result<7>_bdd5_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y59" ))
  \result<7>_bdd5/YUSED  (
    .I(\result<3>_bdd7_pack_1 ),
    .O(\result<3>_bdd7 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y72" ))
  \result<0>_bdd28/XUSED  (
    .I(\result<0>_bdd28 ),
    .O(\result<0>_bdd28_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y72" ))
  \result<0>_bdd28/YUSED  (
    .I(\result<12>_bdd14 ),
    .O(\result<12>_bdd14_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y51" ))
  \result<10>_bdd40/XUSED  (
    .I(\result<10>_bdd40 ),
    .O(\result<10>_bdd40_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y51" ))
  \result<10>_bdd40/YUSED  (
    .I(\result<2>_bdd16 ),
    .O(\result<2>_bdd16_0 )
  );
  X_LUT4 #(
    .INIT ( 16'h8B03 ),
    .LOC ( "SLICE_X0Y51" ))
  \result<2>91  (
    .ADR0(in1_1_IBUF_1683),
    .ADR1(in2_3_IBUF_1606),
    .ADR2(\result<0>_bdd80_0 ),
    .ADR3(\result<0>_bdd13 ),
    .O(\result<2>_bdd16 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y54" ))
  \result<0>_bdd84/XUSED  (
    .I(\result<0>_bdd84 ),
    .O(\result<0>_bdd84_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y54" ))
  \result<0>_bdd84/YUSED  (
    .I(\result<13>_bdd7 ),
    .O(\result<13>_bdd7_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y77" ))
  \result<0>_bdd61/XUSED  (
    .I(\result<0>_bdd61 ),
    .O(\result<0>_bdd61_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y77" ))
  \result<0>_bdd61/YUSED  (
    .I(z_flag_mux000225_3207),
    .O(z_flag_mux000225_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y65" ))
  \N79/XUSED  (
    .I(N79),
    .O(N79_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y65" ))
  \N79/YUSED  (
    .I(\result<3>_bdd10_pack_1 ),
    .O(\result<3>_bdd10 )
  );
  X_LUT4 #(
    .INIT ( 16'h1054 ),
    .LOC ( "SLICE_X2Y67" ))
  \result<7>1141  (
    .ADR0(rst_IBUF_1727),
    .ADR1(alu_mode_2_IBUF_1728),
    .ADR2(N113),
    .ADR3(N147),
    .O(result_7_OBUF_3262)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y67" ))
  \result_7_OBUF/YUSED  (
    .I(N113_pack_1),
    .O(N113)
  );
  X_LUT4 #(
    .INIT ( 16'hCAA0 ),
    .LOC ( "SLICE_X2Y67" ))
  \result<7>1141_SW0_SW0  (
    .ADR0(result_addsub0000[7]),
    .ADR1(\result_mult0000[7] ),
    .ADR2(alu_mode_0_IBUF_1612),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(N113_pack_1)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y44" ))
  \result<15>1271/XUSED  (
    .I(\result<15>1271_3286 ),
    .O(\result<15>1271_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y44" ))
  \result<15>1271/YUSED  (
    .I(N6_pack_1),
    .O(N6)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y54" ))
  \result<7>_bdd8/XUSED  (
    .I(\result<7>_bdd8 ),
    .O(\result<7>_bdd8_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y54" ))
  \result<7>_bdd8/YUSED  (
    .I(\result<3>_bdd12_pack_1 ),
    .O(\result<3>_bdd12 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y75" ))
  \z_flag_mux0002/YUSED  (
    .I(z_flag_mux000262_pack_1),
    .O(z_flag_mux000262_1798)
  );
  X_LUT4 #(
    .INIT ( 16'h0702 ),
    .LOC ( "SLICE_X0Y76" ))
  \result<3>1140  (
    .ADR0(alu_mode_2_IBUF_1728),
    .ADR1(N155),
    .ADR2(rst_IBUF_1727),
    .ADR3(N121),
    .O(result_3_OBUF_3358)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y76" ))
  \result_3_OBUF/YUSED  (
    .I(N121_pack_1),
    .O(N121)
  );
  X_LUT4 #(
    .INIT ( 16'hE288 ),
    .LOC ( "SLICE_X0Y76" ))
  \result<3>1140_SW0_SW0  (
    .ADR0(result_addsub0000[3]),
    .ADR1(alu_mode_0_IBUF_1612),
    .ADR2(\result_mult0000[3] ),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(N121_pack_1)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y52" ))
  \result<0>1203/XUSED  (
    .I(\result<0>1203_3382 ),
    .O(\result<0>1203_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y52" ))
  \result<0>1203/YUSED  (
    .I(\result<14>712_3375 ),
    .O(\result<14>712_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y44" ))
  \result<13>60/XUSED  (
    .I(\result<13>60_3406 ),
    .O(\result<13>60_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y44" ))
  \result<13>60/YUSED  (
    .I(\result<13>_bdd12_pack_1 ),
    .O(\result<13>_bdd12 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y73" ))
  \z_flag_mux000249/XUSED  (
    .I(z_flag_mux000249_3418),
    .O(z_flag_mux000249_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y51" ))
  \result<8>_bdd8/XUSED  (
    .I(\result<8>_bdd8 ),
    .O(\result<8>_bdd8_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y51" ))
  \result<8>_bdd8/YUSED  (
    .I(\result<4>_bdd12_pack_1 ),
    .O(\result<4>_bdd12 )
  );
  X_LUT4 #(
    .INIT ( 16'hF5A0 ),
    .LOC ( "SLICE_X3Y51" ))
  \result<8>51  (
    .ADR0(in2_2_IBUF_1600),
    .ADR1(VCC),
    .ADR2(\result<12>_bdd15 ),
    .ADR3(\result<4>_bdd12 ),
    .O(\result<8>_bdd8 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y66" ))
  \N83/XUSED  (
    .I(N83),
    .O(N83_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y66" ))
  \N83/YUSED  (
    .I(z_flag_cmp_eq0000),
    .O(z_flag_cmp_eq0000_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y46" ))
  \result<0>_bdd57/XUSED  (
    .I(\result<0>_bdd57 ),
    .O(\result<0>_bdd57_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y46" ))
  \result<0>_bdd57/YUSED  (
    .I(\result<0>_bdd32 ),
    .O(\result<0>_bdd32_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y66" ))
  \N75/XUSED  (
    .I(N75),
    .O(N75_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y66" ))
  \N75/YUSED  (
    .I(\result<5>_bdd8_pack_1 ),
    .O(\result<5>_bdd8 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y68" ))
  \result_4_OBUF/YUSED  (
    .I(N119_pack_1),
    .O(N119)
  );
  X_LUT4 #(
    .INIT ( 16'h0232 ),
    .LOC ( "SLICE_X1Y68" ))
  \result<4>1140  (
    .ADR0(N119),
    .ADR1(rst_IBUF_1727),
    .ADR2(alu_mode_2_IBUF_1728),
    .ADR3(N153),
    .O(result_4_OBUF_3538)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y48" ))
  \result<10>_bdd12/XUSED  (
    .I(\result<10>_bdd12 ),
    .O(\result<10>_bdd12_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y48" ))
  \result<10>_bdd12/YUSED  (
    .I(\result<0>_bdd33_pack_1 ),
    .O(\result<0>_bdd33 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y82" ))
  \result_1_OBUF/YUSED  (
    .I(N125_pack_1),
    .O(N125)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y58" ))
  \result<0>_bdd107/XUSED  (
    .I(\result<0>_bdd107 ),
    .O(\result<0>_bdd107_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y58" ))
  \result<0>_bdd107/YUSED  (
    .I(\result<0>141_3603 ),
    .O(\result<0>141_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y53" ))
  \result<10>_bdd17/XUSED  (
    .I(\result<10>_bdd17 ),
    .O(\result<10>_bdd17_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y53" ))
  \result<10>_bdd17/YUSED  (
    .I(\result<10>_bdd29 ),
    .O(\result<10>_bdd29_0 )
  );
  X_LUT4 #(
    .INIT ( 16'h5404 ),
    .LOC ( "SLICE_X1Y53" ))
  \result<10>151  (
    .ADR0(\result<0>_bdd64_0 ),
    .ADR1(in1_9_IBUF_1709),
    .ADR2(in2_3_IBUF_1606),
    .ADR3(in1_1_IBUF_1683),
    .O(\result<10>_bdd17 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y71" ))
  \result_12_OBUF/YUSED  (
    .I(N131_pack_1),
    .O(N131)
  );
  X_LUT4 #(
    .INIT ( 16'hB8C0 ),
    .LOC ( "SLICE_X0Y71" ))
  \result<12>1140_SW0_SW0  (
    .ADR0(\result_mult0000[12] ),
    .ADR1(alu_mode_0_IBUF_1612),
    .ADR2(result_addsub0000[12]),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(N131_pack_1)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y50" ))
  \result<10>_bdd46/XUSED  (
    .I(\result<10>_bdd46 ),
    .O(\result<10>_bdd46_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y50" ))
  \result<10>_bdd46/YUSED  (
    .I(\result<0>_bdd23_pack_1 ),
    .O(\result<0>_bdd23 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y66" ))
  \result_9_OBUF/YUSED  (
    .I(N109_pack_1),
    .O(N109)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y52" ))
  \result<10>_bdd11/XUSED  (
    .I(\result<10>_bdd11 ),
    .O(\result<10>_bdd11_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y52" ))
  \result<10>_bdd11/YUSED  (
    .I(\result<0>_bdd24_pack_1 ),
    .O(\result<0>_bdd24 )
  );
  X_LUT4 #(
    .INIT ( 16'hA280 ),
    .LOC ( "SLICE_X1Y48" ))
  \result<9>126  (
    .ADR0(alu_mode_1_IBUF_1616),
    .ADR1(in2_0_IBUF_1613),
    .ADR2(\result<10>_bdd35 ),
    .ADR3(\result<8>_bdd8_0 ),
    .O(\result<9>126_3754 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y48" ))
  \result<9>126/XUSED  (
    .I(\result<9>126_3754 ),
    .O(\result<9>126_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y48" ))
  \result<9>126/YUSED  (
    .I(\result<10>_bdd35_pack_1 ),
    .O(\result<10>_bdd35 )
  );
  X_LUT4 #(
    .INIT ( 16'hCACA ),
    .LOC ( "SLICE_X1Y48" ))
  \result<10>311  (
    .ADR0(\result<10>_bdd51_0 ),
    .ADR1(\result<10>_bdd50 ),
    .ADR2(in2_2_IBUF_1600),
    .ADR3(VCC),
    .O(\result<10>_bdd35_pack_1 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y58" ))
  \N4/XUSED  (
    .I(N4),
    .O(N4_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y58" ))
  \N4/YUSED  (
    .I(\result<1>_bdd9 ),
    .O(\result<1>_bdd9_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y77" ))
  \result<1>_bdd16/XUSED  (
    .I(\result<1>_bdd16 ),
    .O(\result<1>_bdd16_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y77" ))
  \result<1>_bdd16/YUSED  (
    .I(\result<0>_bdd54 ),
    .O(\result<0>_bdd54_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y45" ))
  \result<13>615/XUSED  (
    .I(\result<13>615_3826 ),
    .O(\result<13>615_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y45" ))
  \result<13>615/YUSED  (
    .I(\result<0>_bdd42_pack_1 ),
    .O(\result<0>_bdd42 )
  );
  X_LUT4 #(
    .INIT ( 16'h0C0A ),
    .LOC ( "SLICE_X1Y60" ))
  \result<0>4316  (
    .ADR0(\result<0>_bdd81_0 ),
    .ADR1(\result<0>_bdd80_0 ),
    .ADR2(in2_1_IBUF_1603),
    .ADR3(in2_3_IBUF_1606),
    .O(\result<0>4316_3850 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y60" ))
  \result<0>4316/XUSED  (
    .I(\result<0>4316_3850 ),
    .O(\result<0>4316_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y60" ))
  \result<0>4316/YUSED  (
    .I(\result<0>2512_3843 ),
    .O(\result<0>2512_0 )
  );
  X_LUT4 #(
    .INIT ( 16'hA808 ),
    .LOC ( "SLICE_X1Y60" ))
  \result<0>2512  (
    .ADR0(in2_1_IBUF_1603),
    .ADR1(\result<0>_bdd42 ),
    .ADR2(in2_3_IBUF_1606),
    .ADR3(\result<0>_bdd41_0 ),
    .O(\result<0>2512_3843 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y79" ))
  \result<0>1128/XUSED  (
    .I(\result<0>1128_3874 ),
    .O(\result<0>1128_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y79" ))
  \result<0>1128/YUSED  (
    .I(\result<0>177_pack_1 ),
    .O(\result<0>177_1838 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y76" ))
  \result<2>324/XUSED  (
    .I(\result<2>324_3898 ),
    .O(\result<2>324_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y76" ))
  \result<2>324/YUSED  (
    .I(\result<0>_bdd43_pack_2 ),
    .O(\result<0>_bdd43 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y54" ))
  \result<0>_bdd41/XUSED  (
    .I(\result<0>_bdd41 ),
    .O(\result<0>_bdd41_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y54" ))
  \result<0>_bdd41/YUSED  (
    .I(\result<0>514_pack_1 ),
    .O(\result<0>514_1706 )
  );
  X_LUT4 #(
    .INIT ( 16'hD800 ),
    .LOC ( "SLICE_X3Y47" ))
  \result<10>331  (
    .ADR0(in2_3_IBUF_1606),
    .ADR1(in1_8_IBUF_1663),
    .ADR2(in1_0_IBUF_1779),
    .ADR3(\result<0>_bdd13 ),
    .O(\result<10>_bdd53 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y47" ))
  \result<10>_bdd53/XUSED  (
    .I(\result<10>_bdd53 ),
    .O(\result<10>_bdd53_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y47" ))
  \result<10>_bdd53/YUSED  (
    .I(\result<0>_bdd13_pack_1 ),
    .O(\result<0>_bdd13 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y55" ))
  \N35/XUSED  (
    .I(N35),
    .O(N35_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y55" ))
  \N35/YUSED  (
    .I(\result<0>_bdd87_pack_1 ),
    .O(\result<0>_bdd87 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y50" ))
  \result<6>_bdd8/XUSED  (
    .I(\result<6>_bdd8 ),
    .O(\result<6>_bdd8_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y50" ))
  \result<6>_bdd8/YUSED  (
    .I(\result<10>_bdd38_pack_1 ),
    .O(\result<10>_bdd38 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y56" ))
  \result<0>_bdd80/XUSED  (
    .I(\result<0>_bdd80 ),
    .O(\result<0>_bdd80_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y56" ))
  \result<0>_bdd80/YUSED  (
    .I(\result<0>374_pack_1 ),
    .O(\result<0>374_1780 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y57" ))
  \result<0>_bdd81/XUSED  (
    .I(\result<0>_bdd81 ),
    .O(\result<0>_bdd81_0 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0AA ),
    .LOC ( "SLICE_X3Y48" ))
  \result<10>361  (
    .ADR0(\result<10>_bdd61 ),
    .ADR1(VCC),
    .ADR2(\result<10>_bdd60 ),
    .ADR3(in2_1_IBUF_1603),
    .O(\result<10>_bdd51 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y48" ))
  \result<10>_bdd51/XUSED  (
    .I(\result<10>_bdd51 ),
    .O(\result<10>_bdd51_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y48" ))
  \result<10>_bdd51/YUSED  (
    .I(\result<10>_bdd61_pack_1 ),
    .O(\result<10>_bdd61 )
  );
  X_LUT4 #(
    .INIT ( 16'hF202 ),
    .LOC ( "SLICE_X3Y48" ))
  \result<10>381  (
    .ADR0(in1_10_IBUF_1714),
    .ADR1(\result<0>_bdd64_0 ),
    .ADR2(in2_3_IBUF_1606),
    .ADR3(\result<0>_bdd41_0 ),
    .O(\result<10>_bdd61_pack_1 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y46" ))
  \result<10>726/XUSED  (
    .I(\result<10>726_4078 ),
    .O(\result<10>726_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y46" ))
  \result<10>726/YUSED  (
    .I(\result<11>126_4071 ),
    .O(\result<11>126_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y57" ))
  \N171/XUSED  (
    .I(N171),
    .O(N171_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y57" ))
  \N171/YUSED  (
    .I(\result<0>379_pack_1 ),
    .O(\result<0>379_1781 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y64" ))
  \result_14_OBUF/YUSED  (
    .I(N127_pack_1),
    .O(N127)
  );
  X_LUT4 #(
    .INIT ( 16'hDFCE ),
    .LOC ( "SLICE_X1Y76" ))
  \result<0>121  (
    .ADR0(in2_3_IBUF_1606),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(\result<0>_bdd117 ),
    .ADR3(\result<0>_bdd61_0 ),
    .O(\result<0>121_4150 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y76" ))
  \result<0>121/XUSED  (
    .I(\result<0>121_4150 ),
    .O(\result<0>121_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y76" ))
  \result<0>121/YUSED  (
    .I(\result<0>_bdd117_pack_1 ),
    .O(\result<0>_bdd117 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFF ),
    .LOC ( "SLICE_X1Y76" ))
  \result<0>671  (
    .ADR0(\result<0>379_1781 ),
    .ADR1(\result<0>374_1780 ),
    .ADR2(\result<0>3714_1782 ),
    .ADR3(in1_8_IBUF_1663),
    .O(\result<0>_bdd117_pack_1 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y56" ))
  \result<0>_bdd64/XUSED  (
    .I(\result<0>_bdd64 ),
    .O(\result<0>_bdd64_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y56" ))
  \result<0>_bdd64/YUSED  (
    .I(\result<0>3714_pack_1 ),
    .O(\result<0>3714_1782 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y55" ))
  \result<8>126/XUSED  (
    .I(\result<8>126_4186 ),
    .O(\result<8>126_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y65" ))
  \result_15_OBUF/YUSED  (
    .I(N141_pack_1),
    .O(N141)
  );
  X_LUT4 #(
    .INIT ( 16'h9696 ),
    .LOC ( "SLICE_X3Y64" ))
  \Maddsub_result_addsub0000_lut<0>  (
    .ADR0(in1_0_IBUF_1779),
    .ADR1(in2_0_IBUF_1613),
    .ADR2(result_mux0002_0),
    .ADR3(VCC),
    .O(Maddsub_result_addsub0000_lut[0])
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y64" ))
  \result_addsub0000<0>/XUSED  (
    .I(\result_addsub0000<0>/XORF_4247 ),
    .O(result_addsub0000[0])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X3Y64" ))
  \result_addsub0000<0>/XORF  (
    .I0(\result_addsub0000<0>/CYINIT_4246 ),
    .I1(Maddsub_result_addsub0000_lut[0]),
    .O(\result_addsub0000<0>/XORF_4247 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y64" ))
  \result_addsub0000<0>/CYMUXF  (
    .IA(\result_addsub0000<0>/CY0F_4245 ),
    .IB(\result_addsub0000<0>/CYINIT_4246 ),
    .SEL(\result_addsub0000<0>/CYSELF_4238 ),
    .O(\Maddsub_result_addsub0000_cy[0] )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y64" ))
  \result_addsub0000<0>/CYINIT  (
    .I(result_mux0002_0),
    .O(\result_addsub0000<0>/CYINIT_4246 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y64" ))
  \result_addsub0000<0>/CY0F  (
    .I(in1_0_IBUF_1779),
    .O(\result_addsub0000<0>/CY0F_4245 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y64" ))
  \result_addsub0000<0>/CYSELF  (
    .I(Maddsub_result_addsub0000_lut[0]),
    .O(\result_addsub0000<0>/CYSELF_4238 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y64" ))
  \result_addsub0000<0>/YUSED  (
    .I(\result_addsub0000<0>/XORG_4234 ),
    .O(result_addsub0000[1])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X3Y64" ))
  \result_addsub0000<0>/XORG  (
    .I0(\Maddsub_result_addsub0000_cy[0] ),
    .I1(Maddsub_result_addsub0000_lut[1]),
    .O(\result_addsub0000<0>/XORG_4234 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y64" ))
  \result_addsub0000<0>/COUTUSED  (
    .I(\result_addsub0000<0>/CYMUXG_4233 ),
    .O(\Maddsub_result_addsub0000_cy[1] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y64" ))
  \result_addsub0000<0>/CYMUXG  (
    .IA(\result_addsub0000<0>/CY0G_4231 ),
    .IB(\Maddsub_result_addsub0000_cy[0] ),
    .SEL(\result_addsub0000<0>/CYSELG_4224 ),
    .O(\result_addsub0000<0>/CYMUXG_4233 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y64" ))
  \result_addsub0000<0>/CY0G  (
    .I(in1_1_IBUF_1683),
    .O(\result_addsub0000<0>/CY0G_4231 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y64" ))
  \result_addsub0000<0>/CYSELG  (
    .I(Maddsub_result_addsub0000_lut[1]),
    .O(\result_addsub0000<0>/CYSELG_4224 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y68" ))
  \result<1>812/XUSED  (
    .I(\result<1>812_4258 ),
    .O(\result<1>812_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y65" ))
  \result_addsub0000<2>/XUSED  (
    .I(\result_addsub0000<2>/XORF_4298 ),
    .O(result_addsub0000[2])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X3Y65" ))
  \result_addsub0000<2>/XORF  (
    .I0(\result_addsub0000<2>/CYINIT_4297 ),
    .I1(Maddsub_result_addsub0000_lut[2]),
    .O(\result_addsub0000<2>/XORF_4298 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y65" ))
  \result_addsub0000<2>/CYMUXF  (
    .IA(\result_addsub0000<2>/CY0F_4296 ),
    .IB(\result_addsub0000<2>/CYINIT_4297 ),
    .SEL(\result_addsub0000<2>/CYSELF_4285 ),
    .O(\Maddsub_result_addsub0000_cy[2] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y65" ))
  \result_addsub0000<2>/CYMUXF2  (
    .IA(\result_addsub0000<2>/CY0F_4296 ),
    .IB(\result_addsub0000<2>/CY0F_4296 ),
    .SEL(\result_addsub0000<2>/CYSELF_4285 ),
    .O(\result_addsub0000<2>/CYMUXF2_4280 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y65" ))
  \result_addsub0000<2>/CYINIT  (
    .I(\Maddsub_result_addsub0000_cy[1] ),
    .O(\result_addsub0000<2>/CYINIT_4297 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y65" ))
  \result_addsub0000<2>/CY0F  (
    .I(in1_2_IBUF_1713),
    .O(\result_addsub0000<2>/CY0F_4296 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y65" ))
  \result_addsub0000<2>/CYSELF  (
    .I(Maddsub_result_addsub0000_lut[2]),
    .O(\result_addsub0000<2>/CYSELF_4285 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y65" ))
  \result_addsub0000<2>/YUSED  (
    .I(\result_addsub0000<2>/XORG_4287 ),
    .O(result_addsub0000[3])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X3Y65" ))
  \result_addsub0000<2>/XORG  (
    .I0(\Maddsub_result_addsub0000_cy[2] ),
    .I1(Maddsub_result_addsub0000_lut[3]),
    .O(\result_addsub0000<2>/XORG_4287 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y65" ))
  \result_addsub0000<2>/COUTUSED  (
    .I(\result_addsub0000<2>/CYMUXFAST_4284 ),
    .O(\Maddsub_result_addsub0000_cy[3] )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y65" ))
  \result_addsub0000<2>/FASTCARRY  (
    .I(\Maddsub_result_addsub0000_cy[1] ),
    .O(\result_addsub0000<2>/FASTCARRY_4282 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X3Y65" ))
  \result_addsub0000<2>/CYAND  (
    .I0(\result_addsub0000<2>/CYSELG_4272 ),
    .I1(\result_addsub0000<2>/CYSELF_4285 ),
    .O(\result_addsub0000<2>/CYAND_4283 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y65" ))
  \result_addsub0000<2>/CYMUXFAST  (
    .IA(\result_addsub0000<2>/CYMUXG2_4281 ),
    .IB(\result_addsub0000<2>/FASTCARRY_4282 ),
    .SEL(\result_addsub0000<2>/CYAND_4283 ),
    .O(\result_addsub0000<2>/CYMUXFAST_4284 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y65" ))
  \result_addsub0000<2>/CYMUXG2  (
    .IA(\result_addsub0000<2>/CY0G_4279 ),
    .IB(\result_addsub0000<2>/CYMUXF2_4280 ),
    .SEL(\result_addsub0000<2>/CYSELG_4272 ),
    .O(\result_addsub0000<2>/CYMUXG2_4281 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y65" ))
  \result_addsub0000<2>/CY0G  (
    .I(in1_3_IBUF_1771),
    .O(\result_addsub0000<2>/CY0G_4279 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y65" ))
  \result_addsub0000<2>/CYSELG  (
    .I(Maddsub_result_addsub0000_lut[3]),
    .O(\result_addsub0000<2>/CYSELG_4272 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y66" ))
  \result_addsub0000<4>/XUSED  (
    .I(\result_addsub0000<4>/XORF_4337 ),
    .O(result_addsub0000[4])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X3Y66" ))
  \result_addsub0000<4>/XORF  (
    .I0(\result_addsub0000<4>/CYINIT_4336 ),
    .I1(Maddsub_result_addsub0000_lut[4]),
    .O(\result_addsub0000<4>/XORF_4337 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y66" ))
  \result_addsub0000<4>/CYMUXF  (
    .IA(\result_addsub0000<4>/CY0F_4335 ),
    .IB(\result_addsub0000<4>/CYINIT_4336 ),
    .SEL(\result_addsub0000<4>/CYSELF_4324 ),
    .O(\Maddsub_result_addsub0000_cy[4] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y66" ))
  \result_addsub0000<4>/CYMUXF2  (
    .IA(\result_addsub0000<4>/CY0F_4335 ),
    .IB(\result_addsub0000<4>/CY0F_4335 ),
    .SEL(\result_addsub0000<4>/CYSELF_4324 ),
    .O(\result_addsub0000<4>/CYMUXF2_4319 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y66" ))
  \result_addsub0000<4>/CYINIT  (
    .I(\Maddsub_result_addsub0000_cy[3] ),
    .O(\result_addsub0000<4>/CYINIT_4336 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y66" ))
  \result_addsub0000<4>/CY0F  (
    .I(in1_4_IBUF_1764),
    .O(\result_addsub0000<4>/CY0F_4335 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y66" ))
  \result_addsub0000<4>/CYSELF  (
    .I(Maddsub_result_addsub0000_lut[4]),
    .O(\result_addsub0000<4>/CYSELF_4324 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y66" ))
  \result_addsub0000<4>/YUSED  (
    .I(\result_addsub0000<4>/XORG_4326 ),
    .O(result_addsub0000[5])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X3Y66" ))
  \result_addsub0000<4>/XORG  (
    .I0(\Maddsub_result_addsub0000_cy[4] ),
    .I1(Maddsub_result_addsub0000_lut[5]),
    .O(\result_addsub0000<4>/XORG_4326 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y66" ))
  \result_addsub0000<4>/COUTUSED  (
    .I(\result_addsub0000<4>/CYMUXFAST_4323 ),
    .O(\Maddsub_result_addsub0000_cy[5] )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y66" ))
  \result_addsub0000<4>/FASTCARRY  (
    .I(\Maddsub_result_addsub0000_cy[3] ),
    .O(\result_addsub0000<4>/FASTCARRY_4321 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X3Y66" ))
  \result_addsub0000<4>/CYAND  (
    .I0(\result_addsub0000<4>/CYSELG_4311 ),
    .I1(\result_addsub0000<4>/CYSELF_4324 ),
    .O(\result_addsub0000<4>/CYAND_4322 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y66" ))
  \result_addsub0000<4>/CYMUXFAST  (
    .IA(\result_addsub0000<4>/CYMUXG2_4320 ),
    .IB(\result_addsub0000<4>/FASTCARRY_4321 ),
    .SEL(\result_addsub0000<4>/CYAND_4322 ),
    .O(\result_addsub0000<4>/CYMUXFAST_4323 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y66" ))
  \result_addsub0000<4>/CYMUXG2  (
    .IA(\result_addsub0000<4>/CY0G_4318 ),
    .IB(\result_addsub0000<4>/CYMUXF2_4319 ),
    .SEL(\result_addsub0000<4>/CYSELG_4311 ),
    .O(\result_addsub0000<4>/CYMUXG2_4320 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y66" ))
  \result_addsub0000<4>/CY0G  (
    .I(in1_5_IBUF_1649),
    .O(\result_addsub0000<4>/CY0G_4318 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y66" ))
  \result_addsub0000<4>/CYSELG  (
    .I(Maddsub_result_addsub0000_lut[5]),
    .O(\result_addsub0000<4>/CYSELG_4311 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y69" ))
  \result_8_OBUF/YUSED  (
    .I(N111_pack_1),
    .O(N111)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y67" ))
  \result_addsub0000<6>/XUSED  (
    .I(\result_addsub0000<6>/XORF_4400 ),
    .O(result_addsub0000[6])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X3Y67" ))
  \result_addsub0000<6>/XORF  (
    .I0(\result_addsub0000<6>/CYINIT_4399 ),
    .I1(Maddsub_result_addsub0000_lut[6]),
    .O(\result_addsub0000<6>/XORF_4400 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y67" ))
  \result_addsub0000<6>/CYMUXF  (
    .IA(\result_addsub0000<6>/CY0F_4398 ),
    .IB(\result_addsub0000<6>/CYINIT_4399 ),
    .SEL(\result_addsub0000<6>/CYSELF_4387 ),
    .O(\Maddsub_result_addsub0000_cy[6] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y67" ))
  \result_addsub0000<6>/CYMUXF2  (
    .IA(\result_addsub0000<6>/CY0F_4398 ),
    .IB(\result_addsub0000<6>/CY0F_4398 ),
    .SEL(\result_addsub0000<6>/CYSELF_4387 ),
    .O(\result_addsub0000<6>/CYMUXF2_4382 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y67" ))
  \result_addsub0000<6>/CYINIT  (
    .I(\Maddsub_result_addsub0000_cy[5] ),
    .O(\result_addsub0000<6>/CYINIT_4399 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y67" ))
  \result_addsub0000<6>/CY0F  (
    .I(in1_6_IBUF_1669),
    .O(\result_addsub0000<6>/CY0F_4398 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y67" ))
  \result_addsub0000<6>/CYSELF  (
    .I(Maddsub_result_addsub0000_lut[6]),
    .O(\result_addsub0000<6>/CYSELF_4387 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y67" ))
  \result_addsub0000<6>/YUSED  (
    .I(\result_addsub0000<6>/XORG_4389 ),
    .O(result_addsub0000[7])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X3Y67" ))
  \result_addsub0000<6>/XORG  (
    .I0(\Maddsub_result_addsub0000_cy[6] ),
    .I1(Maddsub_result_addsub0000_lut[7]),
    .O(\result_addsub0000<6>/XORG_4389 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y67" ))
  \result_addsub0000<6>/COUTUSED  (
    .I(\result_addsub0000<6>/CYMUXFAST_4386 ),
    .O(\Maddsub_result_addsub0000_cy[7] )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y67" ))
  \result_addsub0000<6>/FASTCARRY  (
    .I(\Maddsub_result_addsub0000_cy[5] ),
    .O(\result_addsub0000<6>/FASTCARRY_4384 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X3Y67" ))
  \result_addsub0000<6>/CYAND  (
    .I0(\result_addsub0000<6>/CYSELG_4374 ),
    .I1(\result_addsub0000<6>/CYSELF_4387 ),
    .O(\result_addsub0000<6>/CYAND_4385 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y67" ))
  \result_addsub0000<6>/CYMUXFAST  (
    .IA(\result_addsub0000<6>/CYMUXG2_4383 ),
    .IB(\result_addsub0000<6>/FASTCARRY_4384 ),
    .SEL(\result_addsub0000<6>/CYAND_4385 ),
    .O(\result_addsub0000<6>/CYMUXFAST_4386 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y67" ))
  \result_addsub0000<6>/CYMUXG2  (
    .IA(\result_addsub0000<6>/CY0G_4381 ),
    .IB(\result_addsub0000<6>/CYMUXF2_4382 ),
    .SEL(\result_addsub0000<6>/CYSELG_4374 ),
    .O(\result_addsub0000<6>/CYMUXG2_4383 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y67" ))
  \result_addsub0000<6>/CY0G  (
    .I(in1_7_IBUF_1679),
    .O(\result_addsub0000<6>/CY0G_4381 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y67" ))
  \result_addsub0000<6>/CYSELG  (
    .I(Maddsub_result_addsub0000_lut[7]),
    .O(\result_addsub0000<6>/CYSELG_4374 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y68" ))
  \result_addsub0000<8>/XUSED  (
    .I(\result_addsub0000<8>/XORF_4439 ),
    .O(result_addsub0000[8])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X3Y68" ))
  \result_addsub0000<8>/XORF  (
    .I0(\result_addsub0000<8>/CYINIT_4438 ),
    .I1(Maddsub_result_addsub0000_lut[8]),
    .O(\result_addsub0000<8>/XORF_4439 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y68" ))
  \result_addsub0000<8>/CYMUXF  (
    .IA(\result_addsub0000<8>/CY0F_4437 ),
    .IB(\result_addsub0000<8>/CYINIT_4438 ),
    .SEL(\result_addsub0000<8>/CYSELF_4426 ),
    .O(\Maddsub_result_addsub0000_cy[8] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y68" ))
  \result_addsub0000<8>/CYMUXF2  (
    .IA(\result_addsub0000<8>/CY0F_4437 ),
    .IB(\result_addsub0000<8>/CY0F_4437 ),
    .SEL(\result_addsub0000<8>/CYSELF_4426 ),
    .O(\result_addsub0000<8>/CYMUXF2_4421 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y68" ))
  \result_addsub0000<8>/CYINIT  (
    .I(\Maddsub_result_addsub0000_cy[7] ),
    .O(\result_addsub0000<8>/CYINIT_4438 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y68" ))
  \result_addsub0000<8>/CY0F  (
    .I(in1_8_IBUF_1663),
    .O(\result_addsub0000<8>/CY0F_4437 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y68" ))
  \result_addsub0000<8>/CYSELF  (
    .I(Maddsub_result_addsub0000_lut[8]),
    .O(\result_addsub0000<8>/CYSELF_4426 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y68" ))
  \result_addsub0000<8>/YUSED  (
    .I(\result_addsub0000<8>/XORG_4428 ),
    .O(result_addsub0000[9])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X3Y68" ))
  \result_addsub0000<8>/XORG  (
    .I0(\Maddsub_result_addsub0000_cy[8] ),
    .I1(Maddsub_result_addsub0000_lut[9]),
    .O(\result_addsub0000<8>/XORG_4428 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y68" ))
  \result_addsub0000<8>/COUTUSED  (
    .I(\result_addsub0000<8>/CYMUXFAST_4425 ),
    .O(\Maddsub_result_addsub0000_cy[9] )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y68" ))
  \result_addsub0000<8>/FASTCARRY  (
    .I(\Maddsub_result_addsub0000_cy[7] ),
    .O(\result_addsub0000<8>/FASTCARRY_4423 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X3Y68" ))
  \result_addsub0000<8>/CYAND  (
    .I0(\result_addsub0000<8>/CYSELG_4413 ),
    .I1(\result_addsub0000<8>/CYSELF_4426 ),
    .O(\result_addsub0000<8>/CYAND_4424 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y68" ))
  \result_addsub0000<8>/CYMUXFAST  (
    .IA(\result_addsub0000<8>/CYMUXG2_4422 ),
    .IB(\result_addsub0000<8>/FASTCARRY_4423 ),
    .SEL(\result_addsub0000<8>/CYAND_4424 ),
    .O(\result_addsub0000<8>/CYMUXFAST_4425 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y68" ))
  \result_addsub0000<8>/CYMUXG2  (
    .IA(\result_addsub0000<8>/CY0G_4420 ),
    .IB(\result_addsub0000<8>/CYMUXF2_4421 ),
    .SEL(\result_addsub0000<8>/CYSELG_4413 ),
    .O(\result_addsub0000<8>/CYMUXG2_4422 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y68" ))
  \result_addsub0000<8>/CY0G  (
    .I(in1_9_IBUF_1709),
    .O(\result_addsub0000<8>/CY0G_4420 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y68" ))
  \result_addsub0000<8>/CYSELG  (
    .I(Maddsub_result_addsub0000_lut[9]),
    .O(\result_addsub0000<8>/CYSELG_4413 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y69" ))
  \result_addsub0000<10>/XUSED  (
    .I(\result_addsub0000<10>/XORF_4478 ),
    .O(result_addsub0000[10])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X3Y69" ))
  \result_addsub0000<10>/XORF  (
    .I0(\result_addsub0000<10>/CYINIT_4477 ),
    .I1(Maddsub_result_addsub0000_lut[10]),
    .O(\result_addsub0000<10>/XORF_4478 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y69" ))
  \result_addsub0000<10>/CYMUXF  (
    .IA(\result_addsub0000<10>/CY0F_4476 ),
    .IB(\result_addsub0000<10>/CYINIT_4477 ),
    .SEL(\result_addsub0000<10>/CYSELF_4465 ),
    .O(\Maddsub_result_addsub0000_cy[10] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y69" ))
  \result_addsub0000<10>/CYMUXF2  (
    .IA(\result_addsub0000<10>/CY0F_4476 ),
    .IB(\result_addsub0000<10>/CY0F_4476 ),
    .SEL(\result_addsub0000<10>/CYSELF_4465 ),
    .O(\result_addsub0000<10>/CYMUXF2_4460 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y69" ))
  \result_addsub0000<10>/CYINIT  (
    .I(\Maddsub_result_addsub0000_cy[9] ),
    .O(\result_addsub0000<10>/CYINIT_4477 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y69" ))
  \result_addsub0000<10>/CY0F  (
    .I(in1_10_IBUF_1714),
    .O(\result_addsub0000<10>/CY0F_4476 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y69" ))
  \result_addsub0000<10>/CYSELF  (
    .I(Maddsub_result_addsub0000_lut[10]),
    .O(\result_addsub0000<10>/CYSELF_4465 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y69" ))
  \result_addsub0000<10>/YUSED  (
    .I(\result_addsub0000<10>/XORG_4467 ),
    .O(result_addsub0000[11])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X3Y69" ))
  \result_addsub0000<10>/XORG  (
    .I0(\Maddsub_result_addsub0000_cy[10] ),
    .I1(Maddsub_result_addsub0000_lut[11]),
    .O(\result_addsub0000<10>/XORG_4467 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y69" ))
  \result_addsub0000<10>/COUTUSED  (
    .I(\result_addsub0000<10>/CYMUXFAST_4464 ),
    .O(\Maddsub_result_addsub0000_cy[11] )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y69" ))
  \result_addsub0000<10>/FASTCARRY  (
    .I(\Maddsub_result_addsub0000_cy[9] ),
    .O(\result_addsub0000<10>/FASTCARRY_4462 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X3Y69" ))
  \result_addsub0000<10>/CYAND  (
    .I0(\result_addsub0000<10>/CYSELG_4452 ),
    .I1(\result_addsub0000<10>/CYSELF_4465 ),
    .O(\result_addsub0000<10>/CYAND_4463 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y69" ))
  \result_addsub0000<10>/CYMUXFAST  (
    .IA(\result_addsub0000<10>/CYMUXG2_4461 ),
    .IB(\result_addsub0000<10>/FASTCARRY_4462 ),
    .SEL(\result_addsub0000<10>/CYAND_4463 ),
    .O(\result_addsub0000<10>/CYMUXFAST_4464 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y69" ))
  \result_addsub0000<10>/CYMUXG2  (
    .IA(\result_addsub0000<10>/CY0G_4459 ),
    .IB(\result_addsub0000<10>/CYMUXF2_4460 ),
    .SEL(\result_addsub0000<10>/CYSELG_4452 ),
    .O(\result_addsub0000<10>/CYMUXG2_4461 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y69" ))
  \result_addsub0000<10>/CY0G  (
    .I(in1_11_IBUF_1639),
    .O(\result_addsub0000<10>/CY0G_4459 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y69" ))
  \result_addsub0000<10>/CYSELG  (
    .I(Maddsub_result_addsub0000_lut[11]),
    .O(\result_addsub0000<10>/CYSELG_4452 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y70" ))
  \result_addsub0000<12>/XUSED  (
    .I(\result_addsub0000<12>/XORF_4517 ),
    .O(result_addsub0000[12])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X3Y70" ))
  \result_addsub0000<12>/XORF  (
    .I0(\result_addsub0000<12>/CYINIT_4516 ),
    .I1(Maddsub_result_addsub0000_lut[12]),
    .O(\result_addsub0000<12>/XORF_4517 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y70" ))
  \result_addsub0000<12>/CYMUXF  (
    .IA(\result_addsub0000<12>/CY0F_4515 ),
    .IB(\result_addsub0000<12>/CYINIT_4516 ),
    .SEL(\result_addsub0000<12>/CYSELF_4504 ),
    .O(\Maddsub_result_addsub0000_cy[12] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y70" ))
  \result_addsub0000<12>/CYMUXF2  (
    .IA(\result_addsub0000<12>/CY0F_4515 ),
    .IB(\result_addsub0000<12>/CY0F_4515 ),
    .SEL(\result_addsub0000<12>/CYSELF_4504 ),
    .O(\result_addsub0000<12>/CYMUXF2_4499 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y70" ))
  \result_addsub0000<12>/CYINIT  (
    .I(\Maddsub_result_addsub0000_cy[11] ),
    .O(\result_addsub0000<12>/CYINIT_4516 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y70" ))
  \result_addsub0000<12>/CY0F  (
    .I(in1_12_IBUF_1618),
    .O(\result_addsub0000<12>/CY0F_4515 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y70" ))
  \result_addsub0000<12>/CYSELF  (
    .I(Maddsub_result_addsub0000_lut[12]),
    .O(\result_addsub0000<12>/CYSELF_4504 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y70" ))
  \result_addsub0000<12>/YUSED  (
    .I(\result_addsub0000<12>/XORG_4506 ),
    .O(result_addsub0000[13])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X3Y70" ))
  \result_addsub0000<12>/XORG  (
    .I0(\Maddsub_result_addsub0000_cy[12] ),
    .I1(Maddsub_result_addsub0000_lut[13]),
    .O(\result_addsub0000<12>/XORG_4506 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y70" ))
  \result_addsub0000<12>/FASTCARRY  (
    .I(\Maddsub_result_addsub0000_cy[11] ),
    .O(\result_addsub0000<12>/FASTCARRY_4501 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X3Y70" ))
  \result_addsub0000<12>/CYAND  (
    .I0(\result_addsub0000<12>/CYSELG_4491 ),
    .I1(\result_addsub0000<12>/CYSELF_4504 ),
    .O(\result_addsub0000<12>/CYAND_4502 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y70" ))
  \result_addsub0000<12>/CYMUXFAST  (
    .IA(\result_addsub0000<12>/CYMUXG2_4500 ),
    .IB(\result_addsub0000<12>/FASTCARRY_4501 ),
    .SEL(\result_addsub0000<12>/CYAND_4502 ),
    .O(\result_addsub0000<12>/CYMUXFAST_4503 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y70" ))
  \result_addsub0000<12>/CYMUXG2  (
    .IA(\result_addsub0000<12>/CY0G_4498 ),
    .IB(\result_addsub0000<12>/CYMUXF2_4499 ),
    .SEL(\result_addsub0000<12>/CYSELG_4491 ),
    .O(\result_addsub0000<12>/CYMUXG2_4500 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y70" ))
  \result_addsub0000<12>/CY0G  (
    .I(in1_13_IBUF_1608),
    .O(\result_addsub0000<12>/CY0G_4498 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y70" ))
  \result_addsub0000<12>/CYSELG  (
    .I(Maddsub_result_addsub0000_lut[13]),
    .O(\result_addsub0000<12>/CYSELG_4491 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y71" ))
  \result_addsub0000<14>/XUSED  (
    .I(\result_addsub0000<14>/XORF_4548 ),
    .O(result_addsub0000[14])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X3Y71" ))
  \result_addsub0000<14>/XORF  (
    .I0(\result_addsub0000<14>/CYINIT_4547 ),
    .I1(Maddsub_result_addsub0000_lut[14]),
    .O(\result_addsub0000<14>/XORF_4548 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y71" ))
  \result_addsub0000<14>/CYMUXF  (
    .IA(\result_addsub0000<14>/CY0F_4546 ),
    .IB(\result_addsub0000<14>/CYINIT_4547 ),
    .SEL(\result_addsub0000<14>/CYSELF_4539 ),
    .O(\Maddsub_result_addsub0000_cy[14] )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y71" ))
  \result_addsub0000<14>/CYINIT  (
    .I(\result_addsub0000<12>/CYMUXFAST_4503 ),
    .O(\result_addsub0000<14>/CYINIT_4547 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y71" ))
  \result_addsub0000<14>/CY0F  (
    .I(in1_14_IBUF_1627),
    .O(\result_addsub0000<14>/CY0F_4546 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y71" ))
  \result_addsub0000<14>/CYSELF  (
    .I(Maddsub_result_addsub0000_lut[14]),
    .O(\result_addsub0000<14>/CYSELF_4539 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y71" ))
  \result_addsub0000<14>/YUSED  (
    .I(\result_addsub0000<14>/XORG_4536 ),
    .O(result_addsub0000[15])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X3Y71" ))
  \result_addsub0000<14>/XORG  (
    .I0(\Maddsub_result_addsub0000_cy[14] ),
    .I1(Maddsub_result_addsub0000_lut[15]),
    .O(\result_addsub0000<14>/XORG_4536 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y62" ))
  \result_11_OBUF/YUSED  (
    .I(N133_pack_1),
    .O(N133)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y42" ))
  \result<14>_bdd5/F5USED  (
    .I(\result<14>_bdd5/F5MUX_4594 ),
    .O(\result<14>3_f6/F5.I1 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y42" ))
  \result<14>_bdd5/F5MUX  (
    .IA(\result<10>_bdd22_rt_4589 ),
    .IB(\NLW_result<14>_bdd5/F5MUX_IB_UNCONNECTED ),
    .SEL(\result<14>_bdd5/BXINV_4593 ),
    .O(\result<14>_bdd5/F5MUX_4594 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y42" ))
  \result<14>_bdd5/BXINV  (
    .I(1'b0),
    .O(\result<14>_bdd5/BXINV_4593 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y42" ))
  \result<14>_bdd5/YUSED  (
    .I(\result<14>_bdd5/F6MUX_4591 ),
    .O(\result<14>_bdd5 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y42" ))
  \result<14>_bdd5/F6MUX  (
    .IA(\result<14>3_f5 ),
    .IB(\result<14>3_f6/F5.I1 ),
    .SEL(\result<14>_bdd5/BYINV_4581 ),
    .O(\result<14>_bdd5/F6MUX_4591 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y42" ))
  \result<14>_bdd5/BYINV  (
    .I(in2_2_IBUF_1600),
    .O(\result<14>_bdd5/BYINV_4581 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y43" ))
  \result<14>3_f5/F5USED  (
    .I(\result<14>3_f5/F5MUX_4618 ),
    .O(\result<14>3_f5 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y43" ))
  \result<14>3_f5/F5MUX  (
    .IA(\result<14>31_4609 ),
    .IB(\result<14>3 ),
    .SEL(\result<14>3_f5/BXINV_4611 ),
    .O(\result<14>3_f5/F5MUX_4618 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y43" ))
  \result<14>3_f5/BXINV  (
    .I(in2_3_IBUF_1606),
    .O(\result<14>3_f5/BXINV_4611 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y67" ))
  \result_10_OBUF/YUSED  (
    .I(N135_pack_1),
    .O(N135)
  );
  X_IPAD #(
    .LOC ( "IPAD38" ))
  \clk/PAD  (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "IPAD38" ))
  \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD298" ))
  \result<0>/PAD  (
    .PAD(result[0])
  );
  X_OBUF #(
    .LOC ( "PAD298" ))
  result_0_OBUF (
    .I(\result<0>/O ),
    .O(result[0])
  );
  X_OPAD #(
    .LOC ( "PAD284" ))
  \result<1>/PAD  (
    .PAD(result[1])
  );
  X_OBUF #(
    .LOC ( "PAD284" ))
  result_1_OBUF (
    .I(\result<1>/O ),
    .O(result[1])
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y47" ))
  \result<15>1136/XUSED  (
    .I(\result<15>1136_4686 ),
    .O(\result<15>1136_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y47" ))
  \result<15>1136/YUSED  (
    .I(\result<15>1101_pack_1 ),
    .O(\result<15>1101_1875 )
  );
  X_OPAD #(
    .LOC ( "PAD297" ))
  \result<2>/PAD  (
    .PAD(result[2])
  );
  X_OBUF #(
    .LOC ( "PAD297" ))
  result_2_OBUF (
    .I(\result<2>/O ),
    .O(result[2])
  );
  X_OPAD #(
    .LOC ( "PAD292" ))
  \result<3>/PAD  (
    .PAD(result[3])
  );
  X_OBUF #(
    .LOC ( "PAD292" ))
  result_3_OBUF (
    .I(\result<3>/O ),
    .O(result[3])
  );
  X_OPAD #(
    .LOC ( "PAD274" ))
  \result<4>/PAD  (
    .PAD(result[4])
  );
  X_OBUF #(
    .LOC ( "PAD274" ))
  result_4_OBUF (
    .I(\result<4>/O ),
    .O(result[4])
  );
  X_OPAD #(
    .LOC ( "PAD285" ))
  \result<5>/PAD  (
    .PAD(result[5])
  );
  X_OBUF #(
    .LOC ( "PAD285" ))
  result_5_OBUF (
    .I(\result<5>/O ),
    .O(result[5])
  );
  X_OPAD #(
    .LOC ( "PAD286" ))
  \result<6>/PAD  (
    .PAD(result[6])
  );
  X_OBUF #(
    .LOC ( "PAD286" ))
  result_6_OBUF (
    .I(\result<6>/O ),
    .O(result[6])
  );
  X_OPAD #(
    .LOC ( "PAD279" ))
  \result<7>/PAD  (
    .PAD(result[7])
  );
  X_OBUF #(
    .LOC ( "PAD279" ))
  result_7_OBUF (
    .I(\result<7>/O ),
    .O(result[7])
  );
  X_OPAD #(
    .LOC ( "PAD276" ))
  \result<8>/PAD  (
    .PAD(result[8])
  );
  X_OBUF #(
    .LOC ( "PAD276" ))
  result_8_OBUF (
    .I(\result<8>/O ),
    .O(result[8])
  );
  X_OPAD #(
    .LOC ( "PAD271" ))
  \result<9>/PAD  (
    .PAD(result[9])
  );
  X_OBUF #(
    .LOC ( "PAD271" ))
  result_9_OBUF (
    .I(\result<9>/O ),
    .O(result[9])
  );
  X_IPAD #(
    .LOC ( "PAD282" ))
  \in1<10>/PAD  (
    .PAD(in1[10])
  );
  X_BUF #(
    .LOC ( "PAD282" ))
  in1_10_IBUF (
    .I(in1[10]),
    .O(\in1<10>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD270" ))
  \in1<11>/PAD  (
    .PAD(in1[11])
  );
  X_BUF #(
    .LOC ( "PAD270" ))
  in1_11_IBUF (
    .I(in1[11]),
    .O(\in1<11>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD303" ))
  \in1<12>/PAD  (
    .PAD(in1[12])
  );
  X_BUF #(
    .LOC ( "PAD303" ))
  in1_12_IBUF (
    .I(in1[12]),
    .O(\in1<12>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD296" ))
  \in1<13>/PAD  (
    .PAD(in1[13])
  );
  X_BUF #(
    .LOC ( "PAD296" ))
  in1_13_IBUF (
    .I(in1[13]),
    .O(\in1<13>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD263" ))
  \in1<14>/PAD  (
    .PAD(in1[14])
  );
  X_BUF #(
    .LOC ( "IPAD263" ))
  in1_14_IBUF (
    .I(in1[14]),
    .O(\in1<14>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD283" ))
  \in1<15>/PAD  (
    .PAD(in1[15])
  );
  X_BUF #(
    .LOC ( "IPAD283" ))
  in1_15_IBUF (
    .I(in1[15]),
    .O(\in1<15>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD300" ))
  \in1<0>/PAD  (
    .PAD(in1[0])
  );
  X_BUF #(
    .LOC ( "IPAD300" ))
  in1_0_IBUF (
    .I(in1[0]),
    .O(\in1<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD293" ))
  \in1<1>/PAD  (
    .PAD(in1[1])
  );
  X_BUF #(
    .LOC ( "IPAD293" ))
  in1_1_IBUF (
    .I(in1[1]),
    .O(\in1<1>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD288" ))
  \in1<2>/PAD  (
    .PAD(in1[2])
  );
  X_BUF #(
    .LOC ( "IPAD288" ))
  in1_2_IBUF (
    .I(in1[2]),
    .O(\in1<2>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD251" ))
  \in2<10>/PAD  (
    .PAD(in2[10])
  );
  X_BUF #(
    .LOC ( "PAD251" ))
  in2_10_IBUF (
    .I(in2[10]),
    .O(\in2<10>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD281" ))
  \in1<3>/PAD  (
    .PAD(in1[3])
  );
  X_BUF #(
    .LOC ( "PAD281" ))
  in1_3_IBUF (
    .I(in1[3]),
    .O(\in1<3>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD250" ))
  \in2<11>/PAD  (
    .PAD(in2[11])
  );
  X_BUF #(
    .LOC ( "PAD250" ))
  in2_11_IBUF (
    .I(in2[11]),
    .O(\in2<11>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD261" ))
  \in2<0>/PAD  (
    .PAD(in2[0])
  );
  X_BUF #(
    .LOC ( "PAD261" ))
  in2_0_IBUF (
    .I(in2[0]),
    .O(\in2<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD278" ))
  \in1<4>/PAD  (
    .PAD(in1[4])
  );
  X_BUF #(
    .LOC ( "IPAD278" ))
  in1_4_IBUF (
    .I(in1[4]),
    .O(\in1<4>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD249" ))
  \in2<12>/PAD  (
    .PAD(in2[12])
  );
  X_BUF #(
    .LOC ( "PAD249" ))
  in2_12_IBUF (
    .I(in2[12]),
    .O(\in2<12>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD256" ))
  \in2<1>/PAD  (
    .PAD(in2[1])
  );
  X_BUF #(
    .LOC ( "PAD256" ))
  in2_1_IBUF (
    .I(in2[1]),
    .O(\in2<1>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD304" ))
  \in1<5>/PAD  (
    .PAD(in1[5])
  );
  X_BUF #(
    .LOC ( "PAD304" ))
  in1_5_IBUF (
    .I(in1[5]),
    .O(\in1<5>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD248" ))
  \in2<13>/PAD  (
    .PAD(in2[13])
  );
  X_BUF #(
    .LOC ( "IPAD248" ))
  in2_13_IBUF (
    .I(in2[13]),
    .O(\in2<13>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD267" ))
  \result<10>/PAD  (
    .PAD(result[10])
  );
  X_OBUF #(
    .LOC ( "PAD267" ))
  result_10_OBUF (
    .I(\result<10>/O ),
    .O(result[10])
  );
  X_IPAD #(
    .LOC ( "PAD255" ))
  \in2<2>/PAD  (
    .PAD(in2[2])
  );
  X_BUF #(
    .LOC ( "PAD255" ))
  in2_2_IBUF (
    .I(in2[2]),
    .O(\in2<2>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD301" ))
  \in1<6>/PAD  (
    .PAD(in1[6])
  );
  X_BUF #(
    .LOC ( "PAD301" ))
  in1_6_IBUF (
    .I(in1[6]),
    .O(\in1<6>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD245" ))
  \in2<14>/PAD  (
    .PAD(in2[14])
  );
  X_BUF #(
    .LOC ( "PAD245" ))
  in2_14_IBUF (
    .I(in2[14]),
    .O(\in2<14>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD265" ))
  \result<11>/PAD  (
    .PAD(result[11])
  );
  X_OBUF #(
    .LOC ( "PAD265" ))
  result_11_OBUF (
    .I(\result<11>/O ),
    .O(result[11])
  );
  X_IPAD #(
    .LOC ( "PAD252" ))
  \in2<3>/PAD  (
    .PAD(in2[3])
  );
  X_BUF #(
    .LOC ( "PAD252" ))
  in2_3_IBUF (
    .I(in2[3]),
    .O(\in2<3>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD280" ))
  \in1<7>/PAD  (
    .PAD(in1[7])
  );
  X_BUF #(
    .LOC ( "PAD280" ))
  in1_7_IBUF (
    .I(in1[7]),
    .O(\in1<7>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD244" ))
  \in2<15>/PAD  (
    .PAD(in2[15])
  );
  X_BUF #(
    .LOC ( "PAD244" ))
  in2_15_IBUF (
    .I(in2[15]),
    .O(\in2<15>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD275" ))
  \result<12>/PAD  (
    .PAD(result[12])
  );
  X_OBUF #(
    .LOC ( "PAD275" ))
  result_12_OBUF (
    .I(\result<12>/O ),
    .O(result[12])
  );
  X_IPAD #(
    .LOC ( "PAD262" ))
  \in2<4>/PAD  (
    .PAD(in2[4])
  );
  X_BUF #(
    .LOC ( "PAD262" ))
  in2_4_IBUF (
    .I(in2[4]),
    .O(\in2<4>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD302" ))
  \in1<8>/PAD  (
    .PAD(in1[8])
  );
  X_BUF #(
    .LOC ( "PAD302" ))
  in1_8_IBUF (
    .I(in1[8]),
    .O(\in1<8>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD272" ))
  \result<13>/PAD  (
    .PAD(result[13])
  );
  X_OBUF #(
    .LOC ( "PAD272" ))
  result_13_OBUF (
    .I(\result<13>/O ),
    .O(result[13])
  );
  X_IPAD #(
    .LOC ( "PAD264" ))
  \in2<5>/PAD  (
    .PAD(in2[5])
  );
  X_BUF #(
    .LOC ( "PAD264" ))
  in2_5_IBUF (
    .I(in2[5]),
    .O(\in2<5>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD273" ))
  \in1<9>/PAD  (
    .PAD(in1[9])
  );
  X_BUF #(
    .LOC ( "IPAD273" ))
  in1_9_IBUF (
    .I(in1[9]),
    .O(\in1<9>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD269" ))
  \result<14>/PAD  (
    .PAD(result[14])
  );
  X_OBUF #(
    .LOC ( "PAD269" ))
  result_14_OBUF (
    .I(\result<14>/O ),
    .O(result[14])
  );
  X_IPAD #(
    .LOC ( "PAD257" ))
  \in2<6>/PAD  (
    .PAD(in2[6])
  );
  X_BUF #(
    .LOC ( "PAD257" ))
  in2_6_IBUF (
    .I(in2[6]),
    .O(\in2<6>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD266" ))
  \result<15>/PAD  (
    .PAD(result[15])
  );
  X_OBUF #(
    .LOC ( "PAD266" ))
  result_15_OBUF (
    .I(\result<15>/O ),
    .O(result[15])
  );
  X_IPAD #(
    .LOC ( "IPAD258" ))
  \in2<7>/PAD  (
    .PAD(in2[7])
  );
  X_BUF #(
    .LOC ( "IPAD258" ))
  in2_7_IBUF (
    .I(in2[7]),
    .O(\in2<7>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD253" ))
  \in2<8>/PAD  (
    .PAD(in2[8])
  );
  X_BUF #(
    .LOC ( "IPAD253" ))
  in2_8_IBUF (
    .I(in2[8]),
    .O(\in2<8>/INBUF )
  );
  X_BUF #(
    .LOC ( "IPAD253" ))
  \in2<8>/IFF/IMUX  (
    .I(\in2<8>/INBUF ),
    .O(in2_8_IBUF_1664)
  );
  X_OPAD #(
    .LOC ( "PAD277" ))
  \z_flag/PAD  (
    .PAD(z_flag)
  );
  X_OBUF #(
    .LOC ( "PAD277" ))
  z_flag_OBUF (
    .I(\z_flag/O ),
    .O(z_flag)
  );
  X_BUF #(
    .LOC ( "PAD277" ))
  \z_flag/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\z_flag/OUTPUT/OTCLK1INV_5025 )
  );
  X_BUF #(
    .LOC ( "PAD254" ))
  \in2<9>/IFF/IMUX  (
    .I(\in2<9>/INBUF ),
    .O(in2_9_IBUF_1710)
  );
  X_IPAD #(
    .LOC ( "PAD254" ))
  \in2<9>/PAD  (
    .PAD(in2[9])
  );
  X_BUF #(
    .LOC ( "PAD254" ))
  in2_9_IBUF (
    .I(in2[9]),
    .O(\in2<9>/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD260" ))
  \alu_mode<0>/IFF/IMUX  (
    .I(\alu_mode<0>/INBUF ),
    .O(alu_mode_0_IBUF_1612)
  );
  X_IPAD #(
    .LOC ( "PAD260" ))
  \alu_mode<0>/PAD  (
    .PAD(alu_mode[0])
  );
  X_BUF #(
    .LOC ( "PAD260" ))
  alu_mode_0_IBUF (
    .I(alu_mode[0]),
    .O(\alu_mode<0>/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD259" ))
  \alu_mode<1>/IFF/IMUX  (
    .I(\alu_mode<1>/INBUF ),
    .O(alu_mode_1_IBUF_1616)
  );
  X_IPAD #(
    .LOC ( "PAD259" ))
  \alu_mode<1>/PAD  (
    .PAD(alu_mode[1])
  );
  X_BUF #(
    .LOC ( "PAD259" ))
  alu_mode_1_IBUF (
    .I(alu_mode[1]),
    .O(\alu_mode<1>/INBUF )
  );
  X_BUF #(
    .LOC ( "IPAD268" ))
  \rst/IFF/IMUX  (
    .I(\rst/INBUF ),
    .O(rst_IBUF_1727)
  );
  X_IPAD #(
    .LOC ( "IPAD268" ))
  \rst/PAD  (
    .PAD(rst)
  );
  X_BUF #(
    .LOC ( "IPAD268" ))
  rst_IBUF (
    .I(rst),
    .O(\rst/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD291" ))
  \n_flag/PAD  (
    .PAD(n_flag)
  );
  X_OBUF #(
    .LOC ( "PAD291" ))
  n_flag_OBUF (
    .I(\n_flag/O ),
    .O(n_flag)
  );
  X_BUF #(
    .LOC ( "PAD287" ))
  \alu_mode<2>/IFF/IMUX  (
    .I(\alu_mode<2>/INBUF ),
    .O(alu_mode_2_IBUF_1728)
  );
  X_IPAD #(
    .LOC ( "PAD287" ))
  \alu_mode<2>/PAD  (
    .PAD(alu_mode[2])
  );
  X_BUF #(
    .LOC ( "PAD287" ))
  alu_mode_2_IBUF (
    .I(alu_mode[2]),
    .O(\alu_mode<2>/INBUF )
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \clk_BUFGP/BUFG  (
    .I0(\clk_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\clk_BUFGP/BUFG/S_INVNOT ),
    .O(clk_BUFGP)
  );
  X_INV #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \clk_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clk_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \clk_BUFGP/BUFG/I0_USED  (
    .I(\clk/INBUF ),
    .O(\clk_BUFGP/BUFG/I0_INV )
  );
  X_BUF #(
    .LOC ( "MULT18X18_X0Y8" ))
  \Mmult_result_mult0000/RSTPINV  (
    .I(1'b0),
    .O(\Mmult_result_mult0000/RSTP_INT )
  );
  X_BUF #(
    .LOC ( "MULT18X18_X0Y8" ))
  \Mmult_result_mult0000/RSTBINV  (
    .I(1'b0),
    .O(\Mmult_result_mult0000/RSTB_INT )
  );
  X_BUF #(
    .LOC ( "MULT18X18_X0Y8" ))
  \Mmult_result_mult0000/RSTAINV  (
    .I(1'b0),
    .O(\Mmult_result_mult0000/RSTA_INT )
  );
  X_BUF #(
    .LOC ( "MULT18X18_X0Y8" ))
  \Mmult_result_mult0000/CLKINV  (
    .I(1'b0),
    .O(\Mmult_result_mult0000/CLK_INT )
  );
  X_BUF #(
    .LOC ( "MULT18X18_X0Y8" ))
  \Mmult_result_mult0000/CEPINV  (
    .I(1'b0),
    .O(\Mmult_result_mult0000/CEP_INT )
  );
  X_BUF #(
    .LOC ( "MULT18X18_X0Y8" ))
  \Mmult_result_mult0000/CEBINV  (
    .I(1'b0),
    .O(\Mmult_result_mult0000/CEB_INT )
  );
  X_BUF #(
    .LOC ( "MULT18X18_X0Y8" ))
  \Mmult_result_mult0000/CEAINV  (
    .I(1'b0),
    .O(\Mmult_result_mult0000/CEA_INT )
  );
  X_MULT18X18SIO #(
    .AREG ( 0 ),
    .BREG ( 0 ),
    .PREG ( 0 ),
    .B_INPUT ( "DIRECT" ),
    .LOC ( "MULT18X18_X0Y8" ))
  Mmult_result_mult0000 (
    .CEA(\Mmult_result_mult0000/CEA_INT ),
    .CEB(\Mmult_result_mult0000/CEB_INT ),
    .CEP(\Mmult_result_mult0000/CEP_INT ),
    .CLK(\Mmult_result_mult0000/CLK_INT ),
    .RSTA(\Mmult_result_mult0000/RSTA_INT ),
    .RSTB(\Mmult_result_mult0000/RSTB_INT ),
    .RSTP(\Mmult_result_mult0000/RSTP_INT ),
    .A({\NlwBufferSignal_Mmult_result_mult0000/A [17], \NlwBufferSignal_Mmult_result_mult0000/A [16], \NlwBufferSignal_Mmult_result_mult0000/A [15], 
\NlwBufferSignal_Mmult_result_mult0000/A [14], \NlwBufferSignal_Mmult_result_mult0000/A [13], \NlwBufferSignal_Mmult_result_mult0000/A [12], 
\NlwBufferSignal_Mmult_result_mult0000/A [11], \NlwBufferSignal_Mmult_result_mult0000/A [10], \NlwBufferSignal_Mmult_result_mult0000/A [9], 
\NlwBufferSignal_Mmult_result_mult0000/A [8], \NlwBufferSignal_Mmult_result_mult0000/A [7], \NlwBufferSignal_Mmult_result_mult0000/A [6], 
\NlwBufferSignal_Mmult_result_mult0000/A [5], \NlwBufferSignal_Mmult_result_mult0000/A [4], \NlwBufferSignal_Mmult_result_mult0000/A [3], 
\NlwBufferSignal_Mmult_result_mult0000/A [2], \NlwBufferSignal_Mmult_result_mult0000/A [1], \NlwBufferSignal_Mmult_result_mult0000/A [0]}),
    .B({\NlwBufferSignal_Mmult_result_mult0000/B [17], \NlwBufferSignal_Mmult_result_mult0000/B [16], \NlwBufferSignal_Mmult_result_mult0000/B [15], 
\NlwBufferSignal_Mmult_result_mult0000/B [14], \NlwBufferSignal_Mmult_result_mult0000/B [13], \NlwBufferSignal_Mmult_result_mult0000/B [12], 
\NlwBufferSignal_Mmult_result_mult0000/B [11], \NlwBufferSignal_Mmult_result_mult0000/B [10], \NlwBufferSignal_Mmult_result_mult0000/B [9], 
\NlwBufferSignal_Mmult_result_mult0000/B [8], \NlwBufferSignal_Mmult_result_mult0000/B [7], \NlwBufferSignal_Mmult_result_mult0000/B [6], 
\NlwBufferSignal_Mmult_result_mult0000/B [5], \NlwBufferSignal_Mmult_result_mult0000/B [4], \NlwBufferSignal_Mmult_result_mult0000/B [3], 
\NlwBufferSignal_Mmult_result_mult0000/B [2], \NlwBufferSignal_Mmult_result_mult0000/B [1], \NlwBufferSignal_Mmult_result_mult0000/B [0]}),
    .BCIN({\Mmult_result_mult0000/BCIN17 , \Mmult_result_mult0000/BCIN16 , \Mmult_result_mult0000/BCIN15 , \Mmult_result_mult0000/BCIN14 , 
\Mmult_result_mult0000/BCIN13 , \Mmult_result_mult0000/BCIN12 , \Mmult_result_mult0000/BCIN11 , \Mmult_result_mult0000/BCIN10 , 
\Mmult_result_mult0000/BCIN9 , \Mmult_result_mult0000/BCIN8 , \Mmult_result_mult0000/BCIN7 , \Mmult_result_mult0000/BCIN6 , 
\Mmult_result_mult0000/BCIN5 , \Mmult_result_mult0000/BCIN4 , \Mmult_result_mult0000/BCIN3 , \Mmult_result_mult0000/BCIN2 , 
\Mmult_result_mult0000/BCIN1 , \Mmult_result_mult0000/BCIN0 }),
    .P({\Mmult_result_mult0000/P35 , \Mmult_result_mult0000/P34 , \Mmult_result_mult0000/P33 , \Mmult_result_mult0000/P32 , \result_mult0000[31] , 
\Mmult_result_mult0000/P30 , \Mmult_result_mult0000/P29 , \Mmult_result_mult0000/P28 , \Mmult_result_mult0000/P27 , \Mmult_result_mult0000/P26 , 
\Mmult_result_mult0000/P25 , \Mmult_result_mult0000/P24 , \Mmult_result_mult0000/P23 , \Mmult_result_mult0000/P22 , \Mmult_result_mult0000/P21 , 
\Mmult_result_mult0000/P20 , \Mmult_result_mult0000/P19 , \Mmult_result_mult0000/P18 , \Mmult_result_mult0000/P17 , \Mmult_result_mult0000/P16 , 
\Mmult_result_mult0000/P15 , \result_mult0000[14] , \result_mult0000[13] , \result_mult0000[12] , \result_mult0000[11] , \result_mult0000[10] , 
\result_mult0000[9] , \result_mult0000[8] , \result_mult0000[7] , \result_mult0000[6] , \result_mult0000[5] , \result_mult0000[4] , 
\result_mult0000[3] , \result_mult0000[2] , \result_mult0000[1] , \result_mult0000[0] }),
    .BCOUT({\Mmult_result_mult0000/BCOUT17 , \Mmult_result_mult0000/BCOUT16 , \Mmult_result_mult0000/BCOUT15 , \Mmult_result_mult0000/BCOUT14 , 
\Mmult_result_mult0000/BCOUT13 , \Mmult_result_mult0000/BCOUT12 , \Mmult_result_mult0000/BCOUT11 , \Mmult_result_mult0000/BCOUT10 , 
\Mmult_result_mult0000/BCOUT9 , \Mmult_result_mult0000/BCOUT8 , \Mmult_result_mult0000/BCOUT7 , \Mmult_result_mult0000/BCOUT6 , 
\Mmult_result_mult0000/BCOUT5 , \Mmult_result_mult0000/BCOUT4 , \Mmult_result_mult0000/BCOUT3 , \Mmult_result_mult0000/BCOUT2 , 
\Mmult_result_mult0000/BCOUT1 , \Mmult_result_mult0000/BCOUT0 })
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ),
    .LOC ( "SLICE_X0Y63" ))
  \result<10>18_F  (
    .ADR0(\result<0>379_1781 ),
    .ADR1(\result<0>374_1780 ),
    .ADR2(in1_4_IBUF_1764),
    .ADR3(\result<0>3714_1782 ),
    .O(N185)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X0Y63" ))
  \result<10>18_G  (
    .ADR0(\result<0>59_0 ),
    .ADR1(\result<0>514_1706 ),
    .ADR2(in1_12_IBUF_1618),
    .ADR3(\result<0>54_0 ),
    .O(N186)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y63" ))
  \result<10>_bdd24/XUSED  (
    .I(\result<10>_bdd24/F5MUX_5230 ),
    .O(\result<10>_bdd24 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y63" ))
  \result<10>_bdd24/F5MUX  (
    .IA(N185),
    .IB(N186),
    .SEL(\result<10>_bdd24/BXINV_5223 ),
    .O(\result<10>_bdd24/F5MUX_5230 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y63" ))
  \result<10>_bdd24/BXINV  (
    .I(in2_3_IBUF_1606),
    .O(\result<10>_bdd24/BXINV_5223 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y53" ))
  \N169/XUSED  (
    .I(\N169/F5MUX_5255 ),
    .O(N169)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y53" ))
  \N169/F5MUX  (
    .IA(N221),
    .IB(N222),
    .SEL(\N169/BXINV_5248 ),
    .O(\N169/F5MUX_5255 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y53" ))
  \N169/BXINV  (
    .I(alu_mode_0_IBUF_1612),
    .O(\N169/BXINV_5248 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X0Y48" ))
  \result<10>37_G  (
    .ADR0(\result<0>54_0 ),
    .ADR1(in1_4_IBUF_1764),
    .ADR2(\result<0>514_1706 ),
    .ADR3(\result<0>59_0 ),
    .O(N184)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y48" ))
  \result<10>_bdd60/XUSED  (
    .I(\result<10>_bdd60/F5MUX_5280 ),
    .O(\result<10>_bdd60 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y48" ))
  \result<10>_bdd60/F5MUX  (
    .IA(N183),
    .IB(N184),
    .SEL(\result<10>_bdd60/BXINV_5273 ),
    .O(\result<10>_bdd60/F5MUX_5280 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y48" ))
  \result<10>_bdd60/BXINV  (
    .I(in2_3_IBUF_1606),
    .O(\result<10>_bdd60/BXINV_5273 )
  );
  X_LUT4 #(
    .INIT ( 16'hEE44 ),
    .LOC ( "SLICE_X1Y44" ))
  \result<13>342_G  (
    .ADR0(in2_1_IBUF_1603),
    .ADR1(\result<10>_bdd17_0 ),
    .ADR2(VCC),
    .ADR3(N47_0),
    .O(N182)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y44" ))
  \result<13>_bdd5/XUSED  (
    .I(\result<13>_bdd5/F5MUX_5305 ),
    .O(\result<13>_bdd5 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y44" ))
  \result<13>_bdd5/F5MUX  (
    .IA(N181),
    .IB(N182),
    .SEL(\result<13>_bdd5/BXINV_5297 ),
    .O(\result<13>_bdd5/F5MUX_5305 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y44" ))
  \result<13>_bdd5/BXINV  (
    .I(in2_2_IBUF_1600),
    .O(\result<13>_bdd5/BXINV_5297 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y78" ))
  \result<0>_bdd75/XUSED  (
    .I(\result<0>_bdd75/F5MUX_5330 ),
    .O(\result<0>_bdd75 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y78" ))
  \result<0>_bdd75/F5MUX  (
    .IA(\result<0>561_5321 ),
    .IB(\result<0>56 ),
    .SEL(\result<0>_bdd75/BXINV_5323 ),
    .O(\result<0>_bdd75/F5MUX_5330 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y78" ))
  \result<0>_bdd75/BXINV  (
    .I(in2_3_IBUF_1606),
    .O(\result<0>_bdd75/BXINV_5323 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y42" ))
  \result<11>_bdd5/XUSED  (
    .I(\result<11>_bdd5/F5MUX_5355 ),
    .O(\result<11>_bdd5 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y42" ))
  \result<11>_bdd5/F5MUX  (
    .IA(\result<11>311_5346 ),
    .IB(\result<11>31 ),
    .SEL(\result<11>_bdd5/BXINV_5348 ),
    .O(\result<11>_bdd5/F5MUX_5355 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y42" ))
  \result<11>_bdd5/BXINV  (
    .I(\result<11>_bdd7 ),
    .O(\result<11>_bdd5/BXINV_5348 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y62" ))
  \result<6>_bdd5/XUSED  (
    .I(\result<6>_bdd5/F5MUX_5380 ),
    .O(\result<6>_bdd5 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y62" ))
  \result<6>_bdd5/F5MUX  (
    .IA(\result<6>311_5371 ),
    .IB(\result<6>31 ),
    .SEL(\result<6>_bdd5/BXINV_5373 ),
    .O(\result<6>_bdd5/F5MUX_5380 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y62" ))
  \result<6>_bdd5/BXINV  (
    .I(\result<2>_bdd9 ),
    .O(\result<6>_bdd5/BXINV_5373 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y83" ))
  \result<1>_bdd12/XUSED  (
    .I(\result<1>_bdd12/F5MUX_5405 ),
    .O(\result<1>_bdd12 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y83" ))
  \result<1>_bdd12/F5MUX  (
    .IA(\result<1>12401_5396 ),
    .IB(\result<1>1240 ),
    .SEL(\result<1>_bdd12/BXINV_5398 ),
    .O(\result<1>_bdd12/F5MUX_5405 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y83" ))
  \result<1>_bdd12/BXINV  (
    .I(\result<1>_bdd14 ),
    .O(\result<1>_bdd12/BXINV_5398 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y81" ))
  \N51/XUSED  (
    .I(\N51/F5MUX_5430 ),
    .O(N51)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X2Y81" ))
  \N51/F5MUX  (
    .IA(\result<2>365_SW01_5419 ),
    .IB(\result<2>365_SW0 ),
    .SEL(\N51/BXINV_5421 ),
    .O(\N51/F5MUX_5430 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y81" ))
  \N51/BXINV  (
    .I(in2_1_IBUF_1603),
    .O(\N51/BXINV_5421 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y81" ))
  \N157/XUSED  (
    .I(\N157/F5MUX_5455 ),
    .O(N157)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y81" ))
  \N157/F5MUX  (
    .IA(N209),
    .IB(N210),
    .SEL(\N157/BXINV_5448 ),
    .O(\N157/F5MUX_5455 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y81" ))
  \N157/BXINV  (
    .I(alu_mode_0_IBUF_1612),
    .O(\N157/BXINV_5448 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y70" ))
  \result<2>_bdd12/XUSED  (
    .I(\result<2>_bdd12/F5MUX_5480 ),
    .O(\result<2>_bdd12 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y70" ))
  \result<2>_bdd12/F5MUX  (
    .IA(\result<2>71_5471 ),
    .IB(\result<2>7 ),
    .SEL(\result<2>_bdd12/BXINV_5473 ),
    .O(\result<2>_bdd12/F5MUX_5480 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y70" ))
  \result<2>_bdd12/BXINV  (
    .I(\result<2>_bdd14 ),
    .O(\result<2>_bdd12/BXINV_5473 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y49" ))
  \result<14>_bdd12/XUSED  (
    .I(\result<14>_bdd12/F5MUX_5505 ),
    .O(\result<14>_bdd12 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y49" ))
  \result<14>_bdd12/F5MUX  (
    .IA(N179),
    .IB(N180),
    .SEL(\result<14>_bdd12/BXINV_5497 ),
    .O(\result<14>_bdd12/F5MUX_5505 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y49" ))
  \result<14>_bdd12/BXINV  (
    .I(in2_1_IBUF_1603),
    .O(\result<14>_bdd12/BXINV_5497 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y64" ))
  \result<4>_bdd10/XUSED  (
    .I(\result<4>_bdd10/F5MUX_5530 ),
    .O(\result<4>_bdd10 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y64" ))
  \result<4>_bdd10/F5MUX  (
    .IA(\result<4>611_5521 ),
    .IB(\result<4>61 ),
    .SEL(\result<4>_bdd10/BXINV_5523 ),
    .O(\result<4>_bdd10/F5MUX_5530 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y64" ))
  \result<4>_bdd10/BXINV  (
    .I(\result<4>_bdd12 ),
    .O(\result<4>_bdd10/BXINV_5523 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y74" ))
  \N155/XUSED  (
    .I(\N155/F5MUX_5555 ),
    .O(N155)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y74" ))
  \N155/F5MUX  (
    .IA(N207),
    .IB(N208),
    .SEL(\N155/BXINV_5548 ),
    .O(\N155/F5MUX_5555 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y74" ))
  \N155/BXINV  (
    .I(alu_mode_0_IBUF_1612),
    .O(\N155/BXINV_5548 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y47" ))
  \result<12>_bdd12/XUSED  (
    .I(\result<12>_bdd12/F5MUX_5580 ),
    .O(\result<12>_bdd12 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y47" ))
  \result<12>_bdd12/F5MUX  (
    .IA(\result<12>71_5571 ),
    .IB(\result<12>7 ),
    .SEL(\result<12>_bdd12/BXINV_5573 ),
    .O(\result<12>_bdd12/F5MUX_5580 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y47" ))
  \result<12>_bdd12/BXINV  (
    .I(\result<12>_bdd15 ),
    .O(\result<12>_bdd12/BXINV_5573 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y51" ))
  \result<2>_bdd14/XUSED  (
    .I(\result<2>_bdd14/F5MUX_5605 ),
    .O(\result<2>_bdd14 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y51" ))
  \result<2>_bdd14/F5MUX  (
    .IA(\result<2>8 ),
    .IB(\result<2>_bdd16_rt_5603 ),
    .SEL(\result<2>_bdd14/BXINV_5595 ),
    .O(\result<2>_bdd14/F5MUX_5605 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y51" ))
  \result<2>_bdd14/BXINV  (
    .I(in2_1_IBUF_1603),
    .O(\result<2>_bdd14/BXINV_5595 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y57" ))
  \result<8>_bdd5/XUSED  (
    .I(\result<8>_bdd5/F5MUX_5630 ),
    .O(\result<8>_bdd5 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y57" ))
  \result<8>_bdd5/F5MUX  (
    .IA(\result<8>311_5621 ),
    .IB(\result<8>31 ),
    .SEL(\result<8>_bdd5/BXINV_5623 ),
    .O(\result<8>_bdd5/F5MUX_5630 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y57" ))
  \result<8>_bdd5/BXINV  (
    .I(\result<4>_bdd7_0 ),
    .O(\result<8>_bdd5/BXINV_5623 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y78" ))
  \result<0>1316/XUSED  (
    .I(\result<0>1316/F5MUX_5655 ),
    .O(\result<0>1316 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X2Y78" ))
  \result<0>1316/F5MUX  (
    .IA(N175),
    .IB(N176),
    .SEL(\result<0>1316/BXINV_5648 ),
    .O(\result<0>1316/F5MUX_5655 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y78" ))
  \result<0>1316/BXINV  (
    .I(alu_mode_0_IBUF_1612),
    .O(\result<0>1316/BXINV_5648 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y68" ))
  \N153/XUSED  (
    .I(\N153/F5MUX_5680 ),
    .O(N153)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y68" ))
  \N153/F5MUX  (
    .IA(N205),
    .IB(N206),
    .SEL(\N153/BXINV_5673 ),
    .O(\N153/F5MUX_5680 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y68" ))
  \N153/BXINV  (
    .I(alu_mode_0_IBUF_1612),
    .O(\N153/BXINV_5673 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y52" ))
  \result<10>_bdd5/XUSED  (
    .I(\result<10>_bdd5/F5MUX_5705 ),
    .O(\result<10>_bdd5 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y52" ))
  \result<10>_bdd5/F5MUX  (
    .IA(\result<10>911_5696 ),
    .IB(\result<10>91 ),
    .SEL(\result<10>_bdd5/BXINV_5698 ),
    .O(\result<10>_bdd5/F5MUX_5705 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y52" ))
  \result<10>_bdd5/BXINV  (
    .I(\result<10>_bdd8_0 ),
    .O(\result<10>_bdd5/BXINV_5698 )
  );
  X_LUT4 #(
    .INIT ( 16'h4777 ),
    .LOC ( "SLICE_X2Y45" ))
  \result<15>1425_SW0_SW01  (
    .ADR0(\result<14>_bdd5 ),
    .ADR1(in2_0_IBUF_1613),
    .ADR2(\result<15>1271_0 ),
    .ADR3(\result<15>1259_0 ),
    .O(\result<15>1425_SW0_SW0 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF1D ),
    .LOC ( "SLICE_X0Y41" ))
  \result<14>1140_SW1_G  (
    .ADR0(\result<14>_bdd5 ),
    .ADR1(in2_0_IBUF_1613),
    .ADR2(\result<13>_bdd5 ),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(N214)
  );
  X_LUT4 #(
    .INIT ( 16'h3320 ),
    .LOC ( "SLICE_X0Y41" ))
  \result<14>1140_SW1_F  (
    .ADR0(in2_14_IBUF_1658),
    .ADR1(\result<14>126_0 ),
    .ADR2(in1_14_IBUF_1627),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(N213)
  );
  X_LUT4 #(
    .INIT ( 16'h0E0C ),
    .LOC ( "SLICE_X2Y62" ))
  \result<6>1141_SW1_F  (
    .ADR0(in1_6_IBUF_1669),
    .ADR1(alu_mode_1_IBUF_1616),
    .ADR2(N71_0),
    .ADR3(in2_6_IBUF_1668),
    .O(N201)
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X0Y80" ))
  \result<1>_bdd16_rt  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\result<1>_bdd16_0 ),
    .O(\result<1>_bdd16_rt_2329 )
  );
  X_LUT4 #(
    .INIT ( 16'h5044 ),
    .LOC ( "SLICE_X0Y80" ))
  \result<1>131  (
    .ADR0(\result<0>_bdd64_0 ),
    .ADR1(in1_6_IBUF_1669),
    .ADR2(in1_14_IBUF_1627),
    .ADR3(in2_3_IBUF_1606),
    .O(\result<1>13 )
  );
  X_LUT4 #(
    .INIT ( 16'hDCDC ),
    .LOC ( "SLICE_X1Y81" ))
  \result<2>365_G  (
    .ADR0(in1_14_IBUF_1627),
    .ADR1(N51),
    .ADR2(\result<2>324_0 ),
    .ADR3(VCC),
    .O(N188)
  );
  X_LUT4 #(
    .INIT ( 16'hEE44 ),
    .LOC ( "SLICE_X1Y81" ))
  \result<2>365_F  (
    .ADR0(in2_1_IBUF_1603),
    .ADR1(\result<2>_bdd9 ),
    .ADR2(VCC),
    .ADR3(\result<0>_bdd54_0 ),
    .O(N187)
  );
  X_LUT4 #(
    .INIT ( 16'h7474 ),
    .LOC ( "SLICE_X0Y52" ))
  \result<10>20  (
    .ADR0(\result<10>_bdd29_0 ),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(\result<12>312_0 ),
    .ADR3(VCC),
    .O(\result<10>_bdd22_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h9696 ),
    .LOC ( "SLICE_X3Y65" ))
  \Maddsub_result_addsub0000_lut<2>  (
    .ADR0(in1_2_IBUF_1713),
    .ADR1(in2_2_IBUF_1600),
    .ADR2(result_mux0002_0),
    .ADR3(VCC),
    .O(Maddsub_result_addsub0000_lut[2])
  );
  X_BUF #(
    .LOC ( "PAD277" ))
  \z_flag/OUTPUT/OFF/OMUX  (
    .I(z_flag_OBUF_5036),
    .O(\z_flag/O )
  );
  X_BUF #(
    .LOC ( "PAD277" ))
  \z_flag/OUTPUT/OFF/OCEINV  (
    .I(z_flag_cmp_eq0000_0),
    .O(\z_flag/OUTPUT/OFF/OCEINV_5041 )
  );
  X_BUF #(
    .LOC ( "PAD277" ))
  \z_flag/OUTPUT/OFF/O1_DDRMUX  (
    .I(z_flag_mux0002),
    .O(\z_flag/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_FF #(
    .LOC ( "PAD277" ),
    .INIT ( 1'b0 ))
  z_flag_1912 (
    .I(\z_flag/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(\z_flag/OUTPUT/OFF/OCEINV_5041 ),
    .CLK(\z_flag/OUTPUT/OTCLK1INV_5025 ),
    .SET(GND),
    .RST(\z_flag/OUTPUT/OFF/OFF1/RSTAND_5038 ),
    .O(z_flag_OBUF_5036)
  );
  X_BUF #(
    .LOC ( "PAD277" ))
  \z_flag/OUTPUT/OFF/OFF1/RSTAND  (
    .I(rst_IBUF_1727),
    .O(\z_flag/OUTPUT/OFF/OFF1/RSTAND_5038 )
  );
  X_LUT4 #(
    .INIT ( 16'hCFDD ),
    .LOC ( "SLICE_X0Y53" ))
  \result<10>7140_SW1_G  (
    .ADR0(\result<10>_bdd6_0 ),
    .ADR1(alu_mode_1_IBUF_1616),
    .ADR2(\result<10>_bdd5 ),
    .ADR3(in2_0_IBUF_1613),
    .O(N222)
  );
  X_LUT4 #(
    .INIT ( 16'h0E0A ),
    .LOC ( "SLICE_X0Y53" ))
  \result<10>7140_SW1_F  (
    .ADR0(alu_mode_1_IBUF_1616),
    .ADR1(in1_10_IBUF_1714),
    .ADR2(\result<10>726_0 ),
    .ADR3(in2_10_IBUF_1733),
    .O(N221)
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ),
    .LOC ( "SLICE_X0Y48" ))
  \result<10>37_F  (
    .ADR0(\result<0>379_1781 ),
    .ADR1(\result<0>3714_1782 ),
    .ADR2(\result<0>374_1780 ),
    .ADR3(in1_12_IBUF_1618),
    .O(N183)
  );
  X_LUT4 #(
    .INIT ( 16'h2727 ),
    .LOC ( "SLICE_X1Y44" ))
  \result<13>342_F  (
    .ADR0(in2_1_IBUF_1603),
    .ADR1(N6),
    .ADR2(\result<13>_bdd7_0 ),
    .ADR3(VCC),
    .O(N181)
  );
  X_LUT4 #(
    .INIT ( 16'hCA0A ),
    .LOC ( "SLICE_X3Y62" ))
  \result<5>312  (
    .ADR0(\result<10>_bdd8_0 ),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(in2_2_IBUF_1600),
    .ADR3(N41_0),
    .O(\result<5>311_1893 )
  );
  X_LUT4 #(
    .INIT ( 16'hFA3A ),
    .LOC ( "SLICE_X3Y62" ))
  \result<5>311  (
    .ADR0(\result<10>_bdd8_0 ),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(in2_2_IBUF_1600),
    .ADR3(N41_0),
    .O(\result<5>31 )
  );
  X_LUT4 #(
    .INIT ( 16'hA0E4 ),
    .LOC ( "SLICE_X2Y51" ))
  \result<10>291  (
    .ADR0(in2_3_IBUF_1606),
    .ADR1(in1_13_IBUF_1608),
    .ADR2(\result<0>_bdd32_0 ),
    .ADR3(\result<0>_bdd64_0 ),
    .O(\result<10>_bdd45 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X2Y51" ))
  \result<10>25_rt  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\result<10>25 ),
    .O(\result<10>25_rt_1927 )
  );
  X_LUT4 #(
    .INIT ( 16'hFAD8 ),
    .LOC ( "SLICE_X2Y74" ))
  \result<0>2540_F  (
    .ADR0(in2_2_IBUF_1600),
    .ADR1(\result<0>2512_0 ),
    .ADR2(\result<0>_bdd54_0 ),
    .ADR3(\result<0>_bdd43 ),
    .O(N189)
  );
  X_LUT4 #(
    .INIT ( 16'hCACA ),
    .LOC ( "SLICE_X2Y74" ))
  \result<0>2540_G  (
    .ADR0(N39_0),
    .ADR1(\result<0>2512_0 ),
    .ADR2(in2_2_IBUF_1600),
    .ADR3(VCC),
    .O(N190)
  );
  X_LUT4 #(
    .INIT ( 16'hA0AC ),
    .LOC ( "SLICE_X3Y41" ))
  \result<11>11_SW0  (
    .ADR0(\result<0>_bdd57_0 ),
    .ADR1(in1_14_IBUF_1627),
    .ADR2(in2_3_IBUF_1606),
    .ADR3(\result<0>_bdd64_0 ),
    .O(\result<10>32 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X3Y41" ))
  \result<10>_bdd53_rt  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\result<10>_bdd53_0 ),
    .ADR3(VCC),
    .O(\result<10>_bdd53_rt_2004 )
  );
  X_LUT4 #(
    .INIT ( 16'hCC00 ),
    .LOC ( "SLICE_X2Y45" ))
  \result<15>1425_SW0_SW02  (
    .ADR0(VCC),
    .ADR1(in1_15_IBUF_1635),
    .ADR2(VCC),
    .ADR3(in2_15_IBUF_1634),
    .O(\result<15>1425_SW0_SW01_2022 )
  );
  X_LUT4 #(
    .INIT ( 16'hD1D1 ),
    .LOC ( "SLICE_X1Y61" ))
  \result<10>172  (
    .ADR0(\result<0>_bdd107_0 ),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(\result<10>_bdd24 ),
    .ADR3(VCC),
    .O(\result<10>171_2072 )
  );
  X_LUT4 #(
    .INIT ( 16'hE2C0 ),
    .LOC ( "SLICE_X1Y61" ))
  \result<10>171  (
    .ADR0(in1_14_IBUF_1627),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(\result<10>_bdd24 ),
    .ADR3(\result<0>_bdd13 ),
    .O(\result<10>17 )
  );
  X_LUT4 #(
    .INIT ( 16'h5540 ),
    .LOC ( "SLICE_X0Y67" ))
  \result<5>1141_SW1_F  (
    .ADR0(N75_0),
    .ADR1(in2_5_IBUF_1648),
    .ADR2(in1_5_IBUF_1649),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(N203)
  );
  X_LUT4 #(
    .INIT ( 16'hFF35 ),
    .LOC ( "SLICE_X0Y67" ))
  \result<5>1141_SW1_G  (
    .ADR0(\result<5>_bdd5 ),
    .ADR1(\result<4>_bdd5 ),
    .ADR2(in2_0_IBUF_1613),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(N204)
  );
  X_LUT4 #(
    .INIT ( 16'hFCCC ),
    .LOC ( "SLICE_X1Y70" ))
  \result<0>4340_F  (
    .ADR0(VCC),
    .ADR1(\result<0>4316_0 ),
    .ADR2(\result<0>_bdd79_0 ),
    .ADR3(in2_1_IBUF_1603),
    .O(N177)
  );
  X_LUT4 #(
    .INIT ( 16'hAFA0 ),
    .LOC ( "SLICE_X1Y70" ))
  \result<0>4340_G  (
    .ADR0(N35_0),
    .ADR1(VCC),
    .ADR2(in2_1_IBUF_1603),
    .ADR3(\result<0>_bdd84_0 ),
    .O(N178)
  );
  X_LUT4 #(
    .INIT ( 16'h22F0 ),
    .LOC ( "SLICE_X1Y46" ))
  \result<10>2412  (
    .ADR0(\result<10>25 ),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(\result<10>_bdd38 ),
    .ADR3(in2_2_IBUF_1600),
    .O(\result<10>2411_2222 )
  );
  X_LUT4 #(
    .INIT ( 16'hEEF0 ),
    .LOC ( "SLICE_X1Y46" ))
  \result<10>2411  (
    .ADR0(\result<10>25 ),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(\result<10>_bdd38 ),
    .ADR3(in2_2_IBUF_1600),
    .O(\result<10>241 )
  );
  X_LUT4 #(
    .INIT ( 16'h3230 ),
    .LOC ( "SLICE_X0Y40" ))
  \result<13>1141_SW1_F  (
    .ADR0(in2_13_IBUF_1675),
    .ADR1(\result<13>126_0 ),
    .ADR2(alu_mode_1_IBUF_1616),
    .ADR3(in1_13_IBUF_1608),
    .O(N215)
  );
  X_LUT4 #(
    .INIT ( 16'hFF1D ),
    .LOC ( "SLICE_X0Y40" ))
  \result<13>1141_SW1_G  (
    .ADR0(\result<13>_bdd5 ),
    .ADR1(in2_0_IBUF_1613),
    .ADR2(\result<12>_bdd5 ),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(N216)
  );
  X_LUT4 #(
    .INIT ( 16'h0F08 ),
    .LOC ( "SLICE_X2Y60" ))
  \result<7>1141_SW1_F  (
    .ADR0(in1_7_IBUF_1679),
    .ADR1(in2_7_IBUF_1678),
    .ADR2(N67_0),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(N199)
  );
  X_LUT4 #(
    .INIT ( 16'hFF1D ),
    .LOC ( "SLICE_X2Y60" ))
  \result<7>1141_SW1_G  (
    .ADR0(\result<7>_bdd5_0 ),
    .ADR1(in2_0_IBUF_1613),
    .ADR2(\result<6>_bdd5 ),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(N200)
  );
  X_LUT4 #(
    .INIT ( 16'h80D5 ),
    .LOC ( "SLICE_X3Y49" ))
  \result<11>41  (
    .ADR0(in2_3_IBUF_1606),
    .ADR1(\result<0>_bdd13 ),
    .ADR2(in1_15_IBUF_1635),
    .ADR3(\result<0>_bdd87 ),
    .O(\result<11>4 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X3Y49" ))
  \result<10>_bdd12_rt  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\result<10>_bdd12_0 ),
    .O(\result<10>_bdd12_rt_2354 )
  );
  X_LUT4 #(
    .INIT ( 16'hEEF0 ),
    .LOC ( "SLICE_X3Y72" ))
  \result<1>840_F  (
    .ADR0(\result<1>812_0 ),
    .ADR1(\result<0>_bdd28_0 ),
    .ADR2(\result<1>_bdd9_0 ),
    .ADR3(in2_2_IBUF_1600),
    .O(N191)
  );
  X_LUT4 #(
    .INIT ( 16'hAACC ),
    .LOC ( "SLICE_X3Y72" ))
  \result<1>840_G  (
    .ADR0(\result<1>812_0 ),
    .ADR1(N41_0),
    .ADR2(VCC),
    .ADR3(in2_2_IBUF_1600),
    .O(N192)
  );
  X_LUT4 #(
    .INIT ( 16'h88A0 ),
    .LOC ( "SLICE_X2Y70" ))
  \result<4>312  (
    .ADR0(in2_2_IBUF_1600),
    .ADR1(N39_0),
    .ADR2(\result<0>_bdd54_0 ),
    .ADR3(in2_1_IBUF_1603),
    .O(\result<4>311_2397 )
  );
  X_LUT4 #(
    .INIT ( 16'hDDF5 ),
    .LOC ( "SLICE_X2Y70" ))
  \result<4>311  (
    .ADR0(in2_2_IBUF_1600),
    .ADR1(N39_0),
    .ADR2(\result<0>_bdd54_0 ),
    .ADR3(in2_1_IBUF_1603),
    .O(\result<4>31 )
  );
  X_LUT4 #(
    .INIT ( 16'hA820 ),
    .LOC ( "SLICE_X3Y39" ))
  \result<11>812  (
    .ADR0(in2_2_IBUF_1600),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(\result<10>_bdd53_0 ),
    .ADR3(N4_0),
    .O(\result<11>811_2472 )
  );
  X_LUT4 #(
    .INIT ( 16'hFD75 ),
    .LOC ( "SLICE_X3Y39" ))
  \result<11>811  (
    .ADR0(in2_2_IBUF_1600),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(\result<10>_bdd53_0 ),
    .ADR3(N4_0),
    .O(\result<11>81 )
  );
  X_LUT4 #(
    .INIT ( 16'h00CC ),
    .LOC ( "SLICE_X1Y50" ))
  \result<10>2512  (
    .ADR0(VCC),
    .ADR1(in1_15_IBUF_1635),
    .ADR2(VCC),
    .ADR3(\result<0>_bdd64_0 ),
    .O(\result<10>2511_2497 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X1Y50" ))
  \result<10>2511  (
    .ADR0(\result<0>514_1706 ),
    .ADR1(\result<0>59_0 ),
    .ADR2(in1_7_IBUF_1679),
    .ADR3(\result<0>54_0 ),
    .O(\result<10>251 )
  );
  X_LUT4 #(
    .INIT ( 16'h5540 ),
    .LOC ( "SLICE_X0Y56" ))
  \result<9>1141_SW1_F  (
    .ADR0(\result<9>126_0 ),
    .ADR1(in2_9_IBUF_1710),
    .ADR2(in1_9_IBUF_1709),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(N195)
  );
  X_LUT4 #(
    .INIT ( 16'hABEF ),
    .LOC ( "SLICE_X0Y56" ))
  \result<9>1141_SW1_G  (
    .ADR0(alu_mode_1_IBUF_1616),
    .ADR1(in2_0_IBUF_1613),
    .ADR2(\result<10>_bdd5 ),
    .ADR3(\result<8>_bdd5 ),
    .O(N196)
  );
  X_LUT4 #(
    .INIT ( 16'hCFDD ),
    .LOC ( "SLICE_X0Y79" ))
  \result<1>1229_SW0  (
    .ADR0(in1_2_IBUF_1713),
    .ADR1(\result<0>_bdd64_0 ),
    .ADR2(in1_10_IBUF_1714),
    .ADR3(in2_3_IBUF_1606),
    .O(N53)
  );
  X_LUT4 #(
    .INIT ( 16'hCA00 ),
    .LOC ( "SLICE_X1Y40" ))
  \result<13>126  (
    .ADR0(\result<12>_bdd12 ),
    .ADR1(\result<13>_bdd10 ),
    .ADR2(in2_0_IBUF_1613),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(\result<13>126_2595 )
  );
  X_LUT4 #(
    .INIT ( 16'hC808 ),
    .LOC ( "SLICE_X1Y40" ))
  \result<12>126  (
    .ADR0(\result<11>_bdd14 ),
    .ADR1(alu_mode_1_IBUF_1616),
    .ADR2(in2_0_IBUF_1613),
    .ADR3(\result<12>_bdd12 ),
    .O(\result<12>126_2602 )
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ),
    .LOC ( "SLICE_X3Y74" ))
  \result<0>18  (
    .ADR0(\result<0>_bdd28_0 ),
    .ADR1(N41_0),
    .ADR2(in2_1_IBUF_1603),
    .ADR3(VCC),
    .O(\result<0>_bdd6_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFAD8 ),
    .LOC ( "SLICE_X3Y74" ))
  \result<0>1238  (
    .ADR0(in2_2_IBUF_1600),
    .ADR1(\result<0>1203_0 ),
    .ADR2(\result<0>_bdd6 ),
    .ADR3(\result<0>1185_0 ),
    .O(\result<0>1238_2626 )
  );
  X_LUT4 #(
    .INIT ( 16'hAACC ),
    .LOC ( "SLICE_X2Y49" ))
  \result<11>11  (
    .ADR0(\result<10>32_0 ),
    .ADR1(\result<10>_bdd60 ),
    .ADR2(VCC),
    .ADR3(in2_1_IBUF_1603),
    .O(\result<11>_bdd17 )
  );
  X_LUT4 #(
    .INIT ( 16'hE2E2 ),
    .LOC ( "SLICE_X2Y49" ))
  \result<10>101  (
    .ADR0(\result<10>_bdd12_0 ),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(\result<10>_bdd11_0 ),
    .ADR3(VCC),
    .O(\result<10>_bdd8 )
  );
  X_LUT4 #(
    .INIT ( 16'h8A80 ),
    .LOC ( "SLICE_X3Y60" ))
  \result<6>164_SW0  (
    .ADR0(alu_mode_1_IBUF_1616),
    .ADR1(\result<6>_bdd8_0 ),
    .ADR2(in2_0_IBUF_1613),
    .ADR3(\result<5>_bdd8 ),
    .O(N71)
  );
  X_LUT4 #(
    .INIT ( 16'hA808 ),
    .LOC ( "SLICE_X3Y60" ))
  \result<7>164_SW0  (
    .ADR0(alu_mode_1_IBUF_1616),
    .ADR1(\result<6>_bdd8_0 ),
    .ADR2(in2_0_IBUF_1613),
    .ADR3(\result<7>_bdd8_0 ),
    .O(N67)
  );
  X_LUT4 #(
    .INIT ( 16'hACC0 ),
    .LOC ( "SLICE_X1Y85" ))
  \result<5>1141_SW0_SW0  (
    .ADR0(\result_mult0000[5] ),
    .ADR1(result_addsub0000[5]),
    .ADR2(alu_mode_0_IBUF_1612),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(N117_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h1504 ),
    .LOC ( "SLICE_X1Y85" ))
  \result<5>1141  (
    .ADR0(rst_IBUF_1727),
    .ADR1(alu_mode_2_IBUF_1728),
    .ADR2(N151),
    .ADR3(N117),
    .O(result_5_OBUF_2710)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X0Y39" ))
  \result<0>59  (
    .ADR0(in2_9_IBUF_1710),
    .ADR1(in2_11_IBUF_1640),
    .ADR2(in2_10_IBUF_1733),
    .ADR3(in2_8_IBUF_1664),
    .O(\result<0>59_2722 )
  );
  X_LUT4 #(
    .INIT ( 16'hA088 ),
    .LOC ( "SLICE_X2Y46" ))
  \result<15>186_SW0  (
    .ADR0(\result<0>_bdd13 ),
    .ADR1(in1_6_IBUF_1669),
    .ADR2(in1_14_IBUF_1627),
    .ADR3(in2_3_IBUF_1606),
    .O(N105_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hE020 ),
    .LOC ( "SLICE_X2Y46" ))
  \result<15>186  (
    .ADR0(\result<13>_bdd12 ),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(in2_2_IBUF_1600),
    .ADR3(N105),
    .O(\result<15>186_2746 )
  );
  X_LUT4 #(
    .INIT ( 16'h10BA ),
    .LOC ( "SLICE_X3Y45" ))
  \result<15>1259_SW0  (
    .ADR0(in2_3_IBUF_1606),
    .ADR1(\result<0>_bdd64_0 ),
    .ADR2(in1_15_IBUF_1635),
    .ADR3(\result<0>_bdd87 ),
    .O(N139_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hDFCE ),
    .LOC ( "SLICE_X3Y45" ))
  \result<15>1259  (
    .ADR0(in2_1_IBUF_1603),
    .ADR1(in2_2_IBUF_1600),
    .ADR2(\result<13>_bdd7_0 ),
    .ADR3(N139),
    .O(\result<15>1259_2794 )
  );
  X_LUT4 #(
    .INIT ( 16'hD8A0 ),
    .LOC ( "SLICE_X2Y80" ))
  \result<0>1391_SW0_SW0  (
    .ADR0(alu_mode_1_IBUF_1616),
    .ADR1(\result_mult0000[0] ),
    .ADR2(result_addsub0000[0]),
    .ADR3(alu_mode_0_IBUF_1612),
    .O(N137_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h0B08 ),
    .LOC ( "SLICE_X2Y80" ))
  \result<0>1391  (
    .ADR0(\result<0>1316 ),
    .ADR1(alu_mode_2_IBUF_1728),
    .ADR2(rst_IBUF_1727),
    .ADR3(N137),
    .O(result_0_OBUF_2818)
  );
  X_LUT4 #(
    .INIT ( 16'hB800 ),
    .LOC ( "SLICE_X1Y58" ))
  \result<0>31_SW2  (
    .ADR0(in1_6_IBUF_1669),
    .ADR1(in2_3_IBUF_1606),
    .ADR2(in1_14_IBUF_1627),
    .ADR3(\result<0>_bdd13 ),
    .O(N39)
  );
  X_LUT4 #(
    .INIT ( 16'hB111 ),
    .LOC ( "SLICE_X1Y58" ))
  \result<12>4_SW2  (
    .ADR0(in2_3_IBUF_1606),
    .ADR1(\result<0>_bdd107_0 ),
    .ADR2(in1_14_IBUF_1627),
    .ADR3(\result<0>_bdd13 ),
    .O(N45)
  );
  X_LUT4 #(
    .INIT ( 16'hE200 ),
    .LOC ( "SLICE_X0Y51" ))
  \result<10>261  (
    .ADR0(in1_1_IBUF_1683),
    .ADR1(in2_3_IBUF_1606),
    .ADR2(in1_9_IBUF_1709),
    .ADR3(\result<0>_bdd13 ),
    .O(\result<10>_bdd40 )
  );
  X_LUT4 #(
    .INIT ( 16'hEEE2 ),
    .LOC ( "SLICE_X1Y43" ))
  \result<13>640  (
    .ADR0(\result<10>_bdd50 ),
    .ADR1(in2_2_IBUF_1600),
    .ADR2(\result<13>615_0 ),
    .ADR3(\result<13>60_0 ),
    .O(\result<13>_bdd10_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h8A80 ),
    .LOC ( "SLICE_X1Y43" ))
  \result<14>126  (
    .ADR0(alu_mode_1_IBUF_1616),
    .ADR1(\result<14>_bdd12 ),
    .ADR2(in2_0_IBUF_1613),
    .ADR3(\result<13>_bdd10 ),
    .O(\result<14>126_2890 )
  );
  X_LUT4 #(
    .INIT ( 16'hACC0 ),
    .LOC ( "SLICE_X2Y77" ))
  \result<6>1141_SW0_SW0  (
    .ADR0(\result_mult0000[6] ),
    .ADR1(result_addsub0000[6]),
    .ADR2(alu_mode_1_IBUF_1616),
    .ADR3(alu_mode_0_IBUF_1612),
    .O(N115_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h0074 ),
    .LOC ( "SLICE_X2Y77" ))
  \result<6>1141  (
    .ADR0(N149),
    .ADR1(alu_mode_2_IBUF_1728),
    .ADR2(N115),
    .ADR3(rst_IBUF_1727),
    .O(result_6_OBUF_2914)
  );
  X_LUT4 #(
    .INIT ( 16'h8A02 ),
    .LOC ( "SLICE_X0Y83" ))
  \result<1>265_SW0  (
    .ADR0(alu_mode_1_IBUF_1616),
    .ADR1(in2_0_IBUF_1613),
    .ADR2(\result<0>_bdd74 ),
    .ADR3(\result<1>_bdd12 ),
    .O(N89)
  );
  X_LUT4 #(
    .INIT ( 16'hA280 ),
    .LOC ( "SLICE_X0Y83" ))
  \result<2>126  (
    .ADR0(alu_mode_1_IBUF_1616),
    .ADR1(in2_0_IBUF_1613),
    .ADR2(\result<2>_bdd12 ),
    .ADR3(\result<1>_bdd12 ),
    .O(\result<2>126_2938 )
  );
  X_LUT4 #(
    .INIT ( 16'hCE02 ),
    .LOC ( "SLICE_X1Y63" ))
  \result<2>51  (
    .ADR0(in1_2_IBUF_1713),
    .ADR1(in2_3_IBUF_1606),
    .ADR2(\result<0>_bdd64_0 ),
    .ADR3(\result<0>_bdd42 ),
    .O(\result<2>_bdd9_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hE680 ),
    .LOC ( "SLICE_X2Y65" ))
  \result<15>1413_SW0  (
    .ADR0(alu_mode_0_IBUF_1612),
    .ADR1(alu_mode_1_IBUF_1616),
    .ADR2(\result_mult0000[31] ),
    .ADR3(result_addsub0000[15]),
    .O(N107)
  );
  X_LUT4 #(
    .INIT ( 16'hFFDD ),
    .LOC ( "SLICE_X2Y65" ))
  result_mux00022 (
    .ADR0(alu_mode_0_IBUF_1612),
    .ADR1(alu_mode_2_IBUF_1728),
    .ADR2(VCC),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(result_mux0002)
  );
  X_LUT4 #(
    .INIT ( 16'hCFDD ),
    .LOC ( "SLICE_X0Y59" ))
  \result<12>51  (
    .ADR0(in1_12_IBUF_1618),
    .ADR1(\result<0>_bdd64_0 ),
    .ADR2(in1_4_IBUF_1764),
    .ADR3(in2_3_IBUF_1606),
    .O(\result<12>_bdd8 )
  );
  X_LUT4 #(
    .INIT ( 16'hDDCF ),
    .LOC ( "SLICE_X0Y59" ))
  \result<0>591  (
    .ADR0(in1_12_IBUF_1618),
    .ADR1(\result<0>_bdd64_0 ),
    .ADR2(in1_4_IBUF_1764),
    .ADR3(in2_3_IBUF_1606),
    .O(\result<0>_bdd104 )
  );
  X_LUT4 #(
    .INIT ( 16'hE848 ),
    .LOC ( "SLICE_X1Y80" ))
  \result<2>1140_SW0_SW0  (
    .ADR0(alu_mode_1_IBUF_1616),
    .ADR1(result_addsub0000[2]),
    .ADR2(alu_mode_0_IBUF_1612),
    .ADR3(\result_mult0000[2] ),
    .O(N123_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h1150 ),
    .LOC ( "SLICE_X1Y80" ))
  \result<2>1140  (
    .ADR0(rst_IBUF_1727),
    .ADR1(N157),
    .ADR2(N123),
    .ADR3(alu_mode_2_IBUF_1728),
    .O(result_2_OBUF_3034)
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X1Y73" ))
  z_flag_mux000212 (
    .ADR0(in1_6_IBUF_1669),
    .ADR1(in1_4_IBUF_1764),
    .ADR2(in1_3_IBUF_1771),
    .ADR3(in1_5_IBUF_1649),
    .O(z_flag_mux000212_3051)
  );
  X_LUT4 #(
    .INIT ( 16'h88A0 ),
    .LOC ( "SLICE_X2Y69" ))
  \result<0>1185_SW0  (
    .ADR0(\result<0>59_0 ),
    .ADR1(in1_1_IBUF_1683),
    .ADR2(in1_9_IBUF_1709),
    .ADR3(in2_3_IBUF_1606),
    .O(N61_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X2Y69" ))
  \result<0>1185  (
    .ADR0(\result<0>54_0 ),
    .ADR1(\result<0>514_1706 ),
    .ADR2(N61),
    .ADR3(in2_1_IBUF_1603),
    .O(\result<0>1185_3082 )
  );
  X_LUT4 #(
    .INIT ( 16'hFA0A ),
    .LOC ( "SLICE_X0Y74" ))
  \result<3>31  (
    .ADR0(\result<3>_bdd7 ),
    .ADR1(VCC),
    .ADR2(in2_2_IBUF_1600),
    .ADR3(\result<0>_bdd6 ),
    .O(\result<3>_bdd5 )
  );
  X_LUT4 #(
    .INIT ( 16'hFC0C ),
    .LOC ( "SLICE_X2Y59" ))
  \result<3>41  (
    .ADR0(VCC),
    .ADR1(\result<10>_bdd11_0 ),
    .ADR2(in2_1_IBUF_1603),
    .ADR3(\result<1>_bdd9_0 ),
    .O(\result<3>_bdd7_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hE4E4 ),
    .LOC ( "SLICE_X2Y59" ))
  \result<7>31  (
    .ADR0(in2_2_IBUF_1600),
    .ADR1(\result<11>_bdd7 ),
    .ADR2(\result<3>_bdd7 ),
    .ADR3(VCC),
    .O(\result<7>_bdd5 )
  );
  X_LUT4 #(
    .INIT ( 16'hB800 ),
    .LOC ( "SLICE_X1Y72" ))
  \result<12>81  (
    .ADR0(in1_11_IBUF_1639),
    .ADR1(in2_3_IBUF_1606),
    .ADR2(in1_3_IBUF_1771),
    .ADR3(\result<0>_bdd13 ),
    .O(\result<12>_bdd14 )
  );
  X_LUT4 #(
    .INIT ( 16'hE020 ),
    .LOC ( "SLICE_X1Y72" ))
  \result<0>191  (
    .ADR0(in1_13_IBUF_1608),
    .ADR1(in2_3_IBUF_1606),
    .ADR2(\result<0>_bdd13 ),
    .ADR3(in1_5_IBUF_1649),
    .O(\result<0>_bdd28 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF1B ),
    .LOC ( "SLICE_X0Y54" ))
  \result<13>41  (
    .ADR0(in2_3_IBUF_1606),
    .ADR1(in1_13_IBUF_1608),
    .ADR2(in1_5_IBUF_1649),
    .ADR3(\result<0>_bdd64_0 ),
    .O(\result<13>_bdd7 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF27 ),
    .LOC ( "SLICE_X0Y54" ))
  \result<0>471  (
    .ADR0(in2_3_IBUF_1606),
    .ADR1(in1_13_IBUF_1608),
    .ADR2(in1_5_IBUF_1649),
    .ADR3(\result<0>_bdd64_0 ),
    .O(\result<0>_bdd84 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X0Y77" ))
  z_flag_mux000225 (
    .ADR0(in1_1_IBUF_1683),
    .ADR1(in1_2_IBUF_1713),
    .ADR2(in1_0_IBUF_1779),
    .ADR3(in1_15_IBUF_1635),
    .O(z_flag_mux000225_3207)
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ),
    .LOC ( "SLICE_X0Y77" ))
  \result<0>361  (
    .ADR0(\result<0>374_1780 ),
    .ADR1(\result<0>3714_1782 ),
    .ADR2(in1_0_IBUF_1779),
    .ADR3(\result<0>379_1781 ),
    .O(\result<0>_bdd61 )
  );
  X_LUT4 #(
    .INIT ( 16'hB1B1 ),
    .LOC ( "SLICE_X1Y65" ))
  \result<3>61  (
    .ADR0(in2_2_IBUF_1600),
    .ADR1(\result<0>_bdd75 ),
    .ADR2(\result<3>_bdd12 ),
    .ADR3(VCC),
    .O(\result<3>_bdd10_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hD080 ),
    .LOC ( "SLICE_X1Y65" ))
  \result<4>164_SW0  (
    .ADR0(in2_0_IBUF_1613),
    .ADR1(\result<4>_bdd10 ),
    .ADR2(alu_mode_1_IBUF_1616),
    .ADR3(\result<3>_bdd10 ),
    .O(N79)
  );
  X_LUT4 #(
    .INIT ( 16'hF4F7 ),
    .LOC ( "SLICE_X3Y44" ))
  \result<11>5_SW0  (
    .ADR0(in1_3_IBUF_1771),
    .ADR1(in2_3_IBUF_1606),
    .ADR2(\result<0>_bdd64_0 ),
    .ADR3(in1_11_IBUF_1639),
    .O(N6_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hBF37 ),
    .LOC ( "SLICE_X3Y44" ))
  \result<15>1271  (
    .ADR0(in2_1_IBUF_1603),
    .ADR1(in2_2_IBUF_1600),
    .ADR2(N6),
    .ADR3(\result<10>_bdd17_0 ),
    .O(\result<15>1271_3286 )
  );
  X_LUT4 #(
    .INIT ( 16'hFA0A ),
    .LOC ( "SLICE_X3Y54" ))
  \result<3>71  (
    .ADR0(\result<1>_bdd16_0 ),
    .ADR1(VCC),
    .ADR2(in2_1_IBUF_1603),
    .ADR3(\result<10>_bdd61 ),
    .O(\result<3>_bdd12_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hD8D8 ),
    .LOC ( "SLICE_X3Y54" ))
  \result<7>51  (
    .ADR0(in2_2_IBUF_1600),
    .ADR1(\result<11>_bdd17_0 ),
    .ADR2(\result<3>_bdd12 ),
    .ADR3(VCC),
    .O(\result<7>_bdd8 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X0Y75" ))
  z_flag_mux000262 (
    .ADR0(in1_8_IBUF_1663),
    .ADR1(in1_7_IBUF_1679),
    .ADR2(in1_9_IBUF_1709),
    .ADR3(in1_10_IBUF_1714),
    .O(z_flag_mux000262_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X0Y75" ))
  z_flag_mux000276 (
    .ADR0(z_flag_mux000212_0),
    .ADR1(z_flag_mux000225_0),
    .ADR2(z_flag_mux000262_1798),
    .ADR3(z_flag_mux000249_0),
    .O(z_flag_mux0002)
  );
  X_LUT4 #(
    .INIT ( 16'hA000 ),
    .LOC ( "SLICE_X1Y66" ))
  z_flag_cmp_eq00001 (
    .ADR0(alu_mode_0_IBUF_1612),
    .ADR1(VCC),
    .ADR2(alu_mode_2_IBUF_1728),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(z_flag_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'hE040 ),
    .LOC ( "SLICE_X3Y52" ))
  \result<14>712  (
    .ADR0(in2_3_IBUF_1606),
    .ADR1(\result<0>_bdd32_0 ),
    .ADR2(in2_1_IBUF_1603),
    .ADR3(\result<0>_bdd33 ),
    .O(\result<14>712_3375 )
  );
  X_LUT4 #(
    .INIT ( 16'h3202 ),
    .LOC ( "SLICE_X3Y52" ))
  \result<0>1203  (
    .ADR0(\result<0>_bdd24 ),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(in2_3_IBUF_1606),
    .ADR3(\result<0>_bdd23 ),
    .O(\result<0>1203_3382 )
  );
  X_LUT4 #(
    .INIT ( 16'h8A80 ),
    .LOC ( "SLICE_X2Y44" ))
  \result<13>71  (
    .ADR0(\result<0>_bdd13 ),
    .ADR1(in1_12_IBUF_1618),
    .ADR2(in2_3_IBUF_1606),
    .ADR3(in1_4_IBUF_1764),
    .O(\result<13>_bdd12_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hCC00 ),
    .LOC ( "SLICE_X2Y44" ))
  \result<13>60  (
    .ADR0(VCC),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(VCC),
    .ADR3(\result<13>_bdd12 ),
    .O(\result<13>60_3406 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X0Y73" ))
  z_flag_mux000249 (
    .ADR0(in1_12_IBUF_1618),
    .ADR1(in1_11_IBUF_1639),
    .ADR2(in1_14_IBUF_1627),
    .ADR3(in1_13_IBUF_1608),
    .O(z_flag_mux000249_3418)
  );
  X_LUT4 #(
    .INIT ( 16'hEE44 ),
    .LOC ( "SLICE_X3Y51" ))
  \result<4>71  (
    .ADR0(in2_1_IBUF_1603),
    .ADR1(\result<2>_bdd16_0 ),
    .ADR2(VCC),
    .ADR3(\result<10>_bdd46_0 ),
    .O(\result<4>_bdd12_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hD080 ),
    .LOC ( "SLICE_X1Y66" ))
  \result<3>164_SW0  (
    .ADR0(in2_0_IBUF_1613),
    .ADR1(\result<3>_bdd10 ),
    .ADR2(alu_mode_1_IBUF_1616),
    .ADR3(\result<2>_bdd12 ),
    .O(N83)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X3Y46" ))
  \result<0>201  (
    .ADR0(\result<0>514_1706 ),
    .ADR1(\result<0>59_0 ),
    .ADR2(in1_5_IBUF_1649),
    .ADR3(\result<0>54_0 ),
    .O(\result<0>_bdd32 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X3Y46" ))
  \result<0>331  (
    .ADR0(\result<0>514_1706 ),
    .ADR1(\result<0>59_0 ),
    .ADR2(in1_6_IBUF_1669),
    .ADR3(\result<0>54_0 ),
    .O(\result<0>_bdd57 )
  );
  X_LUT4 #(
    .INIT ( 16'hE2E2 ),
    .LOC ( "SLICE_X0Y66" ))
  \result<5>51  (
    .ADR0(\result<1>_bdd14 ),
    .ADR1(in2_2_IBUF_1600),
    .ADR2(\result<10>_bdd51_0 ),
    .ADR3(VCC),
    .O(\result<5>_bdd8_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hC808 ),
    .LOC ( "SLICE_X0Y66" ))
  \result<5>164_SW0  (
    .ADR0(\result<4>_bdd10 ),
    .ADR1(alu_mode_1_IBUF_1616),
    .ADR2(in2_0_IBUF_1613),
    .ADR3(\result<5>_bdd8 ),
    .O(N75)
  );
  X_LUT4 #(
    .INIT ( 16'hACC0 ),
    .LOC ( "SLICE_X1Y68" ))
  \result<4>1140_SW0_SW0  (
    .ADR0(\result_mult0000[4] ),
    .ADR1(result_addsub0000[4]),
    .ADR2(alu_mode_1_IBUF_1616),
    .ADR3(alu_mode_0_IBUF_1612),
    .O(N119_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X2Y48" ))
  \result<0>211  (
    .ADR0(\result<0>54_0 ),
    .ADR1(\result<0>514_1706 ),
    .ADR2(\result<0>59_0 ),
    .ADR3(in1_13_IBUF_1608),
    .O(\result<0>_bdd33_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hF044 ),
    .LOC ( "SLICE_X2Y48" ))
  \result<10>121  (
    .ADR0(\result<0>_bdd64_0 ),
    .ADR1(in1_5_IBUF_1649),
    .ADR2(\result<0>_bdd33 ),
    .ADR3(in2_3_IBUF_1606),
    .O(\result<10>_bdd12 )
  );
  X_LUT4 #(
    .INIT ( 16'hB8C0 ),
    .LOC ( "SLICE_X2Y82" ))
  \result<1>2142_SW0_SW0  (
    .ADR0(\result_mult0000[1] ),
    .ADR1(alu_mode_0_IBUF_1612),
    .ADR2(result_addsub0000[1]),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(N125_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h0702 ),
    .LOC ( "SLICE_X2Y82" ))
  \result<1>2142  (
    .ADR0(alu_mode_2_IBUF_1728),
    .ADR1(N159),
    .ADR2(rst_IBUF_1727),
    .ADR3(N125),
    .O(result_1_OBUF_3586)
  );
  X_LUT4 #(
    .INIT ( 16'h5557 ),
    .LOC ( "SLICE_X3Y58" ))
  \result<0>141  (
    .ADR0(in2_1_IBUF_1603),
    .ADR1(\result<0>374_1780 ),
    .ADR2(\result<0>3714_1782 ),
    .ADR3(N171_0),
    .O(\result<0>141_3603 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFF ),
    .LOC ( "SLICE_X3Y58" ))
  \result<0>582  (
    .ADR0(\result<0>3714_1782 ),
    .ADR1(\result<0>374_1780 ),
    .ADR2(\result<0>379_1781 ),
    .ADR3(in1_6_IBUF_1669),
    .O(\result<0>_bdd107 )
  );
  X_LUT4 #(
    .INIT ( 16'hBABF ),
    .LOC ( "SLICE_X1Y53" ))
  \result<10>211  (
    .ADR0(\result<0>_bdd64_0 ),
    .ADR1(in1_0_IBUF_1779),
    .ADR2(in2_3_IBUF_1606),
    .ADR3(in1_8_IBUF_1663),
    .O(\result<10>_bdd29 )
  );
  X_LUT4 #(
    .INIT ( 16'h1504 ),
    .LOC ( "SLICE_X0Y71" ))
  \result<12>1140  (
    .ADR0(rst_IBUF_1727),
    .ADR1(alu_mode_2_IBUF_1728),
    .ADR2(N165),
    .ADR3(N131),
    .O(result_12_OBUF_3658)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X2Y50" ))
  \result<0>161  (
    .ADR0(\result<0>54_0 ),
    .ADR1(\result<0>59_0 ),
    .ADR2(in1_3_IBUF_1771),
    .ADR3(\result<0>514_1706 ),
    .O(\result<0>_bdd23_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hCE02 ),
    .LOC ( "SLICE_X2Y50" ))
  \result<10>301  (
    .ADR0(in1_11_IBUF_1639),
    .ADR1(in2_3_IBUF_1606),
    .ADR2(\result<0>_bdd64_0 ),
    .ADR3(\result<0>_bdd23 ),
    .O(\result<10>_bdd46 )
  );
  X_LUT4 #(
    .INIT ( 16'hACC0 ),
    .LOC ( "SLICE_X2Y66" ))
  \result<9>1141_SW0_SW0  (
    .ADR0(\result_mult0000[9] ),
    .ADR1(result_addsub0000[9]),
    .ADR2(alu_mode_0_IBUF_1612),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(N109_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h1054 ),
    .LOC ( "SLICE_X2Y66" ))
  \result<9>1141  (
    .ADR0(rst_IBUF_1727),
    .ADR1(alu_mode_2_IBUF_1728),
    .ADR2(N109),
    .ADR3(N143),
    .O(result_9_OBUF_3706)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X2Y52" ))
  \result<0>171  (
    .ADR0(in1_11_IBUF_1639),
    .ADR1(\result<0>54_0 ),
    .ADR2(\result<0>59_0 ),
    .ADR3(\result<0>514_1706 ),
    .O(\result<0>_bdd24_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hBA10 ),
    .LOC ( "SLICE_X2Y52" ))
  \result<10>111  (
    .ADR0(in2_3_IBUF_1606),
    .ADR1(\result<0>_bdd64_0 ),
    .ADR2(in1_3_IBUF_1771),
    .ADR3(\result<0>_bdd24 ),
    .O(\result<10>_bdd11 )
  );
  X_LUT4 #(
    .INIT ( 16'hC055 ),
    .LOC ( "SLICE_X0Y58" ))
  \result<1>101  (
    .ADR0(\result<0>_bdd81_0 ),
    .ADR1(\result<0>_bdd13 ),
    .ADR2(in1_9_IBUF_1709),
    .ADR3(in2_3_IBUF_1606),
    .O(\result<1>_bdd9 )
  );
  X_LUT4 #(
    .INIT ( 16'h8C80 ),
    .LOC ( "SLICE_X0Y58" ))
  \result<11>9_SW0  (
    .ADR0(in1_10_IBUF_1714),
    .ADR1(\result<0>_bdd13 ),
    .ADR2(in2_3_IBUF_1606),
    .ADR3(in1_2_IBUF_1713),
    .O(N4)
  );
  X_LUT4 #(
    .INIT ( 16'hD850 ),
    .LOC ( "SLICE_X1Y77" ))
  \result<0>341  (
    .ADR0(in2_3_IBUF_1606),
    .ADR1(\result<0>_bdd13 ),
    .ADR2(\result<0>_bdd61_0 ),
    .ADR3(in1_8_IBUF_1663),
    .O(\result<0>_bdd54 )
  );
  X_LUT4 #(
    .INIT ( 16'h8D05 ),
    .LOC ( "SLICE_X1Y77" ))
  \result<1>141  (
    .ADR0(in2_3_IBUF_1606),
    .ADR1(in1_0_IBUF_1779),
    .ADR2(\result<0>_bdd117 ),
    .ADR3(\result<0>_bdd13 ),
    .O(\result<1>_bdd16 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X0Y45" ))
  \result<0>271  (
    .ADR0(\result<0>514_1706 ),
    .ADR1(\result<0>54_0 ),
    .ADR2(\result<0>59_0 ),
    .ADR3(in1_10_IBUF_1714),
    .O(\result<0>_bdd42_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h3022 ),
    .LOC ( "SLICE_X0Y45" ))
  \result<13>615  (
    .ADR0(\result<0>_bdd41_0 ),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(\result<0>_bdd42 ),
    .ADR3(in2_3_IBUF_1606),
    .O(\result<13>615_3826 )
  );
  X_LUT4 #(
    .INIT ( 16'h7444 ),
    .LOC ( "SLICE_X1Y79" ))
  \result<0>177  (
    .ADR0(\result<0>_bdd75 ),
    .ADR1(in2_2_IBUF_1600),
    .ADR2(\result<0>141_0 ),
    .ADR3(\result<0>121_0 ),
    .O(\result<0>177_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h72FF ),
    .LOC ( "SLICE_X1Y79" ))
  \result<0>1128  (
    .ADR0(in2_0_IBUF_1613),
    .ADR1(\result<0>_bdd74 ),
    .ADR2(\result<0>177_1838 ),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(\result<0>1128_3874 )
  );
  X_LUT4 #(
    .INIT ( 16'hA088 ),
    .LOC ( "SLICE_X2Y76" ))
  \result<0>281  (
    .ADR0(\result<0>_bdd13 ),
    .ADR1(in1_12_IBUF_1618),
    .ADR2(in1_4_IBUF_1764),
    .ADR3(in2_3_IBUF_1606),
    .O(\result<0>_bdd43_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hEC20 ),
    .LOC ( "SLICE_X2Y76" ))
  \result<2>324  (
    .ADR0(\result<0>_bdd57_0 ),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(in2_3_IBUF_1606),
    .ADR3(\result<0>_bdd43 ),
    .O(\result<2>324_3898 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X2Y54" ))
  \result<0>514  (
    .ADR0(in2_7_IBUF_1678),
    .ADR1(in2_4_IBUF_1841),
    .ADR2(in2_5_IBUF_1648),
    .ADR3(in2_6_IBUF_1668),
    .O(\result<0>514_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X2Y54" ))
  \result<0>261  (
    .ADR0(in1_2_IBUF_1713),
    .ADR1(\result<0>54_0 ),
    .ADR2(\result<0>59_0 ),
    .ADR3(\result<0>514_1706 ),
    .O(\result<0>_bdd41 )
  );
  X_LUT4 #(
    .INIT ( 16'h8800 ),
    .LOC ( "SLICE_X3Y47" ))
  \result<0>523  (
    .ADR0(\result<0>514_1706 ),
    .ADR1(\result<0>59_0 ),
    .ADR2(VCC),
    .ADR3(\result<0>54_0 ),
    .O(\result<0>_bdd13_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFB ),
    .LOC ( "SLICE_X0Y55" ))
  \result<0>461  (
    .ADR0(\result<0>374_1780 ),
    .ADR1(in1_7_IBUF_1679),
    .ADR2(\result<0>379_1781 ),
    .ADR3(\result<0>3714_1782 ),
    .O(\result<0>_bdd87_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFA72 ),
    .LOC ( "SLICE_X0Y55" ))
  \result<0>44_SW0  (
    .ADR0(in2_3_IBUF_1606),
    .ADR1(in1_15_IBUF_1635),
    .ADR2(\result<0>_bdd87 ),
    .ADR3(\result<0>_bdd64_0 ),
    .O(N35)
  );
  X_LUT4 #(
    .INIT ( 16'hDD88 ),
    .LOC ( "SLICE_X3Y50" ))
  \result<10>281  (
    .ADR0(in2_1_IBUF_1603),
    .ADR1(\result<10>_bdd45_0 ),
    .ADR2(VCC),
    .ADR3(\result<10>_bdd46_0 ),
    .O(\result<10>_bdd38_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hE4E4 ),
    .LOC ( "SLICE_X3Y50" ))
  \result<6>51  (
    .ADR0(in2_2_IBUF_1600),
    .ADR1(\result<2>_bdd14 ),
    .ADR2(\result<10>_bdd38 ),
    .ADR3(VCC),
    .O(\result<6>_bdd8 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X3Y56" ))
  \result<0>374  (
    .ADR0(in2_15_IBUF_1634),
    .ADR1(in2_14_IBUF_1658),
    .ADR2(in2_13_IBUF_1675),
    .ADR3(in2_12_IBUF_1619),
    .O(\result<0>374_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFD ),
    .LOC ( "SLICE_X3Y56" ))
  \result<0>541  (
    .ADR0(in1_9_IBUF_1709),
    .ADR1(\result<0>379_1781 ),
    .ADR2(\result<0>374_1780 ),
    .ADR3(\result<0>3714_1782 ),
    .O(\result<0>_bdd80 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFD ),
    .LOC ( "SLICE_X0Y57" ))
  \result<0>551  (
    .ADR0(in1_1_IBUF_1683),
    .ADR1(\result<0>379_1781 ),
    .ADR2(\result<0>374_1780 ),
    .ADR3(\result<0>3714_1782 ),
    .O(\result<0>_bdd81 )
  );
  X_LUT4 #(
    .INIT ( 16'hC088 ),
    .LOC ( "SLICE_X0Y46" ))
  \result<11>126  (
    .ADR0(\result<10>_bdd34 ),
    .ADR1(alu_mode_1_IBUF_1616),
    .ADR2(\result<11>_bdd14 ),
    .ADR3(in2_0_IBUF_1613),
    .O(\result<11>126_4071 )
  );
  X_LUT4 #(
    .INIT ( 16'hA088 ),
    .LOC ( "SLICE_X0Y46" ))
  \result<10>726  (
    .ADR0(alu_mode_1_IBUF_1616),
    .ADR1(\result<10>_bdd35 ),
    .ADR2(\result<10>_bdd34 ),
    .ADR3(in2_0_IBUF_1613),
    .O(\result<10>726_4078 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X2Y57" ))
  \result<0>379  (
    .ADR0(in2_11_IBUF_1640),
    .ADR1(in2_9_IBUF_1710),
    .ADR2(in2_8_IBUF_1664),
    .ADR3(in2_10_IBUF_1733),
    .O(\result<0>379_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hF4F7 ),
    .LOC ( "SLICE_X2Y57" ))
  \result<0>141_SW0  (
    .ADR0(in1_10_IBUF_1714),
    .ADR1(in2_3_IBUF_1606),
    .ADR2(\result<0>379_1781 ),
    .ADR3(in1_2_IBUF_1713),
    .O(N171)
  );
  X_LUT4 #(
    .INIT ( 16'hB8C0 ),
    .LOC ( "SLICE_X2Y64" ))
  \result<14>1140_SW0_SW0  (
    .ADR0(\result_mult0000[14] ),
    .ADR1(alu_mode_0_IBUF_1612),
    .ADR2(result_addsub0000[14]),
    .ADR3(alu_mode_1_IBUF_1616),
    .O(N127_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h1504 ),
    .LOC ( "SLICE_X2Y64" ))
  \result<14>1140  (
    .ADR0(rst_IBUF_1727),
    .ADR1(alu_mode_2_IBUF_1728),
    .ADR2(N161),
    .ADR3(N127),
    .O(result_14_OBUF_4126)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X2Y56" ))
  \result<0>3714  (
    .ADR0(in2_7_IBUF_1678),
    .ADR1(in2_5_IBUF_1648),
    .ADR2(in2_4_IBUF_1841),
    .ADR3(in2_6_IBUF_1668),
    .O(\result<0>3714_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFC ),
    .LOC ( "SLICE_X2Y56" ))
  \result<0>3723  (
    .ADR0(VCC),
    .ADR1(\result<0>374_1780 ),
    .ADR2(\result<0>379_1781 ),
    .ADR3(\result<0>3714_1782 ),
    .O(\result<0>_bdd64 )
  );
  X_LUT4 #(
    .INIT ( 16'hA808 ),
    .LOC ( "SLICE_X3Y55" ))
  \result<8>126  (
    .ADR0(alu_mode_1_IBUF_1616),
    .ADR1(\result<7>_bdd8_0 ),
    .ADR2(in2_0_IBUF_1613),
    .ADR3(\result<8>_bdd8_0 ),
    .O(\result<8>126_4186 )
  );
  X_LUT4 #(
    .INIT ( 16'h4703 ),
    .LOC ( "SLICE_X0Y65" ))
  \result<15>1425_SW0  (
    .ADR0(alu_mode_0_IBUF_1612),
    .ADR1(alu_mode_1_IBUF_1616),
    .ADR2(N173),
    .ADR3(\result<15>1136_0 ),
    .O(N141_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h5140 ),
    .LOC ( "SLICE_X0Y65" ))
  \result<15>1425  (
    .ADR0(rst_IBUF_1727),
    .ADR1(alu_mode_2_IBUF_1728),
    .ADR2(N141),
    .ADR3(N107_0),
    .O(result_15_OBUF_4210)
  );
  X_LUT4 #(
    .INIT ( 16'h9696 ),
    .LOC ( "SLICE_X3Y64" ))
  \Maddsub_result_addsub0000_lut<1>  (
    .ADR0(in1_1_IBUF_1683),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(result_mux0002_0),
    .ADR3(VCC),
    .O(Maddsub_result_addsub0000_lut[1])
  );
  X_LUT4 #(
    .INIT ( 16'hA088 ),
    .LOC ( "SLICE_X2Y68" ))
  \result<1>812  (
    .ADR0(in2_1_IBUF_1603),
    .ADR1(\result<0>_bdd24 ),
    .ADR2(\result<0>_bdd23 ),
    .ADR3(in2_3_IBUF_1606),
    .O(\result<1>812_4258 )
  );
  X_LUT4 #(
    .INIT ( 16'h9696 ),
    .LOC ( "SLICE_X3Y65" ))
  \Maddsub_result_addsub0000_lut<3>  (
    .ADR0(in1_3_IBUF_1771),
    .ADR1(in2_3_IBUF_1606),
    .ADR2(result_mux0002_0),
    .ADR3(VCC),
    .O(Maddsub_result_addsub0000_lut[3])
  );
  X_LUT4 #(
    .INIT ( 16'h9966 ),
    .LOC ( "SLICE_X3Y66" ))
  \Maddsub_result_addsub0000_lut<5>  (
    .ADR0(in2_5_IBUF_1648),
    .ADR1(in1_5_IBUF_1649),
    .ADR2(VCC),
    .ADR3(result_mux0002_0),
    .O(Maddsub_result_addsub0000_lut[5])
  );
  X_LUT4 #(
    .INIT ( 16'h9966 ),
    .LOC ( "SLICE_X3Y66" ))
  \Maddsub_result_addsub0000_lut<4>  (
    .ADR0(in2_4_IBUF_1841),
    .ADR1(in1_4_IBUF_1764),
    .ADR2(VCC),
    .ADR3(result_mux0002_0),
    .O(Maddsub_result_addsub0000_lut[4])
  );
  X_LUT4 #(
    .INIT ( 16'hE828 ),
    .LOC ( "SLICE_X0Y69" ))
  \result<8>1140_SW0_SW0  (
    .ADR0(result_addsub0000[8]),
    .ADR1(alu_mode_1_IBUF_1616),
    .ADR2(alu_mode_0_IBUF_1612),
    .ADR3(\result_mult0000[8] ),
    .O(N111_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h1054 ),
    .LOC ( "SLICE_X0Y69" ))
  \result<8>1140  (
    .ADR0(rst_IBUF_1727),
    .ADR1(alu_mode_2_IBUF_1728),
    .ADR2(N111),
    .ADR3(N145),
    .O(result_8_OBUF_4360)
  );
  X_LUT4 #(
    .INIT ( 16'h9966 ),
    .LOC ( "SLICE_X3Y67" ))
  \Maddsub_result_addsub0000_lut<7>  (
    .ADR0(in2_7_IBUF_1678),
    .ADR1(in1_7_IBUF_1679),
    .ADR2(VCC),
    .ADR3(result_mux0002_0),
    .O(Maddsub_result_addsub0000_lut[7])
  );
  X_LUT4 #(
    .INIT ( 16'h9966 ),
    .LOC ( "SLICE_X3Y67" ))
  \Maddsub_result_addsub0000_lut<6>  (
    .ADR0(in2_6_IBUF_1668),
    .ADR1(in1_6_IBUF_1669),
    .ADR2(VCC),
    .ADR3(result_mux0002_0),
    .O(Maddsub_result_addsub0000_lut[6])
  );
  X_LUT4 #(
    .INIT ( 16'h9696 ),
    .LOC ( "SLICE_X3Y68" ))
  \Maddsub_result_addsub0000_lut<9>  (
    .ADR0(in1_9_IBUF_1709),
    .ADR1(in2_9_IBUF_1710),
    .ADR2(result_mux0002_0),
    .ADR3(VCC),
    .O(Maddsub_result_addsub0000_lut[9])
  );
  X_LUT4 #(
    .INIT ( 16'h9696 ),
    .LOC ( "SLICE_X3Y68" ))
  \Maddsub_result_addsub0000_lut<8>  (
    .ADR0(in1_8_IBUF_1663),
    .ADR1(in2_8_IBUF_1664),
    .ADR2(result_mux0002_0),
    .ADR3(VCC),
    .O(Maddsub_result_addsub0000_lut[8])
  );
  X_LUT4 #(
    .INIT ( 16'h9696 ),
    .LOC ( "SLICE_X3Y69" ))
  \Maddsub_result_addsub0000_lut<11>  (
    .ADR0(in1_11_IBUF_1639),
    .ADR1(in2_11_IBUF_1640),
    .ADR2(result_mux0002_0),
    .ADR3(VCC),
    .O(Maddsub_result_addsub0000_lut[11])
  );
  X_LUT4 #(
    .INIT ( 16'h9696 ),
    .LOC ( "SLICE_X3Y69" ))
  \Maddsub_result_addsub0000_lut<10>  (
    .ADR0(in1_10_IBUF_1714),
    .ADR1(in2_10_IBUF_1733),
    .ADR2(result_mux0002_0),
    .ADR3(VCC),
    .O(Maddsub_result_addsub0000_lut[10])
  );
  X_LUT4 #(
    .INIT ( 16'h9696 ),
    .LOC ( "SLICE_X3Y70" ))
  \Maddsub_result_addsub0000_lut<13>  (
    .ADR0(in1_13_IBUF_1608),
    .ADR1(in2_13_IBUF_1675),
    .ADR2(result_mux0002_0),
    .ADR3(VCC),
    .O(Maddsub_result_addsub0000_lut[13])
  );
  X_LUT4 #(
    .INIT ( 16'h9696 ),
    .LOC ( "SLICE_X3Y70" ))
  \Maddsub_result_addsub0000_lut<12>  (
    .ADR0(in2_12_IBUF_1619),
    .ADR1(in1_12_IBUF_1618),
    .ADR2(result_mux0002_0),
    .ADR3(VCC),
    .O(Maddsub_result_addsub0000_lut[12])
  );
  X_LUT4 #(
    .INIT ( 16'h9696 ),
    .LOC ( "SLICE_X3Y71" ))
  \Maddsub_result_addsub0000_lut<15>  (
    .ADR0(in1_15_IBUF_1635),
    .ADR1(in2_15_IBUF_1634),
    .ADR2(result_mux0002_0),
    .ADR3(VCC),
    .O(Maddsub_result_addsub0000_lut[15])
  );
  X_LUT4 #(
    .INIT ( 16'h9696 ),
    .LOC ( "SLICE_X3Y71" ))
  \Maddsub_result_addsub0000_lut<14>  (
    .ADR0(in1_14_IBUF_1627),
    .ADR1(in2_14_IBUF_1658),
    .ADR2(result_mux0002_0),
    .ADR3(VCC),
    .O(Maddsub_result_addsub0000_lut[14])
  );
  X_LUT4 #(
    .INIT ( 16'hACC0 ),
    .LOC ( "SLICE_X1Y62" ))
  \result<11>1141_SW0_SW0  (
    .ADR0(\result_mult0000[11] ),
    .ADR1(result_addsub0000[11]),
    .ADR2(alu_mode_1_IBUF_1616),
    .ADR3(alu_mode_0_IBUF_1612),
    .O(N133_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h1150 ),
    .LOC ( "SLICE_X1Y62" ))
  \result<11>1141  (
    .ADR0(rst_IBUF_1727),
    .ADR1(N167),
    .ADR2(N133),
    .ADR3(alu_mode_2_IBUF_1728),
    .O(result_11_OBUF_4571)
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X3Y42" ))
  \result<10>_bdd22_rt  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\result<10>_bdd22 ),
    .ADR3(VCC),
    .O(\result<10>_bdd22_rt_4589 )
  );
  X_LUT4 #(
    .INIT ( 16'h0C2E ),
    .LOC ( "SLICE_X3Y43" ))
  \result<14>32  (
    .ADR0(in1_14_IBUF_1627),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(\result<12>_bdd8_0 ),
    .ADR3(\result<0>_bdd64_0 ),
    .O(\result<14>31_4609 )
  );
  X_LUT4 #(
    .INIT ( 16'h0C2E ),
    .LOC ( "SLICE_X3Y43" ))
  \result<14>31  (
    .ADR0(in1_6_IBUF_1669),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(\result<12>_bdd8_0 ),
    .ADR3(\result<0>_bdd64_0 ),
    .O(\result<14>3 )
  );
  X_LUT4 #(
    .INIT ( 16'hDA80 ),
    .LOC ( "SLICE_X1Y67" ))
  \result<10>7140_SW0_SW0  (
    .ADR0(alu_mode_0_IBUF_1612),
    .ADR1(\result_mult0000[10] ),
    .ADR2(alu_mode_1_IBUF_1616),
    .ADR3(result_addsub0000[10]),
    .O(N135_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h1310 ),
    .LOC ( "SLICE_X1Y67" ))
  \result<10>7140  (
    .ADR0(N169),
    .ADR1(rst_IBUF_1727),
    .ADR2(alu_mode_2_IBUF_1728),
    .ADR3(N135),
    .O(result_10_OBUF_4640)
  );
  X_LUT4 #(
    .INIT ( 16'h00E2 ),
    .LOC ( "SLICE_X0Y47" ))
  \result<15>1101  (
    .ADR0(\result<10>_bdd53_0 ),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(N4_0),
    .ADR3(in2_2_IBUF_1600),
    .O(\result<15>1101_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hEEE2 ),
    .LOC ( "SLICE_X0Y47" ))
  \result<15>1136  (
    .ADR0(\result<14>_bdd12 ),
    .ADR1(in2_0_IBUF_1613),
    .ADR2(\result<15>1101_1875 ),
    .ADR3(\result<15>186_0 ),
    .O(\result<15>1136_4686 )
  );
  X_BUF #(
    .LOC ( "PAD282" ))
  \in1<10>/IFF/IMUX  (
    .I(\in1<10>/INBUF ),
    .O(in1_10_IBUF_1714)
  );
  X_BUF #(
    .LOC ( "PAD270" ))
  \in1<11>/IFF/IMUX  (
    .I(\in1<11>/INBUF ),
    .O(in1_11_IBUF_1639)
  );
  X_BUF #(
    .LOC ( "PAD303" ))
  \in1<12>/IFF/IMUX  (
    .I(\in1<12>/INBUF ),
    .O(in1_12_IBUF_1618)
  );
  X_BUF #(
    .LOC ( "PAD296" ))
  \in1<13>/IFF/IMUX  (
    .I(\in1<13>/INBUF ),
    .O(in1_13_IBUF_1608)
  );
  X_BUF #(
    .LOC ( "IPAD263" ))
  \in1<14>/IFF/IMUX  (
    .I(\in1<14>/INBUF ),
    .O(in1_14_IBUF_1627)
  );
  X_BUF #(
    .LOC ( "IPAD283" ))
  \in1<15>/IFF/IFF1/RSTOR  (
    .I(rst_IBUF_1727),
    .O(\in1<15>/IFF/IFF1/RST )
  );
  X_FF #(
    .LOC ( "IPAD283" ),
    .INIT ( 1'b0 ))
  n_flag_1732 (
    .I(\in1<15>/IFF/IDDRIN_MUX_4797 ),
    .CE(\in1<15>/IFF/ICEINV_4799 ),
    .CLK(\in1<15>/IFF/ICLK1INV_4801 ),
    .SET(GND),
    .RST(\in1<15>/IFF/IFF1/RST ),
    .O(n_flag_OBUF_1877)
  );
  X_BUF #(
    .LOC ( "IPAD283" ))
  \in1<15>/IFF/IDDRIN_MUX  (
    .I(\in1<15>/INBUF ),
    .O(\in1<15>/IFF/IDDRIN_MUX_4797 )
  );
  X_BUF #(
    .LOC ( "IPAD283" ))
  \in1<15>/IFF/IMUX  (
    .I(\in1<15>/INBUF ),
    .O(in1_15_IBUF_1635)
  );
  X_BUF #(
    .LOC ( "IPAD283" ))
  \in1<15>/IFF/ICLK1INV  (
    .I(clk_BUFGP),
    .O(\in1<15>/IFF/ICLK1INV_4801 )
  );
  X_BUF #(
    .LOC ( "IPAD283" ))
  \in1<15>/IFF/ICEINV  (
    .I(z_flag_cmp_eq0000_0),
    .O(\in1<15>/IFF/ICEINV_4799 )
  );
  X_BUF #(
    .LOC ( "IPAD300" ))
  \in1<0>/IFF/IMUX  (
    .I(\in1<0>/INBUF ),
    .O(in1_0_IBUF_1779)
  );
  X_BUF #(
    .LOC ( "IPAD293" ))
  \in1<1>/IFF/IMUX  (
    .I(\in1<1>/INBUF ),
    .O(in1_1_IBUF_1683)
  );
  X_BUF #(
    .LOC ( "IPAD288" ))
  \in1<2>/IFF/IMUX  (
    .I(\in1<2>/INBUF ),
    .O(in1_2_IBUF_1713)
  );
  X_BUF #(
    .LOC ( "PAD251" ))
  \in2<10>/IFF/IMUX  (
    .I(\in2<10>/INBUF ),
    .O(in2_10_IBUF_1733)
  );
  X_BUF #(
    .LOC ( "PAD281" ))
  \in1<3>/IFF/IMUX  (
    .I(\in1<3>/INBUF ),
    .O(in1_3_IBUF_1771)
  );
  X_BUF #(
    .LOC ( "PAD250" ))
  \in2<11>/IFF/IMUX  (
    .I(\in2<11>/INBUF ),
    .O(in2_11_IBUF_1640)
  );
  X_BUF #(
    .LOC ( "PAD261" ))
  \in2<0>/IFF/IMUX  (
    .I(\in2<0>/INBUF ),
    .O(in2_0_IBUF_1613)
  );
  X_BUF #(
    .LOC ( "IPAD278" ))
  \in1<4>/IFF/IMUX  (
    .I(\in1<4>/INBUF ),
    .O(in1_4_IBUF_1764)
  );
  X_BUF #(
    .LOC ( "PAD249" ))
  \in2<12>/IFF/IMUX  (
    .I(\in2<12>/INBUF ),
    .O(in2_12_IBUF_1619)
  );
  X_BUF #(
    .LOC ( "PAD256" ))
  \in2<1>/IFF/IMUX  (
    .I(\in2<1>/INBUF ),
    .O(in2_1_IBUF_1603)
  );
  X_BUF #(
    .LOC ( "PAD304" ))
  \in1<5>/IFF/IMUX  (
    .I(\in1<5>/INBUF ),
    .O(in1_5_IBUF_1649)
  );
  X_BUF #(
    .LOC ( "IPAD248" ))
  \in2<13>/IFF/IMUX  (
    .I(\in2<13>/INBUF ),
    .O(in2_13_IBUF_1675)
  );
  X_BUF #(
    .LOC ( "PAD255" ))
  \in2<2>/IFF/IMUX  (
    .I(\in2<2>/INBUF ),
    .O(in2_2_IBUF_1600)
  );
  X_BUF #(
    .LOC ( "PAD301" ))
  \in1<6>/IFF/IMUX  (
    .I(\in1<6>/INBUF ),
    .O(in1_6_IBUF_1669)
  );
  X_BUF #(
    .LOC ( "PAD245" ))
  \in2<14>/IFF/IMUX  (
    .I(\in2<14>/INBUF ),
    .O(in2_14_IBUF_1658)
  );
  X_BUF #(
    .LOC ( "PAD252" ))
  \in2<3>/IFF/IMUX  (
    .I(\in2<3>/INBUF ),
    .O(in2_3_IBUF_1606)
  );
  X_BUF #(
    .LOC ( "PAD280" ))
  \in1<7>/IFF/IMUX  (
    .I(\in1<7>/INBUF ),
    .O(in1_7_IBUF_1679)
  );
  X_BUF #(
    .LOC ( "PAD244" ))
  \in2<15>/IFF/IMUX  (
    .I(\in2<15>/INBUF ),
    .O(in2_15_IBUF_1634)
  );
  X_BUF #(
    .LOC ( "PAD262" ))
  \in2<4>/IFF/IMUX  (
    .I(\in2<4>/INBUF ),
    .O(in2_4_IBUF_1841)
  );
  X_BUF #(
    .LOC ( "PAD302" ))
  \in1<8>/IFF/IMUX  (
    .I(\in1<8>/INBUF ),
    .O(in1_8_IBUF_1663)
  );
  X_BUF #(
    .LOC ( "PAD264" ))
  \in2<5>/IFF/IMUX  (
    .I(\in2<5>/INBUF ),
    .O(in2_5_IBUF_1648)
  );
  X_BUF #(
    .LOC ( "IPAD273" ))
  \in1<9>/IFF/IMUX  (
    .I(\in1<9>/INBUF ),
    .O(in1_9_IBUF_1709)
  );
  X_BUF #(
    .LOC ( "PAD257" ))
  \in2<6>/IFF/IMUX  (
    .I(\in2<6>/INBUF ),
    .O(in2_6_IBUF_1668)
  );
  X_BUF #(
    .LOC ( "IPAD258" ))
  \in2<7>/IFF/IMUX  (
    .I(\in2<7>/INBUF ),
    .O(in2_7_IBUF_1678)
  );
  X_LUT4 #(
    .INIT ( 16'hEE2E ),
    .LOC ( "SLICE_X1Y78" ))
  \result<0>562  (
    .ADR0(\result<0>_bdd104_0 ),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(in1_6_IBUF_1669),
    .ADR3(\result<0>_bdd64_0 ),
    .O(\result<0>561_5321 )
  );
  X_LUT4 #(
    .INIT ( 16'hFA3A ),
    .LOC ( "SLICE_X1Y78" ))
  \result<0>561  (
    .ADR0(\result<0>_bdd104_0 ),
    .ADR1(in1_14_IBUF_1627),
    .ADR2(in2_1_IBUF_1603),
    .ADR3(\result<0>_bdd64_0 ),
    .O(\result<0>56 )
  );
  X_LUT4 #(
    .INIT ( 16'h008D ),
    .LOC ( "SLICE_X0Y42" ))
  \result<11>312  (
    .ADR0(in2_1_IBUF_1603),
    .ADR1(\result<10>_bdd17_0 ),
    .ADR2(N6),
    .ADR3(in2_2_IBUF_1600),
    .O(\result<11>311_5346 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF8D ),
    .LOC ( "SLICE_X0Y42" ))
  \result<11>311  (
    .ADR0(in2_1_IBUF_1603),
    .ADR1(\result<10>_bdd17_0 ),
    .ADR2(N6),
    .ADR3(in2_2_IBUF_1600),
    .O(\result<11>31 )
  );
  X_LUT4 #(
    .INIT ( 16'hB380 ),
    .LOC ( "SLICE_X0Y62" ))
  \result<6>312  (
    .ADR0(\result<0>_bdd54_0 ),
    .ADR1(in2_2_IBUF_1600),
    .ADR2(in2_1_IBUF_1603),
    .ADR3(\result<10>_bdd21 ),
    .O(\result<6>311_5371 )
  );
  X_LUT4 #(
    .INIT ( 16'hBF8C ),
    .LOC ( "SLICE_X0Y62" ))
  \result<6>311  (
    .ADR0(\result<0>_bdd54_0 ),
    .ADR1(in2_2_IBUF_1600),
    .ADR2(in2_1_IBUF_1603),
    .ADR3(\result<10>_bdd21 ),
    .O(\result<6>31 )
  );
  X_LUT4 #(
    .INIT ( 16'h001D ),
    .LOC ( "SLICE_X1Y83" ))
  \result<1>12402  (
    .ADR0(N53_0),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(\result<0>_bdd104_0 ),
    .ADR3(in2_2_IBUF_1600),
    .O(\result<1>12401_5396 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF1D ),
    .LOC ( "SLICE_X1Y83" ))
  \result<1>12401  (
    .ADR0(N53_0),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(\result<0>_bdd104_0 ),
    .ADR3(in2_2_IBUF_1600),
    .O(\result<1>1240 )
  );
  X_LUT4 #(
    .INIT ( 16'h80A0 ),
    .LOC ( "SLICE_X2Y81" ))
  \result<2>365_SW02  (
    .ADR0(in1_14_IBUF_1627),
    .ADR1(in1_6_IBUF_1669),
    .ADR2(\result<0>_bdd13 ),
    .ADR3(in2_3_IBUF_1606),
    .O(\result<2>365_SW01_5419 )
  );
  X_LUT4 #(
    .INIT ( 16'hF000 ),
    .LOC ( "SLICE_X2Y81" ))
  \result<2>365_SW01  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(in1_14_IBUF_1627),
    .ADR3(\result<0>_bdd43 ),
    .O(\result<2>365_SW0 )
  );
  X_LUT4 #(
    .INIT ( 16'h3222 ),
    .LOC ( "SLICE_X0Y81" ))
  \result<2>1140_SW1_F  (
    .ADR0(alu_mode_1_IBUF_1616),
    .ADR1(\result<2>126_0 ),
    .ADR2(in1_2_IBUF_1713),
    .ADR3(in2_2_IBUF_1600),
    .O(N209)
  );
  X_LUT4 #(
    .INIT ( 16'hAEBF ),
    .LOC ( "SLICE_X0Y81" ))
  \result<2>1140_SW1_G  (
    .ADR0(alu_mode_1_IBUF_1616),
    .ADR1(in2_0_IBUF_1613),
    .ADR2(\result<1>_bdd5 ),
    .ADR3(\result<2>_bdd5 ),
    .O(N210)
  );
  X_LUT4 #(
    .INIT ( 16'h1013 ),
    .LOC ( "SLICE_X0Y70" ))
  \result<2>72  (
    .ADR0(\result<0>_bdd84_0 ),
    .ADR1(in2_2_IBUF_1600),
    .ADR2(in2_1_IBUF_1603),
    .ADR3(\result<0>_bdd79_0 ),
    .O(\result<2>71_5471 )
  );
  X_LUT4 #(
    .INIT ( 16'hDCDF ),
    .LOC ( "SLICE_X0Y70" ))
  \result<2>71  (
    .ADR0(\result<0>_bdd84_0 ),
    .ADR1(in2_2_IBUF_1600),
    .ADR2(in2_1_IBUF_1603),
    .ADR3(\result<0>_bdd79_0 ),
    .O(\result<2>7 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCB8 ),
    .LOC ( "SLICE_X0Y49" ))
  \result<14>740_F  (
    .ADR0(\result<14>712_0 ),
    .ADR1(in2_2_IBUF_1600),
    .ADR2(\result<10>25 ),
    .ADR3(\result<12>_bdd14_0 ),
    .O(N179)
  );
  X_LUT4 #(
    .INIT ( 16'hBB88 ),
    .LOC ( "SLICE_X0Y49" ))
  \result<14>740_G  (
    .ADR0(\result<14>712_0 ),
    .ADR1(in2_2_IBUF_1600),
    .ADR2(VCC),
    .ADR3(\result<10>_bdd40_0 ),
    .O(N180)
  );
  X_LUT4 #(
    .INIT ( 16'h0407 ),
    .LOC ( "SLICE_X1Y64" ))
  \result<4>612  (
    .ADR0(N35_0),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(in2_2_IBUF_1600),
    .ADR3(\result<0>_bdd84_0 ),
    .O(\result<4>611_5521 )
  );
  X_LUT4 #(
    .INIT ( 16'hF4F7 ),
    .LOC ( "SLICE_X1Y64" ))
  \result<4>611  (
    .ADR0(N35_0),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(in2_2_IBUF_1600),
    .ADR3(\result<0>_bdd84_0 ),
    .O(\result<4>61 )
  );
  X_LUT4 #(
    .INIT ( 16'h00EC ),
    .LOC ( "SLICE_X1Y74" ))
  \result<3>1140_SW1_F  (
    .ADR0(in2_3_IBUF_1606),
    .ADR1(alu_mode_1_IBUF_1616),
    .ADR2(in1_3_IBUF_1771),
    .ADR3(N83_0),
    .O(N207)
  );
  X_LUT4 #(
    .INIT ( 16'hDDCF ),
    .LOC ( "SLICE_X1Y74" ))
  \result<3>1140_SW1_G  (
    .ADR0(\result<2>_bdd5 ),
    .ADR1(alu_mode_1_IBUF_1616),
    .ADR2(\result<3>_bdd5_0 ),
    .ADR3(in2_0_IBUF_1613),
    .O(N208)
  );
  X_LUT4 #(
    .INIT ( 16'hAC00 ),
    .LOC ( "SLICE_X1Y47" ))
  \result<12>72  (
    .ADR0(\result<12>_bdd14_0 ),
    .ADR1(\result<10>_bdd40_0 ),
    .ADR2(in2_1_IBUF_1603),
    .ADR3(in2_2_IBUF_1600),
    .O(\result<12>71_5571 )
  );
  X_LUT4 #(
    .INIT ( 16'hACFF ),
    .LOC ( "SLICE_X1Y47" ))
  \result<12>71  (
    .ADR0(\result<12>_bdd14_0 ),
    .ADR1(\result<10>_bdd40_0 ),
    .ADR2(in2_1_IBUF_1603),
    .ADR3(in2_2_IBUF_1600),
    .O(\result<12>7 )
  );
  X_LUT4 #(
    .INIT ( 16'h03A3 ),
    .LOC ( "SLICE_X1Y51" ))
  \result<2>81  (
    .ADR0(in1_15_IBUF_1635),
    .ADR1(\result<0>_bdd87 ),
    .ADR2(in2_3_IBUF_1606),
    .ADR3(\result<0>_bdd64_0 ),
    .O(\result<2>8 )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X1Y51" ))
  \result<2>_bdd16_rt  (
    .ADR0(VCC),
    .ADR1(\result<2>_bdd16_0 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\result<2>_bdd16_rt_5603 )
  );
  X_LUT4 #(
    .INIT ( 16'h080B ),
    .LOC ( "SLICE_X1Y57" ))
  \result<8>312  (
    .ADR0(N45_0),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(in2_2_IBUF_1600),
    .ADR3(\result<10>_bdd29_0 ),
    .O(\result<8>311_5621 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8FB ),
    .LOC ( "SLICE_X1Y57" ))
  \result<8>311  (
    .ADR0(N45_0),
    .ADR1(in2_1_IBUF_1603),
    .ADR2(in2_2_IBUF_1600),
    .ADR3(\result<10>_bdd29_0 ),
    .O(\result<8>31 )
  );
  X_LUT4 #(
    .INIT ( 16'hC4CC ),
    .LOC ( "SLICE_X2Y78" ))
  \result<0>1316_F  (
    .ADR0(in1_0_IBUF_1779),
    .ADR1(\result<0>1128_0 ),
    .ADR2(alu_mode_1_IBUF_1616),
    .ADR3(in2_0_IBUF_1613),
    .O(N175)
  );
  X_LUT4 #(
    .INIT ( 16'h5140 ),
    .LOC ( "SLICE_X2Y78" ))
  \result<0>1316_G  (
    .ADR0(alu_mode_1_IBUF_1616),
    .ADR1(in2_0_IBUF_1613),
    .ADR2(\result<0>1238_0 ),
    .ADR3(\result<0>_bdd7 ),
    .O(N176)
  );
  X_LUT4 #(
    .INIT ( 16'h00EC ),
    .LOC ( "SLICE_X0Y68" ))
  \result<4>1140_SW1_F  (
    .ADR0(in1_4_IBUF_1764),
    .ADR1(alu_mode_1_IBUF_1616),
    .ADR2(in2_4_IBUF_1841),
    .ADR3(N79_0),
    .O(N205)
  );
  X_LUT4 #(
    .INIT ( 16'hCDFD ),
    .LOC ( "SLICE_X0Y68" ))
  \result<4>1140_SW1_G  (
    .ADR0(\result<4>_bdd5 ),
    .ADR1(alu_mode_1_IBUF_1616),
    .ADR2(in2_0_IBUF_1613),
    .ADR3(\result<3>_bdd5_0 ),
    .O(N206)
  );
  X_LUT4 #(
    .INIT ( 16'h00CA ),
    .LOC ( "SLICE_X1Y52" ))
  \result<10>912  (
    .ADR0(\result<10>_bdd17_0 ),
    .ADR1(N47_0),
    .ADR2(in2_1_IBUF_1603),
    .ADR3(in2_2_IBUF_1600),
    .O(\result<10>911_5696 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFCA ),
    .LOC ( "SLICE_X1Y52" ))
  \result<10>911  (
    .ADR0(\result<10>_bdd17_0 ),
    .ADR1(N47_0),
    .ADR2(in2_1_IBUF_1603),
    .ADR3(in2_2_IBUF_1600),
    .O(\result<10>91 )
  );
  X_BUF #(
    .LOC ( "PAD298" ))
  \result<0>/OUTPUT/OFF/OMUX  (
    .I(result_0_OBUF_2818),
    .O(\result<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD284" ))
  \result<1>/OUTPUT/OFF/OMUX  (
    .I(result_1_OBUF_3586),
    .O(\result<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD297" ))
  \result<2>/OUTPUT/OFF/OMUX  (
    .I(result_2_OBUF_3034),
    .O(\result<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD292" ))
  \result<3>/OUTPUT/OFF/OMUX  (
    .I(result_3_OBUF_3358),
    .O(\result<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD274" ))
  \result<4>/OUTPUT/OFF/OMUX  (
    .I(result_4_OBUF_3538),
    .O(\result<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD285" ))
  \result<5>/OUTPUT/OFF/OMUX  (
    .I(result_5_OBUF_2710),
    .O(\result<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD286" ))
  \result<6>/OUTPUT/OFF/OMUX  (
    .I(result_6_OBUF_2914),
    .O(\result<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD279" ))
  \result<7>/OUTPUT/OFF/OMUX  (
    .I(result_7_OBUF_3262),
    .O(\result<7>/O )
  );
  X_BUF #(
    .LOC ( "PAD276" ))
  \result<8>/OUTPUT/OFF/OMUX  (
    .I(result_8_OBUF_4360),
    .O(\result<8>/O )
  );
  X_BUF #(
    .LOC ( "PAD271" ))
  \result<9>/OUTPUT/OFF/OMUX  (
    .I(result_9_OBUF_3706),
    .O(\result<9>/O )
  );
  X_BUF #(
    .LOC ( "PAD267" ))
  \result<10>/OUTPUT/OFF/OMUX  (
    .I(result_10_OBUF_4640),
    .O(\result<10>/O )
  );
  X_BUF #(
    .LOC ( "PAD265" ))
  \result<11>/OUTPUT/OFF/OMUX  (
    .I(result_11_OBUF_4571),
    .O(\result<11>/O )
  );
  X_BUF #(
    .LOC ( "PAD275" ))
  \result<12>/OUTPUT/OFF/OMUX  (
    .I(result_12_OBUF_3658),
    .O(\result<12>/O )
  );
  X_BUF #(
    .LOC ( "PAD272" ))
  \result<13>/OUTPUT/OFF/OMUX  (
    .I(result_13_OBUF_2770),
    .O(\result<13>/O )
  );
  X_BUF #(
    .LOC ( "PAD269" ))
  \result<14>/OUTPUT/OFF/OMUX  (
    .I(result_14_OBUF_4126),
    .O(\result<14>/O )
  );
  X_BUF #(
    .LOC ( "PAD266" ))
  \result<15>/OUTPUT/OFF/OMUX  (
    .I(result_15_OBUF_4210),
    .O(\result<15>/O )
  );
  X_BUF #(
    .LOC ( "PAD291" ))
  \n_flag/OUTPUT/OFF/OMUX  (
    .I(n_flag_OBUF_1877),
    .O(\n_flag/O )
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/A<17>  (
    .I(in1_15_IBUF_1635),
    .O(\NlwBufferSignal_Mmult_result_mult0000/A [17])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/A<16>  (
    .I(in1_15_IBUF_1635),
    .O(\NlwBufferSignal_Mmult_result_mult0000/A [16])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/A<15>  (
    .I(in1_15_IBUF_1635),
    .O(\NlwBufferSignal_Mmult_result_mult0000/A [15])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/A<14>  (
    .I(in1_14_IBUF_1627),
    .O(\NlwBufferSignal_Mmult_result_mult0000/A [14])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/A<13>  (
    .I(in1_13_IBUF_1608),
    .O(\NlwBufferSignal_Mmult_result_mult0000/A [13])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/A<12>  (
    .I(in1_12_IBUF_1618),
    .O(\NlwBufferSignal_Mmult_result_mult0000/A [12])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/A<11>  (
    .I(in1_11_IBUF_1639),
    .O(\NlwBufferSignal_Mmult_result_mult0000/A [11])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/A<10>  (
    .I(in1_10_IBUF_1714),
    .O(\NlwBufferSignal_Mmult_result_mult0000/A [10])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/A<9>  (
    .I(in1_9_IBUF_1709),
    .O(\NlwBufferSignal_Mmult_result_mult0000/A [9])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/A<8>  (
    .I(in1_8_IBUF_1663),
    .O(\NlwBufferSignal_Mmult_result_mult0000/A [8])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/A<7>  (
    .I(in1_7_IBUF_1679),
    .O(\NlwBufferSignal_Mmult_result_mult0000/A [7])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/A<6>  (
    .I(in1_6_IBUF_1669),
    .O(\NlwBufferSignal_Mmult_result_mult0000/A [6])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/A<5>  (
    .I(in1_5_IBUF_1649),
    .O(\NlwBufferSignal_Mmult_result_mult0000/A [5])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/A<4>  (
    .I(in1_4_IBUF_1764),
    .O(\NlwBufferSignal_Mmult_result_mult0000/A [4])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/A<3>  (
    .I(in1_3_IBUF_1771),
    .O(\NlwBufferSignal_Mmult_result_mult0000/A [3])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/A<2>  (
    .I(in1_2_IBUF_1713),
    .O(\NlwBufferSignal_Mmult_result_mult0000/A [2])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/A<1>  (
    .I(in1_1_IBUF_1683),
    .O(\NlwBufferSignal_Mmult_result_mult0000/A [1])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/A<0>  (
    .I(in1_0_IBUF_1779),
    .O(\NlwBufferSignal_Mmult_result_mult0000/A [0])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/B<17>  (
    .I(in2_15_IBUF_1634),
    .O(\NlwBufferSignal_Mmult_result_mult0000/B [17])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/B<16>  (
    .I(in2_15_IBUF_1634),
    .O(\NlwBufferSignal_Mmult_result_mult0000/B [16])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/B<15>  (
    .I(in2_15_IBUF_1634),
    .O(\NlwBufferSignal_Mmult_result_mult0000/B [15])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/B<14>  (
    .I(in2_14_IBUF_1658),
    .O(\NlwBufferSignal_Mmult_result_mult0000/B [14])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/B<13>  (
    .I(in2_13_IBUF_1675),
    .O(\NlwBufferSignal_Mmult_result_mult0000/B [13])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/B<12>  (
    .I(in2_12_IBUF_1619),
    .O(\NlwBufferSignal_Mmult_result_mult0000/B [12])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/B<11>  (
    .I(in2_11_IBUF_1640),
    .O(\NlwBufferSignal_Mmult_result_mult0000/B [11])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/B<10>  (
    .I(in2_10_IBUF_1733),
    .O(\NlwBufferSignal_Mmult_result_mult0000/B [10])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/B<9>  (
    .I(in2_9_IBUF_1710),
    .O(\NlwBufferSignal_Mmult_result_mult0000/B [9])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/B<8>  (
    .I(in2_8_IBUF_1664),
    .O(\NlwBufferSignal_Mmult_result_mult0000/B [8])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/B<7>  (
    .I(in2_7_IBUF_1678),
    .O(\NlwBufferSignal_Mmult_result_mult0000/B [7])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/B<6>  (
    .I(in2_6_IBUF_1668),
    .O(\NlwBufferSignal_Mmult_result_mult0000/B [6])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/B<5>  (
    .I(in2_5_IBUF_1648),
    .O(\NlwBufferSignal_Mmult_result_mult0000/B [5])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/B<4>  (
    .I(in2_4_IBUF_1841),
    .O(\NlwBufferSignal_Mmult_result_mult0000/B [4])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/B<3>  (
    .I(in2_3_IBUF_1606),
    .O(\NlwBufferSignal_Mmult_result_mult0000/B [3])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/B<2>  (
    .I(in2_2_IBUF_1600),
    .O(\NlwBufferSignal_Mmult_result_mult0000/B [2])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/B<1>  (
    .I(in2_1_IBUF_1603),
    .O(\NlwBufferSignal_Mmult_result_mult0000/B [1])
  );
  X_BUF   \NlwBufferBlock_Mmult_result_mult0000/B<0>  (
    .I(in2_0_IBUF_1613),
    .O(\NlwBufferSignal_Mmult_result_mult0000/B [0])
  );
  X_ONE   NlwBlock_alu_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_alu_GND (
    .O(GND)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

