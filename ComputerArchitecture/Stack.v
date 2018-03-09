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
// CREATED		"Thu Mar 09 15:42:19 2017"

module Stack(
	clock,
	POP,
	PUSH,
	reset,
	Data,
	Out,
	STP
);


input wire	clock;
input wire	POP;
input wire	PUSH;
input wire	reset;
input wire	[15:0] Data;
output wire	[15:0] Out;
output wire	[15:0] STP;

wire	[15:0] Add;
wire	[15:0] F;
wire	[15:0] N;
wire	[15:0] O;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	[15:0] SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_4;
wire	[15:0] SYNTHESIZED_WIRE_5;
wire	[0:15] SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_0 = 1;
assign	SYNTHESIZED_WIRE_4 = 1;
assign	SYNTHESIZED_WIRE_6 = 0;




ramVerilog	b2v_inst(
	.clk(clock),
	.cs(SYNTHESIZED_WIRE_0),
	.we(PUSH),
	.oe(POP),
	.address(F[7:0]),
	.data_in(Data),
	.data_out(O));
	defparam	b2v_inst.ADDR_WIDTH = 8;
	defparam	b2v_inst.DATA_WIDTH = 16;


\16_Bit_Register 	b2v_inst1(
	.not_Reset(reset),
	.Clock(clock),
	.Load(SYNTHESIZED_WIRE_1),
	.D(SYNTHESIZED_WIRE_7),
	.Q(Add));



\2by16Mux 	b2v_inst12(
	.S(POP),
	.I0(Add),
	.I1(SYNTHESIZED_WIRE_7),
	.F(F));


\16_bit_Carry_Lookahead 	b2v_inst3(
	.C0(SYNTHESIZED_WIRE_4),
	.A(Add),
	.B(SYNTHESIZED_WIRE_5),
	
	.S(SYNTHESIZED_WIRE_7));



\2by16Mux 	b2v_inst5(
	.S(POP),
	.I0(SYNTHESIZED_WIRE_6),
	.I1(N),
	.F(SYNTHESIZED_WIRE_5));

assign	SYNTHESIZED_WIRE_1 = PUSH ^ POP;




assign	Out = O;
assign	STP = Add;
assign	N[1] = 1;
assign	N[2] = 1;
assign	N[3] = 1;
assign	N[4] = 1;
assign	N[5] = 1;
assign	N[6] = 1;
assign	N[7] = 1;
assign	N[8] = 1;
assign	N[9] = 1;
assign	N[10] = 1;
assign	N[11] = 1;
assign	N[12] = 1;
assign	N[13] = 1;
assign	N[14] = 1;
assign	N[15] = 1;
assign	N[0] = 0;

endmodule
