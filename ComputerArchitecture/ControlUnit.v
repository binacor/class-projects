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
// CREATED		"Sat Mar 25 22:20:01 2017"

module ControlUnit(
	Reset,
	Clock,
	IR_in,
	CW
);


input wire	Reset;
input wire	Clock;
input wire	[15:0] IR_in;
output wire	[55:0] CW;

wire	[1:0] CS;
wire	[55:0] CW_ALTERA_SYNTHESIZED;
wire	[55:0] EX0;
wire	[55:0] EX1;
wire	[55:0] IF;
wire	SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_0 = 1;




Execute1	b2v_inst(
	.IR_in(IR_in),
	.CW(EX1));


Execute0	b2v_inst2(
	.IR(IR_in),
	.CW(EX0));


InstructionFetch	b2v_inst3(
	.CW(IF));


FourXOneMUX56bit	b2v_inst4(
	.I0(IF),
	.I1(EX0),
	.I2(EX1),
	
	.S(CS),
	.F(CW_ALTERA_SYNTHESIZED));


ControlState	b2v_inst5(
	.Reset(Reset),
	.Clock(Clock),
	.Load(SYNTHESIZED_WIRE_0),
	.D(CW_ALTERA_SYNTHESIZED[55:54]),
	.Q(CS));


assign	CW = CW_ALTERA_SYNTHESIZED;

endmodule
