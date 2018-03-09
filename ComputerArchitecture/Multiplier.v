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
// CREATED		"Tue Mar 07 00:57:43 2017"

module Multiplier(
	clk,
	A,
	B,
	HIGH,
	LOW
);


input wire	clk;
input wire	[15:0] A;
input wire	[15:0] B;
output wire	[15:0] HIGH;
output wire	[15:0] LOW;

wire	[31:0] F;
wire	[31:0] SYNTHESIZED_WIRE_0;
wire	[31:0] SYNTHESIZED_WIRE_1;
wire	[0:31] SYNTHESIZED_WIRE_62;
wire	[31:0] SYNTHESIZED_WIRE_3;
wire	[31:0] SYNTHESIZED_WIRE_5;
wire	[31:0] SYNTHESIZED_WIRE_7;
wire	[31:0] SYNTHESIZED_WIRE_9;
wire	[31:0] SYNTHESIZED_WIRE_11;
wire	[31:0] SYNTHESIZED_WIRE_13;
wire	[31:0] SYNTHESIZED_WIRE_15;
wire	[31:0] SYNTHESIZED_WIRE_17;
wire	[31:0] SYNTHESIZED_WIRE_19;
wire	[31:0] SYNTHESIZED_WIRE_21;
wire	[31:0] SYNTHESIZED_WIRE_23;
wire	[31:0] SYNTHESIZED_WIRE_25;
wire	[31:0] SYNTHESIZED_WIRE_27;
wire	[31:0] SYNTHESIZED_WIRE_29;
wire	[31:0] SYNTHESIZED_WIRE_31;
wire	[31:0] SYNTHESIZED_WIRE_33;
wire	[31:0] SYNTHESIZED_WIRE_34;
wire	[31:0] SYNTHESIZED_WIRE_35;
wire	[31:0] SYNTHESIZED_WIRE_36;
wire	[31:0] SYNTHESIZED_WIRE_37;
wire	[31:0] SYNTHESIZED_WIRE_38;
wire	[31:0] SYNTHESIZED_WIRE_39;
wire	[31:0] SYNTHESIZED_WIRE_40;
wire	[31:0] SYNTHESIZED_WIRE_41;
wire	[31:0] SYNTHESIZED_WIRE_42;
wire	[31:0] SYNTHESIZED_WIRE_43;
wire	[31:0] SYNTHESIZED_WIRE_44;
wire	[31:0] SYNTHESIZED_WIRE_45;
wire	[31:0] SYNTHESIZED_WIRE_46;
wire	[31:0] SYNTHESIZED_WIRE_47;
wire	[31:0] SYNTHESIZED_WIRE_48;
wire	[31:0] SYNTHESIZED_WIRE_49;
wire	[31:0] SYNTHESIZED_WIRE_50;
wire	[31:0] SYNTHESIZED_WIRE_51;
wire	[31:0] SYNTHESIZED_WIRE_52;
wire	[31:0] SYNTHESIZED_WIRE_53;
wire	[31:0] SYNTHESIZED_WIRE_54;
wire	[31:0] SYNTHESIZED_WIRE_55;
wire	[31:0] SYNTHESIZED_WIRE_56;
wire	[31:0] SYNTHESIZED_WIRE_57;
wire	[31:0] SYNTHESIZED_WIRE_58;
wire	[31:0] SYNTHESIZED_WIRE_59;
wire	[31:0] SYNTHESIZED_WIRE_60;
wire	[31:0] SYNTHESIZED_WIRE_61;

assign	SYNTHESIZED_WIRE_62 = 0;




