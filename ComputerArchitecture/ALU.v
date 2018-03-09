module ALU (A, B, FS, C, OUT);
	
	input [15:0] A, B;
	input [4:0] FS;
	input C;
	output reg [15:0] OUT;
	
	wire [5:0] functionSelect;
	
	assign functionSelect = {FS[4], FS[3], FS[2], FS[1], FS[0], C};
	
	always@(functionSelect)
  	 begin
		 casex (functionSelect) 
		 //Arithmetic
		  6'b100001: OUT <= A + 16'b1;  //increment
		  6'b101000: OUT <= A + B; //add A and B
		  6'b101101: OUT <= A - B; //subtract A and B
		  6'b100100: OUT <= A - 16'b1; //decrement
		  6'b100011: OUT <= 16'b0 - A; //-A
		  
		  //Logic
		  6'b00000x: OUT <= 16'b0000000000000000; //0
		  6'b01100x: OUT <= A; //A
		  6'b00011x: OUT <= ~A; //A NOT
		  6'b01000x: OUT <= A&B; //A AND B
		  6'b01110x: OUT <= A|B; //A OR B
		  6'b00110x: OUT <= A^B; //A NOR B
		  6'b01111x: OUT <= 16'b1111111111111111; //1
		  
		  //Shift
		  6'b11xx00: OUT <= A<<1; //Shift Left
		  6'b11xx1x: OUT <= A>>1; //Shift Right
		  
		  default: OUT <= 16'b10x010x010x010x0;
		endcase
  	 end
	
endmodule
