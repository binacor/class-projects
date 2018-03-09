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
// CREATED		"Sun Mar 05 20:59:54 2017"

module \16_Bit_CarryLookahead_Adder (
	Cin,
	A,
	B,
	Cout,
	V,
	F
);


input wire	Cin;
input wire	[15:0] A;
input wire	[15:0] B;
output wire	Cout;
output wire	V;
output wire	[15:0] F;

wire	[15:0] F_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_60;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;
wire	SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_49;
wire	SYNTHESIZED_WIRE_50;
wire	SYNTHESIZED_WIRE_51;
wire	SYNTHESIZED_WIRE_52;
wire	SYNTHESIZED_WIRE_53;
wire	SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_55;
wire	SYNTHESIZED_WIRE_56;
wire	SYNTHESIZED_WIRE_57;
wire	SYNTHESIZED_WIRE_58;
wire	SYNTHESIZED_WIRE_59;

assign	Cout = SYNTHESIZED_WIRE_26;




FullAdder_Lookahead	b2v_inst(
	.A(A[12]),
	.B(B[12]),
	.Cin(SYNTHESIZED_WIRE_0),
	.S(F_ALTERA_SYNTHESIZED[12]),
	.G(SYNTHESIZED_WIRE_17),
	.P(SYNTHESIZED_WIRE_18));


FullAdder_Lookahead	b2v_inst1(
	.A(A[13]),
	.B(B[13]),
	.Cin(SYNTHESIZED_WIRE_1),
	.S(F_ALTERA_SYNTHESIZED[13]),
	.G(SYNTHESIZED_WIRE_19),
	.P(SYNTHESIZED_WIRE_20));


FullAdder_Lookahead	b2v_inst10(
	.A(A[9]),
	.B(B[9]),
	.Cin(SYNTHESIZED_WIRE_2),
	.S(F_ALTERA_SYNTHESIZED[9]),
	.G(SYNTHESIZED_WIRE_8),
	.P(SYNTHESIZED_WIRE_9));


FullAdder_Lookahead	b2v_inst11(
	.A(A[10]),
	.B(B[10]),
	.Cin(SYNTHESIZED_WIRE_3),
	.S(F_ALTERA_SYNTHESIZED[10]),
	.G(SYNTHESIZED_WIRE_10),
	.P(SYNTHESIZED_WIRE_11));


FullAdder_Lookahead	b2v_inst12(
	.A(A[11]),
	.B(B[11]),
	.Cin(SYNTHESIZED_WIRE_4),
	.S(F_ALTERA_SYNTHESIZED[11]),
	.G(SYNTHESIZED_WIRE_12),
	.P(SYNTHESIZED_WIRE_13));


CarryLookahead_4bit	b2v_inst13(
	.C0(SYNTHESIZED_WIRE_5),
	.G0(SYNTHESIZED_WIRE_6),
	.P0(SYNTHESIZED_WIRE_7),
	.G1(SYNTHESIZED_WIRE_8),
	.P1(SYNTHESIZED_WIRE_9),
	.G2(SYNTHESIZED_WIRE_10),
	.P2(SYNTHESIZED_WIRE_11),
	.G3(SYNTHESIZED_WIRE_12),
	.P3(SYNTHESIZED_WIRE_13),
	.C1(SYNTHESIZED_WIRE_2),
	.C2(SYNTHESIZED_WIRE_3),
	.C3(SYNTHESIZED_WIRE_4),
	.C4(SYNTHESIZED_WIRE_0),
	.GG(SYNTHESIZED_WIRE_41),
	.PG(SYNTHESIZED_WIRE_42));


FullAdder_Lookahead	b2v_inst14(
	.A(A[14]),
	.B(B[14]),
	.Cin(SYNTHESIZED_WIRE_14),
	.S(F_ALTERA_SYNTHESIZED[14]),
	.G(SYNTHESIZED_WIRE_21),
	.P(SYNTHESIZED_WIRE_22));


FullAdder_Lookahead	b2v_inst15(
	.A(A[15]),
	.B(B[15]),
	.Cin(SYNTHESIZED_WIRE_60),
	.S(F_ALTERA_SYNTHESIZED[15]),
	.G(SYNTHESIZED_WIRE_23),
	.P(SYNTHESIZED_WIRE_24));


CarryLookahead_4bit	b2v_inst16(
	.C0(SYNTHESIZED_WIRE_16),
	.G0(SYNTHESIZED_WIRE_17),
	.P0(SYNTHESIZED_WIRE_18),
	.G1(SYNTHESIZED_WIRE_19),
	.P1(SYNTHESIZED_WIRE_20),
	.G2(SYNTHESIZED_WIRE_21),
	.P2(SYNTHESIZED_WIRE_22),
	.G3(SYNTHESIZED_WIRE_23),
	.P3(SYNTHESIZED_WIRE_24),
	.C1(SYNTHESIZED_WIRE_1),
	.C2(SYNTHESIZED_WIRE_14),
	.C3(SYNTHESIZED_WIRE_60),
	
	.GG(SYNTHESIZED_WIRE_43),
	.PG(SYNTHESIZED_WIRE_44));

assign	V = SYNTHESIZED_WIRE_60 ^ SYNTHESIZED_WIRE_26;


FullAdder_Lookahead	b2v_inst2(
	.A(A[5]),
	.B(B[5]),
	.Cin(SYNTHESIZED_WIRE_27),
	.S(F_ALTERA_SYNTHESIZED[5]),
	.G(SYNTHESIZED_WIRE_50),
	.P(SYNTHESIZED_WIRE_51));