shiftReg32bit	b2v_inst(
	.CLK(clk),
	.A(A),
	.S0(SYNTHESIZED_WIRE_3),
	.S1(SYNTHESIZED_WIRE_5),
	.S2(SYNTHESIZED_WIRE_7),
	.S3(SYNTHESIZED_WIRE_9),
	.S4(SYNTHESIZED_WIRE_11),
	.S5(SYNTHESIZED_WIRE_15),
	.S6(SYNTHESIZED_WIRE_13),
	.S7(SYNTHESIZED_WIRE_17),
	.S8(SYNTHESIZED_WIRE_19),
	.S9(SYNTHESIZED_WIRE_21),
	.SA(SYNTHESIZED_WIRE_25),
	.SB(SYNTHESIZED_WIRE_23),
	.SC(SYNTHESIZED_WIRE_27),
	.SD(SYNTHESIZED_WIRE_29),
	.SE(SYNTHESIZED_WIRE_31),
	.SF(SYNTHESIZED_WIRE_33));



CarryLookAheadAdder32bits	b2v_inst47(
	.A(SYNTHESIZED_WIRE_0),
	.B(SYNTHESIZED_WIRE_1),
	.F(F));


\32bit2to1MUX 	b2v_inst500(
	.S(B[0]),
	.I0(SYNTHESIZED_WIRE_62),
	.I1(SYNTHESIZED_WIRE_3),
	.F(SYNTHESIZED_WIRE_34));


\32bit2to1MUX 	b2v_inst65(
	.S(B[1]),
	.I0(SYNTHESIZED_WIRE_62),
	.I1(SYNTHESIZED_WIRE_5),
	.F(SYNTHESIZED_WIRE_35));


\32bit2to1MUX 	b2v_inst66(
	.S(B[2]),
	.I0(SYNTHESIZED_WIRE_62),
	.I1(SYNTHESIZED_WIRE_7),
	.F(SYNTHESIZED_WIRE_37));


\32bit2to1MUX 	b2v_inst67(
	.S(B[3]),
	.I0(SYNTHESIZED_WIRE_62),
	.I1(SYNTHESIZED_WIRE_9),
	.F(SYNTHESIZED_WIRE_39));


\32bit2to1MUX 	b2v_inst68(
	.S(B[4]),
	.I0(SYNTHESIZED_WIRE_62),
	.I1(SYNTHESIZED_WIRE_11),
	.F(SYNTHESIZED_WIRE_41));


\32bit2to1MUX 	b2v_inst69(
	.S(B[6]),
	.I0(SYNTHESIZED_WIRE_62),
	.I1(SYNTHESIZED_WIRE_13),
	.F(SYNTHESIZED_WIRE_45));


\32bit2to1MUX 	b2v_inst70(
	.S(B[5]),
	.I0(SYNTHESIZED_WIRE_62),
	.I1(SYNTHESIZED_WIRE_15),
	.F(SYNTHESIZED_WIRE_43));


\32bit2to1MUX 	b2v_inst71(
	.S(B[7]),
	.I0(SYNTHESIZED_WIRE_62),
	.I1(SYNTHESIZED_WIRE_17),
	.F(SYNTHESIZED_WIRE_47));


\32bit2to1MUX 	b2v_inst72(
	.S(B[8]),
	.I0(SYNTHESIZED_WIRE_62),
	.I1(SYNTHESIZED_WIRE_19),
	.F(SYNTHESIZED_WIRE_49));


\32bit2to1MUX 	b2v_inst73(
	.S(B[9]),
	.I0(SYNTHESIZED_WIRE_62),
	.I1(SYNTHESIZED_WIRE_21),
	.F(SYNTHESIZED_WIRE_51));


\32bit2to1MUX 	b2v_inst74(
	.S(B[11]),
	.I0(SYNTHESIZED_WIRE_62),
	.I1(SYNTHESIZED_WIRE_23),
	.F(SYNTHESIZED_WIRE_55));


\32bit2to1MUX 	b2v_inst75(
	.S(B[10]),
	.I0(SYNTHESIZED_WIRE_62),
	.I1(SYNTHESIZED_WIRE_25),
	.F(SYNTHESIZED_WIRE_53));


\32bit2to1MUX 	b2v_inst76(
	.S(B[12]),
	.I0(SYNTHESIZED_WIRE_62),
	.I1(SYNTHESIZED_WIRE_27),
	.F(SYNTHESIZED_WIRE_57));


