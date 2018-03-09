module CU_Datapath_tb;

	reg clk, reset;
	wire[15:0] R0, R1, R2, R3, R4, R5, R6, R7;
	wire[15:0] PC;
	
	CU_Datapath dut (.clk (clk),
							 .PC (PC),
							 .R0 (R0),
							 .R1 (R1),
							 .R2 (R2),
							 .R3 (R3),
							 .R4 (R4),
							 .R5 (R5),
							 .R6 (R6),
							 .R7 (R7),
							 .reset (reset)); 
				 
	//Generates Clock Signal
	initial 
	begin 
		clk = 1'b0;
		reset = 1'b0;
	end 
    
  always 
    #5 clk = ~clk;
			
	
	//Stimulus
	initial
		begin
		#5 reset = 1'b1;
		
		#20$display("R0 %b", R0); //LRI R0
		
		#20$display("R1 %b", R1); //LRI R1
		
		#20$display("R2 %b", R2); //LRI R2
		
		#20$display("R3 %b", R3); //LRI R3
		
		#20$display("R4 %b", R4); //LRI R4
		
		#20$display("R5 %b", R5); //LRI R5
		
		#20$display("R6 %b", R6); //LRI R6
		
		#20$display("R3+1 %b", R3); //INC R3
		
		#20$display("R2+R1 %b", R7); //ADD R7,R2,R1
		
		#20$display("R5-R4 %b", R7); //SUB R7, R5, R4
		
		#20$display("R3-1 %b", R3); //DEC R3, R3
		
		#30$display("R2*R4 %b", R7); //MUL R7, R2, R4
		
		#20$display("R4+R3+1 %b", R7); //ADDC R7, R4, R3
		
		#20$display("-R6 %b", R7); //NEG R7, R6
		
		#20$display("-(-R6) %b", R7); //NEG R7, R7

		#20$display("SHR R4 %b", R7); //SHR R7, R4
		
		#20$display("SHL R4 %b", R7); //SHL R7, R4
		
		#20$display("R7 %b", R7); //LRI R7, 32768
		
		#20$display("ASHR R7 %b", R7); //ASHR R7, R7
		
		#20$display("0 %b", R7); //CLR R7
		
		#20$display("1 %b", R7); //SET R7
		
		#20$display("0 %b", R7); //NOT R7,R7
		
		#20$display("R4 & R5 %b", R7); //AND R7,R4,R5
		
		#20$display("R4 | R5 %b", R7); //OR R7,R4,R5
		
		#20$display("R4 XOR R5 %b", R7); //XOR R7,R4,R5
		
		#20$display("MOV R4 %b", R7); //MOVA R7,R4
		
		#20$display("MOV R5 %b", R7); //MOVB R7,R5
		
		#20$display("ADDI R7, 1 %b", R7); //ADDI R7,1
		
		#20$display("NOP %b", R7); //NOP: Should be SUBI
		
		#20$display("R7 & 1010 %b", R7); //ANDI R7,10
		
		#20$display("R7 | 1010 %b", R7); //ORI R7, 10
		
		#20$display("R7 XOR 1010 %b", R7); //XORI R7, 10

		#20$display("STI R1,1 %b", R1); //STI R1,1
		
		#20$display("STI R2,2 %b", R2); //STI R2,2
		
		#20$display("STI R3,3 %b", R3); //STI R3,3
		
		#20$display("LDI R7,3 %b", R7); //LDI R7,3
		
		#20$display("LDI R7,2 %b", R7); //LDI R7,2
		
		#20$display("LDI R7,1 %b", R7); //LDI R7,1

		#20$display("STR R4,R5 %b", R4); //STR R4,R5
		
		#20$display("LDR R7,R4 %b", R7); //LDR R7, R4
		
		#20$display("Push R0 %b", R0); //PUSH R0
		
		#20$display("Push R1 %b", R1); //PUSH R1
		
		#20$display("Push R2 %b", R2); //PUSH R2
		
		#20$display("POP %b", R7); //POP R7
		
		#20$display("POP %b", R7); //POP R7
		
		#20$display("Push R3 %b", R3); //PUSH R3
		
		#20$display("POP %b", R7); //POP R7
		
		#20$display("POP %b", R7); //POP R7
		//here
		#30$display("Call 61 %d", PC); //Call 61
		
		#20$display("PC %b", R7); //LRI R7,33
		
		#20$display("LRI %b", PC); //RET
		
		#20$display("R7 %b", PC); //JMPI 63
		
		#20$display("R7 %b", R7); //LRI R7,51
		
		#20$display("R7 %b", PC); //JMPR R7
		
		#20$display("R7 %b", R1); //BRZ R1, 60
		
		#20$display("R7 %b", R7); //LRI R7, 10
		
		#20$display("R7 %b", R7); //BRZ R0, 65
		
		#20$display("R7 %b", R7); //LRI R7,20
		
		#20$display("R7 %b", R7); //JMPI 54
		
		#20$display("R7 %b", R7); //BRN R1, 60
		
		#20$display("R7 %b", R7); //LRI R7, 6
		
		#20$display("R7 %b", R7); //BRN R6, 67
		
		#20$display("R7 %b", R7); //LRI R7, 40
		
		#20$display("R7 %b", R7); //JMPI 57
		
		#20$display("R7 %b", R7); //LRI R7, 15
		
		#20$display("R7 %b", R7); //BCLR R7, 1
		
		#20$display("R7 %b", R7); //BSET R7, 1
		
		#20$display("R7 %b", R7); //JMPI 69
		

		end
		
		initial begin
			#2000 $stop;
			end
	
endmodule
