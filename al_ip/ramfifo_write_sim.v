// Verilog netlist created by TD v4.6.14756
// Mon Jun 15 07:42:02 2020

`timescale 1ns / 1ps
module ramfifo_write  // al_ip/ramfifo.v(14)
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

  input clkr;  // al_ip/ramfifo.v(25)
  input clkw;  // al_ip/ramfifo.v(24)
  input [15:0] di;  // al_ip/ramfifo.v(23)
  input re;  // al_ip/ramfifo.v(25)
  input rst;  // al_ip/ramfifo.v(22)
  input we;  // al_ip/ramfifo.v(24)
  output [15:0] do;  // al_ip/ramfifo.v(27)
  output empty_flag;  // al_ip/ramfifo.v(28)
  output full_flag;  // al_ip/ramfifo.v(29)
  output [9:0] rdusedw;  // al_ip/ramfifo.v(30)
  output [9:0] wrusedw;  // al_ip/ramfifo.v(31)

  wire and_and__al_n1_q0_al_o;
  wire and_and__al_n1_q0_ne_o;
  wire and_and_and__al_n1_q_o;
  wire and_and_and__al_n1_q_o_al_n29;
  wire and_and_and_and__al__o;
  wire and_and_and_and__al__o_al_n30;
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
  wire and_or_q10_al_n28_q9_o;
  wire and_or_q10_q9_o_and__o;
  wire and_q1_al_n19_and__a_o;
  wire and_q1_and__al_n1_q0_o;
  wire and_q2_al_n20_and_an_o;
  wire and_q2_and_and__al_n_o;
  wire and_q3_al_n21_and_an_o;
  wire and_q3_and_and_and___o;
  wire and_q4_al_n22_and_an_o;
  wire and_q4_and_and_and_a_o;
  wire and_q5_al_n23_and_an_o;
  wire and_q5_and_and_and_a_o;
  wire and_q6_al_n24_and_an_o;
  wire and_q6_and_and_and_a_o;
  wire and_q7_al_n25_and_an_o;
  wire and_q7_and_and_and_a_o;
  wire and_q8_al_n26_and_an_o;
  wire and_q8_and_and_and_a_o;
  wire and_re_empty_equal_o_o;
  wire and_we_full_equal_o__o;
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
  wire empty_equal_o_neg;
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
  wire gray_counter_mux_o1;
  wire gray_counter_mux_o10;
  wire gray_counter_mux_o10_al_n47;
  wire gray_counter_mux_o1_al_n38;
  wire gray_counter_mux_o2;
  wire gray_counter_mux_o2_al_n39;
  wire gray_counter_mux_o3;
  wire gray_counter_mux_o3_al_n40;
  wire gray_counter_mux_o4;
  wire gray_counter_mux_o4_al_n41;
  wire gray_counter_mux_o5;
  wire gray_counter_mux_o5_al_n42;
  wire gray_counter_mux_o6;
  wire gray_counter_mux_o6_al_n43;
  wire gray_counter_mux_o7;
  wire gray_counter_mux_o7_al_n44;
  wire gray_counter_mux_o8;
  wire gray_counter_mux_o8_al_n45;
  wire gray_counter_mux_o9;
  wire gray_counter_mux_o9_al_n46;
  wire mux_o0;
  wire mux_o0_al_n48;
  wire mux_o1;
  wire mux_o1_al_n49;
  wire mux_o2;
  wire mux_o2_al_n50;
  wire mux_o3;
  wire mux_o3_al_n51;
  wire mux_o4;
  wire mux_o4_al_n52;
  wire mux_o5;
  wire mux_o5_al_n53;
  wire mux_o6;
  wire mux_o6_al_n54;
  wire mux_o7;
  wire mux_o7_al_n55;
  wire mux_o8;
  wire mux_o8_al_n56;
  wire mux_o9;
  wire mux_o9_al_n57;
  wire or_q10_al_n28_q9_al__o;
  wire or_q10_q9_o;
  wire q0;
  wire q0_al_n18;
  wire q0_al_n18_neg;
  wire q0_neg;
  wire q1;
  wire q10;
  wire q10_al_n28;
  wire q1_al_n19;
  wire q1_al_n19_neg;
  wire q1_neg;
  wire q2;
  wire q2_al_n20;
  wire q2_al_n20_neg;
  wire q2_neg;
  wire q3;
  wire q3_al_n21;
  wire q3_al_n21_neg;
  wire q3_neg;
  wire q4;
  wire q4_al_n22;
  wire q4_al_n22_neg;
  wire q4_neg;
  wire q5;
  wire q5_al_n23;
  wire q5_al_n23_neg;
  wire q5_neg;
  wire q6;
  wire q6_al_n24;
  wire q6_al_n24_neg;
  wire q6_neg;
  wire q7;
  wire q7_al_n25;
  wire q7_al_n25_neg;
  wire q7_neg;
  wire q8;
  wire q8_al_n26;
  wire q8_al_n26_neg;
  wire q8_neg;
  wire q9;
  wire q9_al_n27;
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
  wire xor_q10_and_or_q10_q_o;
  wire xor_q1_al_n19_and_q0_o;
  wire xor_q1_and_q0__al_n1_o;
  wire xor_q2_al_n20_and_q1_o;
  wire xor_q2_and_q1_and__a_o;
  wire xor_q3_al_n21_and_q2_o;
  wire xor_q3_and_q2_and_an_o;
  wire xor_q4_al_n22_and_q3_o;
  wire xor_q4_and_q3_and_an_o;
  wire xor_q5_al_n23_and_q4_o;
  wire xor_q5_and_q4_and_an_o;
  wire xor_q6_al_n24_and_q5_o;
  wire xor_q6_and_q5_and_an_o;
  wire xor_q7_al_n25_and_q6_o;
  wire xor_q7_and_q6_and_an_o;
  wire xor_q8_al_n26_and_q7_o;
  wire xor_q8_and_q7_and_an_o;
  wire xor_q9_al_n27_and_q8_o;
  wire xor_q9_and_q8_and_an_o;
  wire xor_rdptr_g9_rdptr_g_o;
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

  and and_and__al_n1_q0_al (and_and__al_n1_q0_al_o, q0_al_n18_neg, q1_al_n19_neg);
  and and_and__al_n1_q0_ne (and_and__al_n1_q0_ne_o, q0_neg, q1_neg);
  and and_and_and__al_n1_q (and_and_and__al_n1_q_o, and_and__al_n1_q0_ne_o, q2_neg);
  and and_and_and__al_n1_q_al_u18 (and_and_and__al_n1_q_o_al_n29, and_and__al_n1_q0_al_o, q2_al_n20_neg);
  and and_and_and_and__al_ (and_and_and_and__al__o, and_and_and__al_n1_q_o, q3_neg);
  and and_and_and_and__al__al_u19 (and_and_and_and__al__o_al_n30, and_and_and__al_n1_q_o_al_n29, q3_al_n21_neg);
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
  and and_or_q10_al_n28_q9 (and_or_q10_al_n28_q9_o, or_q10_al_n28_q9_al__o, and_and_and_and_and__o_al_n35);
  and and_or_q10_q9_o_and_ (and_or_q10_q9_o_and__o, or_q10_q9_o, and_and_and_and_and__o_al_n3);
  and and_q1_al_n19_and__a (and_q1_al_n19_and__a_o, q1_al_n19, q0_al_n18_neg);
  and and_q1_and__al_n1_q0 (and_q1_and__al_n1_q0_o, q1, q0_neg);
  and and_q2_al_n20_and_an (and_q2_al_n20_and_an_o, q2_al_n20, and_and__al_n1_q0_al_o);
  and and_q2_and_and__al_n (and_q2_and_and__al_n_o, q2, and_and__al_n1_q0_ne_o);
  and and_q3_al_n21_and_an (and_q3_al_n21_and_an_o, q3_al_n21, and_and_and__al_n1_q_o_al_n29);
  and and_q3_and_and_and__ (and_q3_and_and_and___o, q3, and_and_and__al_n1_q_o);
  and and_q4_al_n22_and_an (and_q4_al_n22_and_an_o, q4_al_n22, and_and_and_and__al__o_al_n30);
  and and_q4_and_and_and_a (and_q4_and_and_and_a_o, q4, and_and_and_and__al__o);
  and and_q5_al_n23_and_an (and_q5_al_n23_and_an_o, q5_al_n23, and_and_and_and_and__o_al_n31);
  and and_q5_and_and_and_a (and_q5_and_and_and_a_o, q5, and_and_and_and_and__o);
  and and_q6_al_n24_and_an (and_q6_al_n24_and_an_o, q6_al_n24, and_and_and_and_and__o_al_n32);
  and and_q6_and_and_and_a (and_q6_and_and_and_a_o, q6, and_and_and_and_and__o_al_n0);
  and and_q7_al_n25_and_an (and_q7_al_n25_and_an_o, q7_al_n25, and_and_and_and_and__o_al_n33);
  and and_q7_and_and_and_a (and_q7_and_and_and_a_o, q7, and_and_and_and_and__o_al_n1);
  and and_q8_al_n26_and_an (and_q8_al_n26_and_an_o, q8_al_n26, and_and_and_and_and__o_al_n34);
  and and_q8_and_and_and_a (and_q8_and_and_and_a_o, q8, and_and_and_and_and__o_al_n2);
  and and_re_empty_equal_o (and_re_empty_equal_o_o, re, empty_equal_o_neg);
  and and_we_full_equal_o_ (and_we_full_equal_o__o, we, full_equal_o_neg);
  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();
  not \empty_equal/none_diff  (empty_flag, \empty_equal/or_or_or_xor_i0[0]_i_o );
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
  not empty_equal_o_inv (empty_equal_o_neg, empty_flag);
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
    .addrb({xor_rdptr_g9_rdptr_g_o,rdptr_g7,rdptr_g6,rdptr_g5,rdptr_g4,rdptr_g3,rdptr_g2,rdptr_g1,rdptr_g0,4'b1111}),
    .cea(and_we_full_equal_o__o),
    .clka(clkw),
    .clkb(clkr),
    .csb({and_re_empty_equal_o_o,open_n51,open_n52}),
    .dia(di[8:0]),
    .dib({open_n53,open_n54,di[15:9]}),
    .rsta(rst),
    .rstb(rst),
    .doa(do[8:0]),
    .dob({open_n59,open_n60,do[15:9]}));
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
    .sel(and_re_empty_equal_o_o),
    .o(gray_counter_mux_o0_al_n37));
  AL_MUX \gray_counter_mux_al_u26_b1/al_mux_b0_0_0  (
    .i0(q1_al_n19),
    .i1(xor_q1_al_n19_and_q0_o),
    .sel(and_re_empty_equal_o_o),
    .o(gray_counter_mux_o1_al_n38));
  AL_MUX \gray_counter_mux_al_u26_b10/al_mux_b0_0_0  (
    .i0(q10_al_n28),
    .i1(xor_q10_al_n28_and_o_o),
    .sel(and_re_empty_equal_o_o),
    .o(gray_counter_mux_o10_al_n47));
  AL_MUX \gray_counter_mux_al_u26_b2/al_mux_b0_0_0  (
    .i0(q2_al_n20),
    .i1(xor_q2_al_n20_and_q1_o),
    .sel(and_re_empty_equal_o_o),
    .o(gray_counter_mux_o2_al_n39));
  AL_MUX \gray_counter_mux_al_u26_b3/al_mux_b0_0_0  (
    .i0(q3_al_n21),
    .i1(xor_q3_al_n21_and_q2_o),
    .sel(and_re_empty_equal_o_o),
    .o(gray_counter_mux_o3_al_n40));
  AL_MUX \gray_counter_mux_al_u26_b4/al_mux_b0_0_0  (
    .i0(q4_al_n22),
    .i1(xor_q4_al_n22_and_q3_o),
    .sel(and_re_empty_equal_o_o),
    .o(gray_counter_mux_o4_al_n41));
  AL_MUX \gray_counter_mux_al_u26_b5/al_mux_b0_0_0  (
    .i0(q5_al_n23),
    .i1(xor_q5_al_n23_and_q4_o),
    .sel(and_re_empty_equal_o_o),
    .o(gray_counter_mux_o5_al_n42));
  AL_MUX \gray_counter_mux_al_u26_b6/al_mux_b0_0_0  (
    .i0(q6_al_n24),
    .i1(xor_q6_al_n24_and_q5_o),
    .sel(and_re_empty_equal_o_o),
    .o(gray_counter_mux_o6_al_n43));
  AL_MUX \gray_counter_mux_al_u26_b7/al_mux_b0_0_0  (
    .i0(q7_al_n25),
    .i1(xor_q7_al_n25_and_q6_o),
    .sel(and_re_empty_equal_o_o),
    .o(gray_counter_mux_o7_al_n44));
  AL_MUX \gray_counter_mux_al_u26_b8/al_mux_b0_0_0  (
    .i0(q8_al_n26),
    .i1(xor_q8_al_n26_and_q7_o),
    .sel(and_re_empty_equal_o_o),
    .o(gray_counter_mux_o8_al_n45));
  AL_MUX \gray_counter_mux_al_u26_b9/al_mux_b0_0_0  (
    .i0(q9_al_n27),
    .i1(xor_q9_al_n27_and_q8_o),
    .sel(and_re_empty_equal_o_o),
    .o(gray_counter_mux_o9_al_n46));
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
  AL_MUX \mux_al_u28_b0/al_mux_b0_0_0  (
    .i0(rdptr_g0),
    .i1(q1_al_n19),
    .sel(and_re_empty_equal_o_o),
    .o(mux_o0_al_n48));
  AL_MUX \mux_al_u28_b1/al_mux_b0_0_0  (
    .i0(rdptr_g1),
    .i1(q2_al_n20),
    .sel(and_re_empty_equal_o_o),
    .o(mux_o1_al_n49));
  AL_MUX \mux_al_u28_b2/al_mux_b0_0_0  (
    .i0(rdptr_g2),
    .i1(q3_al_n21),
    .sel(and_re_empty_equal_o_o),
    .o(mux_o2_al_n50));
  AL_MUX \mux_al_u28_b3/al_mux_b0_0_0  (
    .i0(rdptr_g3),
    .i1(q4_al_n22),
    .sel(and_re_empty_equal_o_o),
    .o(mux_o3_al_n51));
  AL_MUX \mux_al_u28_b4/al_mux_b0_0_0  (
    .i0(rdptr_g4),
    .i1(q5_al_n23),
    .sel(and_re_empty_equal_o_o),
    .o(mux_o4_al_n52));
  AL_MUX \mux_al_u28_b5/al_mux_b0_0_0  (
    .i0(rdptr_g5),
    .i1(q6_al_n24),
    .sel(and_re_empty_equal_o_o),
    .o(mux_o5_al_n53));
  AL_MUX \mux_al_u28_b6/al_mux_b0_0_0  (
    .i0(rdptr_g6),
    .i1(q7_al_n25),
    .sel(and_re_empty_equal_o_o),
    .o(mux_o6_al_n54));
  AL_MUX \mux_al_u28_b7/al_mux_b0_0_0  (
    .i0(rdptr_g7),
    .i1(q8_al_n26),
    .sel(and_re_empty_equal_o_o),
    .o(mux_o7_al_n55));
  AL_MUX \mux_al_u28_b8/al_mux_b0_0_0  (
    .i0(rdptr_g8),
    .i1(q9_al_n27),
    .sel(and_re_empty_equal_o_o),
    .o(mux_o8_al_n56));
  AL_MUX \mux_al_u28_b9/al_mux_b0_0_0  (
    .i0(rdptr_g9),
    .i1(q10_al_n28),
    .sel(and_re_empty_equal_o_o),
    .o(mux_o9_al_n57));
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
  or or_q10_al_n28_q9_al_ (or_q10_al_n28_q9_al__o, q10_al_n28, q9_al_n27);
  or or_q10_q9 (or_q10_q9_o, q10, q9);
  not q0_al_n18_inv (q0_al_n18_neg, q0_al_n18);
  not q0_inv (q0_neg, q0);
  not q1_al_n19_inv (q1_al_n19_neg, q1_al_n19);
  not q1_inv (q1_neg, q1);
  not q2_al_n20_inv (q2_al_n20_neg, q2_al_n20);
  not q2_inv (q2_neg, q2);
  not q3_al_n21_inv (q3_al_n21_neg, q3_al_n21);
  not q3_inv (q3_neg, q3);
  not q4_al_n22_inv (q4_al_n22_neg, q4_al_n22);
  not q4_inv (q4_neg, q4);
  not q5_al_n23_inv (q5_al_n23_neg, q5_al_n23);
  not q5_inv (q5_neg, q5);
  not q6_al_n24_inv (q6_al_n24_neg, q6_al_n24);
  not q6_inv (q6_neg, q6);
  not q7_al_n25_inv (q7_al_n25_neg, q7_al_n25);
  not q7_inv (q7_neg, q7);
  not q8_al_n26_inv (q8_al_n26_neg, q8_al_n26);
  not q8_inv (q8_neg, q8);
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
    .d(xor_rdptr_g9_rdptr_g_o),
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
  xor xor_q10_and_or_q10_q (xor_q10_and_or_q10_q_o, q10, and_or_q10_q9_o_and__o);
  xor xor_q1_al_n19_and_q0 (xor_q1_al_n19_and_q0_o, q1_al_n19, q0_al_n18);
  xor xor_q1_and_q0__al_n1 (xor_q1_and_q0__al_n1_o, q1, q0);
  xor xor_q2_al_n20_and_q1 (xor_q2_al_n20_and_q1_o, q2_al_n20, and_q1_al_n19_and__a_o);
  xor xor_q2_and_q1_and__a (xor_q2_and_q1_and__a_o, q2, and_q1_and__al_n1_q0_o);
  xor xor_q3_al_n21_and_q2 (xor_q3_al_n21_and_q2_o, q3_al_n21, and_q2_al_n20_and_an_o);
  xor xor_q3_and_q2_and_an (xor_q3_and_q2_and_an_o, q3, and_q2_and_and__al_n_o);
  xor xor_q4_al_n22_and_q3 (xor_q4_al_n22_and_q3_o, q4_al_n22, and_q3_al_n21_and_an_o);
  xor xor_q4_and_q3_and_an (xor_q4_and_q3_and_an_o, q4, and_q3_and_and_and___o);
  xor xor_q5_al_n23_and_q4 (xor_q5_al_n23_and_q4_o, q5_al_n23, and_q4_al_n22_and_an_o);
  xor xor_q5_and_q4_and_an (xor_q5_and_q4_and_an_o, q5, and_q4_and_and_and_a_o);
  xor xor_q6_al_n24_and_q5 (xor_q6_al_n24_and_q5_o, q6_al_n24, and_q5_al_n23_and_an_o);
  xor xor_q6_and_q5_and_an (xor_q6_and_q5_and_an_o, q6, and_q5_and_and_and_a_o);
  xor xor_q7_al_n25_and_q6 (xor_q7_al_n25_and_q6_o, q7_al_n25, and_q6_al_n24_and_an_o);
  xor xor_q7_and_q6_and_an (xor_q7_and_q6_and_an_o, q7, and_q6_and_and_and_a_o);
  xor xor_q8_al_n26_and_q7 (xor_q8_al_n26_and_q7_o, q8_al_n26, and_q7_al_n25_and_an_o);
  xor xor_q8_and_q7_and_an (xor_q8_and_q7_and_an_o, q8, and_q7_and_and_and_a_o);
  xor xor_q9_al_n27_and_q8 (xor_q9_al_n27_and_q8_o, q9_al_n27, and_q8_al_n26_and_an_o);
  xor xor_q9_and_q8_and_an (xor_q9_and_q8_and_an_o, q9, and_q8_and_and_and_a_o);
  xor xor_rdptr_g9_rdptr_g (xor_rdptr_g9_rdptr_g_o, rdptr_g9, rdptr_g8);
  xor xor_sync_delayed_wrp (xor_sync_delayed_wrp_o, sync_delayed_wrptr_g9, sync_delayed_wrptr_g8);
  xor xor_sync_rdptr_g9_sy (xor_sync_rdptr_g9_sy_o, sync_rdptr_g9, sync_rdptr_g8);
  xor xor_wrptr_g9_wrptr_g (xor_wrptr_g9_wrptr_g_o, wrptr_g9, wrptr_g8);
  xor xor_xor_rdptr_g9_rdp (xor_xor_rdptr_g9_rdp_o, xor_rdptr_g9_rdptr_g_o, rdptr_g7);
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

