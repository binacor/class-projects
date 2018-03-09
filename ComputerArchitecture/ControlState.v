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
// CREATED		"Sat Mar 25 20:17:51 2017"

module ControlState(
	Reset,
	Clock,
	Load,
	D,
	Q
);


input wire	Reset;
input wire	Clock;
input wire	Load;
input wire	[1:0] D;
output wire	[1:0] Q;

reg	[1:0] Q_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_2 = 1;




always@(posedge Clock or negedge Reset or negedge SYNTHESIZED_WIRE_2)
begin
if (!Reset)
	begin
	Q_ALTERA_SYNTHESIZED[1] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_2)
	begin
	Q_ALTERA_SYNTHESIZED[1] <= 1;
	end
else
if (Load)
	begin
	Q_ALTERA_SYNTHESIZED[1] <= D[1];
	end
end


always@(posedge Clock or negedge Reset or negedge SYNTHESIZED_WIRE_2)
begin
if (!Reset)
	begin
	Q_ALTERA_SYNTHESIZED[0] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_2)
	begin
	Q_ALTERA_SYNTHESIZED[0] <= 1;
	end
else
if (Load)
	begin
	Q_ALTERA_SYNTHESIZED[0] <= D[0];
	end
end


assign	Q = Q_ALTERA_SYNTHESIZED;

endmodule
