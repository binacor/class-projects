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
// CREATED		"Tue Mar 07 00:54:03 2017"

module \16Bit_8to1_Mux (
	In0,
	In1,
	In2,
	In3,
	In4,
	In5,
	In6,
	In7,
	S,
	Out
);


input wire	[15:0] In0;
input wire	[15:0] In1;
input wire	[15:0] In2;
input wire	[15:0] In3;
input wire	[15:0] In4;
input wire	[15:0] In5;
input wire	[15:0] In6;
input wire	[15:0] In7;
input wire	[2:0] S;
output wire	[15:0] Out;

wire	[15:0] F;





\8x1Mux 	b2v_inst(
	.In7(In7[15]),
	.In6(In6[15]),
	.In5(In5[15]),
	.In4(In4[15]),
	.In3(In3[15]),
	.In2(In2[15]),
	.In1(In1[15]),
	.In0(In0[15]),
	.S(S),
	.OUT(F[15]));


\8x1Mux 	b2v_inst1(
	.In7(In7[14]),
	.In6(In6[14]),
	.In5(In5[14]),
	.In4(In4[14]),
	.In3(In3[14]),
	.In2(In2[14]),
	.In1(In1[14]),
	.In0(In0[14]),
	.S(S),
	.OUT(F[14]));


\8x1Mux 	b2v_inst10(
	.In7(In7[5]),
	.In6(In6[5]),
	.In5(In5[5]),
	.In4(In4[5]),
	.In3(In3[5]),
	.In2(In2[5]),
	.In1(In1[5]),
	.In0(In0[5]),
	.S(S),
	.OUT(F[5]));


\8x1Mux 	b2v_inst11(
	.In7(In7[4]),
	.In6(In6[4]),
	.In5(In5[4]),
	.In4(In4[4]),
	.In3(In3[4]),
	.In2(In2[4]),
	.In1(In1[4]),
	.In0(In0[4]),
	.S(S),
	.OUT(F[4]));


\8x1Mux 	b2v_inst12(
	.In7(In7[3]),
	.In6(In6[3]),
	.In5(In5[3]),
	.In4(In4[3]),
	.In3(In3[3]),
	.In2(In2[3]),
	.In1(In1[3]),
	.In0(In0[3]),
	.S(S),
	.OUT(F[3]));


\8x1Mux 	b2v_inst13(
	.In7(In7[2]),
	.In6(In6[2]),
	.In5(In5[2]),
	.In4(In4[2]),
	.In3(In3[2]),
	.In2(In2[2]),
	.In1(In1[2]),
	.In0(In0[2]),
	.S(S),
	.OUT(F[2]));


\8x1Mux 	b2v_inst14(
	.In7(In7[1]),
	.In6(In6[1]),
	.In5(In5[1]),
	.In4(In4[1]),
	.In3(In3[1]),
	.In2(In2[1]),
	.In1(In1[1]),
	.In0(In0[1]),
	.S(S),
	.OUT(F[1]));


\8x1Mux 	b2v_inst15(
	.In7(In7[0]),
	.In6(In6[0]),
	.In5(In5[0]),
	.In4(In4[0]),
	.In3(In3[0]),
	.In2(In2[0]),
	.In1(In1[0]),
	.In0(In0[0]),
	.S(S),
	.OUT(F[0]));


\8x1Mux 	b2v_inst2(
	.In7(In7[13]),
	.In6(In6[13]),
	.In5(In5[13]),
	.In4(In4[13]),
	.In3(In3[13]),
	.In2(In2[13]),
	.In1(In1[13]),
	.In0(In0[13]),
	.S(S),
	.OUT(F[13]));


\8x1Mux 	b2v_inst3(
	.In7(In7[12]),
	.In6(In6[12]),
	.In5(In5[12]),
	.In4(In4[12]),
	.In3(In3[12]),
	.In2(In2[12]),
	.In1(In1[12]),
	.In0(In0[12]),
	.S(S),
	.OUT(F[12]));


\8x1Mux 	b2v_inst4(
	.In7(In7[11]),
	.In6(In6[11]),
	.In5(In5[11]),
	.In4(In4[11]),
	.In3(In3[11]),
	.In2(In2[11]),
	.In1(In1[11]),
	.In0(In0[11]),
	.S(S),
	.OUT(F[11]));


\8x1Mux 	b2v_inst5(
	.In7(In7[10]),
	.In6(In6[10]),
	.In5(In5[10]),
	.In4(In4[10]),
	.In3(In3[10]),
	.In2(In2[10]),
	.In1(In1[10]),
	.In0(In0[10]),
	.S(S),
	.OUT(F[10]));


\8x1Mux 	b2v_inst6(
	.In7(In7[9]),
	.In6(In6[9]),
	.In5(In5[9]),
	.In4(In4[9]),
	.In3(In3[9]),
	.In2(In2[9]),
	.In1(In2[9]),
	.In0(In0[9]),
	.S(S),
	.OUT(F[9]));


\8x1Mux 	b2v_inst7(
	.In7(In7[8]),
	.In6(In6[8]),
	.In5(In5[8]),
	.In4(In4[8]),
	.In3(In3[8]),
	.In2(In2[8]),
	.In1(In1[8]),
	.In0(In0[8]),
	.S(S),
	.OUT(F[8]));


\8x1Mux 	b2v_inst8(
	.In7(In7[7]),
	.In6(In6[7]),
	.In5(In5[7]),
	.In4(In4[7]),
	.In3(In3[7]),
	.In2(In2[7]),
	.In1(In1[7]),
	.In0(In0[7]),
	.S(S),
	.OUT(F[7]));


\8x1Mux 	b2v_inst9(
	.In7(In7[6]),
	.In6(In6[6]),
	.In5(In5[6]),
	.In4(In4[6]),
	.In3(In3[6]),
	.In2(In2[6]),
	.In1(In1[6]),
	.In0(In0[6]),
	.S(S),
	.OUT(F[6]));

assign	Out = F;

endmodule