FullAdder_Lookahead	b2v_inst3(
	.A(A[6]),
	.B(B[6]),
	.Cin(SYNTHESIZED_WIRE_28),
	.S(F_ALTERA_SYNTHESIZED[6]),
	.G(SYNTHESIZED_WIRE_52),
	.P(SYNTHESIZED_WIRE_53));


CarryLookahead_4bit	b2v_inst4(
	.C0(Cin),
	.G0(SYNTHESIZED_WIRE_29),
	.P0(SYNTHESIZED_WIRE_30),
	.G1(SYNTHESIZED_WIRE_31),
	.P1(SYNTHESIZED_WIRE_32),
	.G2(SYNTHESIZED_WIRE_33),
	.P2(SYNTHESIZED_WIRE_34),
	.G3(SYNTHESIZED_WIRE_35),
	.P3(SYNTHESIZED_WIRE_36),
	.C1(SYNTHESIZED_WIRE_57),
	.C2(SYNTHESIZED_WIRE_58),
	.C3(SYNTHESIZED_WIRE_59),
	.C4(SYNTHESIZED_WIRE_45),
	.GG(SYNTHESIZED_WIRE_37),
	.PG(SYNTHESIZED_WIRE_38));


CarryLookahead_4bit	b2v_inst5(
	.C0(Cin),
	.G0(SYNTHESIZED_WIRE_37),
	.P0(SYNTHESIZED_WIRE_38),
	.G1(SYNTHESIZED_WIRE_39),
	.P1(SYNTHESIZED_WIRE_40),
	.G2(SYNTHESIZED_WIRE_41),
	.P2(SYNTHESIZED_WIRE_42),
	.G3(SYNTHESIZED_WIRE_43),
	.P3(SYNTHESIZED_WIRE_44),
	.C1(SYNTHESIZED_WIRE_47),
	.C2(SYNTHESIZED_WIRE_5),
	.C3(SYNTHESIZED_WIRE_16),
	.C4(SYNTHESIZED_WIRE_26)
	
	);


FullAdder_Lookahead	b2v_inst6(
	.A(A[4]),
	.B(B[4]),
	.Cin(SYNTHESIZED_WIRE_45),
	.S(F_ALTERA_SYNTHESIZED[4]),
	.G(SYNTHESIZED_WIRE_48),
	.P(SYNTHESIZED_WIRE_49));


FullAdder_Lookahead	b2v_inst7(
	.A(A[7]),
	.B(B[7]),
	.Cin(SYNTHESIZED_WIRE_46),
	.S(F_ALTERA_SYNTHESIZED[7]),
	.G(SYNTHESIZED_WIRE_54),
	.P(SYNTHESIZED_WIRE_55));


CarryLookahead_4bit	b2v_inst8(
	.C0(SYNTHESIZED_WIRE_47),
	.G0(SYNTHESIZED_WIRE_48),
	.P0(SYNTHESIZED_WIRE_49),
	.G1(SYNTHESIZED_WIRE_50),
	.P1(SYNTHESIZED_WIRE_51),
	.G2(SYNTHESIZED_WIRE_52),
	.P2(SYNTHESIZED_WIRE_53),
	.G3(SYNTHESIZED_WIRE_54),
	.P3(SYNTHESIZED_WIRE_55),
	.C1(SYNTHESIZED_WIRE_27),
	.C2(SYNTHESIZED_WIRE_28),
	.C3(SYNTHESIZED_WIRE_46),
	.C4(SYNTHESIZED_WIRE_56),
	.GG(SYNTHESIZED_WIRE_39),
	.PG(SYNTHESIZED_WIRE_40));


FullAdder_Lookahead	b2v_inst9(
	.A(A[8]),
	.B(B[8]),
	.Cin(SYNTHESIZED_WIRE_56),
	.S(F_ALTERA_SYNTHESIZED[8]),
	.G(SYNTHESIZED_WIRE_6),
	.P(SYNTHESIZED_WIRE_7));


FullAdder_Lookahead	b2v_instm(
	.A(A[1]),
	.B(B[1]),
	.Cin(SYNTHESIZED_WIRE_57),
	.S(F_ALTERA_SYNTHESIZED[1]),
	.G(SYNTHESIZED_WIRE_31),
	.P(SYNTHESIZED_WIRE_32));


FullAdder_Lookahead	b2v_instn(
	.A(A[0]),
	.B(B[0]),
	.Cin(Cin),
	.S(F_ALTERA_SYNTHESIZED[0]),
	.G(SYNTHESIZED_WIRE_29),
	.P(SYNTHESIZED_WIRE_30));


FullAdder_Lookahead	b2v_instx(
	.A(A[2]),
	.B(B[2]),
	.Cin(SYNTHESIZED_WIRE_58),
	.S(F_ALTERA_SYNTHESIZED[2]),
	.G(SYNTHESIZED_WIRE_33),
	.P(SYNTHESIZED_WIRE_34));


FullAdder_Lookahead	b2v_insty(
	.A(A[3]),
	.B(B[3]),
	.Cin(SYNTHESIZED_WIRE_59),
	.S(F_ALTERA_SYNTHESIZED[3]),
	.G(SYNTHESIZED_WIRE_35),
	.P(SYNTHESIZED_WIRE_36));

assign	F = F_ALTERA_SYNTHESIZED;

endmodule
