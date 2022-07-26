/************************************************************\
 **  Copyright (c) 2011-2021 Anlogic, Inc.
 **  All Right Reserved.
\************************************************************/
/************************************************************\
 ** Log	:	This file is generated by Anlogic IP Generator.
 ** File	:	D:/_Tools/Anlogic/Projects/IT8951/al_ip/ramfifo.v
 ** Date	:	2020 06 15
 ** TD version	:	4.6.14756
\************************************************************/

`timescale 1ns / 1ps

module ramfifo_write (
	rst,
	di, clkr, re, clkw, we,
	do,
	empty_flag,full_flag,rdusedw,wrusedw
 
);

	input rst;
	input [15:0] di;
	input clkw, we;
	input clkr,re;

	output [15:0] do;
	output empty_flag;
	output full_flag;
	output [9:0] rdusedw;
	output [9:0] wrusedw;

EG_LOGIC_RAMFIFO #(
 	.DATA_WIDTH(16),
	.ADDR_WIDTH(9),
	.SHOWAHEAD(0),
	.IMPLEMENT("9K")
)
logic_ramfifo(
	.rst(rst),
	.di(di),
	.clkw(clkw),
	.we(we),
	.do(do),
	.clkr(clkr),
	.re(re),
	.empty_flag(empty_flag),
	.full_flag(full_flag),
	.rdusedw(rdusedw),
	.wrusedw(wrusedw)
);

endmodule