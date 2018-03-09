// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Tue Mar 07 00:55:54 2017"

module Carry_Lookahead_Function(
	C0,
	p0,
	g0,
	p1,
	g1,
	p2,
	g2,
	p3,
	g3,
	PG,
	GG,
	C1,
	C2,
	C3,
	C4
);


input wire	C0;
input wire	p0;
input wire	g0;
input wire	p1;
input wire	g1;
input wire	p2;
input wire	g2;
input wire	p3;
input wire	g3;
output wire	PG;
output wire	GG;
output wire	C1;
output wire	C2;
output wire	C3;
output wire	C4;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;




assign	C2 = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1 | g1;


or5_0	b2v_inst10(
	.IN1(g3),
	.IN3(SYNTHESIZED_WIRE_13),
	.IN2(SYNTHESIZED_WIRE_14),
	.IN5(SYNTHESIZED_WIRE_4),
	.IN4(SYNTHESIZED_WIRE_15),
	.OUT(C4));

assign	GG = g3 | SYNTHESIZED_WIRE_13 | SYNTHESIZED_WIRE_15 | SYNTHESIZED_WIRE_14;

assign	C1 = g0 | SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_9 = p0 & C0;

assign	SYNTHESIZED_WIRE_1 = p1 & p0 & C0;

assign	SYNTHESIZED_WIRE_11 = p2 & p1 & p0 & C0;


and5_1	b2v_inst21(
	.IN3(p1),
	.IN2(p2),
	.IN1(p3),
	.IN5(C0),
	.IN4(p0),
	.OUT(SYNTHESIZED_WIRE_4));

assign	SYNTHESIZED_WIRE_0 = p1 & g0;

assign	SYNTHESIZED_WIRE_12 = p2 & g1;

assign	SYNTHESIZED_WIRE_10 = p2 & p1 & g0;

assign	SYNTHESIZED_WIRE_15 = p3 & p2 & p1 & g0;

assign	SYNTHESIZED_WIRE_14 = p3 & g2;

assign	SYNTHESIZED_WIRE_13 = p3 & p2 & g1;

assign	PG = p0 & p1 & p2 & p3;

assign	C3 = g2 | SYNTHESIZED_WIRE_10 | SYNTHESIZED_WIRE_11 | SYNTHESIZED_WIRE_12;


endmodule

module and5_1(IN3,IN2,IN1,IN5,IN4,OUT);
/* synthesis black_box */

input IN3;
input IN2;
input IN1;
input IN5;
input IN4;
assign OUT = IN1 & IN2 & IN3 & IN4 & IN5;
output OUT;

endmodule

module or5_0(IN1,IN3,IN2,IN5,IN4,OUT);
/* synthesis black_box */

input IN1;
input IN3;
input IN2;
input IN5;
input IN4;
assign OUT = IN1 | IN2 | IN3 | IN4 | IN5;
output OUT;

endmodule
