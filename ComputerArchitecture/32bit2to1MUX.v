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
// CREATED		"Tue Mar 07 00:53:03 2017"

module \32bit2to1MUX (
	S,
	I0,
	I1,
	F
);


input wire	S;
input wire	[31:0] I0;
input wire	[31:0] I1;
output wire	[31:0] F;

wire	[31:0] F_ALTERA_SYNTHESIZED;





\2by16Mux 	b2v_inst(
	.S(S),
	.I0(I0[15:0]),
	.I1(I1[15:0]),
	.F(F_ALTERA_SYNTHESIZED[15:0]));


\2by16Mux 	b2v_inst1(
	.S(S),
	.I0(I0[31:16]),
	.I1(I1[31:16]),
	.F(F_ALTERA_SYNTHESIZED[31:16]));

assign	F = F_ALTERA_SYNTHESIZED;

endmodule
