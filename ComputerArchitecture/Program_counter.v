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
// CREATED		"Thu Mar 09 07:50:41 2017"

module Program_counter(
	PS,
	clock,
	Reset,
	J,
	LK,
	in,
	Out
);


input wire	PS;
input wire	clock;
input wire	Reset;
input wire	J;
input wire	LK;
input wire	[15:0] in;
output wire	[15:0] Out;

wire	[15:0] Q;
wire	[15:0] SYNTHESIZED_WIRE_0;
wire	[15:0] SYNTHESIZED_WIRE_1;
wire	[15:0] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	[15:0] SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_3 = 0;




\2by16Mux 	b2v_inst(
	.S(J),
	.I0(SYNTHESIZED_WIRE_0),
	.I1(in),
	.F(SYNTHESIZED_WIRE_4));


\2by16Mux 	b2v_inst1(
	.S(LK),
	.I0(SYNTHESIZED_WIRE_1),
	.I1(in),
	.F(SYNTHESIZED_WIRE_2));


\16_Bit_Register 	b2v_inst2(
	.not_Reset(Reset),
	.Clock(clock),
	.Load(PS),
	.D(SYNTHESIZED_WIRE_2),
	.Q(Q));


\16_bit_Carry_Lookahead 	b2v_inst3(
	.C0(SYNTHESIZED_WIRE_3),
	.A(SYNTHESIZED_WIRE_4),
	.B(Q),
	
	.S(SYNTHESIZED_WIRE_1));


in0001	b2v_inst4(
	.n(SYNTHESIZED_WIRE_0));


assign	Out = Q;

endmodule