\32bit2to1MUX 	b2v_inst77(
	.S(B[13]),
	.I0(SYNTHESIZED_WIRE_62),
	.I1(SYNTHESIZED_WIRE_29),
	.F(SYNTHESIZED_WIRE_59));


\32bit2to1MUX 	b2v_inst78(
	.S(B[14]),
	.I0(SYNTHESIZED_WIRE_62),
	.I1(SYNTHESIZED_WIRE_31),
	.F(SYNTHESIZED_WIRE_61));


\32bit2to1MUX 	b2v_inst79(
	.S(B[15]),
	.I0(SYNTHESIZED_WIRE_62),
	.I1(SYNTHESIZED_WIRE_33),
	.F(SYNTHESIZED_WIRE_1));


CarryLookAheadAdder32bits	b2v_inst81(
	.A(SYNTHESIZED_WIRE_34),
	.B(SYNTHESIZED_WIRE_35),
	.F(SYNTHESIZED_WIRE_36));


CarryLookAheadAdder32bits	b2v_inst82(
	.A(SYNTHESIZED_WIRE_36),
	.B(SYNTHESIZED_WIRE_37),
	.F(SYNTHESIZED_WIRE_38));


CarryLookAheadAdder32bits	b2v_inst83(
	.A(SYNTHESIZED_WIRE_38),
	.B(SYNTHESIZED_WIRE_39),
	.F(SYNTHESIZED_WIRE_40));


CarryLookAheadAdder32bits	b2v_inst84(
	.A(SYNTHESIZED_WIRE_40),
	.B(SYNTHESIZED_WIRE_41),
	.F(SYNTHESIZED_WIRE_42));


CarryLookAheadAdder32bits	b2v_inst85(
	.A(SYNTHESIZED_WIRE_42),
	.B(SYNTHESIZED_WIRE_43),
	.F(SYNTHESIZED_WIRE_44));


CarryLookAheadAdder32bits	b2v_inst86(
	.A(SYNTHESIZED_WIRE_44),
	.B(SYNTHESIZED_WIRE_45),
	.F(SYNTHESIZED_WIRE_46));


CarryLookAheadAdder32bits	b2v_inst87(
	.A(SYNTHESIZED_WIRE_46),
	.B(SYNTHESIZED_WIRE_47),
	.F(SYNTHESIZED_WIRE_48));


CarryLookAheadAdder32bits	b2v_inst88(
	.A(SYNTHESIZED_WIRE_48),
	.B(SYNTHESIZED_WIRE_49),
	.F(SYNTHESIZED_WIRE_50));


CarryLookAheadAdder32bits	b2v_inst89(
	.A(SYNTHESIZED_WIRE_50),
	.B(SYNTHESIZED_WIRE_51),
	.F(SYNTHESIZED_WIRE_52));


CarryLookAheadAdder32bits	b2v_inst90(
	.A(SYNTHESIZED_WIRE_52),
	.B(SYNTHESIZED_WIRE_53),
	.F(SYNTHESIZED_WIRE_54));


CarryLookAheadAdder32bits	b2v_inst91(
	.A(SYNTHESIZED_WIRE_54),
	.B(SYNTHESIZED_WIRE_55),
	.F(SYNTHESIZED_WIRE_56));


CarryLookAheadAdder32bits	b2v_inst92(
	.A(SYNTHESIZED_WIRE_56),
	.B(SYNTHESIZED_WIRE_57),
	.F(SYNTHESIZED_WIRE_58));


CarryLookAheadAdder32bits	b2v_inst93(
	.A(SYNTHESIZED_WIRE_58),
	.B(SYNTHESIZED_WIRE_59),
	.F(SYNTHESIZED_WIRE_60));


CarryLookAheadAdder32bits	b2v_inst94(
	.A(SYNTHESIZED_WIRE_60),
	.B(SYNTHESIZED_WIRE_61),
	.F(SYNTHESIZED_WIRE_0));

assign	HIGH[15:0] = F[31:16];
assign	LOW[15:0] = F[15:0];

endmodule
