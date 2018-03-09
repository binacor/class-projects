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
// CREATED		"Sun Apr 23 16:09:17 2017"

module MemoryBlock(
	WM,
	RS,
	Clock,
	PMS,
	PUSH,
	POP,
	Reset,
	Address,
	Data,
	PWM,
	FLAG,
	MEM_Out
);


input wire	WM;
input wire	RS;
input wire	Clock;
input wire	PMS;
input wire	PUSH;
input wire	POP;
input wire	Reset;
input wire	[15:0] Address;
input wire	[15:0] Data;
output wire	PWM;
output wire	FLAG;
output wire	[15:0] MEM_Out;

wire	[7:0] AD;
wire	[15:0] data_out;
wire	[15:0] Out;
wire	[15:0] romOut;
wire	[15:0] Timer_out;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_14 = 1;



assign	SYNTHESIZED_WIRE_20 = AD[0] & SYNTHESIZED_WIRE_0;

assign	MEM_Out[15] = PMS ? romOut[15] : 1'bz;
assign	MEM_Out[14] = PMS ? romOut[14] : 1'bz;
assign	MEM_Out[13] = PMS ? romOut[13] : 1'bz;
assign	MEM_Out[12] = PMS ? romOut[12] : 1'bz;
assign	MEM_Out[11] = PMS ? romOut[11] : 1'bz;
assign	MEM_Out[10] = PMS ? romOut[10] : 1'bz;
assign	MEM_Out[9] = PMS ? romOut[9] : 1'bz;
assign	MEM_Out[8] = PMS ? romOut[8] : 1'bz;
assign	MEM_Out[7] = PMS ? romOut[7] : 1'bz;
assign	MEM_Out[6] = PMS ? romOut[6] : 1'bz;
assign	MEM_Out[5] = PMS ? romOut[5] : 1'bz;
assign	MEM_Out[4] = PMS ? romOut[4] : 1'bz;
assign	MEM_Out[3] = PMS ? romOut[3] : 1'bz;
assign	MEM_Out[2] = PMS ? romOut[2] : 1'bz;
assign	MEM_Out[1] = PMS ? romOut[1] : 1'bz;
assign	MEM_Out[0] = PMS ? romOut[0] : 1'bz;


rom_case	b2v_inst1(
	.address(Address),
	.out(romOut));


SFRSel	b2v_inst10(
	.In(AD),
	.SFRSel(SYNTHESIZED_WIRE_22));

assign	MEM_Out[15] = SYNTHESIZED_WIRE_1 ? data_out[15] : 1'bz;
assign	MEM_Out[14] = SYNTHESIZED_WIRE_1 ? data_out[14] : 1'bz;
assign	MEM_Out[13] = SYNTHESIZED_WIRE_1 ? data_out[13] : 1'bz;
assign	MEM_Out[12] = SYNTHESIZED_WIRE_1 ? data_out[12] : 1'bz;
assign	MEM_Out[11] = SYNTHESIZED_WIRE_1 ? data_out[11] : 1'bz;
assign	MEM_Out[10] = SYNTHESIZED_WIRE_1 ? data_out[10] : 1'bz;
assign	MEM_Out[9] = SYNTHESIZED_WIRE_1 ? data_out[9] : 1'bz;
assign	MEM_Out[8] = SYNTHESIZED_WIRE_1 ? data_out[8] : 1'bz;
assign	MEM_Out[7] = SYNTHESIZED_WIRE_1 ? data_out[7] : 1'bz;
assign	MEM_Out[6] = SYNTHESIZED_WIRE_1 ? data_out[6] : 1'bz;
assign	MEM_Out[5] = SYNTHESIZED_WIRE_1 ? data_out[5] : 1'bz;
assign	MEM_Out[4] = SYNTHESIZED_WIRE_1 ? data_out[4] : 1'bz;
assign	MEM_Out[3] = SYNTHESIZED_WIRE_1 ? data_out[3] : 1'bz;
assign	MEM_Out[2] = SYNTHESIZED_WIRE_1 ? data_out[2] : 1'bz;
assign	MEM_Out[1] = SYNTHESIZED_WIRE_1 ? data_out[1] : 1'bz;
assign	MEM_Out[0] = SYNTHESIZED_WIRE_1 ? data_out[0] : 1'bz;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_19 & SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_18 =  ~SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_0 =  ~AD[1];


Stack	b2v_inst2(
	.reset(Reset),
	.POP(POP),
	.PUSH(SYNTHESIZED_WIRE_5),
	.clock(Clock),
	.Data(Data),
	.Out(Out));


