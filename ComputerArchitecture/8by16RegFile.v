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
// CREATED		"Thu Feb 02 10:06:23 2017"

module \8by16RegFile (
	Write,
	clock,
	reset,
	AA,
	BA,
	D,
	DA,
	A,
	B,
	R0,
	R1,
	R2,
	R3,
	R4,
	R5,
	R6,
	R7
);


input wire	Write;
input wire	clock;
input wire	reset;
input wire	[2:0] AA;
input wire	[2:0] BA;
input wire	[15:0] D;
input wire	[2:0] DA;
output wire	[15:0] A;
output wire	[15:0] B;
output wire	[15:0] R0;
output wire	[15:0] R1;
output wire	[15:0] R2;
output wire	[15:0] R3;
output wire	[15:0] R4;
output wire	[15:0] R5;
output wire	[15:0] R6;
output wire	[15:0] R7;

wire	[15:0] SYNTHESIZED_WIRE_32;
wire	[15:0] SYNTHESIZED_WIRE_33;
wire	[15:0] SYNTHESIZED_WIRE_34;
wire	[15:0] SYNTHESIZED_WIRE_35;
wire	[15:0] SYNTHESIZED_WIRE_36;
wire	[15:0] SYNTHESIZED_WIRE_37;
wire	[15:0] SYNTHESIZED_WIRE_38;
wire	[15:0] SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;

assign	R0 = SYNTHESIZED_WIRE_32;
assign	R1 = SYNTHESIZED_WIRE_33;
assign	R2 = SYNTHESIZED_WIRE_34;
assign	R3 = SYNTHESIZED_WIRE_35;
assign	R4 = SYNTHESIZED_WIRE_36;
assign	R5 = SYNTHESIZED_WIRE_37;
assign	R6 = SYNTHESIZED_WIRE_38;
assign	R7 = SYNTHESIZED_WIRE_39;




\8by16Mux 	b2v_8by16one(
	.I0(SYNTHESIZED_WIRE_32),
	.I1(SYNTHESIZED_WIRE_33),
	.I2(SYNTHESIZED_WIRE_34),
	.I3(SYNTHESIZED_WIRE_35),
	.I4(SYNTHESIZED_WIRE_36),
	.I5(SYNTHESIZED_WIRE_37),
	.I6(SYNTHESIZED_WIRE_38),
	.I7(SYNTHESIZED_WIRE_39),
	.S(AA),
	.F(A));


\8by16Mux 	b2v_8by16two(
	.I0(SYNTHESIZED_WIRE_32),
	.I1(SYNTHESIZED_WIRE_33),
	.I2(SYNTHESIZED_WIRE_34),
	.I3(SYNTHESIZED_WIRE_35),
	.I4(SYNTHESIZED_WIRE_36),
	.I5(SYNTHESIZED_WIRE_37),
	.I6(SYNTHESIZED_WIRE_38),
	.I7(SYNTHESIZED_WIRE_39),
	.S(BA),
	.F(B));


\3to8Decoder 	b2v_in1(
	.DA(DA),
	.m0(SYNTHESIZED_WIRE_16),
	.m1(SYNTHESIZED_WIRE_17),
	.m2(SYNTHESIZED_WIRE_18),
	.m3(SYNTHESIZED_WIRE_19),
	.m4(SYNTHESIZED_WIRE_20),
	.m5(SYNTHESIZED_WIRE_21),
	.m6(SYNTHESIZED_WIRE_22),
	.m7(SYNTHESIZED_WIRE_23));

assign	SYNTHESIZED_WIRE_24 = Write & SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_25 = Write & SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_26 = Write & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_27 = Write & SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_28 = Write & SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_29 = Write & SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_30 = Write & SYNTHESIZED_WIRE_22;

assign	SYNTHESIZED_WIRE_31 = Write & SYNTHESIZED_WIRE_23;


\16_Bit_Register 	b2v_inst(
	.not_Reset(reset),
	.Clock(clock),
	.Load(SYNTHESIZED_WIRE_24),
	.D(D),
	.Q(SYNTHESIZED_WIRE_32));


\16_Bit_Register 	b2v_inst1(
	.not_Reset(reset),
	.Clock(clock),
	.Load(SYNTHESIZED_WIRE_25),
	.D(D),
	.Q(SYNTHESIZED_WIRE_33));


\16_Bit_Register 	b2v_inst2(
	.not_Reset(reset),
	.Clock(clock),
	.Load(SYNTHESIZED_WIRE_26),
	.D(D),
	.Q(SYNTHESIZED_WIRE_34));


\16_Bit_Register 	b2v_inst3(
	.not_Reset(reset),
	.Clock(clock),
	.Load(SYNTHESIZED_WIRE_27),
	.D(D),
	.Q(SYNTHESIZED_WIRE_35));


\16_Bit_Register 	b2v_inst4(
	.not_Reset(reset),
	.Clock(clock),
	.Load(SYNTHESIZED_WIRE_28),
	.D(D),
	.Q(SYNTHESIZED_WIRE_36));


\16_Bit_Register 	b2v_inst5(
	.not_Reset(reset),
	.Clock(clock),
	.Load(SYNTHESIZED_WIRE_29),
	.D(D),
	.Q(SYNTHESIZED_WIRE_37));


\16_Bit_Register 	b2v_inst6(
	.not_Reset(reset),
	.Clock(clock),
	.Load(SYNTHESIZED_WIRE_30),
	.D(D),
	.Q(SYNTHESIZED_WIRE_38));


\16_Bit_Register 	b2v_inst7(
	.not_Reset(reset),
	.Clock(clock),
	.Load(SYNTHESIZED_WIRE_31),
	.D(D),
	.Q(SYNTHESIZED_WIRE_39));


endmodule
