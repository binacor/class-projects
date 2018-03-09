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
// CREATED		"Sat Mar 25 23:13:53 2017"

module CU_Datapath(
	clk,
	reset,
	PC,
	R0,
	R1,
	R2,
	R3,
	R4,
	R5,
	R6,
	R7
);


input wire	clk;
input wire	reset;
output wire	[15:0] PC;
output wire	[15:0] R0;
output wire	[15:0] R1;
output wire	[15:0] R2;
output wire	[15:0] R3;
output wire	[15:0] R4;
output wire	[15:0] R5;
output wire	[15:0] R6;
output wire	[15:0] R7;

wire	[55:0] CW;
wire	[15:0] SYNTHESIZED_WIRE_0;





ControlUnit	b2v_inst(
	.Reset(reset),
	.Clock(clk),
	.IR_in(SYNTHESIZED_WIRE_0),
	.CW(CW));


Datapath	b2v_inst2(
	.EN_P(CW[50]),
	.PS(CW[12]),
	.Jump(CW[11]),
	.LK(CW[52]),
	.clock(clk),
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
	.reset(reset),
	.AA(CW[20:17]),
	.BA(CW[16:13]),
	.DA(CW[24:21]),
	.FS(CW[30:26]),
	.K(CW[46:31]),
	
	.ControlUnit(SYNTHESIZED_WIRE_0),
	
	.ProgCount(PC),
	.R0(R0),
	.R1(R1),
	.R2(R2),
	.R3(R3),
	.R4(R4),
	.R5(R5),
	.R6(R6),
	.R7(R7)
	
	
	
	
	
	
	
	);


endmodule
