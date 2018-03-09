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
// CREATED		"Sat Mar 25 20:15:47 2017"

module CU_Datapath_GPIO(
	CLOCK_50,
	BUTTON,
	GPIO0_D,
	GPIO1_D
);


input wire	CLOCK_50;
input wire	[2:2] BUTTON;
output wire	[31:0] GPIO0_D;
inout wire	[31:0] GPIO1_D;

wire	[55:0] CW;
wire	[15:0] Datapath;
wire	[15:0] ProgCount;
wire	[15:0] SYNTHESIZED_WIRE_0;
wire	[6:0] SYNTHESIZED_WIRE_1;
wire	[6:0] SYNTHESIZED_WIRE_2;
wire	[15:0] SYNTHESIZED_WIRE_3;
wire	[15:0] SYNTHESIZED_WIRE_4;
wire	[15:0] SYNTHESIZED_WIRE_5;
wire	[15:0] SYNTHESIZED_WIRE_6;
wire	[15:0] SYNTHESIZED_WIRE_7;
wire	[15:0] SYNTHESIZED_WIRE_8;
wire	[15:0] SYNTHESIZED_WIRE_9;
wire	[15:0] SYNTHESIZED_WIRE_10;





ControlUnit	b2v_inst(
	
	.Clock(BUTTON),
	.IR_in(SYNTHESIZED_WIRE_0),
	.CW(CW));


Datapath	b2v_inst2(
	.EN_P(CW[50]),
	.PS(CW[12]),
	.Jump(CW[11]),
	.LK(CW[52]),
	.clock(BUTTON),
	.WR(CW[10]),
	.PMS(CW[8]),
	.EN_A(CW[53]),
	.AS(CW[0]),
	.WM(CW[9]),
	.K_B(CW[6]),
	.RS(CW[7]),
	.POP(CW[4]),
	.PUSH(CW[5]),
	.Mem_en(CW[3]),
	.BR(CW[51]),
	.IL(CW[1]),
	.NS(CW[48]),
	.Cin(CW[25]),
	.ZS(CW[49]),
	.ALU_en(CW[2]),
	.MS(CW[47]),
	.AA(CW[20:17]),
	.BA(CW[16:13]),
	.DA(CW[24:21]),
	.FS(CW[30:26]),
	.K(CW[46:31]),
	
	.ControlUnit(SYNTHESIZED_WIRE_0),
	.Datapath(Datapath),
	.ProgCount(ProgCount),
	.R0(SYNTHESIZED_WIRE_3),
	.R1(SYNTHESIZED_WIRE_4),
	.R2(SYNTHESIZED_WIRE_5),
	.R3(SYNTHESIZED_WIRE_6),
	.R4(SYNTHESIZED_WIRE_7),
	.R5(SYNTHESIZED_WIRE_8),
	.R6(SYNTHESIZED_WIRE_9),
	.R7(SYNTHESIZED_WIRE_10)
	
	
	
	
	
	
	
	);


GPIO_Board	b2v_inst3(
	.clock_50(CLOCK_50),
	
	
	
	
	
	
	
	
	.GPIO_1(GPIO1_D),
	.HEX0(SYNTHESIZED_WIRE_1),
	
	.HEX2(SYNTHESIZED_WIRE_2),
	
	
	
	
	
	
	.R0(SYNTHESIZED_WIRE_3),
	.R1(SYNTHESIZED_WIRE_4),
	.R2(SYNTHESIZED_WIRE_5),
	.R3(SYNTHESIZED_WIRE_6),
	.R4(SYNTHESIZED_WIRE_7),
	.R5(SYNTHESIZED_WIRE_8),
	.R6(SYNTHESIZED_WIRE_9),
	.R7(SYNTHESIZED_WIRE_10),
	
	.GPIO_0(GPIO0_D)
	);


BinaryTo7Seg	b2v_inst4(
	.in(Datapath[3:0]),
	.hex_out(SYNTHESIZED_WIRE_1));


BinaryTo7Seg	b2v_inst5(
	.in(ProgCount[3:0]),
	.hex_out(SYNTHESIZED_WIRE_2));


endmodule
