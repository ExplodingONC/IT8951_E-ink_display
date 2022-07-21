// Verilog netlist created by TD v4.6.14756
// Mon Jun 15 07:44:38 2020

`timescale 1ns / 1ps
module ramfifo_read  // al_ip/ramfifo_read.v(14)
  (
  clkr,
  clkw,
  di,
  re,
  rst,
  we,
  do,
  empty_flag,
  full_flag,
  rdusedw,
  wrusedw
  );

  input clkr;  // al_ip/ramfifo_read.v(25)
  input clkw;  // al_ip/ramfifo_read.v(24)
  input [15:0] di;  // al_ip/ramfifo_read.v(23)
  input re;  // al_ip/ramfifo_read.v(25)
  input rst;  // al_ip/ramfifo_read.v(22)
  input we;  // al_ip/ramfifo_read.v(24)
  output [15:0] do;  // al_ip/ramfifo_read.v(27)
  output empty_flag;  // al_ip/ramfifo_read.v(28)
  output full_flag;  // al_ip/ramfifo_read.v(29)
  output [9:0] rdusedw;  // al_ip/ramfifo_read.v(30)
  output [9:0] wrusedw;  // al_ip/ramfifo_read.v(31)

  wire  \addr_inc_mux/B0_0 ;
  wire  \addr_inc_mux/B0_1 ;
  wire  \addr_inc_mux/B0_2 ;
  wire  \addr_inc_mux/B0_3 ;
  wire  \addr_inc_mux/B1_0 ;
  wire  \addr_inc_mux/B1_1 ;
  wire  \empty_r_mux/B0_0 ;
  wire  \empty_r_mux/B0_1 ;
  wire  \empty_r_mux/B0_2 ;
  wire  \empty_r_mux/B0_3 ;
  wire  \empty_r_mux/B1_0 ;
  wire  \empty_r_mux/B1_1 ;
  wire  \i1_mux_b0/B0_0 ;
  wire  \i1_mux_b0/B0_1 ;
  wire  \state_mux_b0/B0_0 ;
  wire  \state_mux_b0/B0_1 ;
  wire  \state_mux_b0/B0_2 ;
  wire  \state_mux_b0/B0_3 ;
  wire  \state_mux_b0/B1_0 ;
  wire  \state_mux_b0/B1_1 ;
  wire  \state_mux_b1/B0_0 ;
  wire  \state_mux_b1/B0_1 ;
  wire  \state_mux_b1/B0_2 ;
  wire  \state_mux_b1/B0_3 ;
  wire  \state_mux_b1/B1_0 ;
  wire  \state_mux_b1/B1_1 ;
  wire  \state_mux_b2/B0_0 ;
  wire  \state_mux_b2/B0_1 ;
  wire  \state_mux_b2/B0_2 ;
  wire  \state_mux_b2/B0_3 ;
  wire  \state_mux_b2/B1_0 ;
  wire  \state_mux_b2/B1_1 ;
  wire addr_inc;
  wire and_addr_inc_empty_e_o;
  wire and_and__al_n1_q0_al_o;
  wire and_and__al_n1_q0_al_o_al_n69;
  wire and_and__al_n1_q0_ne_o;
  wire and_and_and__al_n1_q_o;
  wire and_and_and__al_n1_q_o_al_n29;
  wire and_and_and__al_n1_q_o_al_n70;
  wire and_and_and_and__al__o;
  wire and_and_and_and__al__o_al_n30;
  wire and_and_and_and__al__o_al_n71;
  wire and_and_and_and_and__o;
  wire and_and_and_and_and__o_al_n0;
  wire and_and_and_and_and__o_al_n1;
  wire and_and_and_and_and__o_al_n2;
  wire and_and_and_and_and__o_al_n3;
  wire and_and_and_and_and__o_al_n31;
  wire and_and_and_and_and__o_al_n32;
  wire and_and_and_and_and__o_al_n33;
  wire and_and_and_and_and__o_al_n34;
  wire and_and_and_and_and__o_al_n35;
  wire and_and_and_and_and__o_al_n72;
  wire and_and_and_and_and__o_al_n73;
  wire and_and_and_and_and__o_al_n74;
  wire and_and_and_and_and__o_al_n75;
  wire and_and_and_and_and__o_al_n76;
  wire and_empty_equal_test_o;
  wire and_empty_equal_test_o_al_n5;
  wire and_or_q10_al_n28_q9_o;
  wire and_or_q10_al_n68_q9_o;
  wire and_or_q10_q9_o_and__o;
  wire and_q1_al_n19_and__a_o;
  wire and_q1_al_n59_and__a_o;
  wire and_q1_and__al_n1_q0_o;
  wire and_q2_al_n20_and_an_o;
  wire and_q2_al_n60_and_an_o;
  wire and_q2_and_and__al_n_o;
  wire and_q3_al_n21_and_an_o;
  wire and_q3_al_n61_and_an_o;
  wire and_q3_and_and_and___o;
  wire and_q4_al_n22_and_an_o;
  wire and_q4_al_n62_and_an_o;
  wire and_q4_and_and_and_a_o;
  wire and_q5_al_n23_and_an_o;
  wire and_q5_al_n63_and_an_o;
  wire and_q5_and_and_and_a_o;
  wire and_q6_al_n24_and_an_o;
  wire and_q6_al_n64_and_an_o;
  wire and_q6_and_and_and_a_o;
  wire and_q7_al_n25_and_an_o;
  wire and_q7_al_n65_and_an_o;
  wire and_q7_and_and_and_a_o;
  wire and_q8_al_n26_and_an_o;
  wire and_q8_al_n66_and_an_o;
  wire and_q8_and_and_and_a_o;
  wire and_re_or_empty_equa_o;
  wire and_re_or_empty_equa_o_neg;
  wire and_s_state_mux_o0_a_o;
  wire and_s_state_mux_o0_a_o_al_n15;
  wire and_s_state_mux_o0_a_o_al_n16;
  wire and_s_state_mux_o0_a_o_al_n17;
  wire and_we_full_equal_o__o;
  wire curr_state0;
  wire curr_state1;
  wire curr_state2;
  wire data_mux_r1_1_o0;
  wire data_mux_r1_1_o1;
  wire data_mux_r1_1_o10;
  wire data_mux_r1_1_o11;
  wire data_mux_r1_1_o12;
  wire data_mux_r1_1_o13;
  wire data_mux_r1_1_o14;
  wire data_mux_r1_1_o15;
  wire data_mux_r1_1_o2;
  wire data_mux_r1_1_o3;
  wire data_mux_r1_1_o4;
  wire data_mux_r1_1_o5;
  wire data_mux_r1_1_o6;
  wire data_mux_r1_1_o7;
  wire data_mux_r1_1_o8;
  wire data_mux_r1_1_o9;
  wire data_mux_r1_2_o0;
  wire data_mux_r1_2_o1;
  wire data_mux_r1_2_o10;
  wire data_mux_r1_2_o11;
  wire data_mux_r1_2_o12;
  wire data_mux_r1_2_o13;
  wire data_mux_r1_2_o14;
  wire data_mux_r1_2_o15;
  wire data_mux_r1_2_o2;
  wire data_mux_r1_2_o3;
  wire data_mux_r1_2_o4;
  wire data_mux_r1_2_o5;
  wire data_mux_r1_2_o6;
  wire data_mux_r1_2_o7;
  wire data_mux_r1_2_o8;
  wire data_mux_r1_2_o9;
  wire data_mux_r1_3_o0;
  wire data_mux_r1_3_o1;
  wire data_mux_r1_3_o10;
  wire data_mux_r1_3_o11;
  wire data_mux_r1_3_o12;
  wire data_mux_r1_3_o13;
  wire data_mux_r1_3_o14;
  wire data_mux_r1_3_o15;
  wire data_mux_r1_3_o2;
  wire data_mux_r1_3_o3;
  wire data_mux_r1_3_o4;
  wire data_mux_r1_3_o5;
  wire data_mux_r1_3_o6;
  wire data_mux_r1_3_o7;
  wire data_mux_r1_3_o8;
  wire data_mux_r1_3_o9;
  wire data_mux_r1_4_o0;
  wire data_mux_r1_4_o1;
  wire data_mux_r1_4_o10;
  wire data_mux_r1_4_o11;
  wire data_mux_r1_4_o12;
  wire data_mux_r1_4_o13;
  wire data_mux_r1_4_o14;
  wire data_mux_r1_4_o15;
  wire data_mux_r1_4_o2;
  wire data_mux_r1_4_o3;
  wire data_mux_r1_4_o4;
  wire data_mux_r1_4_o5;
  wire data_mux_r1_4_o6;
  wire data_mux_r1_4_o7;
  wire data_mux_r1_4_o8;
  wire data_mux_r1_4_o9;
  wire data_mux_r1_5_o0;
  wire data_mux_r1_5_o1;
  wire data_mux_r1_5_o10;
  wire data_mux_r1_5_o11;
  wire data_mux_r1_5_o12;
  wire data_mux_r1_5_o13;
  wire data_mux_r1_5_o14;
  wire data_mux_r1_5_o15;
  wire data_mux_r1_5_o2;
  wire data_mux_r1_5_o3;
  wire data_mux_r1_5_o4;
  wire data_mux_r1_5_o5;
  wire data_mux_r1_5_o6;
  wire data_mux_r1_5_o7;
  wire data_mux_r1_5_o8;
  wire data_mux_r1_5_o9;
  wire data_mux_r2_2_o0;
  wire data_mux_r2_2_o1;
  wire data_mux_r2_2_o10;
  wire data_mux_r2_2_o11;
  wire data_mux_r2_2_o12;
  wire data_mux_r2_2_o13;
  wire data_mux_r2_2_o14;
  wire data_mux_r2_2_o15;
  wire data_mux_r2_2_o2;
  wire data_mux_r2_2_o3;
  wire data_mux_r2_2_o4;
  wire data_mux_r2_2_o5;
  wire data_mux_r2_2_o6;
  wire data_mux_r2_2_o7;
  wire data_mux_r2_2_o8;
  wire data_mux_r2_2_o9;
  wire data_mux_r2_3_o0;
  wire data_mux_r2_3_o1;
  wire data_mux_r2_3_o10;
  wire data_mux_r2_3_o11;
  wire data_mux_r2_3_o12;
  wire data_mux_r2_3_o13;
  wire data_mux_r2_3_o14;
  wire data_mux_r2_3_o15;
  wire data_mux_r2_3_o2;
  wire data_mux_r2_3_o3;
  wire data_mux_r2_3_o4;
  wire data_mux_r2_3_o5;
  wire data_mux_r2_3_o6;
  wire data_mux_r2_3_o7;
  wire data_mux_r2_3_o8;
  wire data_mux_r2_3_o9;
  wire data_mux_r2_4_o0;
  wire data_mux_r2_4_o1;
  wire data_mux_r2_4_o10;
  wire data_mux_r2_4_o11;
  wire data_mux_r2_4_o12;
  wire data_mux_r2_4_o13;
  wire data_mux_r2_4_o14;
  wire data_mux_r2_4_o15;
  wire data_mux_r2_4_o2;
  wire data_mux_r2_4_o3;
  wire data_mux_r2_4_o4;
  wire data_mux_r2_4_o5;
  wire data_mux_r2_4_o6;
  wire data_mux_r2_4_o7;
  wire data_mux_r2_4_o8;
  wire data_mux_r2_4_o9;
  wire data_mux_r2_5_o0;
  wire data_mux_r2_5_o1;
  wire data_mux_r2_5_o10;
  wire data_mux_r2_5_o11;
  wire data_mux_r2_5_o12;
  wire data_mux_r2_5_o13;
  wire data_mux_r2_5_o14;
  wire data_mux_r2_5_o15;
  wire data_mux_r2_5_o2;
  wire data_mux_r2_5_o3;
  wire data_mux_r2_5_o4;
  wire data_mux_r2_5_o5;
  wire data_mux_r2_5_o6;
  wire data_mux_r2_5_o7;
  wire data_mux_r2_5_o8;
  wire data_mux_r2_5_o9;
  wire delayed_wrptr_g0;
  wire delayed_wrptr_g1;
  wire delayed_wrptr_g2;
  wire delayed_wrptr_g3;
  wire delayed_wrptr_g4;
  wire delayed_wrptr_g5;
  wire delayed_wrptr_g6;
  wire delayed_wrptr_g7;
  wire delayed_wrptr_g8;
  wire delayed_wrptr_g9;
  wire \empty_equal/or_or_or_xor_i0[0]_i_o ;
  wire \empty_equal/or_or_xor_i0[0]_i1[0_o ;
  wire \empty_equal/or_or_xor_i0[5]_i1[5_o ;
  wire \empty_equal/or_xor_i0[0]_i1[0]_o_o ;
  wire \empty_equal/or_xor_i0[2]_i1[2]_o_o ;
  wire \empty_equal/or_xor_i0[3]_i1[3]_o_o ;
  wire \empty_equal/or_xor_i0[5]_i1[5]_o_o ;
  wire \empty_equal/or_xor_i0[7]_i1[7]_o_o ;
  wire \empty_equal/or_xor_i0[8]_i1[8]_o_o ;
  wire \empty_equal/xor_i0[0]_i1[0]_o ;
  wire \empty_equal/xor_i0[1]_i1[1]_o ;
  wire \empty_equal/xor_i0[2]_i1[2]_o ;
  wire \empty_equal/xor_i0[3]_i1[3]_o ;
  wire \empty_equal/xor_i0[4]_i1[4]_o ;
  wire \empty_equal/xor_i0[5]_i1[5]_o ;
  wire \empty_equal/xor_i0[6]_i1[6]_o ;
  wire \empty_equal/xor_i0[7]_i1[7]_o ;
  wire \empty_equal/xor_i0[8]_i1[8]_o ;
  wire \empty_equal/xor_i0[9]_i1[9]_o ;
  wire empty_equal_o;
  wire \empty_equal_test/or_or_or_xor_i0[0]_i_o ;
  wire \empty_equal_test/or_or_xor_i0[0]_i1[0_o ;
  wire \empty_equal_test/or_or_xor_i0[5]_i1[5_o ;
  wire \empty_equal_test/or_xor_i0[0]_i1[0]_o_o ;
  wire \empty_equal_test/or_xor_i0[2]_i1[2]_o_o ;
  wire \empty_equal_test/or_xor_i0[3]_i1[3]_o_o ;
  wire \empty_equal_test/or_xor_i0[5]_i1[5]_o_o ;
  wire \empty_equal_test/or_xor_i0[7]_i1[7]_o_o ;
  wire \empty_equal_test/or_xor_i0[8]_i1[8]_o_o ;
  wire \empty_equal_test/xor_i0[0]_i1[0]_o ;
  wire \empty_equal_test/xor_i0[1]_i1[1]_o ;
  wire \empty_equal_test/xor_i0[2]_i1[2]_o ;
  wire \empty_equal_test/xor_i0[3]_i1[3]_o ;
  wire \empty_equal_test/xor_i0[4]_i1[4]_o ;
  wire \empty_equal_test/xor_i0[5]_i1[5]_o ;
  wire \empty_equal_test/xor_i0[6]_i1[6]_o ;
  wire \empty_equal_test/xor_i0[7]_i1[7]_o ;
  wire \empty_equal_test/xor_i0[8]_i1[8]_o ;
  wire \empty_equal_test/xor_i0[9]_i1[9]_o ;
  wire empty_equal_test_o;
  wire empty_equal_test_o_neg;
  wire empty_equal_test_o_neg_neg;
  wire empty_r_mux_o0;
  wire \full_equal/or_or_or_xor_i0[0]_i_o ;
  wire \full_equal/or_or_xor_i0[0]_i1[0_o ;
  wire \full_equal/or_or_xor_i0[5]_i1[5_o ;
  wire \full_equal/or_xor_i0[0]_i1[0]_o_o ;
  wire \full_equal/or_xor_i0[2]_i1[2]_o_o ;
  wire \full_equal/or_xor_i0[3]_i1[3]_o_o ;
  wire \full_equal/or_xor_i0[5]_i1[5]_o_o ;
  wire \full_equal/or_xor_i0[7]_i1[7]_o_o ;
  wire \full_equal/or_xor_i0[8]_i1[8]_o_o ;
  wire \full_equal/xor_i0[0]_i1[0]_o ;
  wire \full_equal/xor_i0[1]_i1[1]_o ;
  wire \full_equal/xor_i0[2]_i1[2]_o ;
  wire \full_equal/xor_i0[3]_i1[3]_o ;
  wire \full_equal/xor_i0[4]_i1[4]_o ;
  wire \full_equal/xor_i0[5]_i1[5]_o ;
  wire \full_equal/xor_i0[6]_i1[6]_o ;
  wire \full_equal/xor_i0[7]_i1[7]_o ;
  wire \full_equal/xor_i0[8]_i1[8]_o ;
  wire \full_equal/xor_i0[9]_i1[9]_o ;
  wire full_equal_o_neg;
  wire gray_counter_mux_o0;
  wire gray_counter_mux_o0_al_n37;
  wire gray_counter_mux_o0_al_n78;
  wire gray_counter_mux_o1;
  wire gray_counter_mux_o10;
  wire gray_counter_mux_o10_al_n47;
  wire gray_counter_mux_o10_al_n88;
  wire gray_counter_mux_o1_al_n38;
  wire gray_counter_mux_o1_al_n79;
  wire gray_counter_mux_o2;
  wire gray_counter_mux_o2_al_n39;
  wire gray_counter_mux_o2_al_n80;
  wire gray_counter_mux_o3;
  wire gray_counter_mux_o3_al_n40;
  wire gray_counter_mux_o3_al_n81;
  wire gray_counter_mux_o4;
  wire gray_counter_mux_o4_al_n41;
  wire gray_counter_mux_o4_al_n82;
  wire gray_counter_mux_o5;
  wire gray_counter_mux_o5_al_n42;
  wire gray_counter_mux_o5_al_n83;
  wire gray_counter_mux_o6;
  wire gray_counter_mux_o6_al_n43;
  wire gray_counter_mux_o6_al_n84;
  wire gray_counter_mux_o7;
  wire gray_counter_mux_o7_al_n44;
  wire gray_counter_mux_o7_al_n85;
  wire gray_counter_mux_o8;
  wire gray_counter_mux_o8_al_n45;
  wire gray_counter_mux_o8_al_n86;
  wire gray_counter_mux_o9;
  wire gray_counter_mux_o9_al_n46;
  wire gray_counter_mux_o9_al_n87;
  wire i1_mux_o0;
  wire i1_mux_o1;
  wire i1_mux_o2;
  wire i2_mux_o0;
  wire i2_mux_o1;
  wire i2_mux_o2;
  wire i3_mux_o0;
  wire i3_mux_o1;
  wire i3_mux_o2;
  wire mux_o0;
  wire mux_o0_al_n48;
  wire mux_o0_al_n89;
  wire mux_o1;
  wire mux_o1_al_n49;
  wire mux_o1_al_n90;
  wire mux_o2;
  wire mux_o2_al_n50;
  wire mux_o2_al_n91;
  wire mux_o3;
  wire mux_o3_al_n51;
  wire mux_o3_al_n92;
  wire mux_o4;
  wire mux_o4_al_n52;
  wire mux_o4_al_n93;
  wire mux_o5;
  wire mux_o5_al_n53;
  wire mux_o5_al_n94;
  wire mux_o6;
  wire mux_o6_al_n54;
  wire mux_o6_al_n95;
  wire mux_o7;
  wire mux_o7_al_n55;
  wire mux_o7_al_n96;
  wire mux_o8;
  wire mux_o8_al_n56;
  wire mux_o8_al_n97;
  wire mux_o9;
  wire mux_o9_al_n57;
  wire mux_o9_al_n98;
  wire or_empty_equal_o_sho_o_neg;
  wire or_q10_al_n28_q9_al__o;
  wire or_q10_al_n68_q9_al__o;
  wire or_q10_q9_o;
  wire q0;
  wire q0_al_n18;
  wire q0_al_n18_neg;
  wire q0_al_n58;
  wire q0_al_n58_neg;
  wire q0_neg;
  wire q1;
  wire q10;
  wire q10_al_n28;
  wire q10_al_n68;
  wire q1_al_n19;
  wire q1_al_n19_neg;
  wire q1_al_n59;
  wire q1_al_n59_neg;
  wire q1_neg;
  wire q2;
  wire q2_al_n20;
  wire q2_al_n20_neg;
  wire q2_al_n60;
  wire q2_al_n60_neg;
  wire q2_neg;
  wire q3;
  wire q3_al_n21;
  wire q3_al_n21_neg;
  wire q3_al_n61;
  wire q3_al_n61_neg;
  wire q3_neg;
  wire q4;
  wire q4_al_n22;
  wire q4_al_n22_neg;
  wire q4_al_n62;
  wire q4_al_n62_neg;
  wire q4_neg;
  wire q5;
  wire q5_al_n23;
  wire q5_al_n23_neg;
  wire q5_al_n63;
  wire q5_al_n63_neg;
  wire q5_neg;
  wire q6;
  wire q6_al_n24;
  wire q6_al_n24_neg;
  wire q6_al_n64;
  wire q6_al_n64_neg;
  wire q6_neg;
  wire q7;
  wire q7_al_n25;
  wire q7_al_n25_neg;
  wire q7_al_n65;
  wire q7_al_n65_neg;
  wire q7_neg;
  wire q8;
  wire q8_al_n26;
  wire q8_al_n26_neg;
  wire q8_al_n66;
  wire q8_al_n66_neg;
  wire q8_neg;
  wire q9;
  wire q9_al_n27;
  wire q9_al_n67;
  wire r10;
  wire r11;
  wire r110;
  wire r111;
  wire r112;
  wire r113;
  wire r114;
  wire r115;
  wire r12;
  wire r13;
  wire r14;
  wire r15;
  wire r16;
  wire r17;
  wire r18;
  wire r19;
  wire ram_q0;
  wire ram_q1;
  wire ram_q10;
  wire ram_q11;
  wire ram_q12;
  wire ram_q13;
  wire ram_q14;
  wire ram_q15;
  wire ram_q2;
  wire ram_q3;
  wire ram_q4;
  wire ram_q5;
  wire ram_q6;
  wire ram_q7;
  wire ram_q8;
  wire ram_q9;
  wire rdptr_g0;
  wire rdptr_g1;
  wire rdptr_g2;
  wire rdptr_g3;
  wire rdptr_g4;
  wire rdptr_g5;
  wire rdptr_g6;
  wire rdptr_g7;
  wire rdptr_g8;
  wire rdptr_g9;
  wire rdptr_g_bin_d10;
  wire rdptr_g_bin_d11;
  wire rdptr_g_bin_d12;
  wire rdptr_g_bin_d13;
  wire rdptr_g_bin_d14;
  wire rdptr_g_bin_d15;
  wire rdptr_g_bin_d16;
  wire rdptr_g_bin_d17;
  wire rdptr_g_bin_d18;
  wire rdptr_g_bin_d19;
  wire rdptr_g_test0;
  wire rdptr_g_test1;
  wire rdptr_g_test2;
  wire rdptr_g_test3;
  wire rdptr_g_test4;
  wire rdptr_g_test5;
  wire rdptr_g_test6;
  wire rdptr_g_test7;
  wire rdptr_g_test8;
  wire rdptr_g_test9;
  wire \rdusedw_sub/c0 ;
  wire \rdusedw_sub/c1 ;
  wire \rdusedw_sub/c2 ;
  wire \rdusedw_sub/c3 ;
  wire \rdusedw_sub/c4 ;
  wire \rdusedw_sub/c5 ;
  wire \rdusedw_sub/c6 ;
  wire \rdusedw_sub/c7 ;
  wire \rdusedw_sub/c8 ;
  wire \rdusedw_sub/c9 ;
  wire rst_neg;
  wire rst_neg_neg;
  wire s_state_mux_o0;
  wire s_state_mux_o0_al_n10;
  wire s_state_mux_o0_al_n11;
  wire s_state_mux_o0_al_n12;
  wire showahead_empty;
  wire state_mux_o0;
  wire state_mux_o1;
  wire state_mux_o2;
  wire sync_delayed_wrptr_g0;
  wire sync_delayed_wrptr_g1;
  wire sync_delayed_wrptr_g2;
  wire sync_delayed_wrptr_g3;
  wire sync_delayed_wrptr_g4;
  wire sync_delayed_wrptr_g5;
  wire sync_delayed_wrptr_g6;
  wire sync_delayed_wrptr_g7;
  wire sync_delayed_wrptr_g8;
  wire sync_delayed_wrptr_g9;
  wire sync_delayed_wrptr_g_bin_d10;
  wire sync_delayed_wrptr_g_bin_d11;
  wire sync_delayed_wrptr_g_bin_d12;
  wire sync_delayed_wrptr_g_bin_d13;
  wire sync_delayed_wrptr_g_bin_d14;
  wire sync_delayed_wrptr_g_bin_d15;
  wire sync_delayed_wrptr_g_bin_d16;
  wire sync_delayed_wrptr_g_bin_d17;
  wire sync_delayed_wrptr_g_bin_d18;
  wire sync_delayed_wrptr_g_bin_d19;
  wire sync_rdptr_g0;
  wire sync_rdptr_g1;
  wire sync_rdptr_g2;
  wire sync_rdptr_g3;
  wire sync_rdptr_g4;
  wire sync_rdptr_g5;
  wire sync_rdptr_g6;
  wire sync_rdptr_g7;
  wire sync_rdptr_g8;
  wire sync_rdptr_g8_neg;
  wire sync_rdptr_g9;
  wire sync_rdptr_g9_neg;
  wire sync_rdptr_g_bin_d10;
  wire sync_rdptr_g_bin_d11;
  wire sync_rdptr_g_bin_d12;
  wire sync_rdptr_g_bin_d13;
  wire sync_rdptr_g_bin_d14;
  wire sync_rdptr_g_bin_d15;
  wire sync_rdptr_g_bin_d16;
  wire sync_rdptr_g_bin_d17;
  wire sync_rdptr_g_bin_d18;
  wire sync_rdptr_g_bin_d19;
  wire wrptr_g0;
  wire wrptr_g1;
  wire wrptr_g2;
  wire wrptr_g3;
  wire wrptr_g4;
  wire wrptr_g5;
  wire wrptr_g6;
  wire wrptr_g7;
  wire wrptr_g8;
  wire wrptr_g9;
  wire wrptr_g_bin_d10;
  wire wrptr_g_bin_d11;
  wire wrptr_g_bin_d12;
  wire wrptr_g_bin_d13;
  wire wrptr_g_bin_d14;
  wire wrptr_g_bin_d15;
  wire wrptr_g_bin_d16;
  wire wrptr_g_bin_d17;
  wire wrptr_g_bin_d18;
  wire \wrusedw_sub/c0 ;
  wire \wrusedw_sub/c1 ;
  wire \wrusedw_sub/c2 ;
  wire \wrusedw_sub/c3 ;
  wire \wrusedw_sub/c4 ;
  wire \wrusedw_sub/c5 ;
  wire \wrusedw_sub/c6 ;
  wire \wrusedw_sub/c7 ;
  wire \wrusedw_sub/c8 ;
  wire \wrusedw_sub/c9 ;
  wire xor_q10_al_n28_and_o_o;
  wire xor_q10_al_n68_and_o_o;
  wire xor_q10_and_or_q10_q_o;
  wire xor_q1_al_n19_and_q0_o;
  wire xor_q1_al_n59_and_q0_o;
  wire xor_q1_and_q0__al_n1_o;
  wire xor_q2_al_n20_and_q1_o;
  wire xor_q2_al_n60_and_q1_o;
  wire xor_q2_and_q1_and__a_o;
  wire xor_q3_al_n21_and_q2_o;
  wire xor_q3_al_n61_and_q2_o;
  wire xor_q3_and_q2_and_an_o;
  wire xor_q4_al_n22_and_q3_o;
  wire xor_q4_al_n62_and_q3_o;
  wire xor_q4_and_q3_and_an_o;
  wire xor_q5_al_n23_and_q4_o;
  wire xor_q5_al_n63_and_q4_o;
  wire xor_q5_and_q4_and_an_o;
  wire xor_q6_al_n24_and_q5_o;
  wire xor_q6_al_n64_and_q5_o;
  wire xor_q6_and_q5_and_an_o;
  wire xor_q7_al_n25_and_q6_o;
  wire xor_q7_al_n65_and_q6_o;
  wire xor_q7_and_q6_and_an_o;
  wire xor_q8_al_n26_and_q7_o;
  wire xor_q8_al_n66_and_q7_o;
  wire xor_q8_and_q7_and_an_o;
  wire xor_q9_al_n27_and_q8_o;
  wire xor_q9_al_n67_and_q8_o;
  wire xor_q9_and_q8_and_an_o;
  wire xor_rdptr_g9_rdptr_g_o_al_n115;
  wire xor_rdptr_g_test9_rd_o;
  wire xor_sync_delayed_wrp_o;
  wire xor_sync_rdptr_g9_sy_o;
  wire xor_wrptr_g9_wrptr_g_o;
  wire xor_xor_rdptr_g9_rdp_o;
  wire xor_xor_sync_delayed_o;
  wire xor_xor_sync_rdptr_g_o;
  wire xor_xor_wrptr_g9_wrp_o;
  wire xor_xor_xor_rdptr_g9_o;
  wire xor_xor_xor_sync_del_o;
  wire xor_xor_xor_sync_rdp_o;
  wire xor_xor_xor_wrptr_g9_o;
  wire xor_xor_xor_xor_rdpt_o;
  wire xor_xor_xor_xor_sync_o;
  wire xor_xor_xor_xor_sync_o_al_n109;
  wire xor_xor_xor_xor_wrpt_o;
  wire xor_xor_xor_xor_xor__o;
  wire xor_xor_xor_xor_xor__o_al_n100;
  wire xor_xor_xor_xor_xor__o_al_n101;
  wire xor_xor_xor_xor_xor__o_al_n102;
  wire xor_xor_xor_xor_xor__o_al_n104;
  wire xor_xor_xor_xor_xor__o_al_n105;
  wire xor_xor_xor_xor_xor__o_al_n106;
  wire xor_xor_xor_xor_xor__o_al_n107;
  wire xor_xor_xor_xor_xor__o_al_n108;
  wire xor_xor_xor_xor_xor__o_al_n110;
  wire xor_xor_xor_xor_xor__o_al_n111;
  wire xor_xor_xor_xor_xor__o_al_n112;
  wire xor_xor_xor_xor_xor__o_al_n113;
  wire xor_xor_xor_xor_xor__o_al_n114;
  wire xor_xor_xor_xor_xor__o_al_n116;
  wire xor_xor_xor_xor_xor__o_al_n117;
  wire xor_xor_xor_xor_xor__o_al_n118;
  wire xor_xor_xor_xor_xor__o_al_n119;
  wire xor_xor_xor_xor_xor__o_al_n120;
  wire xor_xor_xor_xor_xor__o_al_n99;

  AL_MUX \addr_inc_mux/al_mux_b0_0_0  (
    .i0(empty_equal_test_o_neg),
    .i1(empty_equal_test_o_neg),
    .sel(curr_state0),
    .o(\addr_inc_mux/B0_0 ));
  AL_MUX \addr_inc_mux/al_mux_b0_0_1  (
    .i0(and_empty_equal_test_o_al_n5),
    .i1(and_re_or_empty_equa_o),
    .sel(curr_state0),
    .o(\addr_inc_mux/B0_1 ));
  AL_MUX \addr_inc_mux/al_mux_b0_0_2  (
    .i0(and_re_or_empty_equa_o),
    .i1(1'b0),
    .sel(curr_state0),
    .o(\addr_inc_mux/B0_2 ));
  AL_MUX \addr_inc_mux/al_mux_b0_0_3  (
    .i0(1'b0),
    .i1(1'b0),
    .sel(curr_state0),
    .o(\addr_inc_mux/B0_3 ));
  AL_MUX \addr_inc_mux/al_mux_b0_1_0  (
    .i0(\addr_inc_mux/B0_0 ),
    .i1(\addr_inc_mux/B0_1 ),
    .sel(curr_state1),
    .o(\addr_inc_mux/B1_0 ));
  AL_MUX \addr_inc_mux/al_mux_b0_1_1  (
    .i0(\addr_inc_mux/B0_2 ),
    .i1(\addr_inc_mux/B0_3 ),
    .sel(curr_state1),
    .o(\addr_inc_mux/B1_1 ));
  AL_MUX \addr_inc_mux/al_mux_b0_2_0  (
    .i0(\addr_inc_mux/B1_0 ),
    .i1(\addr_inc_mux/B1_1 ),
    .sel(curr_state2),
    .o(addr_inc));
  and and_addr_inc_empty_e (and_addr_inc_empty_e_o, addr_inc, empty_equal_test_o_neg);
  and and_and__al_n1_q0_al (and_and__al_n1_q0_al_o, q0_al_n18_neg, q1_al_n19_neg);
  and and_and__al_n1_q0_al_al_u29 (and_and__al_n1_q0_al_o_al_n69, q0_al_n58_neg, q1_al_n59_neg);
  and and_and__al_n1_q0_ne (and_and__al_n1_q0_ne_o, q0_neg, q1_neg);
  and and_and_and__al_n1_q (and_and_and__al_n1_q_o, and_and__al_n1_q0_ne_o, q2_neg);
  and and_and_and__al_n1_q_al_u18 (and_and_and__al_n1_q_o_al_n29, and_and__al_n1_q0_al_o, q2_al_n20_neg);
  and and_and_and__al_n1_q_al_u30 (and_and_and__al_n1_q_o_al_n70, and_and__al_n1_q0_al_o_al_n69, q2_al_n60_neg);
  and and_and_and_and__al_ (and_and_and_and__al__o, and_and_and__al_n1_q_o, q3_neg);
  and and_and_and_and__al__al_u19 (and_and_and_and__al__o_al_n30, and_and_and__al_n1_q_o_al_n29, q3_al_n21_neg);
  and and_and_and_and__al__al_u31 (and_and_and_and__al__o_al_n71, and_and_and__al_n1_q_o_al_n70, q3_al_n61_neg);
  and and_and_and_and_and_ (and_and_and_and_and__o, and_and_and_and__al__o, q4_neg);
  and and_and_and_and_and__al_u0 (and_and_and_and_and__o_al_n0, and_and_and_and_and__o, q5_neg);
  and and_and_and_and_and__al_u1 (and_and_and_and_and__o_al_n1, and_and_and_and_and__o_al_n0, q6_neg);
  and and_and_and_and_and__al_u2 (and_and_and_and_and__o_al_n2, and_and_and_and_and__o_al_n1, q7_neg);
  and and_and_and_and_and__al_u20 (and_and_and_and_and__o_al_n31, and_and_and_and__al__o_al_n30, q4_al_n22_neg);
  and and_and_and_and_and__al_u21 (and_and_and_and_and__o_al_n32, and_and_and_and_and__o_al_n31, q5_al_n23_neg);
  and and_and_and_and_and__al_u22 (and_and_and_and_and__o_al_n33, and_and_and_and_and__o_al_n32, q6_al_n24_neg);
  and and_and_and_and_and__al_u23 (and_and_and_and_and__o_al_n34, and_and_and_and_and__o_al_n33, q7_al_n25_neg);
  and and_and_and_and_and__al_u24 (and_and_and_and_and__o_al_n35, and_and_and_and_and__o_al_n34, q8_al_n26_neg);
  and and_and_and_and_and__al_u3 (and_and_and_and_and__o_al_n3, and_and_and_and_and__o_al_n2, q8_neg);
  and and_and_and_and_and__al_u32 (and_and_and_and_and__o_al_n72, and_and_and_and__al__o_al_n71, q4_al_n62_neg);
  and and_and_and_and_and__al_u33 (and_and_and_and_and__o_al_n73, and_and_and_and_and__o_al_n72, q5_al_n63_neg);
  and and_and_and_and_and__al_u34 (and_and_and_and_and__o_al_n74, and_and_and_and_and__o_al_n73, q6_al_n64_neg);
  and and_and_and_and_and__al_u35 (and_and_and_and_and__o_al_n75, and_and_and_and_and__o_al_n74, q7_al_n65_neg);
  and and_and_and_and_and__al_u36 (and_and_and_and_and__o_al_n76, and_and_and_and_and__o_al_n75, q8_al_n66_neg);
  and and_empty_equal_test (and_empty_equal_test_o, empty_equal_test_o_neg_neg, and_re_or_empty_equa_o);
  and and_empty_equal_test_al_u5 (and_empty_equal_test_o_al_n5, empty_equal_test_o_neg, and_re_or_empty_equa_o_neg);
  and and_or_q10_al_n28_q9 (and_or_q10_al_n28_q9_o, or_q10_al_n28_q9_al__o, and_and_and_and_and__o_al_n35);
  and and_or_q10_al_n68_q9 (and_or_q10_al_n68_q9_o, or_q10_al_n68_q9_al__o, and_and_and_and_and__o_al_n76);
  and and_or_q10_q9_o_and_ (and_or_q10_q9_o_and__o, or_q10_q9_o, and_and_and_and_and__o_al_n3);
  and and_q1_al_n19_and__a (and_q1_al_n19_and__a_o, q1_al_n19, q0_al_n18_neg);
  and and_q1_al_n59_and__a (and_q1_al_n59_and__a_o, q1_al_n59, q0_al_n58_neg);
  and and_q1_and__al_n1_q0 (and_q1_and__al_n1_q0_o, q1, q0_neg);
  and and_q2_al_n20_and_an (and_q2_al_n20_and_an_o, q2_al_n20, and_and__al_n1_q0_al_o);
  and and_q2_al_n60_and_an (and_q2_al_n60_and_an_o, q2_al_n60, and_and__al_n1_q0_al_o_al_n69);
  and and_q2_and_and__al_n (and_q2_and_and__al_n_o, q2, and_and__al_n1_q0_ne_o);
  and and_q3_al_n21_and_an (and_q3_al_n21_and_an_o, q3_al_n21, and_and_and__al_n1_q_o_al_n29);
  and and_q3_al_n61_and_an (and_q3_al_n61_and_an_o, q3_al_n61, and_and_and__al_n1_q_o_al_n70);
  and and_q3_and_and_and__ (and_q3_and_and_and___o, q3, and_and_and__al_n1_q_o);
  and and_q4_al_n22_and_an (and_q4_al_n22_and_an_o, q4_al_n22, and_and_and_and__al__o_al_n30);
  and and_q4_al_n62_and_an (and_q4_al_n62_and_an_o, q4_al_n62, and_and_and_and__al__o_al_n71);
  and and_q4_and_and_and_a (and_q4_and_and_and_a_o, q4, and_and_and_and__al__o);
  and and_q5_al_n23_and_an (and_q5_al_n23_and_an_o, q5_al_n23, and_and_and_and_and__o_al_n31);
  and and_q5_al_n63_and_an (and_q5_al_n63_and_an_o, q5_al_n63, and_and_and_and_and__o_al_n72);
  and and_q5_and_and_and_a (and_q5_and_and_and_a_o, q5, and_and_and_and_and__o);
  and and_q6_al_n24_and_an (and_q6_al_n24_and_an_o, q6_al_n24, and_and_and_and_and__o_al_n32);
  and and_q6_al_n64_and_an (and_q6_al_n64_and_an_o, q6_al_n64, and_and_and_and_and__o_al_n73);
  and and_q6_and_and_and_a (and_q6_and_and_and_a_o, q6, and_and_and_and_and__o_al_n0);
  and and_q7_al_n25_and_an (and_q7_al_n25_and_an_o, q7_al_n25, and_and_and_and_and__o_al_n33);
  and and_q7_al_n65_and_an (and_q7_al_n65_and_an_o, q7_al_n65, and_and_and_and_and__o_al_n74);
  and and_q7_and_and_and_a (and_q7_and_and_and_a_o, q7, and_and_and_and_and__o_al_n1);
  and and_q8_al_n26_and_an (and_q8_al_n26_and_an_o, q8_al_n26, and_and_and_and_and__o_al_n34);
  and and_q8_al_n66_and_an (and_q8_al_n66_and_an_o, q8_al_n66, and_and_and_and_and__o_al_n75);
  and and_q8_and_and_and_a (and_q8_and_and_and_a_o, q8, and_and_and_and_and__o_al_n2);
  and and_re_or_empty_equa (and_re_or_empty_equa_o, re, or_empty_equal_o_sho_o_neg);
  not and_re_or_empty_equa_o_inv (and_re_or_empty_equa_o_neg, and_re_or_empty_equa_o);
  and and_s_state_mux_o0_a (and_s_state_mux_o0_a_o, s_state_mux_o0_al_n12, and_re_or_empty_equa_o_neg);
  and and_s_state_mux_o0_a_al_u15 (and_s_state_mux_o0_a_o_al_n15, s_state_mux_o0_al_n12, and_re_or_empty_equa_o);
  and and_s_state_mux_o0_a_al_u16 (and_s_state_mux_o0_a_o_al_n16, s_state_mux_o0_al_n11, and_re_or_empty_equa_o);
  and and_s_state_mux_o0_a_al_u17 (and_s_state_mux_o0_a_o_al_n17, s_state_mux_o0_al_n10, empty_equal_test_o_neg);
  and and_we_full_equal_o_ (and_we_full_equal_o__o, we, full_equal_o_neg);
  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();
  AL_MUX \data_mux_r1_1_b0/al_mux_b0_0_0  (
    .i0(r10),
    .i1(ram_q0),
    .sel(and_s_state_mux_o0_a_o),
    .o(data_mux_r1_1_o0));
  AL_MUX \data_mux_r1_1_b1/al_mux_b0_0_0  (
    .i0(r11),
    .i1(ram_q1),
    .sel(and_s_state_mux_o0_a_o),
    .o(data_mux_r1_1_o1));
  AL_MUX \data_mux_r1_1_b10/al_mux_b0_0_0  (
    .i0(r110),
    .i1(ram_q10),
    .sel(and_s_state_mux_o0_a_o),
    .o(data_mux_r1_1_o10));
  AL_MUX \data_mux_r1_1_b11/al_mux_b0_0_0  (
    .i0(r111),
    .i1(ram_q11),
    .sel(and_s_state_mux_o0_a_o),
    .o(data_mux_r1_1_o11));
  AL_MUX \data_mux_r1_1_b12/al_mux_b0_0_0  (
    .i0(r112),
    .i1(ram_q12),
    .sel(and_s_state_mux_o0_a_o),
    .o(data_mux_r1_1_o12));
  AL_MUX \data_mux_r1_1_b13/al_mux_b0_0_0  (
    .i0(r113),
    .i1(ram_q13),
    .sel(and_s_state_mux_o0_a_o),
    .o(data_mux_r1_1_o13));
  AL_MUX \data_mux_r1_1_b14/al_mux_b0_0_0  (
    .i0(r114),
    .i1(ram_q14),
    .sel(and_s_state_mux_o0_a_o),
    .o(data_mux_r1_1_o14));
  AL_MUX \data_mux_r1_1_b15/al_mux_b0_0_0  (
    .i0(r115),
    .i1(ram_q15),
    .sel(and_s_state_mux_o0_a_o),
    .o(data_mux_r1_1_o15));
  AL_MUX \data_mux_r1_1_b2/al_mux_b0_0_0  (
    .i0(r12),
    .i1(ram_q2),
    .sel(and_s_state_mux_o0_a_o),
    .o(data_mux_r1_1_o2));
  AL_MUX \data_mux_r1_1_b3/al_mux_b0_0_0  (
    .i0(r13),
    .i1(ram_q3),
    .sel(and_s_state_mux_o0_a_o),
    .o(data_mux_r1_1_o3));
  AL_MUX \data_mux_r1_1_b4/al_mux_b0_0_0  (
    .i0(r14),
    .i1(ram_q4),
    .sel(and_s_state_mux_o0_a_o),
    .o(data_mux_r1_1_o4));
  AL_MUX \data_mux_r1_1_b5/al_mux_b0_0_0  (
    .i0(r15),
    .i1(ram_q5),
    .sel(and_s_state_mux_o0_a_o),
    .o(data_mux_r1_1_o5));
  AL_MUX \data_mux_r1_1_b6/al_mux_b0_0_0  (
    .i0(r16),
    .i1(ram_q6),
    .sel(and_s_state_mux_o0_a_o),
    .o(data_mux_r1_1_o6));
  AL_MUX \data_mux_r1_1_b7/al_mux_b0_0_0  (
    .i0(r17),
    .i1(ram_q7),
    .sel(and_s_state_mux_o0_a_o),
    .o(data_mux_r1_1_o7));
  AL_MUX \data_mux_r1_1_b8/al_mux_b0_0_0  (
    .i0(r18),
    .i1(ram_q8),
    .sel(and_s_state_mux_o0_a_o),
    .o(data_mux_r1_1_o8));
  AL_MUX \data_mux_r1_1_b9/al_mux_b0_0_0  (
    .i0(r19),
    .i1(ram_q9),
    .sel(and_s_state_mux_o0_a_o),
    .o(data_mux_r1_1_o9));
  AL_MUX \data_mux_r1_2_b0/al_mux_b0_0_0  (
    .i0(data_mux_r1_1_o0),
    .i1(1'b0),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r1_2_o0));
  AL_MUX \data_mux_r1_2_b1/al_mux_b0_0_0  (
    .i0(data_mux_r1_1_o1),
    .i1(1'b0),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r1_2_o1));
  AL_MUX \data_mux_r1_2_b10/al_mux_b0_0_0  (
    .i0(data_mux_r1_1_o10),
    .i1(1'b0),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r1_2_o10));
  AL_MUX \data_mux_r1_2_b11/al_mux_b0_0_0  (
    .i0(data_mux_r1_1_o11),
    .i1(1'b0),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r1_2_o11));
  AL_MUX \data_mux_r1_2_b12/al_mux_b0_0_0  (
    .i0(data_mux_r1_1_o12),
    .i1(1'b0),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r1_2_o12));
  AL_MUX \data_mux_r1_2_b13/al_mux_b0_0_0  (
    .i0(data_mux_r1_1_o13),
    .i1(1'b0),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r1_2_o13));
  AL_MUX \data_mux_r1_2_b14/al_mux_b0_0_0  (
    .i0(data_mux_r1_1_o14),
    .i1(1'b0),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r1_2_o14));
  AL_MUX \data_mux_r1_2_b15/al_mux_b0_0_0  (
    .i0(data_mux_r1_1_o15),
    .i1(1'b0),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r1_2_o15));
  AL_MUX \data_mux_r1_2_b2/al_mux_b0_0_0  (
    .i0(data_mux_r1_1_o2),
    .i1(1'b0),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r1_2_o2));
  AL_MUX \data_mux_r1_2_b3/al_mux_b0_0_0  (
    .i0(data_mux_r1_1_o3),
    .i1(1'b0),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r1_2_o3));
  AL_MUX \data_mux_r1_2_b4/al_mux_b0_0_0  (
    .i0(data_mux_r1_1_o4),
    .i1(1'b0),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r1_2_o4));
  AL_MUX \data_mux_r1_2_b5/al_mux_b0_0_0  (
    .i0(data_mux_r1_1_o5),
    .i1(1'b0),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r1_2_o5));
  AL_MUX \data_mux_r1_2_b6/al_mux_b0_0_0  (
    .i0(data_mux_r1_1_o6),
    .i1(1'b0),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r1_2_o6));
  AL_MUX \data_mux_r1_2_b7/al_mux_b0_0_0  (
    .i0(data_mux_r1_1_o7),
    .i1(1'b0),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r1_2_o7));
  AL_MUX \data_mux_r1_2_b8/al_mux_b0_0_0  (
    .i0(data_mux_r1_1_o8),
    .i1(1'b0),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r1_2_o8));
  AL_MUX \data_mux_r1_2_b9/al_mux_b0_0_0  (
    .i0(data_mux_r1_1_o9),
    .i1(1'b0),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r1_2_o9));
  AL_MUX \data_mux_r1_3_b0/al_mux_b0_0_0  (
    .i0(data_mux_r1_2_o0),
    .i1(ram_q0),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r1_3_o0));
  AL_MUX \data_mux_r1_3_b1/al_mux_b0_0_0  (
    .i0(data_mux_r1_2_o1),
    .i1(ram_q1),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r1_3_o1));
  AL_MUX \data_mux_r1_3_b10/al_mux_b0_0_0  (
    .i0(data_mux_r1_2_o10),
    .i1(ram_q10),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r1_3_o10));
  AL_MUX \data_mux_r1_3_b11/al_mux_b0_0_0  (
    .i0(data_mux_r1_2_o11),
    .i1(ram_q11),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r1_3_o11));
  AL_MUX \data_mux_r1_3_b12/al_mux_b0_0_0  (
    .i0(data_mux_r1_2_o12),
    .i1(ram_q12),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r1_3_o12));
  AL_MUX \data_mux_r1_3_b13/al_mux_b0_0_0  (
    .i0(data_mux_r1_2_o13),
    .i1(ram_q13),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r1_3_o13));
  AL_MUX \data_mux_r1_3_b14/al_mux_b0_0_0  (
    .i0(data_mux_r1_2_o14),
    .i1(ram_q14),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r1_3_o14));
  AL_MUX \data_mux_r1_3_b15/al_mux_b0_0_0  (
    .i0(data_mux_r1_2_o15),
    .i1(ram_q15),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r1_3_o15));
  AL_MUX \data_mux_r1_3_b2/al_mux_b0_0_0  (
    .i0(data_mux_r1_2_o2),
    .i1(ram_q2),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r1_3_o2));
  AL_MUX \data_mux_r1_3_b3/al_mux_b0_0_0  (
    .i0(data_mux_r1_2_o3),
    .i1(ram_q3),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r1_3_o3));
  AL_MUX \data_mux_r1_3_b4/al_mux_b0_0_0  (
    .i0(data_mux_r1_2_o4),
    .i1(ram_q4),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r1_3_o4));
  AL_MUX \data_mux_r1_3_b5/al_mux_b0_0_0  (
    .i0(data_mux_r1_2_o5),
    .i1(ram_q5),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r1_3_o5));
  AL_MUX \data_mux_r1_3_b6/al_mux_b0_0_0  (
    .i0(data_mux_r1_2_o6),
    .i1(ram_q6),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r1_3_o6));
  AL_MUX \data_mux_r1_3_b7/al_mux_b0_0_0  (
    .i0(data_mux_r1_2_o7),
    .i1(ram_q7),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r1_3_o7));
  AL_MUX \data_mux_r1_3_b8/al_mux_b0_0_0  (
    .i0(data_mux_r1_2_o8),
    .i1(ram_q8),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r1_3_o8));
  AL_MUX \data_mux_r1_3_b9/al_mux_b0_0_0  (
    .i0(data_mux_r1_2_o9),
    .i1(ram_q9),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r1_3_o9));
  AL_MUX \data_mux_r1_4_b0/al_mux_b0_0_0  (
    .i0(data_mux_r1_3_o0),
    .i1(ram_q0),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r1_4_o0));
  AL_MUX \data_mux_r1_4_b1/al_mux_b0_0_0  (
    .i0(data_mux_r1_3_o1),
    .i1(ram_q1),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r1_4_o1));
  AL_MUX \data_mux_r1_4_b10/al_mux_b0_0_0  (
    .i0(data_mux_r1_3_o10),
    .i1(ram_q10),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r1_4_o10));
  AL_MUX \data_mux_r1_4_b11/al_mux_b0_0_0  (
    .i0(data_mux_r1_3_o11),
    .i1(ram_q11),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r1_4_o11));
  AL_MUX \data_mux_r1_4_b12/al_mux_b0_0_0  (
    .i0(data_mux_r1_3_o12),
    .i1(ram_q12),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r1_4_o12));
  AL_MUX \data_mux_r1_4_b13/al_mux_b0_0_0  (
    .i0(data_mux_r1_3_o13),
    .i1(ram_q13),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r1_4_o13));
  AL_MUX \data_mux_r1_4_b14/al_mux_b0_0_0  (
    .i0(data_mux_r1_3_o14),
    .i1(ram_q14),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r1_4_o14));
  AL_MUX \data_mux_r1_4_b15/al_mux_b0_0_0  (
    .i0(data_mux_r1_3_o15),
    .i1(ram_q15),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r1_4_o15));
  AL_MUX \data_mux_r1_4_b2/al_mux_b0_0_0  (
    .i0(data_mux_r1_3_o2),
    .i1(ram_q2),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r1_4_o2));
  AL_MUX \data_mux_r1_4_b3/al_mux_b0_0_0  (
    .i0(data_mux_r1_3_o3),
    .i1(ram_q3),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r1_4_o3));
  AL_MUX \data_mux_r1_4_b4/al_mux_b0_0_0  (
    .i0(data_mux_r1_3_o4),
    .i1(ram_q4),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r1_4_o4));
  AL_MUX \data_mux_r1_4_b5/al_mux_b0_0_0  (
    .i0(data_mux_r1_3_o5),
    .i1(ram_q5),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r1_4_o5));
  AL_MUX \data_mux_r1_4_b6/al_mux_b0_0_0  (
    .i0(data_mux_r1_3_o6),
    .i1(ram_q6),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r1_4_o6));
  AL_MUX \data_mux_r1_4_b7/al_mux_b0_0_0  (
    .i0(data_mux_r1_3_o7),
    .i1(ram_q7),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r1_4_o7));
  AL_MUX \data_mux_r1_4_b8/al_mux_b0_0_0  (
    .i0(data_mux_r1_3_o8),
    .i1(ram_q8),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r1_4_o8));
  AL_MUX \data_mux_r1_4_b9/al_mux_b0_0_0  (
    .i0(data_mux_r1_3_o9),
    .i1(ram_q9),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r1_4_o9));
  AL_MUX \data_mux_r1_5_b0/al_mux_b0_0_0  (
    .i0(data_mux_r1_4_o0),
    .i1(1'b0),
    .sel(s_state_mux_o0),
    .o(data_mux_r1_5_o0));
  AL_MUX \data_mux_r1_5_b1/al_mux_b0_0_0  (
    .i0(data_mux_r1_4_o1),
    .i1(1'b0),
    .sel(s_state_mux_o0),
    .o(data_mux_r1_5_o1));
  AL_MUX \data_mux_r1_5_b10/al_mux_b0_0_0  (
    .i0(data_mux_r1_4_o10),
    .i1(1'b0),
    .sel(s_state_mux_o0),
    .o(data_mux_r1_5_o10));
  AL_MUX \data_mux_r1_5_b11/al_mux_b0_0_0  (
    .i0(data_mux_r1_4_o11),
    .i1(1'b0),
    .sel(s_state_mux_o0),
    .o(data_mux_r1_5_o11));
  AL_MUX \data_mux_r1_5_b12/al_mux_b0_0_0  (
    .i0(data_mux_r1_4_o12),
    .i1(1'b0),
    .sel(s_state_mux_o0),
    .o(data_mux_r1_5_o12));
  AL_MUX \data_mux_r1_5_b13/al_mux_b0_0_0  (
    .i0(data_mux_r1_4_o13),
    .i1(1'b0),
    .sel(s_state_mux_o0),
    .o(data_mux_r1_5_o13));
  AL_MUX \data_mux_r1_5_b14/al_mux_b0_0_0  (
    .i0(data_mux_r1_4_o14),
    .i1(1'b0),
    .sel(s_state_mux_o0),
    .o(data_mux_r1_5_o14));
  AL_MUX \data_mux_r1_5_b15/al_mux_b0_0_0  (
    .i0(data_mux_r1_4_o15),
    .i1(1'b0),
    .sel(s_state_mux_o0),
    .o(data_mux_r1_5_o15));
  AL_MUX \data_mux_r1_5_b2/al_mux_b0_0_0  (
    .i0(data_mux_r1_4_o2),
    .i1(1'b0),
    .sel(s_state_mux_o0),
    .o(data_mux_r1_5_o2));
  AL_MUX \data_mux_r1_5_b3/al_mux_b0_0_0  (
    .i0(data_mux_r1_4_o3),
    .i1(1'b0),
    .sel(s_state_mux_o0),
    .o(data_mux_r1_5_o3));
  AL_MUX \data_mux_r1_5_b4/al_mux_b0_0_0  (
    .i0(data_mux_r1_4_o4),
    .i1(1'b0),
    .sel(s_state_mux_o0),
    .o(data_mux_r1_5_o4));
  AL_MUX \data_mux_r1_5_b5/al_mux_b0_0_0  (
    .i0(data_mux_r1_4_o5),
    .i1(1'b0),
    .sel(s_state_mux_o0),
    .o(data_mux_r1_5_o5));
  AL_MUX \data_mux_r1_5_b6/al_mux_b0_0_0  (
    .i0(data_mux_r1_4_o6),
    .i1(1'b0),
    .sel(s_state_mux_o0),
    .o(data_mux_r1_5_o6));
  AL_MUX \data_mux_r1_5_b7/al_mux_b0_0_0  (
    .i0(data_mux_r1_4_o7),
    .i1(1'b0),
    .sel(s_state_mux_o0),
    .o(data_mux_r1_5_o7));
  AL_MUX \data_mux_r1_5_b8/al_mux_b0_0_0  (
    .i0(data_mux_r1_4_o8),
    .i1(1'b0),
    .sel(s_state_mux_o0),
    .o(data_mux_r1_5_o8));
  AL_MUX \data_mux_r1_5_b9/al_mux_b0_0_0  (
    .i0(data_mux_r1_4_o9),
    .i1(1'b0),
    .sel(s_state_mux_o0),
    .o(data_mux_r1_5_o9));
  AL_MUX \data_mux_r2_2_b0/al_mux_b0_0_0  (
    .i0(do[0]),
    .i1(ram_q0),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r2_2_o0));
  AL_MUX \data_mux_r2_2_b1/al_mux_b0_0_0  (
    .i0(do[1]),
    .i1(ram_q1),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r2_2_o1));
  AL_MUX \data_mux_r2_2_b10/al_mux_b0_0_0  (
    .i0(do[10]),
    .i1(ram_q10),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r2_2_o10));
  AL_MUX \data_mux_r2_2_b11/al_mux_b0_0_0  (
    .i0(do[11]),
    .i1(ram_q11),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r2_2_o11));
  AL_MUX \data_mux_r2_2_b12/al_mux_b0_0_0  (
    .i0(do[12]),
    .i1(ram_q12),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r2_2_o12));
  AL_MUX \data_mux_r2_2_b13/al_mux_b0_0_0  (
    .i0(do[13]),
    .i1(ram_q13),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r2_2_o13));
  AL_MUX \data_mux_r2_2_b14/al_mux_b0_0_0  (
    .i0(do[14]),
    .i1(ram_q14),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r2_2_o14));
  AL_MUX \data_mux_r2_2_b15/al_mux_b0_0_0  (
    .i0(do[15]),
    .i1(ram_q15),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r2_2_o15));
  AL_MUX \data_mux_r2_2_b2/al_mux_b0_0_0  (
    .i0(do[2]),
    .i1(ram_q2),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r2_2_o2));
  AL_MUX \data_mux_r2_2_b3/al_mux_b0_0_0  (
    .i0(do[3]),
    .i1(ram_q3),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r2_2_o3));
  AL_MUX \data_mux_r2_2_b4/al_mux_b0_0_0  (
    .i0(do[4]),
    .i1(ram_q4),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r2_2_o4));
  AL_MUX \data_mux_r2_2_b5/al_mux_b0_0_0  (
    .i0(do[5]),
    .i1(ram_q5),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r2_2_o5));
  AL_MUX \data_mux_r2_2_b6/al_mux_b0_0_0  (
    .i0(do[6]),
    .i1(ram_q6),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r2_2_o6));
  AL_MUX \data_mux_r2_2_b7/al_mux_b0_0_0  (
    .i0(do[7]),
    .i1(ram_q7),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r2_2_o7));
  AL_MUX \data_mux_r2_2_b8/al_mux_b0_0_0  (
    .i0(do[8]),
    .i1(ram_q8),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r2_2_o8));
  AL_MUX \data_mux_r2_2_b9/al_mux_b0_0_0  (
    .i0(do[9]),
    .i1(ram_q9),
    .sel(and_s_state_mux_o0_a_o_al_n15),
    .o(data_mux_r2_2_o9));
  AL_MUX \data_mux_r2_3_b0/al_mux_b0_0_0  (
    .i0(data_mux_r2_2_o0),
    .i1(r10),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r2_3_o0));
  AL_MUX \data_mux_r2_3_b1/al_mux_b0_0_0  (
    .i0(data_mux_r2_2_o1),
    .i1(r11),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r2_3_o1));
  AL_MUX \data_mux_r2_3_b10/al_mux_b0_0_0  (
    .i0(data_mux_r2_2_o10),
    .i1(r110),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r2_3_o10));
  AL_MUX \data_mux_r2_3_b11/al_mux_b0_0_0  (
    .i0(data_mux_r2_2_o11),
    .i1(r111),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r2_3_o11));
  AL_MUX \data_mux_r2_3_b12/al_mux_b0_0_0  (
    .i0(data_mux_r2_2_o12),
    .i1(r112),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r2_3_o12));
  AL_MUX \data_mux_r2_3_b13/al_mux_b0_0_0  (
    .i0(data_mux_r2_2_o13),
    .i1(r113),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r2_3_o13));
  AL_MUX \data_mux_r2_3_b14/al_mux_b0_0_0  (
    .i0(data_mux_r2_2_o14),
    .i1(r114),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r2_3_o14));
  AL_MUX \data_mux_r2_3_b15/al_mux_b0_0_0  (
    .i0(data_mux_r2_2_o15),
    .i1(r115),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r2_3_o15));
  AL_MUX \data_mux_r2_3_b2/al_mux_b0_0_0  (
    .i0(data_mux_r2_2_o2),
    .i1(r12),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r2_3_o2));
  AL_MUX \data_mux_r2_3_b3/al_mux_b0_0_0  (
    .i0(data_mux_r2_2_o3),
    .i1(r13),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r2_3_o3));
  AL_MUX \data_mux_r2_3_b4/al_mux_b0_0_0  (
    .i0(data_mux_r2_2_o4),
    .i1(r14),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r2_3_o4));
  AL_MUX \data_mux_r2_3_b5/al_mux_b0_0_0  (
    .i0(data_mux_r2_2_o5),
    .i1(r15),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r2_3_o5));
  AL_MUX \data_mux_r2_3_b6/al_mux_b0_0_0  (
    .i0(data_mux_r2_2_o6),
    .i1(r16),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r2_3_o6));
  AL_MUX \data_mux_r2_3_b7/al_mux_b0_0_0  (
    .i0(data_mux_r2_2_o7),
    .i1(r17),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r2_3_o7));
  AL_MUX \data_mux_r2_3_b8/al_mux_b0_0_0  (
    .i0(data_mux_r2_2_o8),
    .i1(r18),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r2_3_o8));
  AL_MUX \data_mux_r2_3_b9/al_mux_b0_0_0  (
    .i0(data_mux_r2_2_o9),
    .i1(r19),
    .sel(and_s_state_mux_o0_a_o_al_n16),
    .o(data_mux_r2_3_o9));
  AL_MUX \data_mux_r2_4_b0/al_mux_b0_0_0  (
    .i0(data_mux_r2_3_o0),
    .i1(do[0]),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r2_4_o0));
  AL_MUX \data_mux_r2_4_b1/al_mux_b0_0_0  (
    .i0(data_mux_r2_3_o1),
    .i1(do[1]),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r2_4_o1));
  AL_MUX \data_mux_r2_4_b10/al_mux_b0_0_0  (
    .i0(data_mux_r2_3_o10),
    .i1(do[10]),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r2_4_o10));
  AL_MUX \data_mux_r2_4_b11/al_mux_b0_0_0  (
    .i0(data_mux_r2_3_o11),
    .i1(do[11]),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r2_4_o11));
  AL_MUX \data_mux_r2_4_b12/al_mux_b0_0_0  (
    .i0(data_mux_r2_3_o12),
    .i1(do[12]),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r2_4_o12));
  AL_MUX \data_mux_r2_4_b13/al_mux_b0_0_0  (
    .i0(data_mux_r2_3_o13),
    .i1(do[13]),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r2_4_o13));
  AL_MUX \data_mux_r2_4_b14/al_mux_b0_0_0  (
    .i0(data_mux_r2_3_o14),
    .i1(do[14]),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r2_4_o14));
  AL_MUX \data_mux_r2_4_b15/al_mux_b0_0_0  (
    .i0(data_mux_r2_3_o15),
    .i1(do[15]),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r2_4_o15));
  AL_MUX \data_mux_r2_4_b2/al_mux_b0_0_0  (
    .i0(data_mux_r2_3_o2),
    .i1(do[2]),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r2_4_o2));
  AL_MUX \data_mux_r2_4_b3/al_mux_b0_0_0  (
    .i0(data_mux_r2_3_o3),
    .i1(do[3]),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r2_4_o3));
  AL_MUX \data_mux_r2_4_b4/al_mux_b0_0_0  (
    .i0(data_mux_r2_3_o4),
    .i1(do[4]),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r2_4_o4));
  AL_MUX \data_mux_r2_4_b5/al_mux_b0_0_0  (
    .i0(data_mux_r2_3_o5),
    .i1(do[5]),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r2_4_o5));
  AL_MUX \data_mux_r2_4_b6/al_mux_b0_0_0  (
    .i0(data_mux_r2_3_o6),
    .i1(do[6]),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r2_4_o6));
  AL_MUX \data_mux_r2_4_b7/al_mux_b0_0_0  (
    .i0(data_mux_r2_3_o7),
    .i1(do[7]),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r2_4_o7));
  AL_MUX \data_mux_r2_4_b8/al_mux_b0_0_0  (
    .i0(data_mux_r2_3_o8),
    .i1(do[8]),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r2_4_o8));
  AL_MUX \data_mux_r2_4_b9/al_mux_b0_0_0  (
    .i0(data_mux_r2_3_o9),
    .i1(do[9]),
    .sel(and_s_state_mux_o0_a_o_al_n17),
    .o(data_mux_r2_4_o9));
  AL_MUX \data_mux_r2_5_b0/al_mux_b0_0_0  (
    .i0(data_mux_r2_4_o0),
    .i1(ram_q0),
    .sel(s_state_mux_o0),
    .o(data_mux_r2_5_o0));
  AL_MUX \data_mux_r2_5_b1/al_mux_b0_0_0  (
    .i0(data_mux_r2_4_o1),
    .i1(ram_q1),
    .sel(s_state_mux_o0),
    .o(data_mux_r2_5_o1));
  AL_MUX \data_mux_r2_5_b10/al_mux_b0_0_0  (
    .i0(data_mux_r2_4_o10),
    .i1(ram_q10),
    .sel(s_state_mux_o0),
    .o(data_mux_r2_5_o10));
  AL_MUX \data_mux_r2_5_b11/al_mux_b0_0_0  (
    .i0(data_mux_r2_4_o11),
    .i1(ram_q11),
    .sel(s_state_mux_o0),
    .o(data_mux_r2_5_o11));
  AL_MUX \data_mux_r2_5_b12/al_mux_b0_0_0  (
    .i0(data_mux_r2_4_o12),
    .i1(ram_q12),
    .sel(s_state_mux_o0),
    .o(data_mux_r2_5_o12));
  AL_MUX \data_mux_r2_5_b13/al_mux_b0_0_0  (
    .i0(data_mux_r2_4_o13),
    .i1(ram_q13),
    .sel(s_state_mux_o0),
    .o(data_mux_r2_5_o13));
  AL_MUX \data_mux_r2_5_b14/al_mux_b0_0_0  (
    .i0(data_mux_r2_4_o14),
    .i1(ram_q14),
    .sel(s_state_mux_o0),
    .o(data_mux_r2_5_o14));
  AL_MUX \data_mux_r2_5_b15/al_mux_b0_0_0  (
    .i0(data_mux_r2_4_o15),
    .i1(ram_q15),
    .sel(s_state_mux_o0),
    .o(data_mux_r2_5_o15));
  AL_MUX \data_mux_r2_5_b2/al_mux_b0_0_0  (
    .i0(data_mux_r2_4_o2),
    .i1(ram_q2),
    .sel(s_state_mux_o0),
    .o(data_mux_r2_5_o2));
  AL_MUX \data_mux_r2_5_b3/al_mux_b0_0_0  (
    .i0(data_mux_r2_4_o3),
    .i1(ram_q3),
    .sel(s_state_mux_o0),
    .o(data_mux_r2_5_o3));
  AL_MUX \data_mux_r2_5_b4/al_mux_b0_0_0  (
    .i0(data_mux_r2_4_o4),
    .i1(ram_q4),
    .sel(s_state_mux_o0),
    .o(data_mux_r2_5_o4));
  AL_MUX \data_mux_r2_5_b5/al_mux_b0_0_0  (
    .i0(data_mux_r2_4_o5),
    .i1(ram_q5),
    .sel(s_state_mux_o0),
    .o(data_mux_r2_5_o5));
  AL_MUX \data_mux_r2_5_b6/al_mux_b0_0_0  (
    .i0(data_mux_r2_4_o6),
    .i1(ram_q6),
    .sel(s_state_mux_o0),
    .o(data_mux_r2_5_o6));
  AL_MUX \data_mux_r2_5_b7/al_mux_b0_0_0  (
    .i0(data_mux_r2_4_o7),
    .i1(ram_q7),
    .sel(s_state_mux_o0),
    .o(data_mux_r2_5_o7));
  AL_MUX \data_mux_r2_5_b8/al_mux_b0_0_0  (
    .i0(data_mux_r2_4_o8),
    .i1(ram_q8),
    .sel(s_state_mux_o0),
    .o(data_mux_r2_5_o8));
  AL_MUX \data_mux_r2_5_b9/al_mux_b0_0_0  (
    .i0(data_mux_r2_4_o9),
    .i1(ram_q9),
    .sel(s_state_mux_o0),
    .o(data_mux_r2_5_o9));
  not \empty_equal/none_diff  (empty_equal_o, \empty_equal/or_or_or_xor_i0[0]_i_o );
  or \empty_equal/or_or_or_xor_i0[0]_i  (\empty_equal/or_or_or_xor_i0[0]_i_o , \empty_equal/or_or_xor_i0[0]_i1[0_o , \empty_equal/or_or_xor_i0[5]_i1[5_o );
  or \empty_equal/or_or_xor_i0[0]_i1[0  (\empty_equal/or_or_xor_i0[0]_i1[0_o , \empty_equal/or_xor_i0[0]_i1[0]_o_o , \empty_equal/or_xor_i0[2]_i1[2]_o_o );
  or \empty_equal/or_or_xor_i0[5]_i1[5  (\empty_equal/or_or_xor_i0[5]_i1[5_o , \empty_equal/or_xor_i0[5]_i1[5]_o_o , \empty_equal/or_xor_i0[7]_i1[7]_o_o );
  or \empty_equal/or_xor_i0[0]_i1[0]_o  (\empty_equal/or_xor_i0[0]_i1[0]_o_o , \empty_equal/xor_i0[0]_i1[0]_o , \empty_equal/xor_i0[1]_i1[1]_o );
  or \empty_equal/or_xor_i0[2]_i1[2]_o  (\empty_equal/or_xor_i0[2]_i1[2]_o_o , \empty_equal/xor_i0[2]_i1[2]_o , \empty_equal/or_xor_i0[3]_i1[3]_o_o );
  or \empty_equal/or_xor_i0[3]_i1[3]_o  (\empty_equal/or_xor_i0[3]_i1[3]_o_o , \empty_equal/xor_i0[3]_i1[3]_o , \empty_equal/xor_i0[4]_i1[4]_o );
  or \empty_equal/or_xor_i0[5]_i1[5]_o  (\empty_equal/or_xor_i0[5]_i1[5]_o_o , \empty_equal/xor_i0[5]_i1[5]_o , \empty_equal/xor_i0[6]_i1[6]_o );
  or \empty_equal/or_xor_i0[7]_i1[7]_o  (\empty_equal/or_xor_i0[7]_i1[7]_o_o , \empty_equal/xor_i0[7]_i1[7]_o , \empty_equal/or_xor_i0[8]_i1[8]_o_o );
  or \empty_equal/or_xor_i0[8]_i1[8]_o  (\empty_equal/or_xor_i0[8]_i1[8]_o_o , \empty_equal/xor_i0[8]_i1[8]_o , \empty_equal/xor_i0[9]_i1[9]_o );
  xor \empty_equal/xor_i0[0]_i1[0]  (\empty_equal/xor_i0[0]_i1[0]_o , sync_delayed_wrptr_g0, rdptr_g0);
  xor \empty_equal/xor_i0[1]_i1[1]  (\empty_equal/xor_i0[1]_i1[1]_o , sync_delayed_wrptr_g1, rdptr_g1);
  xor \empty_equal/xor_i0[2]_i1[2]  (\empty_equal/xor_i0[2]_i1[2]_o , sync_delayed_wrptr_g2, rdptr_g2);
  xor \empty_equal/xor_i0[3]_i1[3]  (\empty_equal/xor_i0[3]_i1[3]_o , sync_delayed_wrptr_g3, rdptr_g3);
  xor \empty_equal/xor_i0[4]_i1[4]  (\empty_equal/xor_i0[4]_i1[4]_o , sync_delayed_wrptr_g4, rdptr_g4);
  xor \empty_equal/xor_i0[5]_i1[5]  (\empty_equal/xor_i0[5]_i1[5]_o , sync_delayed_wrptr_g5, rdptr_g5);
  xor \empty_equal/xor_i0[6]_i1[6]  (\empty_equal/xor_i0[6]_i1[6]_o , sync_delayed_wrptr_g6, rdptr_g6);
  xor \empty_equal/xor_i0[7]_i1[7]  (\empty_equal/xor_i0[7]_i1[7]_o , sync_delayed_wrptr_g7, rdptr_g7);
  xor \empty_equal/xor_i0[8]_i1[8]  (\empty_equal/xor_i0[8]_i1[8]_o , sync_delayed_wrptr_g8, rdptr_g8);
  xor \empty_equal/xor_i0[9]_i1[9]  (\empty_equal/xor_i0[9]_i1[9]_o , sync_delayed_wrptr_g9, rdptr_g9);
  not \empty_equal_test/none_diff  (empty_equal_test_o, \empty_equal_test/or_or_or_xor_i0[0]_i_o );
  or \empty_equal_test/or_or_or_xor_i0[0]_i  (\empty_equal_test/or_or_or_xor_i0[0]_i_o , \empty_equal_test/or_or_xor_i0[0]_i1[0_o , \empty_equal_test/or_or_xor_i0[5]_i1[5_o );
  or \empty_equal_test/or_or_xor_i0[0]_i1[0  (\empty_equal_test/or_or_xor_i0[0]_i1[0_o , \empty_equal_test/or_xor_i0[0]_i1[0]_o_o , \empty_equal_test/or_xor_i0[2]_i1[2]_o_o );
  or \empty_equal_test/or_or_xor_i0[5]_i1[5  (\empty_equal_test/or_or_xor_i0[5]_i1[5_o , \empty_equal_test/or_xor_i0[5]_i1[5]_o_o , \empty_equal_test/or_xor_i0[7]_i1[7]_o_o );
  or \empty_equal_test/or_xor_i0[0]_i1[0]_o  (\empty_equal_test/or_xor_i0[0]_i1[0]_o_o , \empty_equal_test/xor_i0[0]_i1[0]_o , \empty_equal_test/xor_i0[1]_i1[1]_o );
  or \empty_equal_test/or_xor_i0[2]_i1[2]_o  (\empty_equal_test/or_xor_i0[2]_i1[2]_o_o , \empty_equal_test/xor_i0[2]_i1[2]_o , \empty_equal_test/or_xor_i0[3]_i1[3]_o_o );
  or \empty_equal_test/or_xor_i0[3]_i1[3]_o  (\empty_equal_test/or_xor_i0[3]_i1[3]_o_o , \empty_equal_test/xor_i0[3]_i1[3]_o , \empty_equal_test/xor_i0[4]_i1[4]_o );
  or \empty_equal_test/or_xor_i0[5]_i1[5]_o  (\empty_equal_test/or_xor_i0[5]_i1[5]_o_o , \empty_equal_test/xor_i0[5]_i1[5]_o , \empty_equal_test/xor_i0[6]_i1[6]_o );
  or \empty_equal_test/or_xor_i0[7]_i1[7]_o  (\empty_equal_test/or_xor_i0[7]_i1[7]_o_o , \empty_equal_test/xor_i0[7]_i1[7]_o , \empty_equal_test/or_xor_i0[8]_i1[8]_o_o );
  or \empty_equal_test/or_xor_i0[8]_i1[8]_o  (\empty_equal_test/or_xor_i0[8]_i1[8]_o_o , \empty_equal_test/xor_i0[8]_i1[8]_o , \empty_equal_test/xor_i0[9]_i1[9]_o );
  xor \empty_equal_test/xor_i0[0]_i1[0]  (\empty_equal_test/xor_i0[0]_i1[0]_o , sync_delayed_wrptr_g0, rdptr_g_test0);
  xor \empty_equal_test/xor_i0[1]_i1[1]  (\empty_equal_test/xor_i0[1]_i1[1]_o , sync_delayed_wrptr_g1, rdptr_g_test1);
  xor \empty_equal_test/xor_i0[2]_i1[2]  (\empty_equal_test/xor_i0[2]_i1[2]_o , sync_delayed_wrptr_g2, rdptr_g_test2);
  xor \empty_equal_test/xor_i0[3]_i1[3]  (\empty_equal_test/xor_i0[3]_i1[3]_o , sync_delayed_wrptr_g3, rdptr_g_test3);
  xor \empty_equal_test/xor_i0[4]_i1[4]  (\empty_equal_test/xor_i0[4]_i1[4]_o , sync_delayed_wrptr_g4, rdptr_g_test4);
  xor \empty_equal_test/xor_i0[5]_i1[5]  (\empty_equal_test/xor_i0[5]_i1[5]_o , sync_delayed_wrptr_g5, rdptr_g_test5);
  xor \empty_equal_test/xor_i0[6]_i1[6]  (\empty_equal_test/xor_i0[6]_i1[6]_o , sync_delayed_wrptr_g6, rdptr_g_test6);
  xor \empty_equal_test/xor_i0[7]_i1[7]  (\empty_equal_test/xor_i0[7]_i1[7]_o , sync_delayed_wrptr_g7, rdptr_g_test7);
  xor \empty_equal_test/xor_i0[8]_i1[8]  (\empty_equal_test/xor_i0[8]_i1[8]_o , sync_delayed_wrptr_g8, rdptr_g_test8);
  xor \empty_equal_test/xor_i0[9]_i1[9]  (\empty_equal_test/xor_i0[9]_i1[9]_o , sync_delayed_wrptr_g9, rdptr_g_test9);
  not empty_equal_test_o_inv (empty_equal_test_o_neg, empty_equal_test_o);
  not empty_equal_test_o_neg_inv (empty_equal_test_o_neg_neg, empty_equal_test_o_neg);
  AL_MUX \empty_r_mux/al_mux_b0_0_0  (
    .i0(1'b1),
    .i1(and_empty_equal_test_o),
    .sel(curr_state0),
    .o(\empty_r_mux/B0_0 ));
  AL_MUX \empty_r_mux/al_mux_b0_0_1  (
    .i0(and_re_or_empty_equa_o),
    .i1(1'b0),
    .sel(curr_state0),
    .o(\empty_r_mux/B0_1 ));
  AL_MUX \empty_r_mux/al_mux_b0_0_2  (
    .i0(1'b0),
    .i1(1'b0),
    .sel(curr_state0),
    .o(\empty_r_mux/B0_2 ));
  AL_MUX \empty_r_mux/al_mux_b0_0_3  (
    .i0(1'b0),
    .i1(1'b0),
    .sel(curr_state0),
    .o(\empty_r_mux/B0_3 ));
  AL_MUX \empty_r_mux/al_mux_b0_1_0  (
    .i0(\empty_r_mux/B0_0 ),
    .i1(\empty_r_mux/B0_1 ),
    .sel(curr_state1),
    .o(\empty_r_mux/B1_0 ));
  AL_MUX \empty_r_mux/al_mux_b0_1_1  (
    .i0(\empty_r_mux/B0_2 ),
    .i1(\empty_r_mux/B0_3 ),
    .sel(curr_state1),
    .o(\empty_r_mux/B1_1 ));
  AL_MUX \empty_r_mux/al_mux_b0_2_0  (
    .i0(\empty_r_mux/B1_0 ),
    .i1(\empty_r_mux/B1_1 ),
    .sel(curr_state2),
    .o(empty_r_mux_o0));
  // address_offset=0;data_offset=0;depth=512;width=16;num_section=1;width_per_section=16;section_size=16;working_depth=512;working_width=18;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEBMUX("1"),
    .CSA0("1"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("18"),
    .DATA_WIDTH_B("18"),
    .MODE("PDPW8K"),
    .OCEAMUX("1"),
    .OCEBMUX("1"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    fifo_bram_512x16_sub_000000_000 (
    .addra({xor_wrptr_g9_wrptr_g_o,wrptr_g7,wrptr_g6,wrptr_g5,wrptr_g4,wrptr_g3,wrptr_g2,wrptr_g1,wrptr_g0,4'b1111}),
    .addrb({xor_rdptr_g_test9_rd_o,rdptr_g_test7,rdptr_g_test6,rdptr_g_test5,rdptr_g_test4,rdptr_g_test3,rdptr_g_test2,rdptr_g_test1,rdptr_g_test0,4'b1111}),
    .cea(and_we_full_equal_o__o),
    .clka(clkw),
    .clkb(clkr),
    .csb({and_addr_inc_empty_e_o,open_n51,open_n52}),
    .dia(di[8:0]),
    .dib({open_n53,open_n54,di[15:9]}),
    .rsta(rst),
    .rstb(rst),
    .doa({ram_q8,ram_q7,ram_q6,ram_q5,ram_q4,ram_q3,ram_q2,ram_q1,ram_q0}),
    .dob({open_n59,open_n60,ram_q15,ram_q14,ram_q13,ram_q12,ram_q11,ram_q10,ram_q9}));
  not \full_equal/none_diff  (full_flag, \full_equal/or_or_or_xor_i0[0]_i_o );
  or \full_equal/or_or_or_xor_i0[0]_i  (\full_equal/or_or_or_xor_i0[0]_i_o , \full_equal/or_or_xor_i0[0]_i1[0_o , \full_equal/or_or_xor_i0[5]_i1[5_o );
  or \full_equal/or_or_xor_i0[0]_i1[0  (\full_equal/or_or_xor_i0[0]_i1[0_o , \full_equal/or_xor_i0[0]_i1[0]_o_o , \full_equal/or_xor_i0[2]_i1[2]_o_o );
  or \full_equal/or_or_xor_i0[5]_i1[5  (\full_equal/or_or_xor_i0[5]_i1[5_o , \full_equal/or_xor_i0[5]_i1[5]_o_o , \full_equal/or_xor_i0[7]_i1[7]_o_o );
  or \full_equal/or_xor_i0[0]_i1[0]_o  (\full_equal/or_xor_i0[0]_i1[0]_o_o , \full_equal/xor_i0[0]_i1[0]_o , \full_equal/xor_i0[1]_i1[1]_o );
  or \full_equal/or_xor_i0[2]_i1[2]_o  (\full_equal/or_xor_i0[2]_i1[2]_o_o , \full_equal/xor_i0[2]_i1[2]_o , \full_equal/or_xor_i0[3]_i1[3]_o_o );
  or \full_equal/or_xor_i0[3]_i1[3]_o  (\full_equal/or_xor_i0[3]_i1[3]_o_o , \full_equal/xor_i0[3]_i1[3]_o , \full_equal/xor_i0[4]_i1[4]_o );
  or \full_equal/or_xor_i0[5]_i1[5]_o  (\full_equal/or_xor_i0[5]_i1[5]_o_o , \full_equal/xor_i0[5]_i1[5]_o , \full_equal/xor_i0[6]_i1[6]_o );
  or \full_equal/or_xor_i0[7]_i1[7]_o  (\full_equal/or_xor_i0[7]_i1[7]_o_o , \full_equal/xor_i0[7]_i1[7]_o , \full_equal/or_xor_i0[8]_i1[8]_o_o );
  or \full_equal/or_xor_i0[8]_i1[8]_o  (\full_equal/or_xor_i0[8]_i1[8]_o_o , \full_equal/xor_i0[8]_i1[8]_o , \full_equal/xor_i0[9]_i1[9]_o );
  xor \full_equal/xor_i0[0]_i1[0]  (\full_equal/xor_i0[0]_i1[0]_o , wrptr_g0, sync_rdptr_g0);
  xor \full_equal/xor_i0[1]_i1[1]  (\full_equal/xor_i0[1]_i1[1]_o , wrptr_g1, sync_rdptr_g1);
  xor \full_equal/xor_i0[2]_i1[2]  (\full_equal/xor_i0[2]_i1[2]_o , wrptr_g2, sync_rdptr_g2);
  xor \full_equal/xor_i0[3]_i1[3]  (\full_equal/xor_i0[3]_i1[3]_o , wrptr_g3, sync_rdptr_g3);
  xor \full_equal/xor_i0[4]_i1[4]  (\full_equal/xor_i0[4]_i1[4]_o , wrptr_g4, sync_rdptr_g4);
  xor \full_equal/xor_i0[5]_i1[5]  (\full_equal/xor_i0[5]_i1[5]_o , wrptr_g5, sync_rdptr_g5);
  xor \full_equal/xor_i0[6]_i1[6]  (\full_equal/xor_i0[6]_i1[6]_o , wrptr_g6, sync_rdptr_g6);
  xor \full_equal/xor_i0[7]_i1[7]  (\full_equal/xor_i0[7]_i1[7]_o , wrptr_g7, sync_rdptr_g7);
  xor \full_equal/xor_i0[8]_i1[8]  (\full_equal/xor_i0[8]_i1[8]_o , wrptr_g8, sync_rdptr_g8_neg);
  xor \full_equal/xor_i0[9]_i1[9]  (\full_equal/xor_i0[9]_i1[9]_o , wrptr_g9, sync_rdptr_g9_neg);
  not full_equal_o_inv (full_equal_o_neg, full_flag);
  AL_MUX \gray_counter_mux_al_u26_b0/al_mux_b0_0_0  (
    .i0(q0_al_n18),
    .i1(q0_al_n18_neg),
    .sel(and_re_or_empty_equa_o),
    .o(gray_counter_mux_o0_al_n37));
  AL_MUX \gray_counter_mux_al_u26_b1/al_mux_b0_0_0  (
    .i0(q1_al_n19),
    .i1(xor_q1_al_n19_and_q0_o),
    .sel(and_re_or_empty_equa_o),
    .o(gray_counter_mux_o1_al_n38));
  AL_MUX \gray_counter_mux_al_u26_b10/al_mux_b0_0_0  (
    .i0(q10_al_n28),
    .i1(xor_q10_al_n28_and_o_o),
    .sel(and_re_or_empty_equa_o),
    .o(gray_counter_mux_o10_al_n47));
  AL_MUX \gray_counter_mux_al_u26_b2/al_mux_b0_0_0  (
    .i0(q2_al_n20),
    .i1(xor_q2_al_n20_and_q1_o),
    .sel(and_re_or_empty_equa_o),
    .o(gray_counter_mux_o2_al_n39));
  AL_MUX \gray_counter_mux_al_u26_b3/al_mux_b0_0_0  (
    .i0(q3_al_n21),
    .i1(xor_q3_al_n21_and_q2_o),
    .sel(and_re_or_empty_equa_o),
    .o(gray_counter_mux_o3_al_n40));
  AL_MUX \gray_counter_mux_al_u26_b4/al_mux_b0_0_0  (
    .i0(q4_al_n22),
    .i1(xor_q4_al_n22_and_q3_o),
    .sel(and_re_or_empty_equa_o),
    .o(gray_counter_mux_o4_al_n41));
  AL_MUX \gray_counter_mux_al_u26_b5/al_mux_b0_0_0  (
    .i0(q5_al_n23),
    .i1(xor_q5_al_n23_and_q4_o),
    .sel(and_re_or_empty_equa_o),
    .o(gray_counter_mux_o5_al_n42));
  AL_MUX \gray_counter_mux_al_u26_b6/al_mux_b0_0_0  (
    .i0(q6_al_n24),
    .i1(xor_q6_al_n24_and_q5_o),
    .sel(and_re_or_empty_equa_o),
    .o(gray_counter_mux_o6_al_n43));
  AL_MUX \gray_counter_mux_al_u26_b7/al_mux_b0_0_0  (
    .i0(q7_al_n25),
    .i1(xor_q7_al_n25_and_q6_o),
    .sel(and_re_or_empty_equa_o),
    .o(gray_counter_mux_o7_al_n44));
  AL_MUX \gray_counter_mux_al_u26_b8/al_mux_b0_0_0  (
    .i0(q8_al_n26),
    .i1(xor_q8_al_n26_and_q7_o),
    .sel(and_re_or_empty_equa_o),
    .o(gray_counter_mux_o8_al_n45));
  AL_MUX \gray_counter_mux_al_u26_b9/al_mux_b0_0_0  (
    .i0(q9_al_n27),
    .i1(xor_q9_al_n27_and_q8_o),
    .sel(and_re_or_empty_equa_o),
    .o(gray_counter_mux_o9_al_n46));
  AL_MUX \gray_counter_mux_al_u38_b0/al_mux_b0_0_0  (
    .i0(q0_al_n58),
    .i1(q0_al_n58_neg),
    .sel(and_addr_inc_empty_e_o),
    .o(gray_counter_mux_o0_al_n78));
  AL_MUX \gray_counter_mux_al_u38_b1/al_mux_b0_0_0  (
    .i0(q1_al_n59),
    .i1(xor_q1_al_n59_and_q0_o),
    .sel(and_addr_inc_empty_e_o),
    .o(gray_counter_mux_o1_al_n79));
  AL_MUX \gray_counter_mux_al_u38_b10/al_mux_b0_0_0  (
    .i0(q10_al_n68),
    .i1(xor_q10_al_n68_and_o_o),
    .sel(and_addr_inc_empty_e_o),
    .o(gray_counter_mux_o10_al_n88));
  AL_MUX \gray_counter_mux_al_u38_b2/al_mux_b0_0_0  (
    .i0(q2_al_n60),
    .i1(xor_q2_al_n60_and_q1_o),
    .sel(and_addr_inc_empty_e_o),
    .o(gray_counter_mux_o2_al_n80));
  AL_MUX \gray_counter_mux_al_u38_b3/al_mux_b0_0_0  (
    .i0(q3_al_n61),
    .i1(xor_q3_al_n61_and_q2_o),
    .sel(and_addr_inc_empty_e_o),
    .o(gray_counter_mux_o3_al_n81));
  AL_MUX \gray_counter_mux_al_u38_b4/al_mux_b0_0_0  (
    .i0(q4_al_n62),
    .i1(xor_q4_al_n62_and_q3_o),
    .sel(and_addr_inc_empty_e_o),
    .o(gray_counter_mux_o4_al_n82));
  AL_MUX \gray_counter_mux_al_u38_b5/al_mux_b0_0_0  (
    .i0(q5_al_n63),
    .i1(xor_q5_al_n63_and_q4_o),
    .sel(and_addr_inc_empty_e_o),
    .o(gray_counter_mux_o5_al_n83));
  AL_MUX \gray_counter_mux_al_u38_b6/al_mux_b0_0_0  (
    .i0(q6_al_n64),
    .i1(xor_q6_al_n64_and_q5_o),
    .sel(and_addr_inc_empty_e_o),
    .o(gray_counter_mux_o6_al_n84));
  AL_MUX \gray_counter_mux_al_u38_b7/al_mux_b0_0_0  (
    .i0(q7_al_n65),
    .i1(xor_q7_al_n65_and_q6_o),
    .sel(and_addr_inc_empty_e_o),
    .o(gray_counter_mux_o7_al_n85));
  AL_MUX \gray_counter_mux_al_u38_b8/al_mux_b0_0_0  (
    .i0(q8_al_n66),
    .i1(xor_q8_al_n66_and_q7_o),
    .sel(and_addr_inc_empty_e_o),
    .o(gray_counter_mux_o8_al_n86));
  AL_MUX \gray_counter_mux_al_u38_b9/al_mux_b0_0_0  (
    .i0(q9_al_n67),
    .i1(xor_q9_al_n67_and_q8_o),
    .sel(and_addr_inc_empty_e_o),
    .o(gray_counter_mux_o9_al_n87));
  AL_MUX \gray_counter_mux_b0/al_mux_b0_0_0  (
    .i0(q0),
    .i1(q0_neg),
    .sel(and_we_full_equal_o__o),
    .o(gray_counter_mux_o0));
  AL_MUX \gray_counter_mux_b1/al_mux_b0_0_0  (
    .i0(q1),
    .i1(xor_q1_and_q0__al_n1_o),
    .sel(and_we_full_equal_o__o),
    .o(gray_counter_mux_o1));
  AL_MUX \gray_counter_mux_b10/al_mux_b0_0_0  (
    .i0(q10),
    .i1(xor_q10_and_or_q10_q_o),
    .sel(and_we_full_equal_o__o),
    .o(gray_counter_mux_o10));
  AL_MUX \gray_counter_mux_b2/al_mux_b0_0_0  (
    .i0(q2),
    .i1(xor_q2_and_q1_and__a_o),
    .sel(and_we_full_equal_o__o),
    .o(gray_counter_mux_o2));
  AL_MUX \gray_counter_mux_b3/al_mux_b0_0_0  (
    .i0(q3),
    .i1(xor_q3_and_q2_and_an_o),
    .sel(and_we_full_equal_o__o),
    .o(gray_counter_mux_o3));
  AL_MUX \gray_counter_mux_b4/al_mux_b0_0_0  (
    .i0(q4),
    .i1(xor_q4_and_q3_and_an_o),
    .sel(and_we_full_equal_o__o),
    .o(gray_counter_mux_o4));
  AL_MUX \gray_counter_mux_b5/al_mux_b0_0_0  (
    .i0(q5),
    .i1(xor_q5_and_q4_and_an_o),
    .sel(and_we_full_equal_o__o),
    .o(gray_counter_mux_o5));
  AL_MUX \gray_counter_mux_b6/al_mux_b0_0_0  (
    .i0(q6),
    .i1(xor_q6_and_q5_and_an_o),
    .sel(and_we_full_equal_o__o),
    .o(gray_counter_mux_o6));
  AL_MUX \gray_counter_mux_b7/al_mux_b0_0_0  (
    .i0(q7),
    .i1(xor_q7_and_q6_and_an_o),
    .sel(and_we_full_equal_o__o),
    .o(gray_counter_mux_o7));
  AL_MUX \gray_counter_mux_b8/al_mux_b0_0_0  (
    .i0(q8),
    .i1(xor_q8_and_q7_and_an_o),
    .sel(and_we_full_equal_o__o),
    .o(gray_counter_mux_o8));
  AL_MUX \gray_counter_mux_b9/al_mux_b0_0_0  (
    .i0(q9),
    .i1(xor_q9_and_q8_and_an_o),
    .sel(and_we_full_equal_o__o),
    .o(gray_counter_mux_o9));
  reg_ar_as_w1 gray_counter_reg_al_u27_b0 (
    .clk(clkr),
    .d(gray_counter_mux_o0_al_n37),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q0_al_n18));
  reg_ar_as_w1 gray_counter_reg_al_u27_b1 (
    .clk(clkr),
    .d(gray_counter_mux_o1_al_n38),
    .en(1'b1),
    .reset(1'b0),
    .set(rst),
    .q(q1_al_n19));
  reg_ar_as_w1 gray_counter_reg_al_u27_b10 (
    .clk(clkr),
    .d(gray_counter_mux_o10_al_n47),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q10_al_n28));
  reg_ar_as_w1 gray_counter_reg_al_u27_b2 (
    .clk(clkr),
    .d(gray_counter_mux_o2_al_n39),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q2_al_n20));
  reg_ar_as_w1 gray_counter_reg_al_u27_b3 (
    .clk(clkr),
    .d(gray_counter_mux_o3_al_n40),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q3_al_n21));
  reg_ar_as_w1 gray_counter_reg_al_u27_b4 (
    .clk(clkr),
    .d(gray_counter_mux_o4_al_n41),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q4_al_n22));
  reg_ar_as_w1 gray_counter_reg_al_u27_b5 (
    .clk(clkr),
    .d(gray_counter_mux_o5_al_n42),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q5_al_n23));
  reg_ar_as_w1 gray_counter_reg_al_u27_b6 (
    .clk(clkr),
    .d(gray_counter_mux_o6_al_n43),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q6_al_n24));
  reg_ar_as_w1 gray_counter_reg_al_u27_b7 (
    .clk(clkr),
    .d(gray_counter_mux_o7_al_n44),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q7_al_n25));
  reg_ar_as_w1 gray_counter_reg_al_u27_b8 (
    .clk(clkr),
    .d(gray_counter_mux_o8_al_n45),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q8_al_n26));
  reg_ar_as_w1 gray_counter_reg_al_u27_b9 (
    .clk(clkr),
    .d(gray_counter_mux_o9_al_n46),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q9_al_n27));
  reg_ar_as_w1 gray_counter_reg_al_u39_b0 (
    .clk(clkr),
    .d(gray_counter_mux_o0_al_n78),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q0_al_n58));
  reg_ar_as_w1 gray_counter_reg_al_u39_b1 (
    .clk(clkr),
    .d(gray_counter_mux_o1_al_n79),
    .en(1'b1),
    .reset(1'b0),
    .set(rst),
    .q(q1_al_n59));
  reg_ar_as_w1 gray_counter_reg_al_u39_b10 (
    .clk(clkr),
    .d(gray_counter_mux_o10_al_n88),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q10_al_n68));
  reg_ar_as_w1 gray_counter_reg_al_u39_b2 (
    .clk(clkr),
    .d(gray_counter_mux_o2_al_n80),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q2_al_n60));
  reg_ar_as_w1 gray_counter_reg_al_u39_b3 (
    .clk(clkr),
    .d(gray_counter_mux_o3_al_n81),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q3_al_n61));
  reg_ar_as_w1 gray_counter_reg_al_u39_b4 (
    .clk(clkr),
    .d(gray_counter_mux_o4_al_n82),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q4_al_n62));
  reg_ar_as_w1 gray_counter_reg_al_u39_b5 (
    .clk(clkr),
    .d(gray_counter_mux_o5_al_n83),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q5_al_n63));
  reg_ar_as_w1 gray_counter_reg_al_u39_b6 (
    .clk(clkr),
    .d(gray_counter_mux_o6_al_n84),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q6_al_n64));
  reg_ar_as_w1 gray_counter_reg_al_u39_b7 (
    .clk(clkr),
    .d(gray_counter_mux_o7_al_n85),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q7_al_n65));
  reg_ar_as_w1 gray_counter_reg_al_u39_b8 (
    .clk(clkr),
    .d(gray_counter_mux_o8_al_n86),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q8_al_n66));
  reg_ar_as_w1 gray_counter_reg_al_u39_b9 (
    .clk(clkr),
    .d(gray_counter_mux_o9_al_n87),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q9_al_n67));
  reg_ar_as_w1 gray_counter_reg_b0 (
    .clk(clkw),
    .d(gray_counter_mux_o0),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q0));
  reg_ar_as_w1 gray_counter_reg_b1 (
    .clk(clkw),
    .d(gray_counter_mux_o1),
    .en(1'b1),
    .reset(1'b0),
    .set(rst),
    .q(q1));
  reg_ar_as_w1 gray_counter_reg_b10 (
    .clk(clkw),
    .d(gray_counter_mux_o10),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q10));
  reg_ar_as_w1 gray_counter_reg_b2 (
    .clk(clkw),
    .d(gray_counter_mux_o2),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q2));
  reg_ar_as_w1 gray_counter_reg_b3 (
    .clk(clkw),
    .d(gray_counter_mux_o3),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q3));
  reg_ar_as_w1 gray_counter_reg_b4 (
    .clk(clkw),
    .d(gray_counter_mux_o4),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q4));
  reg_ar_as_w1 gray_counter_reg_b5 (
    .clk(clkw),
    .d(gray_counter_mux_o5),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q5));
  reg_ar_as_w1 gray_counter_reg_b6 (
    .clk(clkw),
    .d(gray_counter_mux_o6),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q6));
  reg_ar_as_w1 gray_counter_reg_b7 (
    .clk(clkw),
    .d(gray_counter_mux_o7),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q7));
  reg_ar_as_w1 gray_counter_reg_b8 (
    .clk(clkw),
    .d(gray_counter_mux_o8),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q8));
  reg_ar_as_w1 gray_counter_reg_b9 (
    .clk(clkw),
    .d(gray_counter_mux_o9),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(q9));
  AL_MUX \i1_mux_b0/al_mux_b0_0_0  (
    .i0(1'b0),
    .i1(1'b0),
    .sel(empty_equal_test_o_neg),
    .o(\i1_mux_b0/B0_0 ));
  AL_MUX \i1_mux_b0/al_mux_b0_0_1  (
    .i0(1'b0),
    .i1(1'b0),
    .sel(empty_equal_test_o_neg),
    .o(\i1_mux_b0/B0_1 ));
  AL_MUX \i1_mux_b0/al_mux_b0_1_0  (
    .i0(\i1_mux_b0/B0_0 ),
    .i1(\i1_mux_b0/B0_1 ),
    .sel(and_empty_equal_test_o),
    .o(i1_mux_o0));
  AL_MAP_LUT2 #(
    .EQN("(~A*~B)"),
    .INIT(4'b0001))
    i1_mux_b1_rom0 (
    .a(empty_equal_test_o_neg),
    .b(and_empty_equal_test_o),
    .o(i1_mux_o1));
  AL_MAP_LUT2 #(
    .EQN("(A*~B)"),
    .INIT(4'b0010))
    i1_mux_b2_rom0 (
    .a(empty_equal_test_o_neg),
    .b(and_empty_equal_test_o),
    .o(i1_mux_o2));
  AL_MUX \i2_mux_b0/al_mux_b0_0_0  (
    .i0(1'b0),
    .i1(1'b0),
    .sel(and_empty_equal_test_o_al_n5),
    .o(i2_mux_o0));
  AL_MUX \i2_mux_b1/al_mux_b0_0_0  (
    .i0(and_re_or_empty_equa_o_neg),
    .i1(1'b0),
    .sel(and_empty_equal_test_o_al_n5),
    .o(i2_mux_o1));
  AL_MUX \i2_mux_b2/al_mux_b0_0_0  (
    .i0(1'b0),
    .i1(1'b1),
    .sel(and_empty_equal_test_o_al_n5),
    .o(i2_mux_o2));
  AL_MUX \i3_mux_b0/al_mux_b0_0_0  (
    .i0(and_re_or_empty_equa_o_neg),
    .i1(1'b1),
    .sel(and_empty_equal_test_o),
    .o(i3_mux_o0));
  AL_MUX \i3_mux_b1/al_mux_b0_0_0  (
    .i0(and_re_or_empty_equa_o_neg),
    .i1(1'b0),
    .sel(and_empty_equal_test_o),
    .o(i3_mux_o1));
  AL_MUX \i3_mux_b2/al_mux_b0_0_0  (
    .i0(and_re_or_empty_equa_o),
    .i1(1'b0),
    .sel(and_empty_equal_test_o),
    .o(i3_mux_o2));
  AL_MUX \mux_al_u28_b0/al_mux_b0_0_0  (
    .i0(rdptr_g0),
    .i1(q1_al_n19),
    .sel(and_re_or_empty_equa_o),
    .o(mux_o0_al_n48));
  AL_MUX \mux_al_u28_b1/al_mux_b0_0_0  (
    .i0(rdptr_g1),
    .i1(q2_al_n20),
    .sel(and_re_or_empty_equa_o),
    .o(mux_o1_al_n49));
  AL_MUX \mux_al_u28_b2/al_mux_b0_0_0  (
    .i0(rdptr_g2),
    .i1(q3_al_n21),
    .sel(and_re_or_empty_equa_o),
    .o(mux_o2_al_n50));
  AL_MUX \mux_al_u28_b3/al_mux_b0_0_0  (
    .i0(rdptr_g3),
    .i1(q4_al_n22),
    .sel(and_re_or_empty_equa_o),
    .o(mux_o3_al_n51));
  AL_MUX \mux_al_u28_b4/al_mux_b0_0_0  (
    .i0(rdptr_g4),
    .i1(q5_al_n23),
    .sel(and_re_or_empty_equa_o),
    .o(mux_o4_al_n52));
  AL_MUX \mux_al_u28_b5/al_mux_b0_0_0  (
    .i0(rdptr_g5),
    .i1(q6_al_n24),
    .sel(and_re_or_empty_equa_o),
    .o(mux_o5_al_n53));
  AL_MUX \mux_al_u28_b6/al_mux_b0_0_0  (
    .i0(rdptr_g6),
    .i1(q7_al_n25),
    .sel(and_re_or_empty_equa_o),
    .o(mux_o6_al_n54));
  AL_MUX \mux_al_u28_b7/al_mux_b0_0_0  (
    .i0(rdptr_g7),
    .i1(q8_al_n26),
    .sel(and_re_or_empty_equa_o),
    .o(mux_o7_al_n55));
  AL_MUX \mux_al_u28_b8/al_mux_b0_0_0  (
    .i0(rdptr_g8),
    .i1(q9_al_n27),
    .sel(and_re_or_empty_equa_o),
    .o(mux_o8_al_n56));
  AL_MUX \mux_al_u28_b9/al_mux_b0_0_0  (
    .i0(rdptr_g9),
    .i1(q10_al_n28),
    .sel(and_re_or_empty_equa_o),
    .o(mux_o9_al_n57));
  AL_MUX \mux_al_u40_b0/al_mux_b0_0_0  (
    .i0(rdptr_g_test0),
    .i1(q1_al_n59),
    .sel(and_addr_inc_empty_e_o),
    .o(mux_o0_al_n89));
  AL_MUX \mux_al_u40_b1/al_mux_b0_0_0  (
    .i0(rdptr_g_test1),
    .i1(q2_al_n60),
    .sel(and_addr_inc_empty_e_o),
    .o(mux_o1_al_n90));
  AL_MUX \mux_al_u40_b2/al_mux_b0_0_0  (
    .i0(rdptr_g_test2),
    .i1(q3_al_n61),
    .sel(and_addr_inc_empty_e_o),
    .o(mux_o2_al_n91));
  AL_MUX \mux_al_u40_b3/al_mux_b0_0_0  (
    .i0(rdptr_g_test3),
    .i1(q4_al_n62),
    .sel(and_addr_inc_empty_e_o),
    .o(mux_o3_al_n92));
  AL_MUX \mux_al_u40_b4/al_mux_b0_0_0  (
    .i0(rdptr_g_test4),
    .i1(q5_al_n63),
    .sel(and_addr_inc_empty_e_o),
    .o(mux_o4_al_n93));
  AL_MUX \mux_al_u40_b5/al_mux_b0_0_0  (
    .i0(rdptr_g_test5),
    .i1(q6_al_n64),
    .sel(and_addr_inc_empty_e_o),
    .o(mux_o5_al_n94));
  AL_MUX \mux_al_u40_b6/al_mux_b0_0_0  (
    .i0(rdptr_g_test6),
    .i1(q7_al_n65),
    .sel(and_addr_inc_empty_e_o),
    .o(mux_o6_al_n95));
  AL_MUX \mux_al_u40_b7/al_mux_b0_0_0  (
    .i0(rdptr_g_test7),
    .i1(q8_al_n66),
    .sel(and_addr_inc_empty_e_o),
    .o(mux_o7_al_n96));
  AL_MUX \mux_al_u40_b8/al_mux_b0_0_0  (
    .i0(rdptr_g_test8),
    .i1(q9_al_n67),
    .sel(and_addr_inc_empty_e_o),
    .o(mux_o8_al_n97));
  AL_MUX \mux_al_u40_b9/al_mux_b0_0_0  (
    .i0(rdptr_g_test9),
    .i1(q10_al_n68),
    .sel(and_addr_inc_empty_e_o),
    .o(mux_o9_al_n98));
  AL_MUX \mux_b0/al_mux_b0_0_0  (
    .i0(wrptr_g0),
    .i1(q1),
    .sel(and_we_full_equal_o__o),
    .o(mux_o0));
  AL_MUX \mux_b1/al_mux_b0_0_0  (
    .i0(wrptr_g1),
    .i1(q2),
    .sel(and_we_full_equal_o__o),
    .o(mux_o1));
  AL_MUX \mux_b2/al_mux_b0_0_0  (
    .i0(wrptr_g2),
    .i1(q3),
    .sel(and_we_full_equal_o__o),
    .o(mux_o2));
  AL_MUX \mux_b3/al_mux_b0_0_0  (
    .i0(wrptr_g3),
    .i1(q4),
    .sel(and_we_full_equal_o__o),
    .o(mux_o3));
  AL_MUX \mux_b4/al_mux_b0_0_0  (
    .i0(wrptr_g4),
    .i1(q5),
    .sel(and_we_full_equal_o__o),
    .o(mux_o4));
  AL_MUX \mux_b5/al_mux_b0_0_0  (
    .i0(wrptr_g5),
    .i1(q6),
    .sel(and_we_full_equal_o__o),
    .o(mux_o5));
  AL_MUX \mux_b6/al_mux_b0_0_0  (
    .i0(wrptr_g6),
    .i1(q7),
    .sel(and_we_full_equal_o__o),
    .o(mux_o6));
  AL_MUX \mux_b7/al_mux_b0_0_0  (
    .i0(wrptr_g7),
    .i1(q8),
    .sel(and_we_full_equal_o__o),
    .o(mux_o7));
  AL_MUX \mux_b8/al_mux_b0_0_0  (
    .i0(wrptr_g8),
    .i1(q9),
    .sel(and_we_full_equal_o__o),
    .o(mux_o8));
  AL_MUX \mux_b9/al_mux_b0_0_0  (
    .i0(wrptr_g9),
    .i1(q10),
    .sel(and_we_full_equal_o__o),
    .o(mux_o9));
  or or_empty_equal_o_sho (empty_flag, empty_equal_o, showahead_empty);
  not or_empty_equal_o_sho_o_inv (or_empty_equal_o_sho_o_neg, empty_flag);
  or or_q10_al_n28_q9_al_ (or_q10_al_n28_q9_al__o, q10_al_n28, q9_al_n27);
  or or_q10_al_n68_q9_al_ (or_q10_al_n68_q9_al__o, q10_al_n68, q9_al_n67);
  or or_q10_q9 (or_q10_q9_o, q10, q9);
  not q0_al_n18_inv (q0_al_n18_neg, q0_al_n18);
  not q0_al_n58_inv (q0_al_n58_neg, q0_al_n58);
  not q0_inv (q0_neg, q0);
  not q1_al_n19_inv (q1_al_n19_neg, q1_al_n19);
  not q1_al_n59_inv (q1_al_n59_neg, q1_al_n59);
  not q1_inv (q1_neg, q1);
  not q2_al_n20_inv (q2_al_n20_neg, q2_al_n20);
  not q2_al_n60_inv (q2_al_n60_neg, q2_al_n60);
  not q2_inv (q2_neg, q2);
  not q3_al_n21_inv (q3_al_n21_neg, q3_al_n21);
  not q3_al_n61_inv (q3_al_n61_neg, q3_al_n61);
  not q3_inv (q3_neg, q3);
  not q4_al_n22_inv (q4_al_n22_neg, q4_al_n22);
  not q4_al_n62_inv (q4_al_n62_neg, q4_al_n62);
  not q4_inv (q4_neg, q4);
  not q5_al_n23_inv (q5_al_n23_neg, q5_al_n23);
  not q5_al_n63_inv (q5_al_n63_neg, q5_al_n63);
  not q5_inv (q5_neg, q5);
  not q6_al_n24_inv (q6_al_n24_neg, q6_al_n24);
  not q6_al_n64_inv (q6_al_n64_neg, q6_al_n64);
  not q6_inv (q6_neg, q6);
  not q7_al_n25_inv (q7_al_n25_neg, q7_al_n25);
  not q7_al_n65_inv (q7_al_n65_neg, q7_al_n65);
  not q7_inv (q7_neg, q7);
  not q8_al_n26_inv (q8_al_n26_neg, q8_al_n26);
  not q8_al_n66_inv (q8_al_n66_neg, q8_al_n66);
  not q8_inv (q8_neg, q8);
  reg_ar_as_w1 r1_reg_b0 (
    .clk(clkr),
    .d(data_mux_r1_5_o0),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(r10));
  reg_ar_as_w1 r1_reg_b1 (
    .clk(clkr),
    .d(data_mux_r1_5_o1),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(r11));
  reg_ar_as_w1 r1_reg_b10 (
    .clk(clkr),
    .d(data_mux_r1_5_o10),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(r110));
  reg_ar_as_w1 r1_reg_b11 (
    .clk(clkr),
    .d(data_mux_r1_5_o11),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(r111));
  reg_ar_as_w1 r1_reg_b12 (
    .clk(clkr),
    .d(data_mux_r1_5_o12),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(r112));
  reg_ar_as_w1 r1_reg_b13 (
    .clk(clkr),
    .d(data_mux_r1_5_o13),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(r113));
  reg_ar_as_w1 r1_reg_b14 (
    .clk(clkr),
    .d(data_mux_r1_5_o14),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(r114));
  reg_ar_as_w1 r1_reg_b15 (
    .clk(clkr),
    .d(data_mux_r1_5_o15),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(r115));
  reg_ar_as_w1 r1_reg_b2 (
    .clk(clkr),
    .d(data_mux_r1_5_o2),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(r12));
  reg_ar_as_w1 r1_reg_b3 (
    .clk(clkr),
    .d(data_mux_r1_5_o3),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(r13));
  reg_ar_as_w1 r1_reg_b4 (
    .clk(clkr),
    .d(data_mux_r1_5_o4),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(r14));
  reg_ar_as_w1 r1_reg_b5 (
    .clk(clkr),
    .d(data_mux_r1_5_o5),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(r15));
  reg_ar_as_w1 r1_reg_b6 (
    .clk(clkr),
    .d(data_mux_r1_5_o6),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(r16));
  reg_ar_as_w1 r1_reg_b7 (
    .clk(clkr),
    .d(data_mux_r1_5_o7),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(r17));
  reg_ar_as_w1 r1_reg_b8 (
    .clk(clkr),
    .d(data_mux_r1_5_o8),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(r18));
  reg_ar_as_w1 r1_reg_b9 (
    .clk(clkr),
    .d(data_mux_r1_5_o9),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(r19));
  reg_ar_as_w1 r2_reg_b0 (
    .clk(clkr),
    .d(data_mux_r2_5_o0),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(do[0]));
  reg_ar_as_w1 r2_reg_b1 (
    .clk(clkr),
    .d(data_mux_r2_5_o1),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(do[1]));
  reg_ar_as_w1 r2_reg_b10 (
    .clk(clkr),
    .d(data_mux_r2_5_o10),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(do[10]));
  reg_ar_as_w1 r2_reg_b11 (
    .clk(clkr),
    .d(data_mux_r2_5_o11),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(do[11]));
  reg_ar_as_w1 r2_reg_b12 (
    .clk(clkr),
    .d(data_mux_r2_5_o12),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(do[12]));
  reg_ar_as_w1 r2_reg_b13 (
    .clk(clkr),
    .d(data_mux_r2_5_o13),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(do[13]));
  reg_ar_as_w1 r2_reg_b14 (
    .clk(clkr),
    .d(data_mux_r2_5_o14),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(do[14]));
  reg_ar_as_w1 r2_reg_b15 (
    .clk(clkr),
    .d(data_mux_r2_5_o15),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(do[15]));
  reg_ar_as_w1 r2_reg_b2 (
    .clk(clkr),
    .d(data_mux_r2_5_o2),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(do[2]));
  reg_ar_as_w1 r2_reg_b3 (
    .clk(clkr),
    .d(data_mux_r2_5_o3),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(do[3]));
  reg_ar_as_w1 r2_reg_b4 (
    .clk(clkr),
    .d(data_mux_r2_5_o4),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(do[4]));
  reg_ar_as_w1 r2_reg_b5 (
    .clk(clkr),
    .d(data_mux_r2_5_o5),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(do[5]));
  reg_ar_as_w1 r2_reg_b6 (
    .clk(clkr),
    .d(data_mux_r2_5_o6),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(do[6]));
  reg_ar_as_w1 r2_reg_b7 (
    .clk(clkr),
    .d(data_mux_r2_5_o7),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(do[7]));
  reg_ar_as_w1 r2_reg_b8 (
    .clk(clkr),
    .d(data_mux_r2_5_o8),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(do[8]));
  reg_ar_as_w1 r2_reg_b9 (
    .clk(clkr),
    .d(data_mux_r2_5_o9),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(do[9]));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \rdusedw_sub/u0  (
    .a(sync_delayed_wrptr_g_bin_d10),
    .b(rdptr_g_bin_d10),
    .c(\rdusedw_sub/c0 ),
    .o({\rdusedw_sub/c1 ,rdusedw[0]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \rdusedw_sub/u1  (
    .a(sync_delayed_wrptr_g_bin_d11),
    .b(rdptr_g_bin_d11),
    .c(\rdusedw_sub/c1 ),
    .o({\rdusedw_sub/c2 ,rdusedw[1]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \rdusedw_sub/u2  (
    .a(sync_delayed_wrptr_g_bin_d12),
    .b(rdptr_g_bin_d12),
    .c(\rdusedw_sub/c2 ),
    .o({\rdusedw_sub/c3 ,rdusedw[2]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \rdusedw_sub/u3  (
    .a(sync_delayed_wrptr_g_bin_d13),
    .b(rdptr_g_bin_d13),
    .c(\rdusedw_sub/c3 ),
    .o({\rdusedw_sub/c4 ,rdusedw[3]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \rdusedw_sub/u4  (
    .a(sync_delayed_wrptr_g_bin_d14),
    .b(rdptr_g_bin_d14),
    .c(\rdusedw_sub/c4 ),
    .o({\rdusedw_sub/c5 ,rdusedw[4]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \rdusedw_sub/u5  (
    .a(sync_delayed_wrptr_g_bin_d15),
    .b(rdptr_g_bin_d15),
    .c(\rdusedw_sub/c5 ),
    .o({\rdusedw_sub/c6 ,rdusedw[5]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \rdusedw_sub/u6  (
    .a(sync_delayed_wrptr_g_bin_d16),
    .b(rdptr_g_bin_d16),
    .c(\rdusedw_sub/c6 ),
    .o({\rdusedw_sub/c7 ,rdusedw[6]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \rdusedw_sub/u7  (
    .a(sync_delayed_wrptr_g_bin_d17),
    .b(rdptr_g_bin_d17),
    .c(\rdusedw_sub/c7 ),
    .o({\rdusedw_sub/c8 ,rdusedw[7]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \rdusedw_sub/u8  (
    .a(sync_delayed_wrptr_g_bin_d18),
    .b(rdptr_g_bin_d18),
    .c(\rdusedw_sub/c8 ),
    .o({\rdusedw_sub/c9 ,rdusedw[8]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \rdusedw_sub/u9  (
    .a(sync_delayed_wrptr_g_bin_d19),
    .b(rdptr_g_bin_d19),
    .c(\rdusedw_sub/c9 ),
    .o({open_n61,rdusedw[9]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB_CARRY"))
    \rdusedw_sub/ucin  (
    .a(1'b0),
    .o({\rdusedw_sub/c0 ,open_n64}));
  reg_ar_as_w1 reg_deleay_wrptr_b0 (
    .clk(clkw),
    .d(wrptr_g0),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(delayed_wrptr_g0));
  reg_ar_as_w1 reg_deleay_wrptr_b1 (
    .clk(clkw),
    .d(wrptr_g1),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(delayed_wrptr_g1));
  reg_ar_as_w1 reg_deleay_wrptr_b2 (
    .clk(clkw),
    .d(wrptr_g2),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(delayed_wrptr_g2));
  reg_ar_as_w1 reg_deleay_wrptr_b3 (
    .clk(clkw),
    .d(wrptr_g3),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(delayed_wrptr_g3));
  reg_ar_as_w1 reg_deleay_wrptr_b4 (
    .clk(clkw),
    .d(wrptr_g4),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(delayed_wrptr_g4));
  reg_ar_as_w1 reg_deleay_wrptr_b5 (
    .clk(clkw),
    .d(wrptr_g5),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(delayed_wrptr_g5));
  reg_ar_as_w1 reg_deleay_wrptr_b6 (
    .clk(clkw),
    .d(wrptr_g6),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(delayed_wrptr_g6));
  reg_ar_as_w1 reg_deleay_wrptr_b7 (
    .clk(clkw),
    .d(wrptr_g7),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(delayed_wrptr_g7));
  reg_ar_as_w1 reg_deleay_wrptr_b8 (
    .clk(clkw),
    .d(wrptr_g8),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(delayed_wrptr_g8));
  reg_ar_as_w1 reg_deleay_wrptr_b9 (
    .clk(clkw),
    .d(wrptr_g9),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(delayed_wrptr_g9));
  reg_ar_as_w1 reg_rdptr_al_u41_b0 (
    .clk(clkr),
    .d(mux_o0_al_n89),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_test0));
  reg_ar_as_w1 reg_rdptr_al_u41_b1 (
    .clk(clkr),
    .d(mux_o1_al_n90),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_test1));
  reg_ar_as_w1 reg_rdptr_al_u41_b2 (
    .clk(clkr),
    .d(mux_o2_al_n91),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_test2));
  reg_ar_as_w1 reg_rdptr_al_u41_b3 (
    .clk(clkr),
    .d(mux_o3_al_n92),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_test3));
  reg_ar_as_w1 reg_rdptr_al_u41_b4 (
    .clk(clkr),
    .d(mux_o4_al_n93),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_test4));
  reg_ar_as_w1 reg_rdptr_al_u41_b5 (
    .clk(clkr),
    .d(mux_o5_al_n94),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_test5));
  reg_ar_as_w1 reg_rdptr_al_u41_b6 (
    .clk(clkr),
    .d(mux_o6_al_n95),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_test6));
  reg_ar_as_w1 reg_rdptr_al_u41_b7 (
    .clk(clkr),
    .d(mux_o7_al_n96),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_test7));
  reg_ar_as_w1 reg_rdptr_al_u41_b8 (
    .clk(clkr),
    .d(mux_o8_al_n97),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_test8));
  reg_ar_as_w1 reg_rdptr_al_u41_b9 (
    .clk(clkr),
    .d(mux_o9_al_n98),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_test9));
  reg_ar_as_w1 reg_rdptr_al_u42_b0 (
    .clk(clkw),
    .d(rdptr_g0),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g0));
  reg_ar_as_w1 reg_rdptr_al_u42_b1 (
    .clk(clkw),
    .d(rdptr_g1),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g1));
  reg_ar_as_w1 reg_rdptr_al_u42_b2 (
    .clk(clkw),
    .d(rdptr_g2),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g2));
  reg_ar_as_w1 reg_rdptr_al_u42_b3 (
    .clk(clkw),
    .d(rdptr_g3),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g3));
  reg_ar_as_w1 reg_rdptr_al_u42_b4 (
    .clk(clkw),
    .d(rdptr_g4),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g4));
  reg_ar_as_w1 reg_rdptr_al_u42_b5 (
    .clk(clkw),
    .d(rdptr_g5),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g5));
  reg_ar_as_w1 reg_rdptr_al_u42_b6 (
    .clk(clkw),
    .d(rdptr_g6),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g6));
  reg_ar_as_w1 reg_rdptr_al_u42_b7 (
    .clk(clkw),
    .d(rdptr_g7),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g7));
  reg_ar_as_w1 reg_rdptr_al_u42_b8 (
    .clk(clkw),
    .d(rdptr_g8),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g8));
  reg_ar_as_w1 reg_rdptr_al_u42_b9 (
    .clk(clkw),
    .d(rdptr_g9),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g9));
  reg_ar_as_w1 reg_rdptr_al_u53_b0 (
    .clk(clkr),
    .d(delayed_wrptr_g0),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g0));
  reg_ar_as_w1 reg_rdptr_al_u53_b1 (
    .clk(clkr),
    .d(delayed_wrptr_g1),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g1));
  reg_ar_as_w1 reg_rdptr_al_u53_b2 (
    .clk(clkr),
    .d(delayed_wrptr_g2),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g2));
  reg_ar_as_w1 reg_rdptr_al_u53_b3 (
    .clk(clkr),
    .d(delayed_wrptr_g3),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g3));
  reg_ar_as_w1 reg_rdptr_al_u53_b4 (
    .clk(clkr),
    .d(delayed_wrptr_g4),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g4));
  reg_ar_as_w1 reg_rdptr_al_u53_b5 (
    .clk(clkr),
    .d(delayed_wrptr_g5),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g5));
  reg_ar_as_w1 reg_rdptr_al_u53_b6 (
    .clk(clkr),
    .d(delayed_wrptr_g6),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g6));
  reg_ar_as_w1 reg_rdptr_al_u53_b7 (
    .clk(clkr),
    .d(delayed_wrptr_g7),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g7));
  reg_ar_as_w1 reg_rdptr_al_u53_b8 (
    .clk(clkr),
    .d(delayed_wrptr_g8),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g8));
  reg_ar_as_w1 reg_rdptr_al_u53_b9 (
    .clk(clkr),
    .d(delayed_wrptr_g9),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g9));
  reg_ar_as_w1 reg_rdptr_b0 (
    .clk(clkr),
    .d(mux_o0_al_n48),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g0));
  reg_ar_as_w1 reg_rdptr_b1 (
    .clk(clkr),
    .d(mux_o1_al_n49),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g1));
  reg_ar_as_w1 reg_rdptr_b2 (
    .clk(clkr),
    .d(mux_o2_al_n50),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g2));
  reg_ar_as_w1 reg_rdptr_b3 (
    .clk(clkr),
    .d(mux_o3_al_n51),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g3));
  reg_ar_as_w1 reg_rdptr_b4 (
    .clk(clkr),
    .d(mux_o4_al_n52),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g4));
  reg_ar_as_w1 reg_rdptr_b5 (
    .clk(clkr),
    .d(mux_o5_al_n53),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g5));
  reg_ar_as_w1 reg_rdptr_b6 (
    .clk(clkr),
    .d(mux_o6_al_n54),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g6));
  reg_ar_as_w1 reg_rdptr_b7 (
    .clk(clkr),
    .d(mux_o7_al_n55),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g7));
  reg_ar_as_w1 reg_rdptr_b8 (
    .clk(clkr),
    .d(mux_o8_al_n56),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g8));
  reg_ar_as_w1 reg_rdptr_b9 (
    .clk(clkr),
    .d(mux_o9_al_n57),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g9));
  reg_ar_as_w1 reg_rdptr_d1_al_u60_b0 (
    .clk(clkr),
    .d(xor_xor_xor_xor_xor__o_al_n114),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g_bin_d10));
  reg_ar_as_w1 reg_rdptr_d1_al_u60_b1 (
    .clk(clkr),
    .d(xor_xor_xor_xor_xor__o_al_n113),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g_bin_d11));
  reg_ar_as_w1 reg_rdptr_d1_al_u60_b2 (
    .clk(clkr),
    .d(xor_xor_xor_xor_xor__o_al_n112),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g_bin_d12));
  reg_ar_as_w1 reg_rdptr_d1_al_u60_b3 (
    .clk(clkr),
    .d(xor_xor_xor_xor_xor__o_al_n111),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g_bin_d13));
  reg_ar_as_w1 reg_rdptr_d1_al_u60_b4 (
    .clk(clkr),
    .d(xor_xor_xor_xor_xor__o_al_n110),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g_bin_d14));
  reg_ar_as_w1 reg_rdptr_d1_al_u60_b5 (
    .clk(clkr),
    .d(xor_xor_xor_xor_sync_o_al_n109),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g_bin_d15));
  reg_ar_as_w1 reg_rdptr_d1_al_u60_b6 (
    .clk(clkr),
    .d(xor_xor_xor_sync_del_o),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g_bin_d16));
  reg_ar_as_w1 reg_rdptr_d1_al_u60_b7 (
    .clk(clkr),
    .d(xor_xor_sync_delayed_o),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g_bin_d17));
  reg_ar_as_w1 reg_rdptr_d1_al_u60_b8 (
    .clk(clkr),
    .d(xor_sync_delayed_wrp_o),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g_bin_d18));
  reg_ar_as_w1 reg_rdptr_d1_al_u60_b9 (
    .clk(clkr),
    .d(sync_delayed_wrptr_g9),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_delayed_wrptr_g_bin_d19));
  reg_ar_as_w1 reg_rdptr_d1_b0 (
    .clk(clkw),
    .d(xor_xor_xor_xor_xor__o_al_n102),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g_bin_d10));
  reg_ar_as_w1 reg_rdptr_d1_b1 (
    .clk(clkw),
    .d(xor_xor_xor_xor_xor__o_al_n101),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g_bin_d11));
  reg_ar_as_w1 reg_rdptr_d1_b2 (
    .clk(clkw),
    .d(xor_xor_xor_xor_xor__o_al_n100),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g_bin_d12));
  reg_ar_as_w1 reg_rdptr_d1_b3 (
    .clk(clkw),
    .d(xor_xor_xor_xor_xor__o_al_n99),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g_bin_d13));
  reg_ar_as_w1 reg_rdptr_d1_b4 (
    .clk(clkw),
    .d(xor_xor_xor_xor_xor__o),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g_bin_d14));
  reg_ar_as_w1 reg_rdptr_d1_b5 (
    .clk(clkw),
    .d(xor_xor_xor_xor_sync_o),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g_bin_d15));
  reg_ar_as_w1 reg_rdptr_d1_b6 (
    .clk(clkw),
    .d(xor_xor_xor_sync_rdp_o),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g_bin_d16));
  reg_ar_as_w1 reg_rdptr_d1_b7 (
    .clk(clkw),
    .d(xor_xor_sync_rdptr_g_o),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g_bin_d17));
  reg_ar_as_w1 reg_rdptr_d1_b8 (
    .clk(clkw),
    .d(xor_sync_rdptr_g9_sy_o),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g_bin_d18));
  reg_ar_as_w1 reg_rdptr_d1_b9 (
    .clk(clkw),
    .d(sync_rdptr_g9),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(sync_rdptr_g_bin_d19));
  reg_ar_as_w1 reg_wrptr_b0 (
    .clk(clkw),
    .d(mux_o0),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(wrptr_g0));
  reg_ar_as_w1 reg_wrptr_b1 (
    .clk(clkw),
    .d(mux_o1),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(wrptr_g1));
  reg_ar_as_w1 reg_wrptr_b2 (
    .clk(clkw),
    .d(mux_o2),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(wrptr_g2));
  reg_ar_as_w1 reg_wrptr_b3 (
    .clk(clkw),
    .d(mux_o3),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(wrptr_g3));
  reg_ar_as_w1 reg_wrptr_b4 (
    .clk(clkw),
    .d(mux_o4),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(wrptr_g4));
  reg_ar_as_w1 reg_wrptr_b5 (
    .clk(clkw),
    .d(mux_o5),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(wrptr_g5));
  reg_ar_as_w1 reg_wrptr_b6 (
    .clk(clkw),
    .d(mux_o6),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(wrptr_g6));
  reg_ar_as_w1 reg_wrptr_b7 (
    .clk(clkw),
    .d(mux_o7),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(wrptr_g7));
  reg_ar_as_w1 reg_wrptr_b8 (
    .clk(clkw),
    .d(mux_o8),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(wrptr_g8));
  reg_ar_as_w1 reg_wrptr_b9 (
    .clk(clkw),
    .d(mux_o9),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(wrptr_g9));
  reg_ar_as_w1 reg_wrptr_d1_al_u67_b0 (
    .clk(clkr),
    .d(xor_xor_xor_xor_xor__o_al_n120),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_bin_d10));
  reg_ar_as_w1 reg_wrptr_d1_al_u67_b1 (
    .clk(clkr),
    .d(xor_xor_xor_xor_xor__o_al_n119),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_bin_d11));
  reg_ar_as_w1 reg_wrptr_d1_al_u67_b2 (
    .clk(clkr),
    .d(xor_xor_xor_xor_xor__o_al_n118),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_bin_d12));
  reg_ar_as_w1 reg_wrptr_d1_al_u67_b3 (
    .clk(clkr),
    .d(xor_xor_xor_xor_xor__o_al_n117),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_bin_d13));
  reg_ar_as_w1 reg_wrptr_d1_al_u67_b4 (
    .clk(clkr),
    .d(xor_xor_xor_xor_xor__o_al_n116),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_bin_d14));
  reg_ar_as_w1 reg_wrptr_d1_al_u67_b5 (
    .clk(clkr),
    .d(xor_xor_xor_xor_rdpt_o),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_bin_d15));
  reg_ar_as_w1 reg_wrptr_d1_al_u67_b6 (
    .clk(clkr),
    .d(xor_xor_xor_rdptr_g9_o),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_bin_d16));
  reg_ar_as_w1 reg_wrptr_d1_al_u67_b7 (
    .clk(clkr),
    .d(xor_xor_rdptr_g9_rdp_o),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_bin_d17));
  reg_ar_as_w1 reg_wrptr_d1_al_u67_b8 (
    .clk(clkr),
    .d(xor_rdptr_g9_rdptr_g_o_al_n115),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_bin_d18));
  reg_ar_as_w1 reg_wrptr_d1_al_u67_b9 (
    .clk(clkr),
    .d(rdptr_g9),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(rdptr_g_bin_d19));
  reg_ar_as_w1 reg_wrptr_d1_b0 (
    .clk(clkw),
    .d(xor_xor_xor_xor_xor__o_al_n108),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(wrptr_g_bin_d10));
  reg_ar_as_w1 reg_wrptr_d1_b1 (
    .clk(clkw),
    .d(xor_xor_xor_xor_xor__o_al_n107),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(wrptr_g_bin_d11));
  reg_ar_as_w1 reg_wrptr_d1_b2 (
    .clk(clkw),
    .d(xor_xor_xor_xor_xor__o_al_n106),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(wrptr_g_bin_d12));
  reg_ar_as_w1 reg_wrptr_d1_b3 (
    .clk(clkw),
    .d(xor_xor_xor_xor_xor__o_al_n105),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(wrptr_g_bin_d13));
  reg_ar_as_w1 reg_wrptr_d1_b4 (
    .clk(clkw),
    .d(xor_xor_xor_xor_xor__o_al_n104),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(wrptr_g_bin_d14));
  reg_ar_as_w1 reg_wrptr_d1_b5 (
    .clk(clkw),
    .d(xor_xor_xor_xor_wrpt_o),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(wrptr_g_bin_d15));
  reg_ar_as_w1 reg_wrptr_d1_b6 (
    .clk(clkw),
    .d(xor_xor_xor_wrptr_g9_o),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(wrptr_g_bin_d16));
  reg_ar_as_w1 reg_wrptr_d1_b7 (
    .clk(clkw),
    .d(xor_xor_wrptr_g9_wrp_o),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(wrptr_g_bin_d17));
  reg_ar_as_w1 reg_wrptr_d1_b8 (
    .clk(clkw),
    .d(xor_wrptr_g9_wrptr_g_o),
    .en(1'b1),
    .reset(rst),
    .set(1'b0),
    .q(wrptr_g_bin_d18));
  not rst_inv (rst_neg, rst);
  not rst_neg_inv (rst_neg_neg, rst_neg);
  AL_MAP_LUT3 #(
    .EQN("(~A*B*~C)"),
    .INIT(8'b00000100))
    s_state_mux_al_u10_rom0 (
    .a(curr_state0),
    .b(curr_state1),
    .c(curr_state2),
    .o(s_state_mux_o0_al_n10));
  AL_MAP_LUT3 #(
    .EQN("(A*B*~C)"),
    .INIT(8'b00001000))
    s_state_mux_al_u11_rom0 (
    .a(curr_state0),
    .b(curr_state1),
    .c(curr_state2),
    .o(s_state_mux_o0_al_n11));
  AL_MAP_LUT3 #(
    .EQN("(~A*~B*C)"),
    .INIT(8'b00010000))
    s_state_mux_al_u12_rom0 (
    .a(curr_state0),
    .b(curr_state1),
    .c(curr_state2),
    .o(s_state_mux_o0_al_n12));
  AL_MAP_LUT3 #(
    .EQN("(A*~B*~C)"),
    .INIT(8'b00000010))
    s_state_mux_rom0 (
    .a(curr_state0),
    .b(curr_state1),
    .c(curr_state2),
    .o(s_state_mux_o0));
  reg_ar_as_w1 show_ahead_buffer_dff (
    .clk(clkr),
    .d(empty_r_mux_o0),
    .en(1'b1),
    .reset(1'b0),
    .set(rst_neg_neg),
    .q(showahead_empty));
  AL_MUX \state_mux_b0/al_mux_b0_0_0  (
    .i0(empty_equal_test_o_neg),
    .i1(i1_mux_o0),
    .sel(curr_state0),
    .o(\state_mux_b0/B0_0 ));
  AL_MUX \state_mux_b0/al_mux_b0_0_1  (
    .i0(i2_mux_o0),
    .i1(i3_mux_o0),
    .sel(curr_state0),
    .o(\state_mux_b0/B0_1 ));
  AL_MUX \state_mux_b0/al_mux_b0_0_2  (
    .i0(i3_mux_o1),
    .i1(1'b0),
    .sel(curr_state0),
    .o(\state_mux_b0/B0_2 ));
  AL_MUX \state_mux_b0/al_mux_b0_0_3  (
    .i0(1'b0),
    .i1(1'b0),
    .sel(curr_state0),
    .o(\state_mux_b0/B0_3 ));
  AL_MUX \state_mux_b0/al_mux_b0_1_0  (
    .i0(\state_mux_b0/B0_0 ),
    .i1(\state_mux_b0/B0_1 ),
    .sel(curr_state1),
    .o(\state_mux_b0/B1_0 ));
  AL_MUX \state_mux_b0/al_mux_b0_1_1  (
    .i0(\state_mux_b0/B0_2 ),
    .i1(\state_mux_b0/B0_3 ),
    .sel(curr_state1),
    .o(\state_mux_b0/B1_1 ));
  AL_MUX \state_mux_b0/al_mux_b0_2_0  (
    .i0(\state_mux_b0/B1_0 ),
    .i1(\state_mux_b0/B1_1 ),
    .sel(curr_state2),
    .o(state_mux_o0));
  AL_MUX \state_mux_b1/al_mux_b0_0_0  (
    .i0(1'b0),
    .i1(i1_mux_o1),
    .sel(curr_state0),
    .o(\state_mux_b1/B0_0 ));
  AL_MUX \state_mux_b1/al_mux_b0_0_1  (
    .i0(i2_mux_o1),
    .i1(i3_mux_o1),
    .sel(curr_state0),
    .o(\state_mux_b1/B0_1 ));
  AL_MUX \state_mux_b1/al_mux_b0_0_2  (
    .i0(i3_mux_o0),
    .i1(1'b0),
    .sel(curr_state0),
    .o(\state_mux_b1/B0_2 ));
  AL_MUX \state_mux_b1/al_mux_b0_0_3  (
    .i0(1'b0),
    .i1(1'b0),
    .sel(curr_state0),
    .o(\state_mux_b1/B0_3 ));
  AL_MUX \state_mux_b1/al_mux_b0_1_0  (
    .i0(\state_mux_b1/B0_0 ),
    .i1(\state_mux_b1/B0_1 ),
    .sel(curr_state1),
    .o(\state_mux_b1/B1_0 ));
  AL_MUX \state_mux_b1/al_mux_b0_1_1  (
    .i0(\state_mux_b1/B0_2 ),
    .i1(\state_mux_b1/B0_3 ),
    .sel(curr_state1),
    .o(\state_mux_b1/B1_1 ));
  AL_MUX \state_mux_b1/al_mux_b0_2_0  (
    .i0(\state_mux_b1/B1_0 ),
    .i1(\state_mux_b1/B1_1 ),
    .sel(curr_state2),
    .o(state_mux_o1));
  AL_MUX \state_mux_b2/al_mux_b0_0_0  (
    .i0(1'b0),
    .i1(i1_mux_o2),
    .sel(curr_state0),
    .o(\state_mux_b2/B0_0 ));
  AL_MUX \state_mux_b2/al_mux_b0_0_1  (
    .i0(i2_mux_o2),
    .i1(i3_mux_o2),
    .sel(curr_state0),
    .o(\state_mux_b2/B0_1 ));
  AL_MUX \state_mux_b2/al_mux_b0_0_2  (
    .i0(i3_mux_o2),
    .i1(1'b0),
    .sel(curr_state0),
    .o(\state_mux_b2/B0_2 ));
  AL_MUX \state_mux_b2/al_mux_b0_0_3  (
    .i0(1'b0),
    .i1(1'b0),
    .sel(curr_state0),
    .o(\state_mux_b2/B0_3 ));
  AL_MUX \state_mux_b2/al_mux_b0_1_0  (
    .i0(\state_mux_b2/B0_0 ),
    .i1(\state_mux_b2/B0_1 ),
    .sel(curr_state1),
    .o(\state_mux_b2/B1_0 ));
  AL_MUX \state_mux_b2/al_mux_b0_1_1  (
    .i0(\state_mux_b2/B0_2 ),
    .i1(\state_mux_b2/B0_3 ),
    .sel(curr_state1),
    .o(\state_mux_b2/B1_1 ));
  AL_MUX \state_mux_b2/al_mux_b0_2_0  (
    .i0(\state_mux_b2/B1_0 ),
    .i1(\state_mux_b2/B1_1 ),
    .sel(curr_state2),
    .o(state_mux_o2));
  reg_ar_as_w1 state_reg_b0 (
    .clk(clkr),
    .d(state_mux_o0),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(curr_state0));
  reg_ar_as_w1 state_reg_b1 (
    .clk(clkr),
    .d(state_mux_o1),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(curr_state1));
  reg_ar_as_w1 state_reg_b2 (
    .clk(clkr),
    .d(state_mux_o2),
    .en(1'b1),
    .reset(rst_neg_neg),
    .set(1'b0),
    .q(curr_state2));
  not sync_rdptr_g8_inv (sync_rdptr_g8_neg, sync_rdptr_g8);
  not sync_rdptr_g9_inv (sync_rdptr_g9_neg, sync_rdptr_g9);
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \wrusedw_sub/u0  (
    .a(wrptr_g_bin_d10),
    .b(sync_rdptr_g_bin_d10),
    .c(\wrusedw_sub/c0 ),
    .o({\wrusedw_sub/c1 ,wrusedw[0]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \wrusedw_sub/u1  (
    .a(wrptr_g_bin_d11),
    .b(sync_rdptr_g_bin_d11),
    .c(\wrusedw_sub/c1 ),
    .o({\wrusedw_sub/c2 ,wrusedw[1]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \wrusedw_sub/u2  (
    .a(wrptr_g_bin_d12),
    .b(sync_rdptr_g_bin_d12),
    .c(\wrusedw_sub/c2 ),
    .o({\wrusedw_sub/c3 ,wrusedw[2]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \wrusedw_sub/u3  (
    .a(wrptr_g_bin_d13),
    .b(sync_rdptr_g_bin_d13),
    .c(\wrusedw_sub/c3 ),
    .o({\wrusedw_sub/c4 ,wrusedw[3]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \wrusedw_sub/u4  (
    .a(wrptr_g_bin_d14),
    .b(sync_rdptr_g_bin_d14),
    .c(\wrusedw_sub/c4 ),
    .o({\wrusedw_sub/c5 ,wrusedw[4]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \wrusedw_sub/u5  (
    .a(wrptr_g_bin_d15),
    .b(sync_rdptr_g_bin_d15),
    .c(\wrusedw_sub/c5 ),
    .o({\wrusedw_sub/c6 ,wrusedw[5]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \wrusedw_sub/u6  (
    .a(wrptr_g_bin_d16),
    .b(sync_rdptr_g_bin_d16),
    .c(\wrusedw_sub/c6 ),
    .o({\wrusedw_sub/c7 ,wrusedw[6]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \wrusedw_sub/u7  (
    .a(wrptr_g_bin_d17),
    .b(sync_rdptr_g_bin_d17),
    .c(\wrusedw_sub/c7 ),
    .o({\wrusedw_sub/c8 ,wrusedw[7]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \wrusedw_sub/u8  (
    .a(wrptr_g_bin_d18),
    .b(sync_rdptr_g_bin_d18),
    .c(\wrusedw_sub/c8 ),
    .o({\wrusedw_sub/c9 ,wrusedw[8]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \wrusedw_sub/u9  (
    .a(delayed_wrptr_g9),
    .b(sync_rdptr_g_bin_d19),
    .c(\wrusedw_sub/c9 ),
    .o({open_n65,wrusedw[9]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB_CARRY"))
    \wrusedw_sub/ucin  (
    .a(1'b0),
    .o({\wrusedw_sub/c0 ,open_n68}));
  xor xor_q10_al_n28_and_o (xor_q10_al_n28_and_o_o, q10_al_n28, and_or_q10_al_n28_q9_o);
  xor xor_q10_al_n68_and_o (xor_q10_al_n68_and_o_o, q10_al_n68, and_or_q10_al_n68_q9_o);
  xor xor_q10_and_or_q10_q (xor_q10_and_or_q10_q_o, q10, and_or_q10_q9_o_and__o);
  xor xor_q1_al_n19_and_q0 (xor_q1_al_n19_and_q0_o, q1_al_n19, q0_al_n18);
  xor xor_q1_al_n59_and_q0 (xor_q1_al_n59_and_q0_o, q1_al_n59, q0_al_n58);
  xor xor_q1_and_q0__al_n1 (xor_q1_and_q0__al_n1_o, q1, q0);
  xor xor_q2_al_n20_and_q1 (xor_q2_al_n20_and_q1_o, q2_al_n20, and_q1_al_n19_and__a_o);
  xor xor_q2_al_n60_and_q1 (xor_q2_al_n60_and_q1_o, q2_al_n60, and_q1_al_n59_and__a_o);
  xor xor_q2_and_q1_and__a (xor_q2_and_q1_and__a_o, q2, and_q1_and__al_n1_q0_o);
  xor xor_q3_al_n21_and_q2 (xor_q3_al_n21_and_q2_o, q3_al_n21, and_q2_al_n20_and_an_o);
  xor xor_q3_al_n61_and_q2 (xor_q3_al_n61_and_q2_o, q3_al_n61, and_q2_al_n60_and_an_o);
  xor xor_q3_and_q2_and_an (xor_q3_and_q2_and_an_o, q3, and_q2_and_and__al_n_o);
  xor xor_q4_al_n22_and_q3 (xor_q4_al_n22_and_q3_o, q4_al_n22, and_q3_al_n21_and_an_o);
  xor xor_q4_al_n62_and_q3 (xor_q4_al_n62_and_q3_o, q4_al_n62, and_q3_al_n61_and_an_o);
  xor xor_q4_and_q3_and_an (xor_q4_and_q3_and_an_o, q4, and_q3_and_and_and___o);
  xor xor_q5_al_n23_and_q4 (xor_q5_al_n23_and_q4_o, q5_al_n23, and_q4_al_n22_and_an_o);
  xor xor_q5_al_n63_and_q4 (xor_q5_al_n63_and_q4_o, q5_al_n63, and_q4_al_n62_and_an_o);
  xor xor_q5_and_q4_and_an (xor_q5_and_q4_and_an_o, q5, and_q4_and_and_and_a_o);
  xor xor_q6_al_n24_and_q5 (xor_q6_al_n24_and_q5_o, q6_al_n24, and_q5_al_n23_and_an_o);
  xor xor_q6_al_n64_and_q5 (xor_q6_al_n64_and_q5_o, q6_al_n64, and_q5_al_n63_and_an_o);
  xor xor_q6_and_q5_and_an (xor_q6_and_q5_and_an_o, q6, and_q5_and_and_and_a_o);
  xor xor_q7_al_n25_and_q6 (xor_q7_al_n25_and_q6_o, q7_al_n25, and_q6_al_n24_and_an_o);
  xor xor_q7_al_n65_and_q6 (xor_q7_al_n65_and_q6_o, q7_al_n65, and_q6_al_n64_and_an_o);
  xor xor_q7_and_q6_and_an (xor_q7_and_q6_and_an_o, q7, and_q6_and_and_and_a_o);
  xor xor_q8_al_n26_and_q7 (xor_q8_al_n26_and_q7_o, q8_al_n26, and_q7_al_n25_and_an_o);
  xor xor_q8_al_n66_and_q7 (xor_q8_al_n66_and_q7_o, q8_al_n66, and_q7_al_n65_and_an_o);
  xor xor_q8_and_q7_and_an (xor_q8_and_q7_and_an_o, q8, and_q7_and_and_and_a_o);
  xor xor_q9_al_n27_and_q8 (xor_q9_al_n27_and_q8_o, q9_al_n27, and_q8_al_n26_and_an_o);
  xor xor_q9_al_n67_and_q8 (xor_q9_al_n67_and_q8_o, q9_al_n67, and_q8_al_n66_and_an_o);
  xor xor_q9_and_q8_and_an (xor_q9_and_q8_and_an_o, q9, and_q8_and_and_and_a_o);
  xor xor_rdptr_g9_rdptr_g_al_u61 (xor_rdptr_g9_rdptr_g_o_al_n115, rdptr_g9, rdptr_g8);
  xor xor_rdptr_g_test9_rd (xor_rdptr_g_test9_rd_o, rdptr_g_test9, rdptr_g_test8);
  xor xor_sync_delayed_wrp (xor_sync_delayed_wrp_o, sync_delayed_wrptr_g9, sync_delayed_wrptr_g8);
  xor xor_sync_rdptr_g9_sy (xor_sync_rdptr_g9_sy_o, sync_rdptr_g9, sync_rdptr_g8);
  xor xor_wrptr_g9_wrptr_g (xor_wrptr_g9_wrptr_g_o, wrptr_g9, wrptr_g8);
  xor xor_xor_rdptr_g9_rdp (xor_xor_rdptr_g9_rdp_o, xor_rdptr_g9_rdptr_g_o_al_n115, rdptr_g7);
  xor xor_xor_sync_delayed (xor_xor_sync_delayed_o, xor_sync_delayed_wrp_o, sync_delayed_wrptr_g7);
  xor xor_xor_sync_rdptr_g (xor_xor_sync_rdptr_g_o, xor_sync_rdptr_g9_sy_o, sync_rdptr_g7);
  xor xor_xor_wrptr_g9_wrp (xor_xor_wrptr_g9_wrp_o, xor_wrptr_g9_wrptr_g_o, wrptr_g7);
  xor xor_xor_xor_rdptr_g9 (xor_xor_xor_rdptr_g9_o, xor_xor_rdptr_g9_rdp_o, rdptr_g6);
  xor xor_xor_xor_sync_del (xor_xor_xor_sync_del_o, xor_xor_sync_delayed_o, sync_delayed_wrptr_g6);
  xor xor_xor_xor_sync_rdp (xor_xor_xor_sync_rdp_o, xor_xor_sync_rdptr_g_o, sync_rdptr_g6);
  xor xor_xor_xor_wrptr_g9 (xor_xor_xor_wrptr_g9_o, xor_xor_wrptr_g9_wrp_o, wrptr_g6);
  xor xor_xor_xor_xor_rdpt (xor_xor_xor_xor_rdpt_o, xor_xor_xor_rdptr_g9_o, rdptr_g5);
  xor xor_xor_xor_xor_sync (xor_xor_xor_xor_sync_o, xor_xor_xor_sync_rdp_o, sync_rdptr_g5);
  xor xor_xor_xor_xor_sync_al_u54 (xor_xor_xor_xor_sync_o_al_n109, xor_xor_xor_sync_del_o, sync_delayed_wrptr_g5);
  xor xor_xor_xor_xor_wrpt (xor_xor_xor_xor_wrpt_o, xor_xor_xor_wrptr_g9_o, wrptr_g5);
  xor xor_xor_xor_xor_xor_ (xor_xor_xor_xor_xor__o, xor_xor_xor_xor_sync_o, sync_rdptr_g4);
  xor xor_xor_xor_xor_xor__al_u43 (xor_xor_xor_xor_xor__o_al_n99, xor_xor_xor_xor_xor__o, sync_rdptr_g3);
  xor xor_xor_xor_xor_xor__al_u44 (xor_xor_xor_xor_xor__o_al_n100, xor_xor_xor_xor_xor__o_al_n99, sync_rdptr_g2);
  xor xor_xor_xor_xor_xor__al_u45 (xor_xor_xor_xor_xor__o_al_n101, xor_xor_xor_xor_xor__o_al_n100, sync_rdptr_g1);
  xor xor_xor_xor_xor_xor__al_u46 (xor_xor_xor_xor_xor__o_al_n102, xor_xor_xor_xor_xor__o_al_n101, sync_rdptr_g0);
  xor xor_xor_xor_xor_xor__al_u48 (xor_xor_xor_xor_xor__o_al_n104, xor_xor_xor_xor_wrpt_o, wrptr_g4);
  xor xor_xor_xor_xor_xor__al_u49 (xor_xor_xor_xor_xor__o_al_n105, xor_xor_xor_xor_xor__o_al_n104, wrptr_g3);
  xor xor_xor_xor_xor_xor__al_u50 (xor_xor_xor_xor_xor__o_al_n106, xor_xor_xor_xor_xor__o_al_n105, wrptr_g2);
  xor xor_xor_xor_xor_xor__al_u51 (xor_xor_xor_xor_xor__o_al_n107, xor_xor_xor_xor_xor__o_al_n106, wrptr_g1);
  xor xor_xor_xor_xor_xor__al_u52 (xor_xor_xor_xor_xor__o_al_n108, xor_xor_xor_xor_xor__o_al_n107, wrptr_g0);
  xor xor_xor_xor_xor_xor__al_u55 (xor_xor_xor_xor_xor__o_al_n110, xor_xor_xor_xor_sync_o_al_n109, sync_delayed_wrptr_g4);
  xor xor_xor_xor_xor_xor__al_u56 (xor_xor_xor_xor_xor__o_al_n111, xor_xor_xor_xor_xor__o_al_n110, sync_delayed_wrptr_g3);
  xor xor_xor_xor_xor_xor__al_u57 (xor_xor_xor_xor_xor__o_al_n112, xor_xor_xor_xor_xor__o_al_n111, sync_delayed_wrptr_g2);
  xor xor_xor_xor_xor_xor__al_u58 (xor_xor_xor_xor_xor__o_al_n113, xor_xor_xor_xor_xor__o_al_n112, sync_delayed_wrptr_g1);
  xor xor_xor_xor_xor_xor__al_u59 (xor_xor_xor_xor_xor__o_al_n114, xor_xor_xor_xor_xor__o_al_n113, sync_delayed_wrptr_g0);
  xor xor_xor_xor_xor_xor__al_u62 (xor_xor_xor_xor_xor__o_al_n116, xor_xor_xor_xor_rdpt_o, rdptr_g4);
  xor xor_xor_xor_xor_xor__al_u63 (xor_xor_xor_xor_xor__o_al_n117, xor_xor_xor_xor_xor__o_al_n116, rdptr_g3);
  xor xor_xor_xor_xor_xor__al_u64 (xor_xor_xor_xor_xor__o_al_n118, xor_xor_xor_xor_xor__o_al_n117, rdptr_g2);
  xor xor_xor_xor_xor_xor__al_u65 (xor_xor_xor_xor_xor__o_al_n119, xor_xor_xor_xor_xor__o_al_n118, rdptr_g1);
  xor xor_xor_xor_xor_xor__al_u66 (xor_xor_xor_xor_xor__o_al_n120, xor_xor_xor_xor_xor__o_al_n119, rdptr_g0);

endmodule 

module reg_ar_as_w1
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input d;
  input en;
  input reset;
  input set;
  output q;

  parameter REGSET = "RESET";
  wire enout;

  AL_MUX u_en0 (
    .i0(q),
    .i1(d),
    .sel(en),
    .o(enout));
  AL_DFF #(
    .INI((REGSET == "SET") ? 1'b1 : 1'b0))
    u_seq0 (
    .clk(clk),
    .d(enout),
    .reset(reset),
    .set(set),
    .q(q));

endmodule 

module AL_MUX
  (
  input i0,
  input i1,
  input sel,
  output o
  );

  wire not_sel, sel_i0, sel_i1;
  not u0 (not_sel, sel);
  and u1 (sel_i1, sel, i1);
  and u2 (sel_i0, not_sel, i0);
  or u3 (o, sel_i1, sel_i0);

endmodule

module AL_DFF
  (
  input reset,
  input set,
  input clk,
  input d,
  output reg q
  );

  parameter INI = 1'b0;

  tri0 gsrn = glbl.gsrn;

  always @(gsrn)
  begin
    if(!gsrn)
      assign q = INI;
    else
      deassign q;
  end

  always @(posedge reset or posedge set or posedge clk)
  begin
    if (reset)
      q <= 1'b0;
    else if (set)
      q <= 1'b1;
    else
      q <= d;
  end

endmodule

