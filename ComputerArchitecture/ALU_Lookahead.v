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
// CREATED		"Tue Mar 07 00:57:32 2017"

module ALU_Lookahead(
	C_in,
	A,
	B,
	FS,
	Cout,
	N,
	Z,
	C,
	F
);


input wire	C_in;
input wire	[15:0] A;
input wire	[15:0] B;
input wire	[4:0] FS;
output wire	Cout;
output wire	N;
output wire	Z;
output wire	C;
output wire	[15:0] F;

wire	[15:0] C_ALTERA_SYNTHESIZED;
wire	[15:0] D;
wire	[15:0] E;
wire	[15:0] F_ALTERA_SYNTHESIZED;
wire	[15:0] G;
wire	[15:0] GND;
wire	[15:0] H;
wire	[15:0] I;
wire	J;
wire	[15:0] VCC;
wire	Y;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	[15:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	[15:0] SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;

assign	Cout = SYNTHESIZED_WIRE_7;
assign	C = SYNTHESIZED_WIRE_7;
assign	SYNTHESIZED_WIRE_3 = 0;
wire	[15:0] GDFX_TEMP_SIGNAL_1;
wire	[15:0] GDFX_TEMP_SIGNAL_0;


assign	GDFX_TEMP_SIGNAL_1 = {Y,A[15:1]};
assign	GDFX_TEMP_SIGNAL_0 = {A[14:0],J};


\4by16LogicMux 	b2v_inst(
	.I3(FS[3]),
	.I2(FS[2]),
	.I1(FS[1]),
	.I0(FS[0]),
	.A(A),
	.B(B),
	.F(H));


assign	SYNTHESIZED_WIRE_0 = F_ALTERA_SYNTHESIZED[7] | F_ALTERA_SYNTHESIZED[5] | F_ALTERA_SYNTHESIZED[6] | F_ALTERA_SYNTHESIZED[4] | F_ALTERA_SYNTHESIZED[2] | F_ALTERA_SYNTHESIZED[3] | F_ALTERA_SYNTHESIZED[1] | F_ALTERA_SYNTHESIZED[0];


Not_16bit	b2v_inst11(
	.In(A),
	.Out(SYNTHESIZED_WIRE_4));


Not_16bit	b2v_inst12(
	.In(B),
	.Out(SYNTHESIZED_WIRE_6));



assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1;

assign	Z =  ~SYNTHESIZED_WIRE_2;


\16_bit_Carry_Lookahead 	b2v_inst17(
	.C0(C_in),
	.A(I),
	.B(C_ALTERA_SYNTHESIZED),
	.Cout(SYNTHESIZED_WIRE_5),
	.S(E));



\2to1Mux 	b2v_inst19(
	.I0(SYNTHESIZED_WIRE_3),
	.I1(A[15]),
	.S(FS[2]),
	.F(Y));


\2by16Mux 	b2v_inst2(
	.S(FS[0]),
	.I0(A),
	.I1(SYNTHESIZED_WIRE_4),
	.F(I));


\2by16Mux 	b2v_inst3(
	.S(FS[0]),
	.I0(GDFX_TEMP_SIGNAL_0),
	.I1(GDFX_TEMP_SIGNAL_1),
	.F(D));


\2by16Mux 	b2v_inst4(
	.S(FS[3]),
	.I0(E),
	.I1(D),
	.F(G));


\2by16Mux 	b2v_inst5(
	.S(FS[4]),
	.I0(H),
	.I1(G),
	.F(F_ALTERA_SYNTHESIZED));


\2to1Mux 	b2v_inst6(
	.I0(SYNTHESIZED_WIRE_5),
	.I1(A[15]),
	.S(FS[3]),
	.F(SYNTHESIZED_WIRE_7));


\4by16Mux 	b2v_inst8(
	.I0(GND),
	.I1(VCC),
	.I2(B),
	.I3(SYNTHESIZED_WIRE_6),
	.S(FS[2:1]),
	.F(C_ALTERA_SYNTHESIZED));

assign	SYNTHESIZED_WIRE_1 = F_ALTERA_SYNTHESIZED[15] | F_ALTERA_SYNTHESIZED[13] | F_ALTERA_SYNTHESIZED[14] | F_ALTERA_SYNTHESIZED[12] | F_ALTERA_SYNTHESIZED[10] | F_ALTERA_SYNTHESIZED[11] | F_ALTERA_SYNTHESIZED[9] | F_ALTERA_SYNTHESIZED[8];

assign	N = F_ALTERA_SYNTHESIZED[15];
assign	F = F_ALTERA_SYNTHESIZED;
assign	GND = 16'b0000000000000000;
assign	J = 0;
assign	VCC = 16'b1111111111111111;

endmodule
