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
// CREATED		"Sat Mar 25 20:18:34 2017"

module Execute0(
	IR,
	CW
);


input wire	[15:0] IR;
output wire	[55:0] CW;

wire	[1:0] S;
wire	[55:0] SYNTHESIZED_WIRE_0;
wire	[55:0] SYNTHESIZED_WIRE_1;
wire	[55:0] SYNTHESIZED_WIRE_2;
wire	[55:0] SYNTHESIZED_WIRE_3;
wire	[55:0] SYNTHESIZED_WIRE_4;
wire	[55:0] SYNTHESIZED_WIRE_5;
wire	[55:0] SYNTHESIZED_WIRE_6;
wire	[55:0] SYNTHESIZED_WIRE_7;





FourXOneMUX56bit	b2v_inst(
	.I0(SYNTHESIZED_WIRE_0),
	.I1(SYNTHESIZED_WIRE_1),
	.I2(SYNTHESIZED_WIRE_2),
	.I3(SYNTHESIZED_WIRE_3),
	.S(S),
	.F(SYNTHESIZED_WIRE_6));


FourXOneMUX56bit	b2v_inst1(
	.I0(SYNTHESIZED_WIRE_4),
	.I1(SYNTHESIZED_WIRE_5),
	.I2(SYNTHESIZED_WIRE_6),
	.I3(SYNTHESIZED_WIRE_7),
	.S(IR[15:14]),
	.F(CW));


Execute0_11	b2v_inst10(
	.IR_in(IR),
	.CW(SYNTHESIZED_WIRE_7));


Ex0_Select	b2v_inst12(
	.IR_in(IR),
	.S1(S[1]),
	.S0(S[0]));


Execute0_00	b2v_inst4(
	.IR_in(IR),
	.CW(SYNTHESIZED_WIRE_4));


Execute0_01	b2v_inst5(
	.IR_in(IR),
	.CW(SYNTHESIZED_WIRE_5));


Execute0_10_Stack	b2v_inst6(
	.IR_in(IR),
	.CW(SYNTHESIZED_WIRE_0));


Execute0_10_Mem_PCont	b2v_inst7(
	.IR_in(IR),
	.CW(SYNTHESIZED_WIRE_1));


Execute0_10_PC	b2v_inst8(
	.IR_in(IR),
	.CW(SYNTHESIZED_WIRE_2));


Execute0_10_Bitwise	b2v_inst9(
	.IR_in(IR),
	.CW(SYNTHESIZED_WIRE_3));


endmodule
