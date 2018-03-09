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
// CREATED		"Tue Mar 07 00:52:49 2017"

module CarryLookAheadAdder32bits(
	A,
	B,
	F
);


input wire	[31:0] A;
input wire	[31:0] B;
output wire	[31:0] F;

wire	[31:0] F_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_0 = 0;




\16_bit_Carry_Lookahead 	b2v_inst(
	.C0(SYNTHESIZED_WIRE_0),
	.A(A[15:0]),
	.B(B[15:0]),
	.Cout(SYNTHESIZED_WIRE_1),
	.S(F_ALTERA_SYNTHESIZED[15:0]));


\16_bit_Carry_Lookahead 	b2v_inst2(
	.C0(SYNTHESIZED_WIRE_1),
	.A(A[31:16]),
	.B(B[31:16]),
	
	.S(F_ALTERA_SYNTHESIZED[31:16]));


assign	F = F_ALTERA_SYNTHESIZED;

endmodule
