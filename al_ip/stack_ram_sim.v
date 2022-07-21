// Verilog netlist created by TD v4.6.18154
// Sat Jul 11 11:59:21 2020

`timescale 1ns / 1ps
module stack_ram  // al_ip/stack_ram.v(14)
  (
  addra,
  cea,
  clka,
  dia,
  wea,
  doa
  );

  input [9:0] addra;  // al_ip/stack_ram.v(19)
  input cea;  // al_ip/stack_ram.v(21)
  input clka;  // al_ip/stack_ram.v(22)
  input [3:0] dia;  // al_ip/stack_ram.v(18)
  input wea;  // al_ip/stack_ram.v(20)
  output [3:0] doa;  // al_ip/stack_ram.v(16)


  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();
  // address_offset=0;data_offset=0;depth=1024;width=4;num_section=1;width_per_section=4;section_size=4;working_depth=2048;working_width=4;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("1"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("4"),
    .DATA_WIDTH_B("4"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_1024x4_sub_000000_000 (
    .addra({1'b0,addra,2'b11}),
    .cea(cea),
    .clka(clka),
    .dia({open_n68,open_n69,open_n70,open_n71,open_n72,dia}),
    .wea(wea),
    .doa({open_n87,open_n88,open_n89,open_n90,open_n91,doa}));

endmodule 

