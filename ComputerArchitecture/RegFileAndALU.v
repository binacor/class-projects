module RegFileAndALU(CLOCK_50, BUTTON, GPIO0_D, HEX0, HEX1, HEX2, HEX3, GPIO1_D);
	input CLOCK_50;
	input [2:0]BUTTON;
	output[6:0] HEX0, HEX1, HEX2, HEX3;
	output [31:0] GPIO0_D;
	inout [31:0] GPIO1_D;
	
	wire [31:0] sw;
	
	// create a 32-bit counter instance
	wire [31:0]count;
	count_32bit counter1(CLOCK_50, count);
	
	wire GPIO_clock;
	assign GPIO_clock = CLOCK_50;
	
	wire[15:0] reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15, OUTA, OUTB, ALUOUT;
	
	register_file_16x16 r(sw[0], ~BUTTON[2], sw[1], ALUOUT, sw[31:29], sw[26:24], sw[23:21], OUTA, OUTB, 
									 reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15);
									 
	ALU alu(OUTA, OUTB, sw[7:3], sw[2], ALUOUT);
	
	wire[6:0] hex0, hex1, hex2, hex3;
	BinaryTo7Seg d1(ALUOUT[3:0], hex0);
	BinaryTo7Seg d2(ALUOUT[7:4], hex1);
	BinaryTo7Seg d3(ALUOUT[11:8], hex2);
	BinaryTo7Seg d4(ALUOUT[15:12], hex3);
	assign HEX0 = ~hex0;
	assign HEX1 = ~hex1;
	assign HEX2 = ~hex2;
	assign HEX3 = ~hex3;
	
	// use a subset of the 32-bit counter to generate data to be displayed
	// on the matrix display
	wire [15:0]R0, R1, R2, R3, R4, R5, R6, R7;
	assign R0 = reg7;
	assign R1 = reg6;
	assign R2 = reg5;
	assign R3 = reg4;
	assign R4 = reg3;
	assign R5 = reg2;
	assign R6 = reg1;
	assign R7 = reg0;
	
	wire [31:0] led;
	// connect the last 16 switches to the first 16 LEDs
	// connect the first 16 switches to the last 16 LEDs
	// this is done to make sure the switches can be read and the LEDs
	// controlled
	assign led[31:29] = sw[31:29];
	assign led[26:24] = sw[26:24];
	assign led[23:21] = sw[23:21];
	assign led[7:0] = sw[7:0];
	
	BinaryTo7Seg(in, hex_out);
	
	wire [6:0] GPIOHEX0, GPIOHEX1, GPIOHEX2, GPIOHEX3, GPIOHEX4, GPIOHEX5, GPIOHEX6, GPIOHEX7;
	
	BinaryTo7Seg d5(sw[31:29], GPIOHEX6);
	BinaryTo7Seg d6(sw[26:24], GPIOHEX4);
	BinaryTo7Seg d7(sw[23:21], GPIOHEX2);
	BinaryTo7Seg d8(reg1[3:0], GPIOHEX0);
	

	GPIO_Board DUT(
	GPIO_clock,
	R0, R1, R2, R3, R4, R5, R6, R7, 
	GPIOHEX0, 0, 0, 0, GPIOHEX2, 0, 0, 0, GPIOHEX4, 0, 0, 0, 
	GPIOHEX6, 0, 0, 0, sw, led, GPIO0_D, GPIO1_D);
	
endmodule
	