Timer	b2v_inst20(
	.Reset(SYNTHESIZED_WIRE_6),
	.Clock(Clock),
	.Pd_Load(SYNTHESIZED_WIRE_7),
	.dut_Load(SYNTHESIZED_WIRE_8),
	.Addr(AD[1:0]),
	.D(Data),
	.FLAG(FLAG),
	.PWM(PWM),
	
	
	
	
	.Z(Timer_out));

assign	MEM_Out[15] = SYNTHESIZED_WIRE_9 ? Timer_out[15] : 1'bz;
assign	MEM_Out[14] = SYNTHESIZED_WIRE_9 ? Timer_out[14] : 1'bz;
assign	MEM_Out[13] = SYNTHESIZED_WIRE_9 ? Timer_out[13] : 1'bz;
assign	MEM_Out[12] = SYNTHESIZED_WIRE_9 ? Timer_out[12] : 1'bz;
assign	MEM_Out[11] = SYNTHESIZED_WIRE_9 ? Timer_out[11] : 1'bz;
assign	MEM_Out[10] = SYNTHESIZED_WIRE_9 ? Timer_out[10] : 1'bz;
assign	MEM_Out[9] = SYNTHESIZED_WIRE_9 ? Timer_out[9] : 1'bz;
assign	MEM_Out[8] = SYNTHESIZED_WIRE_9 ? Timer_out[8] : 1'bz;
assign	MEM_Out[7] = SYNTHESIZED_WIRE_9 ? Timer_out[7] : 1'bz;
assign	MEM_Out[6] = SYNTHESIZED_WIRE_9 ? Timer_out[6] : 1'bz;
assign	MEM_Out[5] = SYNTHESIZED_WIRE_9 ? Timer_out[5] : 1'bz;
assign	MEM_Out[4] = SYNTHESIZED_WIRE_9 ? Timer_out[4] : 1'bz;
assign	MEM_Out[3] = SYNTHESIZED_WIRE_9 ? Timer_out[3] : 1'bz;
assign	MEM_Out[2] = SYNTHESIZED_WIRE_9 ? Timer_out[2] : 1'bz;
assign	MEM_Out[1] = SYNTHESIZED_WIRE_9 ? Timer_out[1] : 1'bz;
assign	MEM_Out[0] = SYNTHESIZED_WIRE_9 ? Timer_out[0] : 1'bz;

assign	AD = Address[7:0];


assign	SYNTHESIZED_WIRE_19 = SYNTHESIZED_WIRE_21 & SYNTHESIZED_WIRE_22;

assign	SYNTHESIZED_WIRE_9 = RS & SYNTHESIZED_WIRE_22;

assign	SYNTHESIZED_WIRE_1 = RS & SYNTHESIZED_WIRE_13;

assign	SYNTHESIZED_WIRE_21 = WM & RS;

assign	MEM_Out[15] = POP ? Out[15] : 1'bz;
assign	MEM_Out[14] = POP ? Out[14] : 1'bz;
assign	MEM_Out[13] = POP ? Out[13] : 1'bz;
assign	MEM_Out[12] = POP ? Out[12] : 1'bz;
assign	MEM_Out[11] = POP ? Out[11] : 1'bz;
assign	MEM_Out[10] = POP ? Out[10] : 1'bz;
assign	MEM_Out[9] = POP ? Out[9] : 1'bz;
assign	MEM_Out[8] = POP ? Out[8] : 1'bz;
assign	MEM_Out[7] = POP ? Out[7] : 1'bz;
assign	MEM_Out[6] = POP ? Out[6] : 1'bz;
assign	MEM_Out[5] = POP ? Out[5] : 1'bz;
assign	MEM_Out[4] = POP ? Out[4] : 1'bz;
assign	MEM_Out[3] = POP ? Out[3] : 1'bz;
assign	MEM_Out[2] = POP ? Out[2] : 1'bz;
assign	MEM_Out[1] = POP ? Out[1] : 1'bz;
assign	MEM_Out[0] = POP ? Out[0] : 1'bz;

assign	SYNTHESIZED_WIRE_5 = WM & PUSH;



ramVerilog	b2v_inst9(
	.clk(Clock),
	.cs(SYNTHESIZED_WIRE_14),
	.we(SYNTHESIZED_WIRE_21),
	.oe(RS),
	.address(AD),
	.data_in(Data),
	.data_out(data_out));
	defparam	b2v_inst9.ADDR_WIDTH = 8;
	defparam	b2v_inst9.DATA_WIDTH = 16;

assign	SYNTHESIZED_WIRE_13 =  ~SYNTHESIZED_WIRE_22;

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_19 & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_6 =  ~Reset;


endmodule
