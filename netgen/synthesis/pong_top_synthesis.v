////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: pong_top_synthesis.v
// /___/   /\     Timestamp: Thu Apr 19 20:44:02 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim pong_top.ngc pong_top_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: pong_top.ngc
// Output file	: C:\Users\Conner Chyung\Dropbox\School\EE 354\finalproject\pong\netgen\synthesis\pong_top_synthesis.v
// # of Modules	: 1
// Design Name	: pong_top
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
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

module pong_top (
  ClkPort, btnU, btnD, btnL, btnR, Sw0, Sw1, St_ce_bar, St_rp_bar, Mt_ce_bar, Mt_St_oe_bar, Mt_St_we_bar, vga_h_sync, vga_v_sync, vga_r, vga_g, vga_b
, An0, An1, An2, An3, Ca, Cb, Cc, Cd, Ce, Cf, Cg, Dp
);
  input ClkPort;
  input btnU;
  input btnD;
  input btnL;
  input btnR;
  input Sw0;
  input Sw1;
  output St_ce_bar;
  output St_rp_bar;
  output Mt_ce_bar;
  output Mt_St_oe_bar;
  output Mt_St_we_bar;
  output vga_h_sync;
  output vga_v_sync;
  output vga_r;
  output vga_g;
  output vga_b;
  output An0;
  output An1;
  output An2;
  output An3;
  output Ca;
  output Cb;
  output Cc;
  output Cd;
  output Ce;
  output Cf;
  output Cg;
  output Dp;
  wire ClkPort_BUFGP_0;
  wire btnU_IBUF_1;
  wire btnD_IBUF_2;
  wire Sw0_IBUF_3;
  wire DIV_CLK_1_BUFG_4;
  wire reset;
  wire \engine/state_FSM_FFd1_8 ;
  wire \engine/player_right_pos[9] ;
  wire \engine/player_right_pos[7] ;
  wire \engine/player_right_pos[6] ;
  wire \engine/player_right_pos[5] ;
  wire \engine/player_right_pos[4] ;
  wire \engine/player_right_pos[3] ;
  wire \engine/player_right_pos[2] ;
  wire \engine/player_right_pos[1] ;
  wire \engine/player_right_pos[0] ;
  wire R;
  wire vga_h_sync_OBUF_19;
  wire vga_v_sync_OBUF_20;
  wire vga_b_OBUF_30;
  wire An2_OBUF_31;
  wire An3_OBUF_32;
  wire An1_OBUF_33;
  wire An0_OBUF_34;
  wire Cc_OBUF_35;
  wire Cg_OBUF_36;
  wire \engine/border_bottom[9]_player_right_input[1]_AND_8_o31_94 ;
  wire \engine/Mmux__n0478_rs_AS_inv ;
  wire \engine/state_FSM_FFd2_115 ;
  wire \engine/state_FSM_FFd1-In ;
  wire \engine/state_FSM_FFd2-In ;
  wire \engine/_n0491_inv_118 ;
  wire St_ce_bar_OBUF_119;
  wire \engine/_n0478[0] ;
  wire \engine/_n0478[1] ;
  wire \engine/_n0478[2] ;
  wire \engine/_n0478[3] ;
  wire \engine/_n0478[4] ;
  wire \engine/_n0478[5] ;
  wire \engine/_n0478[6] ;
  wire \engine/_n0478[7] ;
  wire \engine/_n0478[9] ;
  wire \engine/border_bottom[9]_player_right_input[1]_AND_8_o ;
  wire \graphics/Madd_paddle_left_pos[9]_paddle_height[9]_add_32_OUT_xor<5>12 ;
  wire \graphics/R42 ;
  wire \graphics/R341 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<4>_142 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi4_143 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_cy<3>_144 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<3>_145 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi3_146 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_cy<2>_147 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<2>_148 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi2_149 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_cy<1>_150 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<1>_151 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi1_152 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_cy<0>_153 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<0>_154 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi_155 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<4> ;
  wire \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lutdi4 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_cy<3>_158 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<3>_159 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lutdi3_160 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_cy<2>_161 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<2> ;
  wire \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lutdi2 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_cy<1>_164 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<1> ;
  wire \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_cy<0>_166 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<0>_167 ;
  wire \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lutdi ;
  wire \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<4> ;
  wire \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi4 ;
  wire \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_cy<3>_171 ;
  wire \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<3>_172 ;
  wire \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi3_173 ;
  wire \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_cy<2>_174 ;
  wire \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<2>_175 ;
  wire \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi2_176 ;
  wire \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_cy<1>_177 ;
  wire \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<1>_178 ;
  wire \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi1_179 ;
  wire \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_cy<0>_180 ;
  wire \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<0>_181 ;
  wire \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi ;
  wire \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<4> ;
  wire \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi4 ;
  wire \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_cy<3>_185 ;
  wire \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<3>_186 ;
  wire \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi3_187 ;
  wire \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_cy<2>_188 ;
  wire \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<2>_189 ;
  wire \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi2_190 ;
  wire \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_cy<1>_191 ;
  wire \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<1>_192 ;
  wire \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi1_193 ;
  wire \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_cy<0>_194 ;
  wire \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<0>_195 ;
  wire \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi_196 ;
  wire \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<4> ;
  wire \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi4 ;
  wire \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_cy<3>_199 ;
  wire \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<3>_200 ;
  wire \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi3_201 ;
  wire \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_cy<2>_202 ;
  wire \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<2>_203 ;
  wire \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi2_204 ;
  wire \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_cy<1>_205 ;
  wire \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<1>_206 ;
  wire \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi1_207 ;
  wire \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_cy<0>_208 ;
  wire \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<0>_209 ;
  wire \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi_210 ;
  wire \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<4> ;
  wire \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi4 ;
  wire \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_cy<3>_213 ;
  wire \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<3>_214 ;
  wire \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi3_215 ;
  wire \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_cy<2>_216 ;
  wire \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<2>_217 ;
  wire \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi2_218 ;
  wire \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_cy<1>_219 ;
  wire \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<1> ;
  wire \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi1_221 ;
  wire \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_cy<0>_222 ;
  wire \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<0> ;
  wire \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi ;
  wire \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<4> ;
  wire \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi4_226 ;
  wire \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_cy<3>_227 ;
  wire \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<3>_228 ;
  wire \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi3_229 ;
  wire \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_cy<2>_230 ;
  wire \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<2>_231 ;
  wire \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi2_232 ;
  wire \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_cy<1>_233 ;
  wire \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<1>_234 ;
  wire \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi1_235 ;
  wire \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_cy<0>_236 ;
  wire \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<0> ;
  wire \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi ;
  wire \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<4> ;
  wire \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi4 ;
  wire \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_cy<3>_241 ;
  wire \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<3>_242 ;
  wire \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi3_243 ;
  wire \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_cy<2>_244 ;
  wire \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<2>_245 ;
  wire \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi2_246 ;
  wire \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_cy<1>_247 ;
  wire \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<1>_248 ;
  wire \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi1_249 ;
  wire \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_cy<0>_250 ;
  wire \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<0>_251 ;
  wire \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi_252 ;
  wire \graphics/CounterY[9]_paddle_left_pos[9]_LessThan_34_o ;
  wire \graphics/CounterY[9]_paddle_right_pos[9]_LessThan_42_o ;
  wire \graphics/CounterY[9]_ball_pos_y[9]_LessThan_31_o ;
  wire \graphics/CounterX[9]_ball_pos_x[9]_LessThan_28_o ;
  wire \graphics/paddle_left_pos[9]_CounterY[9]_LessThan_32_o ;
  wire \graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<1> ;
  wire \graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<2> ;
  wire \graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<3> ;
  wire \graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<4> ;
  wire \graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<5> ;
  wire \graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<6> ;
  wire \graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<7> ;
  wire \graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<8> ;
  wire \graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<9> ;
  wire \graphics/paddle_right_pos[9]_CounterY[9]_LessThan_40_o ;
  wire Ca_OBUF_288;
  wire \graphics/ball_pos_y[9]_CounterY[9]_LessThan_29_o ;
  wire \graphics/ball_pos_x[9]_CounterX[9]_LessThan_26_o ;
  wire \graphics/syncgen/Mcount_CounterX9 ;
  wire \graphics/syncgen/Mcount_CounterX8 ;
  wire \graphics/syncgen/Mcount_CounterX7 ;
  wire \graphics/syncgen/Mcount_CounterX6 ;
  wire \graphics/syncgen/Mcount_CounterX5 ;
  wire \graphics/syncgen/Mcount_CounterX4 ;
  wire \graphics/syncgen/Mcount_CounterX3 ;
  wire \graphics/syncgen/Mcount_CounterX2 ;
  wire \graphics/syncgen/Mcount_CounterX1 ;
  wire \graphics/syncgen/Mcount_CounterX ;
  wire \graphics/syncgen/CounterX[9]_PWR_12_o_equal_1_o_inv ;
  wire \graphics/syncgen/Mcount_CounterY_lut[9] ;
  wire \graphics/syncgen/Mcount_CounterY9 ;
  wire \graphics/syncgen/Mcount_CounterY8 ;
  wire \graphics/syncgen/Mcount_CounterY7 ;
  wire \graphics/syncgen/Mcount_CounterY6 ;
  wire \graphics/syncgen/Mcount_CounterY5 ;
  wire \graphics/syncgen/Mcount_CounterY_lut[4] ;
  wire \graphics/syncgen/Mcount_CounterY4 ;
  wire \graphics/syncgen/Mcount_CounterY_lut[3] ;
  wire \graphics/syncgen/Mcount_CounterY3 ;
  wire \graphics/syncgen/Mcount_CounterY_lut[2] ;
  wire \graphics/syncgen/Mcount_CounterY2 ;
  wire \graphics/syncgen/Mcount_CounterY_lut[1] ;
  wire \graphics/syncgen/Mcount_CounterY1 ;
  wire \graphics/syncgen/Mcount_CounterY_lut[0] ;
  wire \graphics/syncgen/Mcount_CounterY ;
  wire \graphics/syncgen/CounterY[9]_PWR_12_o_equal_5_o_inv ;
  wire \graphics/syncgen/_n0047_inv ;
  wire \graphics/syncgen/PWR_12_o_CounterX[9]_LessThan_12_o_inv ;
  wire \graphics/syncgen/PWR_12_o_CounterX[9]_AND_15_o_norst ;
  wire \graphics/syncgen/GND_18_o_GND_18_o_OR_49_o_351 ;
  wire \graphics/syncgen/CounterY[9]_PWR_12_o_equal_5_o ;
  wire \graphics/syncgen/CounterX[9]_PWR_12_o_equal_1_o ;
  wire \graphics/syncgen/vga_VS_354 ;
  wire \graphics/syncgen/vga_HS_355 ;
  wire \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o17_356 ;
  wire \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o11 ;
  wire \graphics/CounterY[9]_PWR_11_o_mod_23/Madd_a[9]_GND_19_o_add_17_OUT_lut<4> ;
  wire \graphics/CounterY[9]_PWR_11_o_mod_23/Madd_a[9]_GND_19_o_add_13_OUT_lut<6> ;
  wire \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o ;
  wire \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0010_INV_1288_o ;
  wire \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0009_INV_1277_o ;
  wire \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0008_INV_1266_o ;
  wire \graphics/CounterY[9]_PWR_11_o_mod_23/a[7]_a[9]_MUX_1361_o ;
  wire N9;
  wire \engine/border_bottom[9]_player_right_input[1]_AND_8_o2_366 ;
  wire \graphics/R421_367 ;
  wire \graphics/R422_368 ;
  wire \graphics/R ;
  wire \graphics/R1_370 ;
  wire \graphics/R2_371 ;
  wire \graphics/R3_372 ;
  wire \graphics/R4_373 ;
  wire \graphics/R5_374 ;
  wire \graphics/R6_375 ;
  wire \graphics/R7_376 ;
  wire \graphics/R9 ;
  wire \graphics/R10_378 ;
  wire \graphics/R11_379 ;
  wire \graphics/R12_380 ;
  wire \graphics/R13_381 ;
  wire \graphics/R14_382 ;
  wire \graphics/R17 ;
  wire N13;
  wire N15;
  wire N17;
  wire N19;
  wire \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o13_388 ;
  wire \Mcount_DIV_CLK_cy<1>_rt_415 ;
  wire \Mcount_DIV_CLK_cy<2>_rt_416 ;
  wire \Mcount_DIV_CLK_cy<3>_rt_417 ;
  wire \Mcount_DIV_CLK_cy<4>_rt_418 ;
  wire \Mcount_DIV_CLK_cy<5>_rt_419 ;
  wire \Mcount_DIV_CLK_cy<6>_rt_420 ;
  wire \Mcount_DIV_CLK_cy<7>_rt_421 ;
  wire \Mcount_DIV_CLK_cy<8>_rt_422 ;
  wire \Mcount_DIV_CLK_cy<9>_rt_423 ;
  wire \Mcount_DIV_CLK_cy<10>_rt_424 ;
  wire \Mcount_DIV_CLK_cy<11>_rt_425 ;
  wire \Mcount_DIV_CLK_cy<12>_rt_426 ;
  wire \Mcount_DIV_CLK_cy<13>_rt_427 ;
  wire \Mcount_DIV_CLK_cy<14>_rt_428 ;
  wire \Mcount_DIV_CLK_cy<15>_rt_429 ;
  wire \Mcount_DIV_CLK_cy<16>_rt_430 ;
  wire \Mcount_DIV_CLK_cy<17>_rt_431 ;
  wire \Mcount_DIV_CLK_cy<18>_rt_432 ;
  wire \Mcount_DIV_CLK_xor<19>_rt_433 ;
  wire N23;
  wire N25;
  wire N26;
  wire N28;
  wire N29;
  wire N31;
  wire N36;
  wire N38;
  wire N40;
  wire N42;
  wire N44;
  wire \graphics/syncgen/Mcount_CounterY_cy<8>_rt_445 ;
  wire \graphics/syncgen/Mcount_CounterY_cy<7>_rt_446 ;
  wire \graphics/syncgen/Mcount_CounterY_cy<6>_rt_447 ;
  wire \graphics/syncgen/Mcount_CounterY_cy<5>_rt_448 ;
  wire \graphics/syncgen/CounterY_5_1_449 ;
  wire \graphics/syncgen/CounterY_8_1_450 ;
  wire \graphics/syncgen/CounterY_6_1_451 ;
  wire \graphics/syncgen/CounterY_9_1_452 ;
  wire \graphics/syncgen/CounterY_7_1_453 ;
  wire \graphics/syncgen/CounterY_5_2_454 ;
  wire \graphics/syncgen/CounterY_8_2_455 ;
  wire \graphics/syncgen/CounterY_8_3_456 ;
  wire \graphics/syncgen/CounterY_4_1_457 ;
  wire \graphics/syncgen/CounterY_5_3_458 ;
  wire \graphics/syncgen/CounterY_9_2_459 ;
  wire \graphics/syncgen/CounterY_3_1_460 ;
  wire \graphics/syncgen/CounterY_7_2_461 ;
  wire N46;
  wire N47;
  wire N48;
  wire N49;
  wire N50;
  wire N51;
  wire NLW_BUF1_O_UNCONNECTED;
  wire [19 : 0] DIV_CLK;
  wire [8 : 0] player_right_pos_q;
  wire [19 : 0] Result;
  wire [0 : 0] Mcount_DIV_CLK_lut;
  wire [18 : 0] Mcount_DIV_CLK_cy;
  wire [9 : 0] \engine/Mmux__n0478_rs_lut ;
  wire [8 : 0] \engine/Mmux__n0478_rs_cy ;
  wire [8 : 0] \engine/Mmux__n0478_rs_A ;
  wire [9 : 0] \graphics/syncgen/CounterY ;
  wire [9 : 0] \graphics/syncgen/CounterX ;
  wire [4 : 4] player_left_pos_q;
  wire [9 : 0] \graphics/syncgen/Mcount_CounterX_lut ;
  wire [8 : 0] \graphics/syncgen/Mcount_CounterX_cy ;
  wire [8 : 0] \graphics/syncgen/Mcount_CounterY_cy ;
  VCC   XST_VCC (
    .P(St_ce_bar_OBUF_119)
  );
  GND   XST_GND (
    .G(Ca_OBUF_288)
  );
  FDR_1   player_left_pos_q_4 (
    .C(vga_v_sync_OBUF_20),
    .D(\engine/state_FSM_FFd1_8 ),
    .R(reset),
    .Q(player_left_pos_q[4])
  );
  FDR_1   player_right_pos_q_0 (
    .C(vga_v_sync_OBUF_20),
    .D(\engine/player_right_pos[0] ),
    .R(reset),
    .Q(player_right_pos_q[0])
  );
  FDR_1   player_right_pos_q_1 (
    .C(vga_v_sync_OBUF_20),
    .D(\engine/player_right_pos[1] ),
    .R(reset),
    .Q(player_right_pos_q[1])
  );
  FDR_1   player_right_pos_q_2 (
    .C(vga_v_sync_OBUF_20),
    .D(\engine/player_right_pos[2] ),
    .R(reset),
    .Q(player_right_pos_q[2])
  );
  FDR_1   player_right_pos_q_3 (
    .C(vga_v_sync_OBUF_20),
    .D(\engine/player_right_pos[3] ),
    .R(reset),
    .Q(player_right_pos_q[3])
  );
  FDR_1   player_right_pos_q_4 (
    .C(vga_v_sync_OBUF_20),
    .D(\engine/player_right_pos[4] ),
    .R(reset),
    .Q(player_right_pos_q[4])
  );
  FDR_1   player_right_pos_q_5 (
    .C(vga_v_sync_OBUF_20),
    .D(\engine/player_right_pos[5] ),
    .R(reset),
    .Q(player_right_pos_q[5])
  );
  FDR_1   player_right_pos_q_6 (
    .C(vga_v_sync_OBUF_20),
    .D(\engine/player_right_pos[6] ),
    .R(reset),
    .Q(player_right_pos_q[6])
  );
  FDR_1   player_right_pos_q_7 (
    .C(vga_v_sync_OBUF_20),
    .D(\engine/player_right_pos[7] ),
    .R(reset),
    .Q(player_right_pos_q[7])
  );
  FDR_1   player_right_pos_q_8 (
    .C(vga_v_sync_OBUF_20),
    .D(\engine/player_right_pos[9] ),
    .R(reset),
    .Q(player_right_pos_q[8])
  );
  FD   vga_r_13 (
    .C(DIV_CLK_1_BUFG_4),
    .D(R),
    .Q(vga_b_OBUF_30)
  );
  FDC   DIV_CLK_0 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[0]),
    .Q(DIV_CLK[0])
  );
  FDC   DIV_CLK_1 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[1]),
    .Q(DIV_CLK[1])
  );
  FDC   DIV_CLK_2 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[2]),
    .Q(DIV_CLK[2])
  );
  FDC   DIV_CLK_3 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[3]),
    .Q(DIV_CLK[3])
  );
  FDC   DIV_CLK_4 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[4]),
    .Q(DIV_CLK[4])
  );
  FDC   DIV_CLK_5 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[5]),
    .Q(DIV_CLK[5])
  );
  FDC   DIV_CLK_6 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[6]),
    .Q(DIV_CLK[6])
  );
  FDC   DIV_CLK_7 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[7]),
    .Q(DIV_CLK[7])
  );
  FDC   DIV_CLK_8 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[8]),
    .Q(DIV_CLK[8])
  );
  FDC   DIV_CLK_9 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[9]),
    .Q(DIV_CLK[9])
  );
  FDC   DIV_CLK_10 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[10]),
    .Q(DIV_CLK[10])
  );
  FDC   DIV_CLK_11 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[11]),
    .Q(DIV_CLK[11])
  );
  FDC   DIV_CLK_12 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[12]),
    .Q(DIV_CLK[12])
  );
  FDC   DIV_CLK_13 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[13]),
    .Q(DIV_CLK[13])
  );
  FDC   DIV_CLK_14 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[14]),
    .Q(DIV_CLK[14])
  );
  FDC   DIV_CLK_15 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[15]),
    .Q(DIV_CLK[15])
  );
  FDC   DIV_CLK_16 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[16]),
    .Q(DIV_CLK[16])
  );
  FDC   DIV_CLK_17 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[17]),
    .Q(DIV_CLK[17])
  );
  FDC   DIV_CLK_18 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[18]),
    .Q(DIV_CLK[18])
  );
  FDC   DIV_CLK_19 (
    .C(ClkPort_BUFGP_0),
    .CLR(reset),
    .D(Result[19]),
    .Q(DIV_CLK[19])
  );
  MUXCY   \Mcount_DIV_CLK_cy<0>  (
    .CI(Ca_OBUF_288),
    .DI(St_ce_bar_OBUF_119),
    .S(Mcount_DIV_CLK_lut[0]),
    .O(Mcount_DIV_CLK_cy[0])
  );
  XORCY   \Mcount_DIV_CLK_xor<0>  (
    .CI(Ca_OBUF_288),
    .LI(Mcount_DIV_CLK_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_DIV_CLK_cy<1>  (
    .CI(Mcount_DIV_CLK_cy[0]),
    .DI(Ca_OBUF_288),
    .S(\Mcount_DIV_CLK_cy<1>_rt_415 ),
    .O(Mcount_DIV_CLK_cy[1])
  );
  XORCY   \Mcount_DIV_CLK_xor<1>  (
    .CI(Mcount_DIV_CLK_cy[0]),
    .LI(\Mcount_DIV_CLK_cy<1>_rt_415 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_DIV_CLK_cy<2>  (
    .CI(Mcount_DIV_CLK_cy[1]),
    .DI(Ca_OBUF_288),
    .S(\Mcount_DIV_CLK_cy<2>_rt_416 ),
    .O(Mcount_DIV_CLK_cy[2])
  );
  XORCY   \Mcount_DIV_CLK_xor<2>  (
    .CI(Mcount_DIV_CLK_cy[1]),
    .LI(\Mcount_DIV_CLK_cy<2>_rt_416 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_DIV_CLK_cy<3>  (
    .CI(Mcount_DIV_CLK_cy[2]),
    .DI(Ca_OBUF_288),
    .S(\Mcount_DIV_CLK_cy<3>_rt_417 ),
    .O(Mcount_DIV_CLK_cy[3])
  );
  XORCY   \Mcount_DIV_CLK_xor<3>  (
    .CI(Mcount_DIV_CLK_cy[2]),
    .LI(\Mcount_DIV_CLK_cy<3>_rt_417 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_DIV_CLK_cy<4>  (
    .CI(Mcount_DIV_CLK_cy[3]),
    .DI(Ca_OBUF_288),
    .S(\Mcount_DIV_CLK_cy<4>_rt_418 ),
    .O(Mcount_DIV_CLK_cy[4])
  );
  XORCY   \Mcount_DIV_CLK_xor<4>  (
    .CI(Mcount_DIV_CLK_cy[3]),
    .LI(\Mcount_DIV_CLK_cy<4>_rt_418 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_DIV_CLK_cy<5>  (
    .CI(Mcount_DIV_CLK_cy[4]),
    .DI(Ca_OBUF_288),
    .S(\Mcount_DIV_CLK_cy<5>_rt_419 ),
    .O(Mcount_DIV_CLK_cy[5])
  );
  XORCY   \Mcount_DIV_CLK_xor<5>  (
    .CI(Mcount_DIV_CLK_cy[4]),
    .LI(\Mcount_DIV_CLK_cy<5>_rt_419 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_DIV_CLK_cy<6>  (
    .CI(Mcount_DIV_CLK_cy[5]),
    .DI(Ca_OBUF_288),
    .S(\Mcount_DIV_CLK_cy<6>_rt_420 ),
    .O(Mcount_DIV_CLK_cy[6])
  );
  XORCY   \Mcount_DIV_CLK_xor<6>  (
    .CI(Mcount_DIV_CLK_cy[5]),
    .LI(\Mcount_DIV_CLK_cy<6>_rt_420 ),
    .O(Result[6])
  );
  MUXCY   \Mcount_DIV_CLK_cy<7>  (
    .CI(Mcount_DIV_CLK_cy[6]),
    .DI(Ca_OBUF_288),
    .S(\Mcount_DIV_CLK_cy<7>_rt_421 ),
    .O(Mcount_DIV_CLK_cy[7])
  );
  XORCY   \Mcount_DIV_CLK_xor<7>  (
    .CI(Mcount_DIV_CLK_cy[6]),
    .LI(\Mcount_DIV_CLK_cy<7>_rt_421 ),
    .O(Result[7])
  );
  MUXCY   \Mcount_DIV_CLK_cy<8>  (
    .CI(Mcount_DIV_CLK_cy[7]),
    .DI(Ca_OBUF_288),
    .S(\Mcount_DIV_CLK_cy<8>_rt_422 ),
    .O(Mcount_DIV_CLK_cy[8])
  );
  XORCY   \Mcount_DIV_CLK_xor<8>  (
    .CI(Mcount_DIV_CLK_cy[7]),
    .LI(\Mcount_DIV_CLK_cy<8>_rt_422 ),
    .O(Result[8])
  );
  MUXCY   \Mcount_DIV_CLK_cy<9>  (
    .CI(Mcount_DIV_CLK_cy[8]),
    .DI(Ca_OBUF_288),
    .S(\Mcount_DIV_CLK_cy<9>_rt_423 ),
    .O(Mcount_DIV_CLK_cy[9])
  );
  XORCY   \Mcount_DIV_CLK_xor<9>  (
    .CI(Mcount_DIV_CLK_cy[8]),
    .LI(\Mcount_DIV_CLK_cy<9>_rt_423 ),
    .O(Result[9])
  );
  MUXCY   \Mcount_DIV_CLK_cy<10>  (
    .CI(Mcount_DIV_CLK_cy[9]),
    .DI(Ca_OBUF_288),
    .S(\Mcount_DIV_CLK_cy<10>_rt_424 ),
    .O(Mcount_DIV_CLK_cy[10])
  );
  XORCY   \Mcount_DIV_CLK_xor<10>  (
    .CI(Mcount_DIV_CLK_cy[9]),
    .LI(\Mcount_DIV_CLK_cy<10>_rt_424 ),
    .O(Result[10])
  );
  MUXCY   \Mcount_DIV_CLK_cy<11>  (
    .CI(Mcount_DIV_CLK_cy[10]),
    .DI(Ca_OBUF_288),
    .S(\Mcount_DIV_CLK_cy<11>_rt_425 ),
    .O(Mcount_DIV_CLK_cy[11])
  );
  XORCY   \Mcount_DIV_CLK_xor<11>  (
    .CI(Mcount_DIV_CLK_cy[10]),
    .LI(\Mcount_DIV_CLK_cy<11>_rt_425 ),
    .O(Result[11])
  );
  MUXCY   \Mcount_DIV_CLK_cy<12>  (
    .CI(Mcount_DIV_CLK_cy[11]),
    .DI(Ca_OBUF_288),
    .S(\Mcount_DIV_CLK_cy<12>_rt_426 ),
    .O(Mcount_DIV_CLK_cy[12])
  );
  XORCY   \Mcount_DIV_CLK_xor<12>  (
    .CI(Mcount_DIV_CLK_cy[11]),
    .LI(\Mcount_DIV_CLK_cy<12>_rt_426 ),
    .O(Result[12])
  );
  MUXCY   \Mcount_DIV_CLK_cy<13>  (
    .CI(Mcount_DIV_CLK_cy[12]),
    .DI(Ca_OBUF_288),
    .S(\Mcount_DIV_CLK_cy<13>_rt_427 ),
    .O(Mcount_DIV_CLK_cy[13])
  );
  XORCY   \Mcount_DIV_CLK_xor<13>  (
    .CI(Mcount_DIV_CLK_cy[12]),
    .LI(\Mcount_DIV_CLK_cy<13>_rt_427 ),
    .O(Result[13])
  );
  MUXCY   \Mcount_DIV_CLK_cy<14>  (
    .CI(Mcount_DIV_CLK_cy[13]),
    .DI(Ca_OBUF_288),
    .S(\Mcount_DIV_CLK_cy<14>_rt_428 ),
    .O(Mcount_DIV_CLK_cy[14])
  );
  XORCY   \Mcount_DIV_CLK_xor<14>  (
    .CI(Mcount_DIV_CLK_cy[13]),
    .LI(\Mcount_DIV_CLK_cy<14>_rt_428 ),
    .O(Result[14])
  );
  MUXCY   \Mcount_DIV_CLK_cy<15>  (
    .CI(Mcount_DIV_CLK_cy[14]),
    .DI(Ca_OBUF_288),
    .S(\Mcount_DIV_CLK_cy<15>_rt_429 ),
    .O(Mcount_DIV_CLK_cy[15])
  );
  XORCY   \Mcount_DIV_CLK_xor<15>  (
    .CI(Mcount_DIV_CLK_cy[14]),
    .LI(\Mcount_DIV_CLK_cy<15>_rt_429 ),
    .O(Result[15])
  );
  MUXCY   \Mcount_DIV_CLK_cy<16>  (
    .CI(Mcount_DIV_CLK_cy[15]),
    .DI(Ca_OBUF_288),
    .S(\Mcount_DIV_CLK_cy<16>_rt_430 ),
    .O(Mcount_DIV_CLK_cy[16])
  );
  XORCY   \Mcount_DIV_CLK_xor<16>  (
    .CI(Mcount_DIV_CLK_cy[15]),
    .LI(\Mcount_DIV_CLK_cy<16>_rt_430 ),
    .O(Result[16])
  );
  MUXCY   \Mcount_DIV_CLK_cy<17>  (
    .CI(Mcount_DIV_CLK_cy[16]),
    .DI(Ca_OBUF_288),
    .S(\Mcount_DIV_CLK_cy<17>_rt_431 ),
    .O(Mcount_DIV_CLK_cy[17])
  );
  XORCY   \Mcount_DIV_CLK_xor<17>  (
    .CI(Mcount_DIV_CLK_cy[16]),
    .LI(\Mcount_DIV_CLK_cy<17>_rt_431 ),
    .O(Result[17])
  );
  MUXCY   \Mcount_DIV_CLK_cy<18>  (
    .CI(Mcount_DIV_CLK_cy[17]),
    .DI(Ca_OBUF_288),
    .S(\Mcount_DIV_CLK_cy<18>_rt_432 ),
    .O(Mcount_DIV_CLK_cy[18])
  );
  XORCY   \Mcount_DIV_CLK_xor<18>  (
    .CI(Mcount_DIV_CLK_cy[17]),
    .LI(\Mcount_DIV_CLK_cy<18>_rt_432 ),
    .O(Result[18])
  );
  XORCY   \Mcount_DIV_CLK_xor<19>  (
    .CI(Mcount_DIV_CLK_cy[18]),
    .LI(\Mcount_DIV_CLK_xor<19>_rt_433 ),
    .O(Result[19])
  );
  BUF   BUF1 (
    .I(ClkPort_BUFGP_0),
    .O(NLW_BUF1_O_UNCONNECTED)
  );
  BUF   BUF2 (
    .I(Sw0_IBUF_3),
    .O(reset)
  );
  XORCY   \engine/Mmux__n0478_rs_xor<9>  (
    .CI(\engine/Mmux__n0478_rs_cy [8]),
    .LI(\engine/Mmux__n0478_rs_lut [9]),
    .O(\engine/_n0478[9] )
  );
  MUXCY   \engine/Mmux__n0478_rs_cy<8>  (
    .CI(\engine/Mmux__n0478_rs_cy [7]),
    .DI(\engine/Mmux__n0478_rs_A [8]),
    .S(\engine/Mmux__n0478_rs_lut [8]),
    .O(\engine/Mmux__n0478_rs_cy [8])
  );
  XORCY   \engine/Mmux__n0478_rs_xor<7>  (
    .CI(\engine/Mmux__n0478_rs_cy [6]),
    .LI(\engine/Mmux__n0478_rs_lut [7]),
    .O(\engine/_n0478[7] )
  );
  MUXCY   \engine/Mmux__n0478_rs_cy<7>  (
    .CI(\engine/Mmux__n0478_rs_cy [6]),
    .DI(\engine/Mmux__n0478_rs_A [7]),
    .S(\engine/Mmux__n0478_rs_lut [7]),
    .O(\engine/Mmux__n0478_rs_cy [7])
  );
  XORCY   \engine/Mmux__n0478_rs_xor<6>  (
    .CI(\engine/Mmux__n0478_rs_cy [5]),
    .LI(\engine/Mmux__n0478_rs_lut [6]),
    .O(\engine/_n0478[6] )
  );
  MUXCY   \engine/Mmux__n0478_rs_cy<6>  (
    .CI(\engine/Mmux__n0478_rs_cy [5]),
    .DI(\engine/Mmux__n0478_rs_A [6]),
    .S(\engine/Mmux__n0478_rs_lut [6]),
    .O(\engine/Mmux__n0478_rs_cy [6])
  );
  XORCY   \engine/Mmux__n0478_rs_xor<5>  (
    .CI(\engine/Mmux__n0478_rs_cy [4]),
    .LI(\engine/Mmux__n0478_rs_lut [5]),
    .O(\engine/_n0478[5] )
  );
  MUXCY   \engine/Mmux__n0478_rs_cy<5>  (
    .CI(\engine/Mmux__n0478_rs_cy [4]),
    .DI(\engine/Mmux__n0478_rs_A [5]),
    .S(\engine/Mmux__n0478_rs_lut [5]),
    .O(\engine/Mmux__n0478_rs_cy [5])
  );
  XORCY   \engine/Mmux__n0478_rs_xor<4>  (
    .CI(\engine/Mmux__n0478_rs_cy [3]),
    .LI(\engine/Mmux__n0478_rs_lut [4]),
    .O(\engine/_n0478[4] )
  );
  MUXCY   \engine/Mmux__n0478_rs_cy<4>  (
    .CI(\engine/Mmux__n0478_rs_cy [3]),
    .DI(\engine/Mmux__n0478_rs_A [4]),
    .S(\engine/Mmux__n0478_rs_lut [4]),
    .O(\engine/Mmux__n0478_rs_cy [4])
  );
  XORCY   \engine/Mmux__n0478_rs_xor<3>  (
    .CI(\engine/Mmux__n0478_rs_cy [2]),
    .LI(\engine/Mmux__n0478_rs_lut [3]),
    .O(\engine/_n0478[3] )
  );
  MUXCY   \engine/Mmux__n0478_rs_cy<3>  (
    .CI(\engine/Mmux__n0478_rs_cy [2]),
    .DI(\engine/Mmux__n0478_rs_A [3]),
    .S(\engine/Mmux__n0478_rs_lut [3]),
    .O(\engine/Mmux__n0478_rs_cy [3])
  );
  XORCY   \engine/Mmux__n0478_rs_xor<2>  (
    .CI(\engine/Mmux__n0478_rs_cy [1]),
    .LI(\engine/Mmux__n0478_rs_lut [2]),
    .O(\engine/_n0478[2] )
  );
  MUXCY   \engine/Mmux__n0478_rs_cy<2>  (
    .CI(\engine/Mmux__n0478_rs_cy [1]),
    .DI(\engine/Mmux__n0478_rs_A [2]),
    .S(\engine/Mmux__n0478_rs_lut [2]),
    .O(\engine/Mmux__n0478_rs_cy [2])
  );
  XORCY   \engine/Mmux__n0478_rs_xor<1>  (
    .CI(\engine/Mmux__n0478_rs_cy [0]),
    .LI(\engine/Mmux__n0478_rs_lut [1]),
    .O(\engine/_n0478[1] )
  );
  MUXCY   \engine/Mmux__n0478_rs_cy<1>  (
    .CI(\engine/Mmux__n0478_rs_cy [0]),
    .DI(\engine/Mmux__n0478_rs_A [1]),
    .S(\engine/Mmux__n0478_rs_lut [1]),
    .O(\engine/Mmux__n0478_rs_cy [1])
  );
  XORCY   \engine/Mmux__n0478_rs_xor<0>  (
    .CI(\engine/Mmux__n0478_rs_AS_inv ),
    .LI(\engine/Mmux__n0478_rs_lut [0]),
    .O(\engine/_n0478[0] )
  );
  MUXCY   \engine/Mmux__n0478_rs_cy<0>  (
    .CI(\engine/Mmux__n0478_rs_AS_inv ),
    .DI(\engine/Mmux__n0478_rs_A [0]),
    .S(\engine/Mmux__n0478_rs_lut [0]),
    .O(\engine/Mmux__n0478_rs_cy [0])
  );
  FDR   \engine/state_FSM_FFd1  (
    .C(DIV_CLK_1_BUFG_4),
    .D(\engine/state_FSM_FFd1-In ),
    .R(reset),
    .Q(\engine/state_FSM_FFd1_8 )
  );
  FDR   \engine/state_FSM_FFd2  (
    .C(DIV_CLK_1_BUFG_4),
    .D(\engine/state_FSM_FFd2-In ),
    .R(reset),
    .Q(\engine/state_FSM_FFd2_115 )
  );
  FDRE   \engine/player_right_pos_9  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\engine/_n0491_inv_118 ),
    .D(\engine/_n0478[9] ),
    .R(reset),
    .Q(\engine/player_right_pos[9] )
  );
  FDRE   \engine/player_right_pos_7  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\engine/_n0491_inv_118 ),
    .D(\engine/_n0478[7] ),
    .R(reset),
    .Q(\engine/player_right_pos[7] )
  );
  FDRE   \engine/player_right_pos_6  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\engine/_n0491_inv_118 ),
    .D(\engine/_n0478[6] ),
    .R(reset),
    .Q(\engine/player_right_pos[6] )
  );
  FDRE   \engine/player_right_pos_5  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\engine/_n0491_inv_118 ),
    .D(\engine/_n0478[5] ),
    .R(reset),
    .Q(\engine/player_right_pos[5] )
  );
  FDRE   \engine/player_right_pos_4  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\engine/_n0491_inv_118 ),
    .D(\engine/_n0478[4] ),
    .R(reset),
    .Q(\engine/player_right_pos[4] )
  );
  FDRE   \engine/player_right_pos_3  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\engine/_n0491_inv_118 ),
    .D(\engine/_n0478[3] ),
    .R(reset),
    .Q(\engine/player_right_pos[3] )
  );
  FDRE   \engine/player_right_pos_2  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\engine/_n0491_inv_118 ),
    .D(\engine/_n0478[2] ),
    .R(reset),
    .Q(\engine/player_right_pos[2] )
  );
  FDRE   \engine/player_right_pos_1  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\engine/_n0491_inv_118 ),
    .D(\engine/_n0478[1] ),
    .R(reset),
    .Q(\engine/player_right_pos[1] )
  );
  FDRE   \engine/player_right_pos_0  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\engine/_n0491_inv_118 ),
    .D(\engine/_n0478[0] ),
    .R(reset),
    .Q(\engine/player_right_pos[0] )
  );
  MUXCY   \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_cy<4>  (
    .CI(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_cy<3>_144 ),
    .DI(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi4_143 ),
    .S(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<4>_142 ),
    .O(\graphics/CounterY[9]_paddle_left_pos[9]_LessThan_34_o )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<4>  (
    .I0(\graphics/syncgen/CounterY [8]),
    .I1(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<8> ),
    .I2(\graphics/syncgen/CounterY [9]),
    .I3(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<9> ),
    .O(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<4>_142 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi4  (
    .I0(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<9> ),
    .I1(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<8> ),
    .I2(\graphics/syncgen/CounterY [8]),
    .I3(\graphics/syncgen/CounterY [9]),
    .O(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi4_143 )
  );
  MUXCY   \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_cy<3>  (
    .CI(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_cy<2>_147 ),
    .DI(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi3_146 ),
    .S(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<3>_145 ),
    .O(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_cy<3>_144 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<3>  (
    .I0(\graphics/syncgen/CounterY [6]),
    .I1(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<6> ),
    .I2(\graphics/syncgen/CounterY [7]),
    .I3(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<7> ),
    .O(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<3>_145 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi3  (
    .I0(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<7> ),
    .I1(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<6> ),
    .I2(\graphics/syncgen/CounterY [6]),
    .I3(\graphics/syncgen/CounterY [7]),
    .O(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi3_146 )
  );
  MUXCY   \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_cy<2>  (
    .CI(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_cy<1>_150 ),
    .DI(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi2_149 ),
    .S(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<2>_148 ),
    .O(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_cy<2>_147 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<2>  (
    .I0(\graphics/syncgen/CounterY [4]),
    .I1(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<4> ),
    .I2(\graphics/syncgen/CounterY [5]),
    .I3(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<5> ),
    .O(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<2>_148 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi2  (
    .I0(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<5> ),
    .I1(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<4> ),
    .I2(\graphics/syncgen/CounterY [4]),
    .I3(\graphics/syncgen/CounterY [5]),
    .O(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi2_149 )
  );
  MUXCY   \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_cy<1>  (
    .CI(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_cy<0>_153 ),
    .DI(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi1_152 ),
    .S(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<1>_151 ),
    .O(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_cy<1>_150 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<1>  (
    .I0(\graphics/syncgen/CounterY [2]),
    .I1(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<2> ),
    .I2(\graphics/syncgen/CounterY [3]),
    .I3(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<3> ),
    .O(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<1>_151 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi1  (
    .I0(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<3> ),
    .I1(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<2> ),
    .I2(\graphics/syncgen/CounterY [2]),
    .I3(\graphics/syncgen/CounterY [3]),
    .O(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi1_152 )
  );
  MUXCY   \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_cy<0>  (
    .CI(St_ce_bar_OBUF_119),
    .DI(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi_155 ),
    .S(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<0>_154 ),
    .O(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_cy<0>_153 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<0>  (
    .I0(\graphics/syncgen/CounterY [0]),
    .I1(player_right_pos_q[0]),
    .I2(\graphics/syncgen/CounterY [1]),
    .I3(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<1> ),
    .O(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lut<0>_154 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi  (
    .I0(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<1> ),
    .I1(player_right_pos_q[0]),
    .I2(\graphics/syncgen/CounterY [0]),
    .I3(\graphics/syncgen/CounterY [1]),
    .O(\graphics/Mcompar_CounterY[9]_paddle_left_pos[9]_LessThan_34_o_lutdi_155 )
  );
  MUXCY   \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_cy<4>  (
    .CI(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_cy<3>_158 ),
    .DI(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lutdi4 ),
    .S(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<4> ),
    .O(\graphics/CounterY[9]_paddle_right_pos[9]_LessThan_42_o )
  );
  MUXCY   \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_cy<3>  (
    .CI(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_cy<2>_161 ),
    .DI(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lutdi3_160 ),
    .S(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<3>_159 ),
    .O(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_cy<3>_158 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<3>  (
    .I0(\graphics/syncgen/CounterY [6]),
    .I1(Ca_OBUF_288),
    .I2(\graphics/syncgen/CounterY [7]),
    .I3(player_left_pos_q[4]),
    .O(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<3>_159 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lutdi3  (
    .I0(player_left_pos_q[4]),
    .I1(Ca_OBUF_288),
    .I2(\graphics/syncgen/CounterY [6]),
    .I3(\graphics/syncgen/CounterY [7]),
    .O(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lutdi3_160 )
  );
  MUXCY   \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_cy<2>  (
    .CI(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_cy<1>_164 ),
    .DI(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lutdi2 ),
    .S(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<2> ),
    .O(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_cy<2>_161 )
  );
  MUXCY   \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_cy<1>  (
    .CI(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_cy<0>_166 ),
    .DI(Ca_OBUF_288),
    .S(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<1> ),
    .O(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_cy<1>_164 )
  );
  MUXCY   \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_cy<0>  (
    .CI(St_ce_bar_OBUF_119),
    .DI(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lutdi ),
    .S(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<0>_167 ),
    .O(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_cy<0>_166 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<0>  (
    .I0(\graphics/syncgen/CounterY [0]),
    .I1(Ca_OBUF_288),
    .I2(\graphics/syncgen/CounterY [1]),
    .I3(St_ce_bar_OBUF_119),
    .O(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<0>_167 )
  );
  MUXCY   \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_cy<4>  (
    .CI(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_cy<3>_171 ),
    .DI(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi4 ),
    .S(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<4> ),
    .O(\graphics/CounterY[9]_ball_pos_y[9]_LessThan_31_o )
  );
  MUXCY   \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_cy<3>  (
    .CI(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_cy<2>_174 ),
    .DI(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi3_173 ),
    .S(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<3>_172 ),
    .O(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_cy<3>_171 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<3>  (
    .I0(\graphics/syncgen/CounterY [6]),
    .I1(player_left_pos_q[4]),
    .I2(\graphics/syncgen/CounterY [7]),
    .I3(Ca_OBUF_288),
    .O(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<3>_172 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi3  (
    .I0(Ca_OBUF_288),
    .I1(player_left_pos_q[4]),
    .I2(\graphics/syncgen/CounterY [6]),
    .I3(\graphics/syncgen/CounterY [7]),
    .O(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi3_173 )
  );
  MUXCY   \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_cy<2>  (
    .CI(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_cy<1>_177 ),
    .DI(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi2_176 ),
    .S(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<2>_175 ),
    .O(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_cy<2>_174 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<2>  (
    .I0(\graphics/syncgen/CounterY [4]),
    .I1(Ca_OBUF_288),
    .I2(\graphics/syncgen/CounterY [5]),
    .I3(player_left_pos_q[4]),
    .O(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<2>_175 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi2  (
    .I0(player_left_pos_q[4]),
    .I1(Ca_OBUF_288),
    .I2(\graphics/syncgen/CounterY [4]),
    .I3(\graphics/syncgen/CounterY [5]),
    .O(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi2_176 )
  );
  MUXCY   \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_cy<1>  (
    .CI(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_cy<0>_180 ),
    .DI(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi1_179 ),
    .S(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<1>_178 ),
    .O(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_cy<1>_177 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<1>  (
    .I0(\graphics/syncgen/CounterY [2]),
    .I1(player_left_pos_q[4]),
    .I2(\graphics/syncgen/CounterY [3]),
    .I3(St_ce_bar_OBUF_119),
    .O(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<1>_178 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi1  (
    .I0(St_ce_bar_OBUF_119),
    .I1(player_left_pos_q[4]),
    .I2(\graphics/syncgen/CounterY [2]),
    .I3(\graphics/syncgen/CounterY [3]),
    .O(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi1_179 )
  );
  MUXCY   \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_cy<0>  (
    .CI(St_ce_bar_OBUF_119),
    .DI(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi ),
    .S(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<0>_181 ),
    .O(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_cy<0>_180 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<0>  (
    .I0(\graphics/syncgen/CounterY [0]),
    .I1(Ca_OBUF_288),
    .I2(\graphics/syncgen/CounterY [1]),
    .I3(St_ce_bar_OBUF_119),
    .O(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<0>_181 )
  );
  MUXCY   \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_cy<4>  (
    .CI(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_cy<3>_185 ),
    .DI(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi4 ),
    .S(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<4> ),
    .O(\graphics/CounterX[9]_ball_pos_x[9]_LessThan_28_o )
  );
  MUXCY   \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_cy<3>  (
    .CI(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_cy<2>_188 ),
    .DI(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi3_187 ),
    .S(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<3>_186 ),
    .O(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_cy<3>_185 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<3>  (
    .I0(\graphics/syncgen/CounterX [6]),
    .I1(player_left_pos_q[4]),
    .I2(\graphics/syncgen/CounterX [7]),
    .I3(Ca_OBUF_288),
    .O(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<3>_186 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi3  (
    .I0(Ca_OBUF_288),
    .I1(player_left_pos_q[4]),
    .I2(\graphics/syncgen/CounterX [6]),
    .I3(\graphics/syncgen/CounterX [7]),
    .O(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi3_187 )
  );
  MUXCY   \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_cy<2>  (
    .CI(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_cy<1>_191 ),
    .DI(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi2_190 ),
    .S(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<2>_189 ),
    .O(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_cy<2>_188 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<2>  (
    .I0(\graphics/syncgen/CounterX [4]),
    .I1(Ca_OBUF_288),
    .I2(\graphics/syncgen/CounterX [5]),
    .I3(player_left_pos_q[4]),
    .O(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<2>_189 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi2  (
    .I0(player_left_pos_q[4]),
    .I1(Ca_OBUF_288),
    .I2(\graphics/syncgen/CounterX [4]),
    .I3(\graphics/syncgen/CounterX [5]),
    .O(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi2_190 )
  );
  MUXCY   \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_cy<1>  (
    .CI(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_cy<0>_194 ),
    .DI(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi1_193 ),
    .S(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<1>_192 ),
    .O(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_cy<1>_191 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<1>  (
    .I0(\graphics/syncgen/CounterX [2]),
    .I1(player_left_pos_q[4]),
    .I2(\graphics/syncgen/CounterX [3]),
    .I3(St_ce_bar_OBUF_119),
    .O(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<1>_192 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi1  (
    .I0(St_ce_bar_OBUF_119),
    .I1(player_left_pos_q[4]),
    .I2(\graphics/syncgen/CounterX [2]),
    .I3(\graphics/syncgen/CounterX [3]),
    .O(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi1_193 )
  );
  MUXCY   \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_cy<0>  (
    .CI(St_ce_bar_OBUF_119),
    .DI(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi_196 ),
    .S(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<0>_195 ),
    .O(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_cy<0>_194 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<0>  (
    .I0(\graphics/syncgen/CounterX [0]),
    .I1(player_left_pos_q[4]),
    .I2(\graphics/syncgen/CounterX [1]),
    .I3(St_ce_bar_OBUF_119),
    .O(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<0>_195 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi  (
    .I0(St_ce_bar_OBUF_119),
    .I1(player_left_pos_q[4]),
    .I2(\graphics/syncgen/CounterX [0]),
    .I3(\graphics/syncgen/CounterX [1]),
    .O(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi_196 )
  );
  MUXCY   \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_cy<4>  (
    .CI(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_cy<3>_199 ),
    .DI(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi4 ),
    .S(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<4> ),
    .O(\graphics/paddle_left_pos[9]_CounterY[9]_LessThan_32_o )
  );
  MUXCY   \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_cy<3>  (
    .CI(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_cy<2>_202 ),
    .DI(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi3_201 ),
    .S(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<3>_200 ),
    .O(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_cy<3>_199 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<3>  (
    .I0(player_right_pos_q[6]),
    .I1(\graphics/syncgen/CounterY [6]),
    .I2(player_right_pos_q[7]),
    .I3(\graphics/syncgen/CounterY [7]),
    .O(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<3>_200 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi3  (
    .I0(\graphics/syncgen/CounterY [7]),
    .I1(\graphics/syncgen/CounterY [6]),
    .I2(player_right_pos_q[6]),
    .I3(player_right_pos_q[7]),
    .O(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi3_201 )
  );
  MUXCY   \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_cy<2>  (
    .CI(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_cy<1>_205 ),
    .DI(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi2_204 ),
    .S(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<2>_203 ),
    .O(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_cy<2>_202 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<2>  (
    .I0(player_right_pos_q[4]),
    .I1(\graphics/syncgen/CounterY [4]),
    .I2(player_right_pos_q[5]),
    .I3(\graphics/syncgen/CounterY [5]),
    .O(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<2>_203 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi2  (
    .I0(\graphics/syncgen/CounterY [5]),
    .I1(\graphics/syncgen/CounterY [4]),
    .I2(player_right_pos_q[4]),
    .I3(player_right_pos_q[5]),
    .O(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi2_204 )
  );
  MUXCY   \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_cy<1>  (
    .CI(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_cy<0>_208 ),
    .DI(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi1_207 ),
    .S(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<1>_206 ),
    .O(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_cy<1>_205 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<1>  (
    .I0(player_right_pos_q[2]),
    .I1(\graphics/syncgen/CounterY [2]),
    .I2(player_right_pos_q[3]),
    .I3(\graphics/syncgen/CounterY [3]),
    .O(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<1>_206 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi1  (
    .I0(\graphics/syncgen/CounterY [3]),
    .I1(\graphics/syncgen/CounterY [2]),
    .I2(player_right_pos_q[2]),
    .I3(player_right_pos_q[3]),
    .O(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi1_207 )
  );
  MUXCY   \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_cy<0>  (
    .CI(St_ce_bar_OBUF_119),
    .DI(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi_210 ),
    .S(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<0>_209 ),
    .O(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_cy<0>_208 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<0>  (
    .I0(player_right_pos_q[0]),
    .I1(\graphics/syncgen/CounterY [0]),
    .I2(player_right_pos_q[1]),
    .I3(\graphics/syncgen/CounterY [1]),
    .O(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<0>_209 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi  (
    .I0(\graphics/syncgen/CounterY [1]),
    .I1(\graphics/syncgen/CounterY [0]),
    .I2(player_right_pos_q[0]),
    .I3(player_right_pos_q[1]),
    .O(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi_210 )
  );
  MUXCY   \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_cy<4>  (
    .CI(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_cy<3>_213 ),
    .DI(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi4 ),
    .S(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<4> ),
    .O(\graphics/paddle_right_pos[9]_CounterY[9]_LessThan_40_o )
  );
  MUXCY   \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_cy<3>  (
    .CI(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_cy<2>_216 ),
    .DI(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi3_215 ),
    .S(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<3>_214 ),
    .O(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_cy<3>_213 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<3>  (
    .I0(player_left_pos_q[4]),
    .I1(\graphics/syncgen/CounterY [6]),
    .I2(Ca_OBUF_288),
    .I3(\graphics/syncgen/CounterY [7]),
    .O(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<3>_214 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi3  (
    .I0(\graphics/syncgen/CounterY [7]),
    .I1(\graphics/syncgen/CounterY [6]),
    .I2(player_left_pos_q[4]),
    .I3(Ca_OBUF_288),
    .O(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi3_215 )
  );
  MUXCY   \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_cy<2>  (
    .CI(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_cy<1>_219 ),
    .DI(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi2_218 ),
    .S(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<2>_217 ),
    .O(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_cy<2>_216 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<2>  (
    .I0(player_left_pos_q[4]),
    .I1(\graphics/syncgen/CounterY [4]),
    .I2(Ca_OBUF_288),
    .I3(\graphics/syncgen/CounterY [5]),
    .O(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<2>_217 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi2  (
    .I0(\graphics/syncgen/CounterY [5]),
    .I1(\graphics/syncgen/CounterY [4]),
    .I2(player_left_pos_q[4]),
    .I3(Ca_OBUF_288),
    .O(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi2_218 )
  );
  MUXCY   \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_cy<1>  (
    .CI(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_cy<0>_222 ),
    .DI(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi1_221 ),
    .S(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<1> ),
    .O(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_cy<1>_219 )
  );
  MUXCY   \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_cy<0>  (
    .CI(St_ce_bar_OBUF_119),
    .DI(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi ),
    .S(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<0> ),
    .O(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_cy<0>_222 )
  );
  MUXCY   \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_cy<4>  (
    .CI(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_cy<3>_227 ),
    .DI(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi4_226 ),
    .S(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<4> ),
    .O(\graphics/ball_pos_y[9]_CounterY[9]_LessThan_29_o )
  );
  MUXCY   \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_cy<3>  (
    .CI(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_cy<2>_230 ),
    .DI(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi3_229 ),
    .S(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<3>_228 ),
    .O(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_cy<3>_227 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<3>  (
    .I0(player_left_pos_q[4]),
    .I1(\graphics/syncgen/CounterY [6]),
    .I2(Ca_OBUF_288),
    .I3(\graphics/syncgen/CounterY [7]),
    .O(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<3>_228 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi3  (
    .I0(\graphics/syncgen/CounterY [7]),
    .I1(\graphics/syncgen/CounterY [6]),
    .I2(player_left_pos_q[4]),
    .I3(Ca_OBUF_288),
    .O(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi3_229 )
  );
  MUXCY   \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_cy<2>  (
    .CI(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_cy<1>_233 ),
    .DI(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi2_232 ),
    .S(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<2>_231 ),
    .O(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_cy<2>_230 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<2>  (
    .I0(Ca_OBUF_288),
    .I1(\graphics/syncgen/CounterY [4]),
    .I2(player_left_pos_q[4]),
    .I3(\graphics/syncgen/CounterY [5]),
    .O(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<2>_231 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi2  (
    .I0(\graphics/syncgen/CounterY [5]),
    .I1(\graphics/syncgen/CounterY [4]),
    .I2(Ca_OBUF_288),
    .I3(player_left_pos_q[4]),
    .O(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi2_232 )
  );
  MUXCY   \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_cy<1>  (
    .CI(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_cy<0>_236 ),
    .DI(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi1_235 ),
    .S(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<1>_234 ),
    .O(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_cy<1>_233 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<1>  (
    .I0(player_left_pos_q[4]),
    .I1(\graphics/syncgen/CounterY [2]),
    .I2(Ca_OBUF_288),
    .I3(\graphics/syncgen/CounterY [3]),
    .O(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<1>_234 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi1  (
    .I0(\graphics/syncgen/CounterY [3]),
    .I1(\graphics/syncgen/CounterY [2]),
    .I2(player_left_pos_q[4]),
    .I3(Ca_OBUF_288),
    .O(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi1_235 )
  );
  MUXCY   \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_cy<0>  (
    .CI(St_ce_bar_OBUF_119),
    .DI(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi ),
    .S(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<0> ),
    .O(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_cy<0>_236 )
  );
  MUXCY   \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_cy<4>  (
    .CI(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_cy<3>_241 ),
    .DI(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi4 ),
    .S(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<4> ),
    .O(\graphics/ball_pos_x[9]_CounterX[9]_LessThan_26_o )
  );
  MUXCY   \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_cy<3>  (
    .CI(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_cy<2>_244 ),
    .DI(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi3_243 ),
    .S(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<3>_242 ),
    .O(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_cy<3>_241 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<3>  (
    .I0(player_left_pos_q[4]),
    .I1(\graphics/syncgen/CounterX [6]),
    .I2(Ca_OBUF_288),
    .I3(\graphics/syncgen/CounterX [7]),
    .O(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<3>_242 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi3  (
    .I0(\graphics/syncgen/CounterX [7]),
    .I1(\graphics/syncgen/CounterX [6]),
    .I2(player_left_pos_q[4]),
    .I3(Ca_OBUF_288),
    .O(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi3_243 )
  );
  MUXCY   \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_cy<2>  (
    .CI(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_cy<1>_247 ),
    .DI(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi2_246 ),
    .S(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<2>_245 ),
    .O(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_cy<2>_244 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<2>  (
    .I0(Ca_OBUF_288),
    .I1(\graphics/syncgen/CounterX [4]),
    .I2(player_left_pos_q[4]),
    .I3(\graphics/syncgen/CounterX [5]),
    .O(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<2>_245 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi2  (
    .I0(\graphics/syncgen/CounterX [5]),
    .I1(\graphics/syncgen/CounterX [4]),
    .I2(Ca_OBUF_288),
    .I3(player_left_pos_q[4]),
    .O(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi2_246 )
  );
  MUXCY   \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_cy<1>  (
    .CI(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_cy<0>_250 ),
    .DI(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi1_249 ),
    .S(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<1>_248 ),
    .O(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_cy<1>_247 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<1>  (
    .I0(player_left_pos_q[4]),
    .I1(\graphics/syncgen/CounterX [2]),
    .I2(Ca_OBUF_288),
    .I3(\graphics/syncgen/CounterX [3]),
    .O(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<1>_248 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi1  (
    .I0(\graphics/syncgen/CounterX [3]),
    .I1(\graphics/syncgen/CounterX [2]),
    .I2(player_left_pos_q[4]),
    .I3(Ca_OBUF_288),
    .O(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi1_249 )
  );
  MUXCY   \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_cy<0>  (
    .CI(St_ce_bar_OBUF_119),
    .DI(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi_252 ),
    .S(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<0>_251 ),
    .O(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_cy<0>_250 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<0>  (
    .I0(player_left_pos_q[4]),
    .I1(\graphics/syncgen/CounterX [0]),
    .I2(Ca_OBUF_288),
    .I3(\graphics/syncgen/CounterX [1]),
    .O(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<0>_251 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi  (
    .I0(\graphics/syncgen/CounterX [1]),
    .I1(\graphics/syncgen/CounterX [0]),
    .I2(player_left_pos_q[4]),
    .I3(Ca_OBUF_288),
    .O(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi_252 )
  );
  FDCE   \graphics/syncgen/CounterY_9  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY9 ),
    .Q(\graphics/syncgen/CounterY [9])
  );
  FDCE   \graphics/syncgen/CounterY_8  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY8 ),
    .Q(\graphics/syncgen/CounterY [8])
  );
  FDCE   \graphics/syncgen/CounterY_7  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY7 ),
    .Q(\graphics/syncgen/CounterY [7])
  );
  FDCE   \graphics/syncgen/CounterY_6  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY6 ),
    .Q(\graphics/syncgen/CounterY [6])
  );
  FDCE   \graphics/syncgen/CounterY_5  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY5 ),
    .Q(\graphics/syncgen/CounterY [5])
  );
  FDCE   \graphics/syncgen/CounterY_4  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY4 ),
    .Q(\graphics/syncgen/CounterY [4])
  );
  FDCE   \graphics/syncgen/CounterY_3  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY3 ),
    .Q(\graphics/syncgen/CounterY [3])
  );
  FDCE   \graphics/syncgen/CounterY_2  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY2 ),
    .Q(\graphics/syncgen/CounterY [2])
  );
  FDCE   \graphics/syncgen/CounterY_1  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY1 ),
    .Q(\graphics/syncgen/CounterY [1])
  );
  FDCE   \graphics/syncgen/CounterY_0  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY ),
    .Q(\graphics/syncgen/CounterY [0])
  );
  FDC   \graphics/syncgen/CounterX_9  (
    .C(DIV_CLK_1_BUFG_4),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterX9 ),
    .Q(\graphics/syncgen/CounterX [9])
  );
  FDC   \graphics/syncgen/CounterX_8  (
    .C(DIV_CLK_1_BUFG_4),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterX8 ),
    .Q(\graphics/syncgen/CounterX [8])
  );
  FDC   \graphics/syncgen/CounterX_7  (
    .C(DIV_CLK_1_BUFG_4),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterX7 ),
    .Q(\graphics/syncgen/CounterX [7])
  );
  FDC   \graphics/syncgen/CounterX_6  (
    .C(DIV_CLK_1_BUFG_4),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterX6 ),
    .Q(\graphics/syncgen/CounterX [6])
  );
  FDC   \graphics/syncgen/CounterX_5  (
    .C(DIV_CLK_1_BUFG_4),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterX5 ),
    .Q(\graphics/syncgen/CounterX [5])
  );
  FDC   \graphics/syncgen/CounterX_4  (
    .C(DIV_CLK_1_BUFG_4),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterX4 ),
    .Q(\graphics/syncgen/CounterX [4])
  );
  FDC   \graphics/syncgen/CounterX_3  (
    .C(DIV_CLK_1_BUFG_4),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterX3 ),
    .Q(\graphics/syncgen/CounterX [3])
  );
  FDC   \graphics/syncgen/CounterX_2  (
    .C(DIV_CLK_1_BUFG_4),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterX2 ),
    .Q(\graphics/syncgen/CounterX [2])
  );
  FDC   \graphics/syncgen/CounterX_1  (
    .C(DIV_CLK_1_BUFG_4),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterX1 ),
    .Q(\graphics/syncgen/CounterX [1])
  );
  FDC   \graphics/syncgen/CounterX_0  (
    .C(DIV_CLK_1_BUFG_4),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterX ),
    .Q(\graphics/syncgen/CounterX [0])
  );
  XORCY   \graphics/syncgen/Mcount_CounterX_xor<9>  (
    .CI(\graphics/syncgen/Mcount_CounterX_cy [8]),
    .LI(\graphics/syncgen/Mcount_CounterX_lut [9]),
    .O(\graphics/syncgen/Mcount_CounterX9 )
  );
  XORCY   \graphics/syncgen/Mcount_CounterX_xor<8>  (
    .CI(\graphics/syncgen/Mcount_CounterX_cy [7]),
    .LI(\graphics/syncgen/Mcount_CounterX_lut [8]),
    .O(\graphics/syncgen/Mcount_CounterX8 )
  );
  MUXCY   \graphics/syncgen/Mcount_CounterX_cy<8>  (
    .CI(\graphics/syncgen/Mcount_CounterX_cy [7]),
    .DI(Ca_OBUF_288),
    .S(\graphics/syncgen/Mcount_CounterX_lut [8]),
    .O(\graphics/syncgen/Mcount_CounterX_cy [8])
  );
  XORCY   \graphics/syncgen/Mcount_CounterX_xor<7>  (
    .CI(\graphics/syncgen/Mcount_CounterX_cy [6]),
    .LI(\graphics/syncgen/Mcount_CounterX_lut [7]),
    .O(\graphics/syncgen/Mcount_CounterX7 )
  );
  MUXCY   \graphics/syncgen/Mcount_CounterX_cy<7>  (
    .CI(\graphics/syncgen/Mcount_CounterX_cy [6]),
    .DI(Ca_OBUF_288),
    .S(\graphics/syncgen/Mcount_CounterX_lut [7]),
    .O(\graphics/syncgen/Mcount_CounterX_cy [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \graphics/syncgen/Mcount_CounterX_lut<7>  (
    .I0(\graphics/syncgen/CounterX[9]_PWR_12_o_equal_1_o ),
    .I1(\graphics/syncgen/CounterX [7]),
    .I2(Ca_OBUF_288),
    .O(\graphics/syncgen/Mcount_CounterX_lut [7])
  );
  XORCY   \graphics/syncgen/Mcount_CounterX_xor<6>  (
    .CI(\graphics/syncgen/Mcount_CounterX_cy [5]),
    .LI(\graphics/syncgen/Mcount_CounterX_lut [6]),
    .O(\graphics/syncgen/Mcount_CounterX6 )
  );
  MUXCY   \graphics/syncgen/Mcount_CounterX_cy<6>  (
    .CI(\graphics/syncgen/Mcount_CounterX_cy [5]),
    .DI(Ca_OBUF_288),
    .S(\graphics/syncgen/Mcount_CounterX_lut [6]),
    .O(\graphics/syncgen/Mcount_CounterX_cy [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \graphics/syncgen/Mcount_CounterX_lut<6>  (
    .I0(\graphics/syncgen/CounterX[9]_PWR_12_o_equal_1_o ),
    .I1(\graphics/syncgen/CounterX [6]),
    .I2(Ca_OBUF_288),
    .O(\graphics/syncgen/Mcount_CounterX_lut [6])
  );
  XORCY   \graphics/syncgen/Mcount_CounterX_xor<5>  (
    .CI(\graphics/syncgen/Mcount_CounterX_cy [4]),
    .LI(\graphics/syncgen/Mcount_CounterX_lut [5]),
    .O(\graphics/syncgen/Mcount_CounterX5 )
  );
  MUXCY   \graphics/syncgen/Mcount_CounterX_cy<5>  (
    .CI(\graphics/syncgen/Mcount_CounterX_cy [4]),
    .DI(Ca_OBUF_288),
    .S(\graphics/syncgen/Mcount_CounterX_lut [5]),
    .O(\graphics/syncgen/Mcount_CounterX_cy [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \graphics/syncgen/Mcount_CounterX_lut<5>  (
    .I0(\graphics/syncgen/CounterX[9]_PWR_12_o_equal_1_o ),
    .I1(\graphics/syncgen/CounterX [5]),
    .I2(Ca_OBUF_288),
    .O(\graphics/syncgen/Mcount_CounterX_lut [5])
  );
  XORCY   \graphics/syncgen/Mcount_CounterX_xor<4>  (
    .CI(\graphics/syncgen/Mcount_CounterX_cy [3]),
    .LI(\graphics/syncgen/Mcount_CounterX_lut [4]),
    .O(\graphics/syncgen/Mcount_CounterX4 )
  );
  MUXCY   \graphics/syncgen/Mcount_CounterX_cy<4>  (
    .CI(\graphics/syncgen/Mcount_CounterX_cy [3]),
    .DI(Ca_OBUF_288),
    .S(\graphics/syncgen/Mcount_CounterX_lut [4]),
    .O(\graphics/syncgen/Mcount_CounterX_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \graphics/syncgen/Mcount_CounterX_lut<4>  (
    .I0(\graphics/syncgen/CounterX[9]_PWR_12_o_equal_1_o ),
    .I1(\graphics/syncgen/CounterX [4]),
    .I2(Ca_OBUF_288),
    .O(\graphics/syncgen/Mcount_CounterX_lut [4])
  );
  XORCY   \graphics/syncgen/Mcount_CounterX_xor<3>  (
    .CI(\graphics/syncgen/Mcount_CounterX_cy [2]),
    .LI(\graphics/syncgen/Mcount_CounterX_lut [3]),
    .O(\graphics/syncgen/Mcount_CounterX3 )
  );
  MUXCY   \graphics/syncgen/Mcount_CounterX_cy<3>  (
    .CI(\graphics/syncgen/Mcount_CounterX_cy [2]),
    .DI(Ca_OBUF_288),
    .S(\graphics/syncgen/Mcount_CounterX_lut [3]),
    .O(\graphics/syncgen/Mcount_CounterX_cy [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \graphics/syncgen/Mcount_CounterX_lut<3>  (
    .I0(\graphics/syncgen/CounterX[9]_PWR_12_o_equal_1_o ),
    .I1(\graphics/syncgen/CounterX [3]),
    .I2(Ca_OBUF_288),
    .O(\graphics/syncgen/Mcount_CounterX_lut [3])
  );
  XORCY   \graphics/syncgen/Mcount_CounterX_xor<2>  (
    .CI(\graphics/syncgen/Mcount_CounterX_cy [1]),
    .LI(\graphics/syncgen/Mcount_CounterX_lut [2]),
    .O(\graphics/syncgen/Mcount_CounterX2 )
  );
  MUXCY   \graphics/syncgen/Mcount_CounterX_cy<2>  (
    .CI(\graphics/syncgen/Mcount_CounterX_cy [1]),
    .DI(Ca_OBUF_288),
    .S(\graphics/syncgen/Mcount_CounterX_lut [2]),
    .O(\graphics/syncgen/Mcount_CounterX_cy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \graphics/syncgen/Mcount_CounterX_lut<2>  (
    .I0(\graphics/syncgen/CounterX[9]_PWR_12_o_equal_1_o ),
    .I1(\graphics/syncgen/CounterX [2]),
    .I2(Ca_OBUF_288),
    .O(\graphics/syncgen/Mcount_CounterX_lut [2])
  );
  XORCY   \graphics/syncgen/Mcount_CounterX_xor<1>  (
    .CI(\graphics/syncgen/Mcount_CounterX_cy [0]),
    .LI(\graphics/syncgen/Mcount_CounterX_lut [1]),
    .O(\graphics/syncgen/Mcount_CounterX1 )
  );
  MUXCY   \graphics/syncgen/Mcount_CounterX_cy<1>  (
    .CI(\graphics/syncgen/Mcount_CounterX_cy [0]),
    .DI(Ca_OBUF_288),
    .S(\graphics/syncgen/Mcount_CounterX_lut [1]),
    .O(\graphics/syncgen/Mcount_CounterX_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \graphics/syncgen/Mcount_CounterX_lut<1>  (
    .I0(\graphics/syncgen/CounterX[9]_PWR_12_o_equal_1_o ),
    .I1(\graphics/syncgen/CounterX [1]),
    .I2(Ca_OBUF_288),
    .O(\graphics/syncgen/Mcount_CounterX_lut [1])
  );
  XORCY   \graphics/syncgen/Mcount_CounterX_xor<0>  (
    .CI(\graphics/syncgen/CounterX[9]_PWR_12_o_equal_1_o_inv ),
    .LI(\graphics/syncgen/Mcount_CounterX_lut [0]),
    .O(\graphics/syncgen/Mcount_CounterX )
  );
  MUXCY   \graphics/syncgen/Mcount_CounterX_cy<0>  (
    .CI(\graphics/syncgen/CounterX[9]_PWR_12_o_equal_1_o_inv ),
    .DI(Ca_OBUF_288),
    .S(\graphics/syncgen/Mcount_CounterX_lut [0]),
    .O(\graphics/syncgen/Mcount_CounterX_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \graphics/syncgen/Mcount_CounterX_lut<0>  (
    .I0(\graphics/syncgen/CounterX[9]_PWR_12_o_equal_1_o ),
    .I1(\graphics/syncgen/CounterX [0]),
    .I2(Ca_OBUF_288),
    .O(\graphics/syncgen/Mcount_CounterX_lut [0])
  );
  XORCY   \graphics/syncgen/Mcount_CounterY_xor<9>  (
    .CI(\graphics/syncgen/Mcount_CounterY_cy [8]),
    .LI(\graphics/syncgen/Mcount_CounterY_lut[9] ),
    .O(\graphics/syncgen/Mcount_CounterY9 )
  );
  XORCY   \graphics/syncgen/Mcount_CounterY_xor<8>  (
    .CI(\graphics/syncgen/Mcount_CounterY_cy [7]),
    .LI(\graphics/syncgen/Mcount_CounterY_cy<8>_rt_445 ),
    .O(\graphics/syncgen/Mcount_CounterY8 )
  );
  MUXCY   \graphics/syncgen/Mcount_CounterY_cy<8>  (
    .CI(\graphics/syncgen/Mcount_CounterY_cy [7]),
    .DI(Ca_OBUF_288),
    .S(\graphics/syncgen/Mcount_CounterY_cy<8>_rt_445 ),
    .O(\graphics/syncgen/Mcount_CounterY_cy [8])
  );
  XORCY   \graphics/syncgen/Mcount_CounterY_xor<7>  (
    .CI(\graphics/syncgen/Mcount_CounterY_cy [6]),
    .LI(\graphics/syncgen/Mcount_CounterY_cy<7>_rt_446 ),
    .O(\graphics/syncgen/Mcount_CounterY7 )
  );
  MUXCY   \graphics/syncgen/Mcount_CounterY_cy<7>  (
    .CI(\graphics/syncgen/Mcount_CounterY_cy [6]),
    .DI(Ca_OBUF_288),
    .S(\graphics/syncgen/Mcount_CounterY_cy<7>_rt_446 ),
    .O(\graphics/syncgen/Mcount_CounterY_cy [7])
  );
  XORCY   \graphics/syncgen/Mcount_CounterY_xor<6>  (
    .CI(\graphics/syncgen/Mcount_CounterY_cy [5]),
    .LI(\graphics/syncgen/Mcount_CounterY_cy<6>_rt_447 ),
    .O(\graphics/syncgen/Mcount_CounterY6 )
  );
  MUXCY   \graphics/syncgen/Mcount_CounterY_cy<6>  (
    .CI(\graphics/syncgen/Mcount_CounterY_cy [5]),
    .DI(Ca_OBUF_288),
    .S(\graphics/syncgen/Mcount_CounterY_cy<6>_rt_447 ),
    .O(\graphics/syncgen/Mcount_CounterY_cy [6])
  );
  XORCY   \graphics/syncgen/Mcount_CounterY_xor<5>  (
    .CI(\graphics/syncgen/Mcount_CounterY_cy [4]),
    .LI(\graphics/syncgen/Mcount_CounterY_cy<5>_rt_448 ),
    .O(\graphics/syncgen/Mcount_CounterY5 )
  );
  MUXCY   \graphics/syncgen/Mcount_CounterY_cy<5>  (
    .CI(\graphics/syncgen/Mcount_CounterY_cy [4]),
    .DI(Ca_OBUF_288),
    .S(\graphics/syncgen/Mcount_CounterY_cy<5>_rt_448 ),
    .O(\graphics/syncgen/Mcount_CounterY_cy [5])
  );
  XORCY   \graphics/syncgen/Mcount_CounterY_xor<4>  (
    .CI(\graphics/syncgen/Mcount_CounterY_cy [3]),
    .LI(\graphics/syncgen/Mcount_CounterY_lut[4] ),
    .O(\graphics/syncgen/Mcount_CounterY4 )
  );
  MUXCY   \graphics/syncgen/Mcount_CounterY_cy<4>  (
    .CI(\graphics/syncgen/Mcount_CounterY_cy [3]),
    .DI(Ca_OBUF_288),
    .S(\graphics/syncgen/Mcount_CounterY_lut[4] ),
    .O(\graphics/syncgen/Mcount_CounterY_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \graphics/syncgen/Mcount_CounterY_lut<4>  (
    .I0(\graphics/syncgen/CounterY[9]_PWR_12_o_equal_5_o ),
    .I1(\graphics/syncgen/CounterY [4]),
    .I2(Ca_OBUF_288),
    .O(\graphics/syncgen/Mcount_CounterY_lut[4] )
  );
  XORCY   \graphics/syncgen/Mcount_CounterY_xor<3>  (
    .CI(\graphics/syncgen/Mcount_CounterY_cy [2]),
    .LI(\graphics/syncgen/Mcount_CounterY_lut[3] ),
    .O(\graphics/syncgen/Mcount_CounterY3 )
  );
  MUXCY   \graphics/syncgen/Mcount_CounterY_cy<3>  (
    .CI(\graphics/syncgen/Mcount_CounterY_cy [2]),
    .DI(Ca_OBUF_288),
    .S(\graphics/syncgen/Mcount_CounterY_lut[3] ),
    .O(\graphics/syncgen/Mcount_CounterY_cy [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \graphics/syncgen/Mcount_CounterY_lut<3>  (
    .I0(\graphics/syncgen/CounterY[9]_PWR_12_o_equal_5_o ),
    .I1(\graphics/syncgen/CounterY [3]),
    .I2(Ca_OBUF_288),
    .O(\graphics/syncgen/Mcount_CounterY_lut[3] )
  );
  XORCY   \graphics/syncgen/Mcount_CounterY_xor<2>  (
    .CI(\graphics/syncgen/Mcount_CounterY_cy [1]),
    .LI(\graphics/syncgen/Mcount_CounterY_lut[2] ),
    .O(\graphics/syncgen/Mcount_CounterY2 )
  );
  MUXCY   \graphics/syncgen/Mcount_CounterY_cy<2>  (
    .CI(\graphics/syncgen/Mcount_CounterY_cy [1]),
    .DI(Ca_OBUF_288),
    .S(\graphics/syncgen/Mcount_CounterY_lut[2] ),
    .O(\graphics/syncgen/Mcount_CounterY_cy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \graphics/syncgen/Mcount_CounterY_lut<2>  (
    .I0(\graphics/syncgen/CounterY[9]_PWR_12_o_equal_5_o ),
    .I1(\graphics/syncgen/CounterY [2]),
    .I2(Ca_OBUF_288),
    .O(\graphics/syncgen/Mcount_CounterY_lut[2] )
  );
  XORCY   \graphics/syncgen/Mcount_CounterY_xor<1>  (
    .CI(\graphics/syncgen/Mcount_CounterY_cy [0]),
    .LI(\graphics/syncgen/Mcount_CounterY_lut[1] ),
    .O(\graphics/syncgen/Mcount_CounterY1 )
  );
  MUXCY   \graphics/syncgen/Mcount_CounterY_cy<1>  (
    .CI(\graphics/syncgen/Mcount_CounterY_cy [0]),
    .DI(Ca_OBUF_288),
    .S(\graphics/syncgen/Mcount_CounterY_lut[1] ),
    .O(\graphics/syncgen/Mcount_CounterY_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \graphics/syncgen/Mcount_CounterY_lut<1>  (
    .I0(\graphics/syncgen/CounterY[9]_PWR_12_o_equal_5_o ),
    .I1(\graphics/syncgen/CounterY [1]),
    .I2(Ca_OBUF_288),
    .O(\graphics/syncgen/Mcount_CounterY_lut[1] )
  );
  XORCY   \graphics/syncgen/Mcount_CounterY_xor<0>  (
    .CI(\graphics/syncgen/CounterY[9]_PWR_12_o_equal_5_o_inv ),
    .LI(\graphics/syncgen/Mcount_CounterY_lut[0] ),
    .O(\graphics/syncgen/Mcount_CounterY )
  );
  MUXCY   \graphics/syncgen/Mcount_CounterY_cy<0>  (
    .CI(\graphics/syncgen/CounterY[9]_PWR_12_o_equal_5_o_inv ),
    .DI(Ca_OBUF_288),
    .S(\graphics/syncgen/Mcount_CounterY_lut[0] ),
    .O(\graphics/syncgen/Mcount_CounterY_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \graphics/syncgen/Mcount_CounterY_lut<0>  (
    .I0(\graphics/syncgen/CounterY[9]_PWR_12_o_equal_5_o ),
    .I1(\graphics/syncgen/CounterY [0]),
    .I2(Ca_OBUF_288),
    .O(\graphics/syncgen/Mcount_CounterY_lut[0] )
  );
  FDR   \graphics/syncgen/vga_HS  (
    .C(DIV_CLK_1_BUFG_4),
    .D(\graphics/syncgen/PWR_12_o_CounterX[9]_AND_15_o_norst ),
    .R(\graphics/syncgen/PWR_12_o_CounterX[9]_LessThan_12_o_inv ),
    .Q(\graphics/syncgen/vga_HS_355 )
  );
  FD   \graphics/syncgen/vga_VS  (
    .C(DIV_CLK_1_BUFG_4),
    .D(\graphics/syncgen/GND_18_o_GND_18_o_OR_49_o_351 ),
    .Q(\graphics/syncgen/vga_VS_354 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  An21 (
    .I0(DIV_CLK[18]),
    .I1(DIV_CLK[19]),
    .O(An2_OBUF_31)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  An31 (
    .I0(DIV_CLK[19]),
    .I1(DIV_CLK[18]),
    .O(An3_OBUF_32)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  An11 (
    .I0(DIV_CLK[19]),
    .I1(DIV_CLK[18]),
    .O(An1_OBUF_33)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  An01 (
    .I0(DIV_CLK[19]),
    .I1(DIV_CLK[18]),
    .O(An0_OBUF_34)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \Mmux_SSD<1>11  (
    .I0(DIV_CLK[18]),
    .I1(DIV_CLK[19]),
    .O(Cc_OBUF_35)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \engine/Mmux__n0478_rs_AS_inv2  (
    .I0(\engine/state_FSM_FFd2_115 ),
    .I1(\engine/border_bottom[9]_player_right_input[1]_AND_8_o ),
    .O(\engine/Mmux__n0478_rs_AS_inv )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \engine/Mmux__n0478_A11  (
    .I0(\engine/player_right_pos[0] ),
    .I1(\engine/state_FSM_FFd2_115 ),
    .O(\engine/Mmux__n0478_rs_A [0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \engine/Mmux__n0478_A21  (
    .I0(\engine/player_right_pos[1] ),
    .I1(\engine/state_FSM_FFd2_115 ),
    .O(\engine/Mmux__n0478_rs_A [1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \engine/Mmux__n0478_A31  (
    .I0(\engine/player_right_pos[2] ),
    .I1(\engine/state_FSM_FFd2_115 ),
    .O(\engine/Mmux__n0478_rs_A [2])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \engine/Mmux__n0478_A41  (
    .I0(\engine/player_right_pos[3] ),
    .I1(\engine/state_FSM_FFd2_115 ),
    .O(\engine/Mmux__n0478_rs_A [3])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \engine/Mmux__n0478_A51  (
    .I0(\engine/player_right_pos[4] ),
    .I1(\engine/state_FSM_FFd2_115 ),
    .O(\engine/Mmux__n0478_rs_A [4])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \engine/Mmux__n0478_A61  (
    .I0(\engine/player_right_pos[5] ),
    .I1(\engine/state_FSM_FFd2_115 ),
    .O(\engine/Mmux__n0478_rs_A [5])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \engine/Mmux__n0478_A71  (
    .I0(\engine/player_right_pos[6] ),
    .I1(\engine/state_FSM_FFd2_115 ),
    .O(\engine/Mmux__n0478_rs_A [6])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \engine/Mmux__n0478_A81  (
    .I0(\engine/player_right_pos[7] ),
    .I1(\engine/state_FSM_FFd2_115 ),
    .O(\engine/Mmux__n0478_rs_A [7])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \engine/Mmux__n0478_A91  (
    .I0(\engine/player_right_pos[9] ),
    .I1(\engine/state_FSM_FFd2_115 ),
    .O(\engine/Mmux__n0478_rs_A [8])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \engine/state_FSM_FFd1-In1  (
    .I0(\engine/state_FSM_FFd2_115 ),
    .I1(\engine/state_FSM_FFd1_8 ),
    .O(\engine/state_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h75 ))
  \engine/state_FSM_FFd2-In1  (
    .I0(\engine/state_FSM_FFd2_115 ),
    .I1(\graphics/syncgen/vga_VS_354 ),
    .I2(\engine/state_FSM_FFd1_8 ),
    .O(\engine/state_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h01111111 ))
  \graphics/Madd_paddle_left_pos[9]_paddle_height[9]_add_32_OUT_xor<6>111  (
    .I0(player_right_pos_q[4]),
    .I1(player_right_pos_q[5]),
    .I2(player_right_pos_q[1]),
    .I3(player_right_pos_q[2]),
    .I4(player_right_pos_q[3]),
    .O(\graphics/Madd_paddle_left_pos[9]_paddle_height[9]_add_32_OUT_xor<5>12 )
  );
  LUT4 #(
    .INIT ( 16'h9555 ))
  \graphics/Madd_paddle_left_pos[9]_paddle_height[9]_add_32_OUT_xor<4>11  (
    .I0(player_right_pos_q[4]),
    .I1(player_right_pos_q[2]),
    .I2(player_right_pos_q[3]),
    .I3(player_right_pos_q[1]),
    .O(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<4> )
  );
  LUT4 #(
    .INIT ( 16'hAA2A ))
  \graphics/Madd_paddle_left_pos[9]_paddle_height[9]_add_32_OUT_xor<9>11  (
    .I0(player_right_pos_q[8]),
    .I1(player_right_pos_q[6]),
    .I2(player_right_pos_q[7]),
    .I3(\graphics/Madd_paddle_left_pos[9]_paddle_height[9]_add_32_OUT_xor<5>12 ),
    .O(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<9> )
  );
  LUT4 #(
    .INIT ( 16'h9AAA ))
  \graphics/Madd_paddle_left_pos[9]_paddle_height[9]_add_32_OUT_xor<8>11  (
    .I0(player_right_pos_q[8]),
    .I1(\graphics/Madd_paddle_left_pos[9]_paddle_height[9]_add_32_OUT_xor<5>12 ),
    .I2(player_right_pos_q[7]),
    .I3(player_right_pos_q[6]),
    .O(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<8> )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \graphics/Madd_paddle_left_pos[9]_paddle_height[9]_add_32_OUT_xor<7>11  (
    .I0(player_right_pos_q[7]),
    .I1(\graphics/Madd_paddle_left_pos[9]_paddle_height[9]_add_32_OUT_xor<5>12 ),
    .I2(player_right_pos_q[6]),
    .O(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \graphics/Madd_paddle_left_pos[9]_paddle_height[9]_add_32_OUT_xor<3>11  (
    .I0(player_right_pos_q[3]),
    .I1(player_right_pos_q[1]),
    .I2(player_right_pos_q[2]),
    .O(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \graphics/R3411  (
    .I0(\graphics/syncgen/CounterX [0]),
    .I1(\graphics/syncgen/CounterX [2]),
    .I2(\graphics/syncgen/CounterX [1]),
    .O(\graphics/R341 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \graphics/Madd_paddle_left_pos[9]_paddle_height[9]_add_32_OUT_xor<2>11  (
    .I0(player_right_pos_q[2]),
    .I1(player_right_pos_q[1]),
    .O(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h11111115FFFFFFFF ))
  \graphics/syncgen/PWR_12_o_CounterX[9]_LessThan_12_o_inv1  (
    .I0(\graphics/syncgen/CounterX [8]),
    .I1(\graphics/syncgen/CounterX [7]),
    .I2(\graphics/syncgen/CounterX [6]),
    .I3(\graphics/syncgen/CounterX [4]),
    .I4(\graphics/syncgen/CounterX [5]),
    .I5(\graphics/syncgen/CounterX [9]),
    .O(\graphics/syncgen/PWR_12_o_CounterX[9]_LessThan_12_o_inv )
  );
  LUT6 #(
    .INIT ( 64'h15555555FFFFFFFF ))
  \graphics/syncgen/PWR_12_o_CounterX[9]_AND_15_o_norst1  (
    .I0(\graphics/syncgen/CounterX [8]),
    .I1(\graphics/syncgen/CounterX [7]),
    .I2(\graphics/syncgen/CounterX [4]),
    .I3(\graphics/syncgen/CounterX [5]),
    .I4(\graphics/syncgen/CounterX [6]),
    .I5(\graphics/syncgen/CounterX [9]),
    .O(\graphics/syncgen/PWR_12_o_CounterX[9]_AND_15_o_norst )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \graphics/syncgen/_n0047_inv1  (
    .I0(\graphics/syncgen/CounterX[9]_PWR_12_o_equal_1_o ),
    .I1(\graphics/syncgen/CounterY[9]_PWR_12_o_equal_5_o ),
    .O(\graphics/syncgen/_n0047_inv )
  );
  LUT6 #(
    .INIT ( 64'hFF5EFF55FF85EAA8 ))
  \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0009_INV_1277_o11  (
    .I0(\graphics/syncgen/CounterY [4]),
    .I1(\graphics/syncgen/CounterY [2]),
    .I2(\graphics/syncgen/CounterY_3_1_460 ),
    .I3(\graphics/CounterY[9]_PWR_11_o_mod_23/a[7]_a[9]_MUX_1361_o ),
    .I4(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o11 ),
    .I5(\graphics/CounterY[9]_PWR_11_o_mod_23/Madd_a[9]_GND_19_o_add_13_OUT_lut<6> ),
    .O(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0009_INV_1277_o )
  );
  LUT5 #(
    .INIT ( 32'hC61831C6 ))
  \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o111  (
    .I0(\graphics/syncgen/CounterY_8_2_455 ),
    .I1(\graphics/syncgen/CounterY_5_1_449 ),
    .I2(\graphics/syncgen/CounterY_6_1_451 ),
    .I3(\graphics/syncgen/CounterY_9_1_452 ),
    .I4(\graphics/syncgen/CounterY_7_1_453 ),
    .O(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o11 )
  );
  LUT5 #(
    .INIT ( 32'h04208148 ))
  \graphics/CounterY[9]_PWR_11_o_mod_23/Mmux_a[7]_a[9]_MUX_1361_o11  (
    .I0(\graphics/syncgen/CounterY_5_2_454 ),
    .I1(\graphics/syncgen/CounterY_8_1_450 ),
    .I2(\graphics/syncgen/CounterY_9_1_452 ),
    .I3(\graphics/syncgen/CounterY_7_1_453 ),
    .I4(\graphics/syncgen/CounterY_6_1_451 ),
    .O(\graphics/CounterY[9]_PWR_11_o_mod_23/a[7]_a[9]_MUX_1361_o )
  );
  LUT5 #(
    .INIT ( 32'h32934C24 ))
  \graphics/CounterY[9]_PWR_11_o_mod_23/Mmux_a[6]_a[9]_MUX_1362_o11  (
    .I0(\graphics/syncgen/CounterY_5_1_449 ),
    .I1(\graphics/syncgen/CounterY_8_1_450 ),
    .I2(\graphics/syncgen/CounterY_9_1_452 ),
    .I3(\graphics/syncgen/CounterY_7_1_453 ),
    .I4(\graphics/syncgen/CounterY_6_1_451 ),
    .O(\graphics/CounterY[9]_PWR_11_o_mod_23/Madd_a[9]_GND_19_o_add_13_OUT_lut<6> )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \engine/border_bottom[9]_player_right_input[1]_AND_8_o31_SW0  (
    .I0(\engine/player_right_pos[6] ),
    .I1(\engine/player_right_pos[7] ),
    .I2(\engine/player_right_pos[9] ),
    .O(N9)
  );
  LUT6 #(
    .INIT ( 64'h000000005557FFFF ))
  \engine/border_bottom[9]_player_right_input[1]_AND_8_o31  (
    .I0(\engine/player_right_pos[5] ),
    .I1(\engine/player_right_pos[2] ),
    .I2(\engine/player_right_pos[3] ),
    .I3(\engine/player_right_pos[1] ),
    .I4(\engine/player_right_pos[4] ),
    .I5(N9),
    .O(\engine/border_bottom[9]_player_right_input[1]_AND_8_o31_94 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \engine/border_bottom[9]_player_right_input[1]_AND_8_o2  (
    .I0(\engine/player_right_pos[9] ),
    .O(\engine/border_bottom[9]_player_right_input[1]_AND_8_o2_366 )
  );
  LUT5 #(
    .INIT ( 32'hC0C0C080 ))
  \graphics/R421  (
    .I0(\graphics/syncgen/CounterY_3_1_460 ),
    .I1(\graphics/syncgen/CounterY [5]),
    .I2(\graphics/syncgen/CounterY [4]),
    .I3(\graphics/syncgen/CounterY [1]),
    .I4(\graphics/syncgen/CounterY [2]),
    .O(\graphics/R421_367 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010003 ))
  \graphics/R422  (
    .I0(\graphics/syncgen/CounterY [0]),
    .I1(\graphics/syncgen/CounterY [3]),
    .I2(\graphics/syncgen/CounterY [5]),
    .I3(\graphics/syncgen/CounterY [4]),
    .I4(\graphics/syncgen/CounterY [1]),
    .I5(\graphics/syncgen/CounterY [2]),
    .O(\graphics/R422_368 )
  );
  LUT6 #(
    .INIT ( 64'h0F0F0F0E070F070E ))
  \graphics/R423  (
    .I0(\graphics/syncgen/CounterY [7]),
    .I1(\graphics/syncgen/CounterY [6]),
    .I2(\graphics/syncgen/CounterY [9]),
    .I3(\graphics/syncgen/CounterY [8]),
    .I4(\graphics/R421_367 ),
    .I5(\graphics/R422_368 ),
    .O(\graphics/R42 )
  );
  LUT5 #(
    .INIT ( 32'h88888880 ))
  \graphics/R1  (
    .I0(\graphics/syncgen/CounterX [5]),
    .I1(\graphics/syncgen/CounterX [4]),
    .I2(\graphics/syncgen/CounterX [1]),
    .I3(\graphics/syncgen/CounterX [2]),
    .I4(\graphics/syncgen/CounterX [3]),
    .O(\graphics/R )
  );
  LUT6 #(
    .INIT ( 64'h7777444437770444 ))
  \graphics/R2  (
    .I0(\graphics/syncgen/CounterX [5]),
    .I1(\graphics/syncgen/CounterX [6]),
    .I2(\graphics/syncgen/CounterX [3]),
    .I3(\graphics/syncgen/CounterX [4]),
    .I4(\graphics/syncgen/CounterX [9]),
    .I5(\graphics/R341 ),
    .O(\graphics/R1_370 )
  );
  LUT6 #(
    .INIT ( 64'h555F555F55555554 ))
  \graphics/R3  (
    .I0(\graphics/syncgen/CounterX [9]),
    .I1(\graphics/R ),
    .I2(\graphics/syncgen/CounterX [8]),
    .I3(\graphics/syncgen/CounterX [7]),
    .I4(\graphics/syncgen/CounterX [6]),
    .I5(\graphics/R1_370 ),
    .O(\graphics/R2_371 )
  );
  LUT6 #(
    .INIT ( 64'h0200000000000080 ))
  \graphics/R4  (
    .I0(\graphics/syncgen/CounterY [1]),
    .I1(\graphics/syncgen/CounterY [5]),
    .I2(\graphics/syncgen/CounterY [4]),
    .I3(\graphics/syncgen/CounterY [6]),
    .I4(\graphics/syncgen/CounterY [7]),
    .I5(\graphics/syncgen/CounterY [8]),
    .O(\graphics/R3_372 )
  );
  LUT5 #(
    .INIT ( 32'h00010000 ))
  \graphics/R5  (
    .I0(\graphics/syncgen/CounterY [0]),
    .I1(\graphics/syncgen/CounterY [2]),
    .I2(\graphics/syncgen/CounterY [9]),
    .I3(\graphics/syncgen/CounterY [3]),
    .I4(\graphics/R3_372 ),
    .O(\graphics/R4_373 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \graphics/R6  (
    .I0(\graphics/ball_pos_x[9]_CounterX[9]_LessThan_26_o ),
    .I1(\graphics/CounterX[9]_ball_pos_x[9]_LessThan_28_o ),
    .I2(\graphics/ball_pos_y[9]_CounterY[9]_LessThan_29_o ),
    .I3(\graphics/CounterY[9]_ball_pos_y[9]_LessThan_31_o ),
    .I4(\graphics/R4_373 ),
    .I5(\graphics/R2_371 ),
    .O(\graphics/R5_374 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \graphics/R7  (
    .I0(\graphics/syncgen/CounterX [8]),
    .I1(\graphics/syncgen/CounterX [6]),
    .I2(\graphics/syncgen/CounterX [4]),
    .I3(\graphics/syncgen/CounterX [5]),
    .O(\graphics/R6_375 )
  );
  LUT5 #(
    .INIT ( 32'h00000002 ))
  \graphics/R8  (
    .I0(\graphics/syncgen/CounterX [1]),
    .I1(\graphics/syncgen/CounterX [9]),
    .I2(\graphics/syncgen/CounterX [3]),
    .I3(\graphics/syncgen/CounterX [2]),
    .I4(\graphics/syncgen/CounterX [0]),
    .O(\graphics/R7_376 )
  );
  LUT6 #(
    .INIT ( 64'h5444444450000000 ))
  \graphics/R13  (
    .I0(\graphics/syncgen/CounterX [8]),
    .I1(\graphics/R11_379 ),
    .I2(\graphics/R10_378 ),
    .I3(\graphics/CounterY[9]_paddle_left_pos[9]_LessThan_34_o ),
    .I4(\graphics/paddle_left_pos[9]_CounterY[9]_LessThan_32_o ),
    .I5(\graphics/R42 ),
    .O(\graphics/R12_380 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \graphics/R14  (
    .I0(\graphics/syncgen/CounterX [3]),
    .I1(\graphics/syncgen/CounterX [4]),
    .O(\graphics/R13_381 )
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \graphics/syncgen/GND_18_o_GND_18_o_OR_49_o_SW0  (
    .I0(\graphics/syncgen/CounterY [3]),
    .I1(\graphics/syncgen/CounterY [2]),
    .I2(\graphics/syncgen/CounterY [1]),
    .I3(\graphics/syncgen/CounterY [4]),
    .O(N13)
  );
  LUT6 #(
    .INIT ( 64'h0000000020000000 ))
  \graphics/syncgen/GND_18_o_GND_18_o_OR_49_o  (
    .I0(\graphics/syncgen/CounterY [7]),
    .I1(\graphics/syncgen/CounterY [9]),
    .I2(\graphics/syncgen/CounterY [5]),
    .I3(\graphics/syncgen/CounterY [6]),
    .I4(\graphics/syncgen/CounterY [8]),
    .I5(N13),
    .O(\graphics/syncgen/GND_18_o_GND_18_o_OR_49_o_351 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFF7 ))
  \graphics/syncgen/CounterY[9]_PWR_12_o_equal_5_o<9>_SW0  (
    .I0(\graphics/syncgen/CounterY [0]),
    .I1(\graphics/syncgen/CounterY [3]),
    .I2(\graphics/syncgen/CounterY [4]),
    .I3(\graphics/syncgen/CounterY [1]),
    .I4(\graphics/syncgen/CounterY [2]),
    .O(N15)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000004 ))
  \graphics/syncgen/CounterY[9]_PWR_12_o_equal_5_o<9>  (
    .I0(\graphics/syncgen/CounterY [7]),
    .I1(\graphics/syncgen/CounterY [9]),
    .I2(\graphics/syncgen/CounterY [5]),
    .I3(\graphics/syncgen/CounterY [6]),
    .I4(\graphics/syncgen/CounterY [8]),
    .I5(N15),
    .O(\graphics/syncgen/CounterY[9]_PWR_12_o_equal_5_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFEF ))
  \graphics/syncgen/CounterX[9]_PWR_12_o_equal_1_o<9>_SW0  (
    .I0(\graphics/syncgen/CounterX [7]),
    .I1(\graphics/syncgen/CounterX [6]),
    .I2(\graphics/syncgen/CounterX [5]),
    .I3(\graphics/syncgen/CounterX [3]),
    .I4(\graphics/syncgen/CounterX [4]),
    .O(N17)
  );
  LUT6 #(
    .INIT ( 64'h0000000000100000 ))
  \graphics/syncgen/CounterX[9]_PWR_12_o_equal_1_o<9>  (
    .I0(\graphics/syncgen/CounterX [1]),
    .I1(\graphics/syncgen/CounterX [0]),
    .I2(\graphics/syncgen/CounterX [8]),
    .I3(\graphics/syncgen/CounterX [2]),
    .I4(\graphics/syncgen/CounterX [9]),
    .I5(N17),
    .O(\graphics/syncgen/CounterX[9]_PWR_12_o_equal_1_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFF38FFFFFF0E0E ))
  \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0010_INV_1288_o1  (
    .I0(\graphics/syncgen/CounterY [1]),
    .I1(\graphics/syncgen/CounterY [2]),
    .I2(N19),
    .I3(\graphics/CounterY[9]_PWR_11_o_mod_23/Madd_a[9]_GND_19_o_add_17_OUT_lut<4> ),
    .I4(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o17_356 ),
    .I5(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0009_INV_1277_o ),
    .O(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0010_INV_1288_o )
  );
  LUT6 #(
    .INIT ( 64'h1A2555AA1A250102 ))
  \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o13  (
    .I0(\graphics/syncgen/CounterY [3]),
    .I1(\graphics/syncgen/CounterY [1]),
    .I2(\graphics/syncgen/CounterY [2]),
    .I3(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0008_INV_1266_o ),
    .I4(\graphics/CounterY[9]_PWR_11_o_mod_23/Madd_a[9]_GND_19_o_add_17_OUT_lut<4> ),
    .I5(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0009_INV_1277_o ),
    .O(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o13_388 )
  );
  IBUF   btnU_IBUF (
    .I(btnU),
    .O(btnU_IBUF_1)
  );
  IBUF   btnD_IBUF (
    .I(btnD),
    .O(btnD_IBUF_2)
  );
  IBUF   Sw0_IBUF (
    .I(Sw0),
    .O(Sw0_IBUF_3)
  );
  OBUF   St_ce_bar_OBUF (
    .I(St_ce_bar_OBUF_119),
    .O(St_ce_bar)
  );
  OBUF   St_rp_bar_OBUF (
    .I(St_ce_bar_OBUF_119),
    .O(St_rp_bar)
  );
  OBUF   Mt_ce_bar_OBUF (
    .I(St_ce_bar_OBUF_119),
    .O(Mt_ce_bar)
  );
  OBUF   Mt_St_oe_bar_OBUF (
    .I(St_ce_bar_OBUF_119),
    .O(Mt_St_oe_bar)
  );
  OBUF   Mt_St_we_bar_OBUF (
    .I(St_ce_bar_OBUF_119),
    .O(Mt_St_we_bar)
  );
  OBUF   vga_h_sync_OBUF (
    .I(vga_h_sync_OBUF_19),
    .O(vga_h_sync)
  );
  OBUF   vga_v_sync_OBUF (
    .I(vga_v_sync_OBUF_20),
    .O(vga_v_sync)
  );
  OBUF   vga_r_OBUF (
    .I(vga_b_OBUF_30),
    .O(vga_r)
  );
  OBUF   vga_g_OBUF (
    .I(vga_b_OBUF_30),
    .O(vga_g)
  );
  OBUF   vga_b_OBUF (
    .I(vga_b_OBUF_30),
    .O(vga_b)
  );
  OBUF   An0_OBUF (
    .I(An0_OBUF_34),
    .O(An0)
  );
  OBUF   An1_OBUF (
    .I(An1_OBUF_33),
    .O(An1)
  );
  OBUF   An2_OBUF (
    .I(An2_OBUF_31),
    .O(An2)
  );
  OBUF   An3_OBUF (
    .I(An3_OBUF_32),
    .O(An3)
  );
  OBUF   Ca_OBUF (
    .I(Ca_OBUF_288),
    .O(Ca)
  );
  OBUF   Cb_OBUF (
    .I(Ca_OBUF_288),
    .O(Cb)
  );
  OBUF   Cc_OBUF (
    .I(Cc_OBUF_35),
    .O(Cc)
  );
  OBUF   Cd_OBUF (
    .I(Ca_OBUF_288),
    .O(Cd)
  );
  OBUF   Ce_OBUF (
    .I(Ca_OBUF_288),
    .O(Ce)
  );
  OBUF   Cf_OBUF (
    .I(Cc_OBUF_35),
    .O(Cf)
  );
  OBUF   Cg_OBUF (
    .I(Cg_OBUF_36),
    .O(Cg)
  );
  OBUF   Dp_OBUF (
    .I(St_ce_bar_OBUF_119),
    .O(Dp)
  );
  LUT3 #(
    .INIT ( 8'h81 ))
  \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<4>1  (
    .I0(player_left_pos_q[4]),
    .I1(\graphics/syncgen/CounterY [9]),
    .I2(\graphics/syncgen/CounterY [8]),
    .O(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<4> )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lutdi41  (
    .I0(player_left_pos_q[4]),
    .I1(\graphics/syncgen/CounterY [9]),
    .I2(\graphics/syncgen/CounterY [8]),
    .O(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lutdi4 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<1>1  (
    .I0(\graphics/syncgen/CounterY [3]),
    .I1(\graphics/syncgen/CounterY [2]),
    .O(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<1> )
  );
  LUT3 #(
    .INIT ( 8'h81 ))
  \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<4>1  (
    .I0(\graphics/syncgen/CounterY [8]),
    .I1(player_left_pos_q[4]),
    .I2(\graphics/syncgen/CounterY [9]),
    .O(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lut<4> )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi41  (
    .I0(player_left_pos_q[4]),
    .I1(\graphics/syncgen/CounterY [8]),
    .I2(\graphics/syncgen/CounterY [9]),
    .O(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi4 )
  );
  LUT3 #(
    .INIT ( 8'h81 ))
  \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<4>1  (
    .I0(\graphics/syncgen/CounterX [8]),
    .I1(player_left_pos_q[4]),
    .I2(\graphics/syncgen/CounterX [9]),
    .O(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lut<4> )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi41  (
    .I0(player_left_pos_q[4]),
    .I1(\graphics/syncgen/CounterX [8]),
    .I2(\graphics/syncgen/CounterX [9]),
    .O(\graphics/Mcompar_CounterX[9]_ball_pos_x[9]_LessThan_28_o_lutdi4 )
  );
  LUT3 #(
    .INIT ( 8'h81 ))
  \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<4>1  (
    .I0(player_right_pos_q[8]),
    .I1(\graphics/syncgen/CounterY [9]),
    .I2(\graphics/syncgen/CounterY [8]),
    .O(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lut<4> )
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi41  (
    .I0(player_right_pos_q[8]),
    .I1(\graphics/syncgen/CounterY [8]),
    .I2(\graphics/syncgen/CounterY [9]),
    .O(\graphics/Mcompar_paddle_left_pos[9]_CounterY[9]_LessThan_32_o_lutdi4 )
  );
  LUT3 #(
    .INIT ( 8'h81 ))
  \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<4>1  (
    .I0(player_left_pos_q[4]),
    .I1(\graphics/syncgen/CounterY [9]),
    .I2(\graphics/syncgen/CounterY [8]),
    .O(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<4> )
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi41  (
    .I0(player_left_pos_q[4]),
    .I1(\graphics/syncgen/CounterY [9]),
    .I2(\graphics/syncgen/CounterY [8]),
    .O(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi4 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<1>1  (
    .I0(\graphics/syncgen/CounterY [3]),
    .I1(\graphics/syncgen/CounterY [2]),
    .O(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<1> )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi11  (
    .I0(\graphics/syncgen/CounterY [3]),
    .I1(\graphics/syncgen/CounterY [2]),
    .O(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi1_221 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<0>1  (
    .I0(\graphics/syncgen/CounterY [0]),
    .I1(\graphics/syncgen/CounterY [1]),
    .O(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lut<0> )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi1  (
    .I0(\graphics/syncgen/CounterY [0]),
    .I1(\graphics/syncgen/CounterY [1]),
    .O(\graphics/Mcompar_paddle_right_pos[9]_CounterY[9]_LessThan_40_o_lutdi )
  );
  LUT3 #(
    .INIT ( 8'h81 ))
  \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<4>1  (
    .I0(player_left_pos_q[4]),
    .I1(\graphics/syncgen/CounterY [8]),
    .I2(\graphics/syncgen/CounterY [9]),
    .O(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<4> )
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi41  (
    .I0(player_left_pos_q[4]),
    .I1(\graphics/syncgen/CounterY [8]),
    .I2(\graphics/syncgen/CounterY [9]),
    .O(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi4_226 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<0>1  (
    .I0(\graphics/syncgen/CounterY [0]),
    .I1(\graphics/syncgen/CounterY [1]),
    .O(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lut<0> )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi4  (
    .I0(\graphics/syncgen/CounterY [1]),
    .I1(\graphics/syncgen/CounterY [0]),
    .O(\graphics/Mcompar_ball_pos_y[9]_CounterY[9]_LessThan_29_o_lutdi )
  );
  LUT3 #(
    .INIT ( 8'h81 ))
  \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<4>1  (
    .I0(player_left_pos_q[4]),
    .I1(\graphics/syncgen/CounterX [8]),
    .I2(\graphics/syncgen/CounterX [9]),
    .O(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lut<4> )
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi41  (
    .I0(player_left_pos_q[4]),
    .I1(\graphics/syncgen/CounterX [8]),
    .I2(\graphics/syncgen/CounterX [9]),
    .O(\graphics/Mcompar_ball_pos_x[9]_CounterX[9]_LessThan_26_o_lutdi4 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<1>_rt  (
    .I0(DIV_CLK[1]),
    .O(\Mcount_DIV_CLK_cy<1>_rt_415 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<2>_rt  (
    .I0(DIV_CLK[2]),
    .O(\Mcount_DIV_CLK_cy<2>_rt_416 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<3>_rt  (
    .I0(DIV_CLK[3]),
    .O(\Mcount_DIV_CLK_cy<3>_rt_417 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<4>_rt  (
    .I0(DIV_CLK[4]),
    .O(\Mcount_DIV_CLK_cy<4>_rt_418 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<5>_rt  (
    .I0(DIV_CLK[5]),
    .O(\Mcount_DIV_CLK_cy<5>_rt_419 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<6>_rt  (
    .I0(DIV_CLK[6]),
    .O(\Mcount_DIV_CLK_cy<6>_rt_420 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<7>_rt  (
    .I0(DIV_CLK[7]),
    .O(\Mcount_DIV_CLK_cy<7>_rt_421 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<8>_rt  (
    .I0(DIV_CLK[8]),
    .O(\Mcount_DIV_CLK_cy<8>_rt_422 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<9>_rt  (
    .I0(DIV_CLK[9]),
    .O(\Mcount_DIV_CLK_cy<9>_rt_423 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<10>_rt  (
    .I0(DIV_CLK[10]),
    .O(\Mcount_DIV_CLK_cy<10>_rt_424 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<11>_rt  (
    .I0(DIV_CLK[11]),
    .O(\Mcount_DIV_CLK_cy<11>_rt_425 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<12>_rt  (
    .I0(DIV_CLK[12]),
    .O(\Mcount_DIV_CLK_cy<12>_rt_426 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<13>_rt  (
    .I0(DIV_CLK[13]),
    .O(\Mcount_DIV_CLK_cy<13>_rt_427 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<14>_rt  (
    .I0(DIV_CLK[14]),
    .O(\Mcount_DIV_CLK_cy<14>_rt_428 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<15>_rt  (
    .I0(DIV_CLK[15]),
    .O(\Mcount_DIV_CLK_cy<15>_rt_429 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<16>_rt  (
    .I0(DIV_CLK[16]),
    .O(\Mcount_DIV_CLK_cy<16>_rt_430 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<17>_rt  (
    .I0(DIV_CLK[17]),
    .O(\Mcount_DIV_CLK_cy<17>_rt_431 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<18>_rt  (
    .I0(DIV_CLK[18]),
    .O(\Mcount_DIV_CLK_cy<18>_rt_432 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_xor<19>_rt  (
    .I0(DIV_CLK[19]),
    .O(\Mcount_DIV_CLK_xor<19>_rt_433 )
  );
  LUT5 #(
    .INIT ( 32'hFBDF7DE7 ))
  \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o17_SW1  (
    .I0(\graphics/syncgen/CounterY_8_1_450 ),
    .I1(\graphics/syncgen/CounterY_5_1_449 ),
    .I2(\graphics/syncgen/CounterY_7_1_453 ),
    .I3(\graphics/syncgen/CounterY_9_1_452 ),
    .I4(\graphics/syncgen/CounterY_6_1_451 ),
    .O(N23)
  );
  LUT6 #(
    .INIT ( 64'h01FF08EC00FF0402 ))
  \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o17  (
    .I0(\graphics/syncgen/CounterY [3]),
    .I1(\graphics/syncgen/CounterY [4]),
    .I2(\graphics/syncgen/CounterY [2]),
    .I3(N23),
    .I4(\graphics/CounterY[9]_PWR_11_o_mod_23/Madd_a[9]_GND_19_o_add_13_OUT_lut<6> ),
    .I5(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o11 ),
    .O(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o17_356 )
  );
  LUT6 #(
    .INIT ( 64'hBFFFFBFFEFFFFEFF ))
  \graphics/R20_SW0  (
    .I0(\graphics/syncgen/CounterY [0]),
    .I1(\graphics/syncgen/CounterY [1]),
    .I2(\graphics/syncgen/CounterY [2]),
    .I3(\graphics/R17 ),
    .I4(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0009_INV_1277_o ),
    .I5(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0010_INV_1288_o ),
    .O(N25)
  );
  LUT6 #(
    .INIT ( 64'hF7FF7FFFFDFFDFFF ))
  \graphics/R20_SW1  (
    .I0(\graphics/syncgen/CounterY [0]),
    .I1(\graphics/syncgen/CounterY [1]),
    .I2(\graphics/syncgen/CounterY [2]),
    .I3(\graphics/R17 ),
    .I4(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0009_INV_1277_o ),
    .I5(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0010_INV_1288_o ),
    .O(N26)
  );
  LUT5 #(
    .INIT ( 32'h0EFEE0E0 ))
  \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o14_SW0  (
    .I0(\graphics/syncgen/CounterY [0]),
    .I1(\graphics/syncgen/CounterY [1]),
    .I2(\graphics/syncgen/CounterY [2]),
    .I3(\graphics/CounterY[9]_PWR_11_o_mod_23/Madd_a[9]_GND_19_o_add_17_OUT_lut<4> ),
    .I4(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0009_INV_1277_o ),
    .O(N28)
  );
  LUT5 #(
    .INIT ( 32'h08F88080 ))
  \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o14_SW1  (
    .I0(\graphics/syncgen/CounterY [0]),
    .I1(\graphics/syncgen/CounterY [1]),
    .I2(\graphics/syncgen/CounterY [2]),
    .I3(\graphics/CounterY[9]_PWR_11_o_mod_23/Madd_a[9]_GND_19_o_add_17_OUT_lut<4> ),
    .I4(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0009_INV_1277_o ),
    .O(N29)
  );
  LUT5 #(
    .INIT ( 32'hFFEEFEFE ))
  \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o14  (
    .I0(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o17_356 ),
    .I1(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o13_388 ),
    .I2(N28),
    .I3(N29),
    .I4(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0010_INV_1288_o ),
    .O(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \graphics/R431_SW0  (
    .I0(\graphics/syncgen/CounterX [8]),
    .I1(\graphics/syncgen/CounterX [9]),
    .O(N31)
  );
  LUT6 #(
    .INIT ( 64'h0037000000000000 ))
  \graphics/R15  (
    .I0(\graphics/syncgen/CounterX [0]),
    .I1(\graphics/syncgen/CounterX [2]),
    .I2(\graphics/syncgen/CounterX [1]),
    .I3(N31),
    .I4(\graphics/CounterY[9]_paddle_right_pos[9]_LessThan_42_o ),
    .I5(\graphics/paddle_right_pos[9]_CounterY[9]_LessThan_40_o ),
    .O(\graphics/R14_382 )
  );
  LUT3 #(
    .INIT ( 8'h42 ))
  \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<2>1  (
    .I0(player_left_pos_q[4]),
    .I1(\graphics/syncgen/CounterY [5]),
    .I2(\graphics/syncgen/CounterY [4]),
    .O(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lut<2> )
  );
  LUT3 #(
    .INIT ( 8'h15 ))
  \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lutdi21  (
    .I0(player_left_pos_q[4]),
    .I1(\graphics/syncgen/CounterY [5]),
    .I2(\graphics/syncgen/CounterY [4]),
    .O(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lutdi2 )
  );
  LUT6 #(
    .INIT ( 64'hF8F8FAFAF8FAF8FA ))
  \graphics/R21_SW0  (
    .I0(\graphics/R13_381 ),
    .I1(\graphics/R14_382 ),
    .I2(\graphics/R12_380 ),
    .I3(N25),
    .I4(N26),
    .I5(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0011_INV_1299_o ),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'hFFFF5510FFFF5500 ))
  \graphics/R21  (
    .I0(\graphics/syncgen/CounterX [7]),
    .I1(\graphics/syncgen/CounterX [5]),
    .I2(\graphics/syncgen/CounterX [6]),
    .I3(\graphics/R9 ),
    .I4(\graphics/R5_374 ),
    .I5(N36),
    .O(R)
  );
  LUT6 #(
    .INIT ( 64'hAAAA800080008000 ))
  \graphics/R10  (
    .I0(\graphics/R6_375 ),
    .I1(\graphics/paddle_right_pos[9]_CounterY[9]_LessThan_40_o ),
    .I2(\graphics/CounterY[9]_paddle_right_pos[9]_LessThan_42_o ),
    .I3(N38),
    .I4(\graphics/R7_376 ),
    .I5(\graphics/R42 ),
    .O(\graphics/R9 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFD7FF ))
  \graphics/R423_SW0  (
    .I0(\graphics/syncgen/CounterX [8]),
    .I1(\graphics/syncgen/CounterX [0]),
    .I2(\graphics/syncgen/CounterX [1]),
    .I3(\graphics/syncgen/CounterX [2]),
    .I4(\graphics/syncgen/CounterX [9]),
    .I5(\graphics/syncgen/CounterY [9]),
    .O(N40)
  );
  LUT6 #(
    .INIT ( 64'h00FF00FE007F007E ))
  \graphics/R18  (
    .I0(\graphics/syncgen/CounterY [7]),
    .I1(\graphics/syncgen/CounterY [6]),
    .I2(\graphics/syncgen/CounterY [8]),
    .I3(N40),
    .I4(\graphics/R421_367 ),
    .I5(\graphics/R422_368 ),
    .O(\graphics/R17 )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \engine/border_bottom[9]_player_right_input[1]_AND_8_o31_SW1  (
    .I0(\engine/player_right_pos[4] ),
    .I1(\engine/player_right_pos[3] ),
    .I2(\engine/player_right_pos[2] ),
    .I3(\engine/player_right_pos[1] ),
    .O(N42)
  );
  LUT6 #(
    .INIT ( 64'h4400440444004444 ))
  \engine/border_bottom[9]_player_right_input[1]_AND_8_o3  (
    .I0(btnD_IBUF_2),
    .I1(btnU_IBUF_1),
    .I2(\engine/player_right_pos[5] ),
    .I3(\engine/border_bottom[9]_player_right_input[1]_AND_8_o2_366 ),
    .I4(N9),
    .I5(N42),
    .O(\engine/border_bottom[9]_player_right_input[1]_AND_8_o )
  );
  LUT6 #(
    .INIT ( 64'h1110101011101014 ))
  \graphics/R11  (
    .I0(\graphics/syncgen/CounterX [9]),
    .I1(\graphics/syncgen/CounterX [4]),
    .I2(\graphics/syncgen/CounterX [3]),
    .I3(\graphics/syncgen/CounterX [1]),
    .I4(\graphics/syncgen/CounterX [2]),
    .I5(\graphics/syncgen/CounterX [0]),
    .O(\graphics/R10_378 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000080 ))
  \graphics/R12  (
    .I0(\graphics/syncgen/CounterX [3]),
    .I1(\graphics/syncgen/CounterX [4]),
    .I2(\graphics/syncgen/CounterX [9]),
    .I3(\graphics/syncgen/CounterX [1]),
    .I4(\graphics/syncgen/CounterX [2]),
    .I5(\graphics/syncgen/CounterX [0]),
    .O(\graphics/R11_379 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \graphics/R431_SW1  (
    .I0(\graphics/syncgen/CounterX [3]),
    .I1(\graphics/syncgen/CounterX [9]),
    .I2(\graphics/syncgen/CounterX [1]),
    .I3(\graphics/syncgen/CounterX [2]),
    .O(N38)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \engine/_n0491_inv_SW1  (
    .I0(\engine/player_right_pos[9] ),
    .I1(\engine/border_bottom[9]_player_right_input[1]_AND_8_o31_94 ),
    .O(N44)
  );
  LUT6 #(
    .INIT ( 64'h0FF00F400FF00F00 ))
  \engine/_n0491_inv  (
    .I0(btnU_IBUF_1),
    .I1(btnD_IBUF_2),
    .I2(\engine/state_FSM_FFd1_8 ),
    .I3(\engine/state_FSM_FFd2_115 ),
    .I4(\engine/border_bottom[9]_player_right_input[1]_AND_8_o ),
    .I5(N44),
    .O(\engine/_n0491_inv_118 )
  );
  LUT3 #(
    .INIT ( 8'h41 ))
  \engine/Mmux__n0478_rs_lut<9>  (
    .I0(\engine/state_FSM_FFd2_115 ),
    .I1(\engine/border_bottom[9]_player_right_input[1]_AND_8_o ),
    .I2(\engine/player_right_pos[9] ),
    .O(\engine/Mmux__n0478_rs_lut [9])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAA8A ))
  \graphics/syncgen/Mcount_CounterX_lut<8>  (
    .I0(\graphics/syncgen/CounterX [8]),
    .I1(\graphics/syncgen/CounterX [0]),
    .I2(\graphics/syncgen/CounterX [9]),
    .I3(\graphics/syncgen/CounterX [2]),
    .I4(\graphics/syncgen/CounterX [1]),
    .I5(N17),
    .O(\graphics/syncgen/Mcount_CounterX_lut [8])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFBFF ))
  \graphics/syncgen/CounterX[9]_PWR_12_o_equal_1_o_inv1  (
    .I0(\graphics/syncgen/CounterX [2]),
    .I1(\graphics/syncgen/CounterX [8]),
    .I2(\graphics/syncgen/CounterX [1]),
    .I3(\graphics/syncgen/CounterX [9]),
    .I4(\graphics/syncgen/CounterX [0]),
    .I5(N17),
    .O(\graphics/syncgen/CounterX[9]_PWR_12_o_equal_1_o_inv )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFD ))
  \graphics/syncgen/CounterY[9]_PWR_12_o_equal_5_o_inv1  (
    .I0(\graphics/syncgen/CounterY [9]),
    .I1(\graphics/syncgen/CounterY [7]),
    .I2(\graphics/syncgen/CounterY [5]),
    .I3(\graphics/syncgen/CounterY [6]),
    .I4(\graphics/syncgen/CounterY [8]),
    .I5(N15),
    .O(\graphics/syncgen/CounterY[9]_PWR_12_o_equal_5_o_inv )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAA8A ))
  \graphics/syncgen/Mcount_CounterX_lut<9>  (
    .I0(\graphics/syncgen/CounterX [9]),
    .I1(\graphics/syncgen/CounterX [0]),
    .I2(\graphics/syncgen/CounterX [8]),
    .I3(\graphics/syncgen/CounterX [1]),
    .I4(\graphics/syncgen/CounterX [2]),
    .I5(N17),
    .O(\graphics/syncgen/Mcount_CounterX_lut [9])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA8 ))
  \graphics/syncgen/Mcount_CounterY_lut<9>  (
    .I0(\graphics/syncgen/CounterY [9]),
    .I1(\graphics/syncgen/CounterY [7]),
    .I2(\graphics/syncgen/CounterY [5]),
    .I3(\graphics/syncgen/CounterY [6]),
    .I4(\graphics/syncgen/CounterY [8]),
    .I5(N15),
    .O(\graphics/syncgen/Mcount_CounterY_lut[9] )
  );
  LUT3 #(
    .INIT ( 8'hF6 ))
  \engine/Mmux__n0478_rs_lut<0>  (
    .I0(\engine/player_right_pos[0] ),
    .I1(\engine/border_bottom[9]_player_right_input[1]_AND_8_o ),
    .I2(\engine/state_FSM_FFd2_115 ),
    .O(\engine/Mmux__n0478_rs_lut [0])
  );
  LUT3 #(
    .INIT ( 8'hED ))
  \engine/Mmux__n0478_rs_lut<1>  (
    .I0(\engine/player_right_pos[1] ),
    .I1(\engine/state_FSM_FFd2_115 ),
    .I2(\engine/border_bottom[9]_player_right_input[1]_AND_8_o ),
    .O(\engine/Mmux__n0478_rs_lut [1])
  );
  LUT3 #(
    .INIT ( 8'hF6 ))
  \engine/Mmux__n0478_rs_lut<2>  (
    .I0(\engine/border_bottom[9]_player_right_input[1]_AND_8_o ),
    .I1(\engine/player_right_pos[2] ),
    .I2(\engine/state_FSM_FFd2_115 ),
    .O(\engine/Mmux__n0478_rs_lut [2])
  );
  LUT3 #(
    .INIT ( 8'hED ))
  \engine/Mmux__n0478_rs_lut<3>  (
    .I0(\engine/player_right_pos[3] ),
    .I1(\engine/state_FSM_FFd2_115 ),
    .I2(\engine/border_bottom[9]_player_right_input[1]_AND_8_o ),
    .O(\engine/Mmux__n0478_rs_lut [3])
  );
  LUT3 #(
    .INIT ( 8'h41 ))
  \engine/Mmux__n0478_rs_lut<4>  (
    .I0(\engine/state_FSM_FFd2_115 ),
    .I1(\engine/player_right_pos[4] ),
    .I2(\engine/border_bottom[9]_player_right_input[1]_AND_8_o ),
    .O(\engine/Mmux__n0478_rs_lut [4])
  );
  LUT3 #(
    .INIT ( 8'h41 ))
  \engine/Mmux__n0478_rs_lut<5>  (
    .I0(\engine/state_FSM_FFd2_115 ),
    .I1(\engine/player_right_pos[5] ),
    .I2(\engine/border_bottom[9]_player_right_input[1]_AND_8_o ),
    .O(\engine/Mmux__n0478_rs_lut [5])
  );
  LUT3 #(
    .INIT ( 8'h41 ))
  \engine/Mmux__n0478_rs_lut<6>  (
    .I0(\engine/state_FSM_FFd2_115 ),
    .I1(\engine/player_right_pos[6] ),
    .I2(\engine/border_bottom[9]_player_right_input[1]_AND_8_o ),
    .O(\engine/Mmux__n0478_rs_lut [6])
  );
  LUT3 #(
    .INIT ( 8'hED ))
  \engine/Mmux__n0478_rs_lut<7>  (
    .I0(\engine/player_right_pos[7] ),
    .I1(\engine/state_FSM_FFd2_115 ),
    .I2(\engine/border_bottom[9]_player_right_input[1]_AND_8_o ),
    .O(\engine/Mmux__n0478_rs_lut [7])
  );
  LUT3 #(
    .INIT ( 8'h41 ))
  \engine/Mmux__n0478_rs_lut<8>  (
    .I0(\engine/state_FSM_FFd2_115 ),
    .I1(\engine/player_right_pos[9] ),
    .I2(\engine/border_bottom[9]_player_right_input[1]_AND_8_o ),
    .O(\engine/Mmux__n0478_rs_lut [8])
  );
  LUT5 #(
    .INIT ( 32'hA9999999 ))
  \graphics/Madd_paddle_left_pos[9]_paddle_height[9]_add_32_OUT_xor<5>11  (
    .I0(player_right_pos_q[5]),
    .I1(player_right_pos_q[4]),
    .I2(player_right_pos_q[1]),
    .I3(player_right_pos_q[2]),
    .I4(player_right_pos_q[3]),
    .O(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  Mram_SSD_CATHODES11 (
    .I0(DIV_CLK[19]),
    .I1(DIV_CLK[18]),
    .O(Cg_OBUF_36)
  );
  LUT6 #(
    .INIT ( 64'h5556565656565656 ))
  \graphics/Madd_paddle_left_pos[9]_paddle_height[9]_add_32_OUT_xor<6>11  (
    .I0(player_right_pos_q[6]),
    .I1(player_right_pos_q[4]),
    .I2(player_right_pos_q[5]),
    .I3(player_right_pos_q[1]),
    .I4(player_right_pos_q[2]),
    .I5(player_right_pos_q[3]),
    .O(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<6> )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \graphics/syncgen/Mcount_CounterY_cy<8>_rt  (
    .I0(\graphics/syncgen/CounterY [8]),
    .O(\graphics/syncgen/Mcount_CounterY_cy<8>_rt_445 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \graphics/syncgen/Mcount_CounterY_cy<7>_rt  (
    .I0(\graphics/syncgen/CounterY [7]),
    .O(\graphics/syncgen/Mcount_CounterY_cy<7>_rt_446 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \graphics/syncgen/Mcount_CounterY_cy<6>_rt  (
    .I0(\graphics/syncgen/CounterY [6]),
    .O(\graphics/syncgen/Mcount_CounterY_cy<6>_rt_447 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \graphics/syncgen/Mcount_CounterY_cy<5>_rt  (
    .I0(\graphics/syncgen/CounterY [5]),
    .O(\graphics/syncgen/Mcount_CounterY_cy<5>_rt_448 )
  );
  FDCE   \graphics/syncgen/CounterY_5_1  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY5 ),
    .Q(\graphics/syncgen/CounterY_5_1_449 )
  );
  FDCE   \graphics/syncgen/CounterY_8_1  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY8 ),
    .Q(\graphics/syncgen/CounterY_8_1_450 )
  );
  FDCE   \graphics/syncgen/CounterY_6_1  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY6 ),
    .Q(\graphics/syncgen/CounterY_6_1_451 )
  );
  FDCE   \graphics/syncgen/CounterY_9_1  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY9 ),
    .Q(\graphics/syncgen/CounterY_9_1_452 )
  );
  FDCE   \graphics/syncgen/CounterY_7_1  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY7 ),
    .Q(\graphics/syncgen/CounterY_7_1_453 )
  );
  FDCE   \graphics/syncgen/CounterY_5_2  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY5 ),
    .Q(\graphics/syncgen/CounterY_5_2_454 )
  );
  FDCE   \graphics/syncgen/CounterY_8_2  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY8 ),
    .Q(\graphics/syncgen/CounterY_8_2_455 )
  );
  FDCE   \graphics/syncgen/CounterY_8_3  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY8 ),
    .Q(\graphics/syncgen/CounterY_8_3_456 )
  );
  FDCE   \graphics/syncgen/CounterY_4_1  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY4 ),
    .Q(\graphics/syncgen/CounterY_4_1_457 )
  );
  FDCE   \graphics/syncgen/CounterY_5_3  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY5 ),
    .Q(\graphics/syncgen/CounterY_5_3_458 )
  );
  FDCE   \graphics/syncgen/CounterY_9_2  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY9 ),
    .Q(\graphics/syncgen/CounterY_9_2_459 )
  );
  FDCE   \graphics/syncgen/CounterY_3_1  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY3 ),
    .Q(\graphics/syncgen/CounterY_3_1_460 )
  );
  FDCE   \graphics/syncgen/CounterY_7_2  (
    .C(DIV_CLK_1_BUFG_4),
    .CE(\graphics/syncgen/_n0047_inv ),
    .CLR(reset),
    .D(\graphics/syncgen/Mcount_CounterY7 ),
    .Q(\graphics/syncgen/CounterY_7_2_461 )
  );
  BUFG   DIV_CLK_1_BUFG (
    .O(DIV_CLK_1_BUFG_4),
    .I(DIV_CLK[1])
  );
  BUFGP   ClkPort_BUFGP (
    .I(ClkPort),
    .O(ClkPort_BUFGP_0)
  );
  INV   \Mcount_DIV_CLK_lut<0>_INV_0  (
    .I(DIV_CLK[0]),
    .O(Mcount_DIV_CLK_lut[0])
  );
  INV   \graphics/Madd_paddle_left_pos[9]_paddle_height[9]_add_32_OUT_xor<1>11_INV_0  (
    .I(player_right_pos_q[1]),
    .O(\graphics/paddle_left_pos[9]_paddle_height[9]_add_32_OUT<1> )
  );
  INV   \graphics/syncgen/vga_v_sync1_INV_0  (
    .I(\graphics/syncgen/vga_VS_354 ),
    .O(vga_v_sync_OBUF_20)
  );
  INV   \graphics/syncgen/vga_h_sync1_INV_0  (
    .I(\graphics/syncgen/vga_HS_355 ),
    .O(vga_h_sync_OBUF_19)
  );
  INV   \graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi5_INV_0  (
    .I(\graphics/syncgen/CounterY [1]),
    .O(\graphics/Mcompar_CounterY[9]_ball_pos_y[9]_LessThan_31_o_lutdi )
  );
  INV   \graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lutdi1_INV_0  (
    .I(\graphics/syncgen/CounterY [1]),
    .O(\graphics/Mcompar_CounterY[9]_paddle_right_pos[9]_LessThan_42_o_lutdi )
  );
  MUXF7   \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0008_INV_1266_o11  (
    .I0(N46),
    .I1(N47),
    .S(\graphics/syncgen/CounterY [7]),
    .O(\graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0008_INV_1266_o )
  );
  LUT6 #(
    .INIT ( 64'h6766E686E6869E98 ))
  \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0008_INV_1266_o11_F  (
    .I0(\graphics/syncgen/CounterY_9_2_459 ),
    .I1(\graphics/syncgen/CounterY_5_3_458 ),
    .I2(\graphics/syncgen/CounterY [6]),
    .I3(\graphics/syncgen/CounterY_3_1_460 ),
    .I4(\graphics/syncgen/CounterY [8]),
    .I5(\graphics/syncgen/CounterY [4]),
    .O(N46)
  );
  LUT6 #(
    .INIT ( 64'h9E98991999197961 ))
  \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0008_INV_1266_o11_G  (
    .I0(\graphics/syncgen/CounterY_9_2_459 ),
    .I1(\graphics/syncgen/CounterY_5_3_458 ),
    .I2(\graphics/syncgen/CounterY [6]),
    .I3(\graphics/syncgen/CounterY_3_1_460 ),
    .I4(\graphics/syncgen/CounterY [8]),
    .I5(\graphics/syncgen/CounterY [4]),
    .O(N47)
  );
  MUXF7   \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0010_INV_1288_o1_SW0  (
    .I0(N48),
    .I1(N49),
    .S(\graphics/syncgen/CounterY [7]),
    .O(N19)
  );
  LUT6 #(
    .INIT ( 64'h696BBD69BD6996BD ))
  \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0010_INV_1288_o1_SW0_F  (
    .I0(\graphics/syncgen/CounterY_3_1_460 ),
    .I1(\graphics/syncgen/CounterY_9_2_459 ),
    .I2(\graphics/syncgen/CounterY_5_3_458 ),
    .I3(\graphics/syncgen/CounterY [6]),
    .I4(\graphics/syncgen/CounterY [8]),
    .I5(\graphics/syncgen/CounterY [4]),
    .O(N48)
  );
  LUT6 #(
    .INIT ( 64'h96D6D66BBD9696D6 ))
  \graphics/CounterY[9]_PWR_11_o_mod_23/BUS_0010_INV_1288_o1_SW0_G  (
    .I0(\graphics/syncgen/CounterY_3_1_460 ),
    .I1(\graphics/syncgen/CounterY_5_3_458 ),
    .I2(\graphics/syncgen/CounterY_9_2_459 ),
    .I3(\graphics/syncgen/CounterY_4_1_457 ),
    .I4(\graphics/syncgen/CounterY [8]),
    .I5(\graphics/syncgen/CounterY [6]),
    .O(N49)
  );
  MUXF7   \graphics/CounterY[9]_PWR_11_o_mod_23/Mmux_a[4]_a[9]_MUX_1384_o11  (
    .I0(N50),
    .I1(N51),
    .S(\graphics/syncgen/CounterY [6]),
    .O(\graphics/CounterY[9]_PWR_11_o_mod_23/Madd_a[9]_GND_19_o_add_17_OUT_lut<4> )
  );
  LUT6 #(
    .INIT ( 64'h6889666866681666 ))
  \graphics/CounterY[9]_PWR_11_o_mod_23/Mmux_a[4]_a[9]_MUX_1384_o11_F  (
    .I0(\graphics/syncgen/CounterY_4_1_457 ),
    .I1(\graphics/syncgen/CounterY_8_3_456 ),
    .I2(\graphics/syncgen/CounterY_7_2_461 ),
    .I3(\graphics/syncgen/CounterY_3_1_460 ),
    .I4(\graphics/syncgen/CounterY [9]),
    .I5(\graphics/syncgen/CounterY [5]),
    .O(N50)
  );
  LUT6 #(
    .INIT ( 64'hC29443C243C22943 ))
  \graphics/CounterY[9]_PWR_11_o_mod_23/Mmux_a[4]_a[9]_MUX_1384_o11_G  (
    .I0(\graphics/syncgen/CounterY_5_3_458 ),
    .I1(\graphics/syncgen/CounterY_8_2_455 ),
    .I2(\graphics/syncgen/CounterY_4_1_457 ),
    .I3(\graphics/syncgen/CounterY_9_2_459 ),
    .I4(\graphics/syncgen/CounterY_7_2_461 ),
    .I5(\graphics/syncgen/CounterY [3]),
    .O(N51)
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

