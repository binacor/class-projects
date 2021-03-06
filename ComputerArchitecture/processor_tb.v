module processor_tb;

	reg [15:0] K;
	reg [5:0] FS;
	reg [3:0] DA, AA, BA;
	reg PS, J, WR, WM, PMS, RS, AS, LK, BR, ZS, NS, EN_P, EN_A, EN_K, PUSH, POP, EN_MEM, EN_ALU, IL,MS;
	reg clk;
	wire [15:0] IOUT,R0,R1,R2,R3,R4,R5,R6,R7, mem5;
	
	Datapath dut (.K (K),
				 .FS (FS[5:1]),
				 .Cin (FS[0]),
				 .DA (DA),
				 .AA (AA),
				 .BA (BA),
				 .PS (PS),
				 .Jump (J),
				 .WR (WR),
				 .WM (WM),
				 .PMS (PMS),
				 .RS (RS),
				 .AS (AS),
				 .BR (BR),
				 .K_B (EN_K),
				 .PUSH (PUSH),
				 .POP (POP),
				 .Mem_en (EN_MEM),
				 .ALU_en (EN_ALU),
				 .IL (IL),
				 .clock (clk),
				 .LK (LK),
				 .EN_A (EN_A),
				 .EN_P (EN_P),
				 .ZS (ZS),
				 .NS (NS),
				 .ControlUnit (IOUT),
				 .R0 (R0),
				 .R1 (R1),
				 .R2 (R2),
				 .R3 (R3),
				 .R4 (R4),
				 .R5 (R5),
				 .R6 (R6),
				 .R7 (R7),
				 .MS (MS)); 
				 
	assign mem5 = dut.b2v_inst14.b2v_inst9.mem[5];
	//Generates Clock Signal
	initial 
	begin 
		clk = 1'b0;
	
		
	end 
    
  always 
    #10 clk = ~clk;
			
	
	//Stimulus
	initial
		begin
		
		//Load values into registers
		#5
		MS <=1'b0;
		K <= 16'b0000000000000000;
		FS <= 6'b010100;
		DA <= 4'b0000;
		AA <=	4'b0000;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b0;
		AS <= 1'b0;
		LK <= 1'b0;
		EN_A <= 1'b0;
		BR <= 1'b0;
		EN_P <= 1'b1;
		ZS <= 1'b0;
		NS <= 1'b0;
		WR <= 1'b1;
		
		#10$display("R0 %d", R0); 
		
		#10
		K <= 16'b0000000000000011;
		FS <= 6'b010100;
		DA <= 4'b0001;
		AA <=	4'b0000;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		WR <= 1'b1;
		
		#10$display("R1 %d", R1); 
		
		#10
		K <= 16'b0000000000001010;
		FS <= 6'b010100;
		DA <= 4'b0010;
		AA <=	4'b0000;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b1;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("R2 %d", R2); 
		
		#10
		K <= 16'b0000000000001010;
		FS <= 6'b010100;
		DA <= 4'b0011;
		AA <=	4'b0000;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b1;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("R3 %d", R3); 
		
		#10
		K <= 16'b0000000000001100;
		FS <= 6'b010100;
		DA <= 4'b0100;
		AA <=	4'b0000;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b1;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("R4 %d", R4); 
		
		#10
		K <= 16'b0000000000001100;
		FS <= 6'b010100;
		DA <= 4'b0101;
		AA <=	4'b0000;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b1;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("R5 %d", R5); 
		
		#10
		K <= 16'b0000000000001110;
		FS <= 6'b010100;
		DA <= 4'b0110;
		AA <=	4'b0000;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b1;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("R6 %d", R6); 
		
		#10
		K <= 16'b0000000000001110;
		FS <= 6'b01010X;
		DA <= 4'b0111;
		AA <=	4'b0000;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b1;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("R7 %d", R7);  
		
		//NOP
		#10
		K <= 16'bxxxxxxxxxxxxxxxx;
		FS <= 6'bxxxxxx;
		DA <= 4'bxxxx;
		AA <=	4'bxxxx;
		BA <= 4'bxxxx;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b0;
		IL <= 1'b1;
		
		#10$display("NOP %d", IOUT); 
		
		//INC R1 <- R0 +1
		
		#10 
		K <= 16'bxxxxxxxxxxxxxxxx;
		FS <= 6'b100001;
		DA <= 4'b0001;
		AA <=	4'b0000;
		BA <= 4'bxxxx;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("INC R1<-R0+1 %d", IOUT); 
		
		//ADD R2 <- R0 + R1
		
		#10 
		K <= 16'bxxxxxxxxxxxxxxxx;
		FS <= 6'b101000;
		DA <= 4'b0010;
		AA <=	4'b0000;
		BA <= 4'b0001;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("ADD R2<-R0+R1 %d", IOUT); 
		
		//SUB R3 <- R7 - R4
		
		#10 
		K <= 16'bxxxxxxxxxxxxxxxx;
		FS <= 6'b101101;
		DA <= 4'b0011;
		AA <=	4'b0111;
		BA <= 4'b0100;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("SUB R3<-R7-R4 %d", IOUT); 
		
		//DEC R2 <- R5 - 1
		
		#10 
		K <= 16'bxxxxxxxxxxxxxxxx;
		FS <= 6'b100100;
		DA <= 4'b0010;
		AA <=	4'b0101;
		BA <= 4'bxxxx;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("DEC R2<-R5-1 %d", IOUT); 
		
		//MUL R2 <- R0 * R1
		
		#10 
		K <= 16'bxxxxxxxxxxxxxxxx;
		FS <= 6'b101000;
		DA <= 4'b0010;
		AA <=	4'b0000;
		BA <= 4'b0001;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b1;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("MUL R2<-R0*R1 %d", IOUT);
		
		//ADD R6 <- R3 + R4 + C0
		
		#10 
		K <= 16'bxxxxxxxxxxxxxxxx;
		FS <= 6'b101001;
		DA <= 4'b0010;
		AA <=	4'b0011;
		BA <= 4'b0100;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("ADD R6<-R3+R4+C0 %d", IOUT);
		
		//NEG R4 <- ~R2 +1
		
		#10 
		K <= 16'bxxxxxxxxxxxxxxxx;
		FS <= 6'b100011;
		DA <= 4'b0010;
		AA <=	4'b0010;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("NEG R4<-~R2+1 %d", IOUT);
		
		//SHR R2 <- sr R6
		
		#10 
		K <= 16'bxxxxxxxxxxxxxxxx;
		FS <= 6'b110x1x;
		DA <= 4'b0010;
		AA <=	4'b0110;
		BA <= 4'bxxxx;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("SHR R2<-srR6 %b", IOUT);
		
		//SHL R2 <- sl R6
		
		#10 
		K <= 16'bxxxxxxxxxxxxxxxx;
		FS <= 6'b11xx00;
		DA <= 4'b0010;
		AA <=	4'b0110;
		BA <= 4'bxxxx;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("SHL R2<-slR6 %b", IOUT);
		
		//ASHR R2 <- sr R6
		
		#10 
		K <= 16'bxxxxxxxxxxxxxxxx;
		FS <= 6'b111x1x;
		DA <= 4'b0010;
		AA <=	4'b0110;
		BA <= 4'bxxxx;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("ASHR R2<-srR6 %b", IOUT);
		
		
		//CLR R3 <- 0
		
		#10 
		K <= 16'b0000000000000000;
		FS <= 6'b00000x;
		DA <= 4'b0010;
		AA <=	4'b0011;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("CLR R3<-0 %b", IOUT);
		
		//SET R3 <- 1
		
		#10 
		K <= 16'b0000000000000000;
		FS <= 6'b01111x;
		DA <= 4'b0010;
		AA <=	4'b0011;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("SET R3<-1 %b", IOUT);
		
		//NOT R3 <- ~R1
		
		#10 
		K <= 16'bxxxxxxxxxxxxxxxx;
		FS <= 6'b00011x;
		DA <= 4'b0010;
		AA <=	4'b0001;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("NOT R3<-~R1 %b", IOUT);
		
		//AND R1 <- R2 && R3
		
		#10 
		K <= 16'bxxxxxxxxxxxxxxxx;
		FS <= 6'b01000x;
		DA <= 4'b0010;
		AA <=	4'b0010;
		BA <= 4'b0011;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("AND R1<-R2&&R3 %b", IOUT);
		
		//OR R1 <- R2 || R3
		
		#10 
		K <= 16'bxxxxxxxxxxxxxxxx;
		FS <= 6'b01110x;
		DA <= 4'b0010;
		AA <=	4'b0010;
		BA <= 4'b0011;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("OR R1<-R2||R3 %b", IOUT);
		
		//XOR R1 <- R2 ^ R3
		
		#10 
		K <= 16'bxxxxxxxxxxxxxxxx;
		FS <= 6'b00110x;
		DA <= 4'b0010;
		AA <=	4'b0010;
		BA <= 4'b0011;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("XOR R1<-R2^R3 %b", IOUT);
		
		//MOVA R1 <- R3
		
		#10 
		K <= 16'bxxxxxxxxxxxxxxxx;
		FS <= 6'b01100x;
		DA <= 4'b0010;
		AA <=	4'b0011;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("MOVA R1 <- R3 %d", IOUT);
		
		//MOVB R1 <- R5
		
		#10 
		K <= 16'bxxxxxxxxxxxxxxxx;
		FS <= 6'b01010x;
		DA <= 4'b0001;
		AA <=	4'b0000;
		BA <= 4'b0101;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("MOVB R1<-R5 %d", IOUT);
		
		//ADDI R1 <- R5 + K
		
		#10 
		K <= 16'b0000000000000101;
		FS <= 6'b101000;
		DA <= 4'b0010;
		AA <=	4'b0101;
		BA <= 4'bxxxx;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("ADDI R1<-R5+5 %d", IOUT);
		
		//SUBI R1 <- R5 - K
		
		#10 
		K <= 16'b0000000000000101;
		FS <= 6'b101101;
		DA <= 4'b0010;
		AA <=	4'b0101;
		BA <= 4'bxxxx;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("SUBI R1<-R5-5 %d", IOUT);
		
		//ANDI R1 <- R3 && K
		
		#10 
		K <= 16'b0000000000000101;
		FS <= 6'b01000x;
		DA <= 4'b0010;
		AA <=	4'b0011;
		BA <= 4'bxxxx;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("ANDI R1<-R3&&5 %b", IOUT);
		
		//ORI R1 <- R3 || K
		
		#10 
		K <= 16'b0000000000000101;
		FS <= 6'b01110x;
		DA <= 4'b0010;
		AA <=	4'b0011;
		BA <= 4'bxxxx;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("ORI R1<-R3&&5 %b", IOUT);
		
		//XORI R1 <- R3 ^ K
		
		#10 
		K <= 16'b0000000000000101;
		FS <= 6'b00110x;
		DA <= 4'b0010;
		AA <=	4'b0011;
		BA <= 4'bxxxx;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		
		#10$display("XORI R1<-R3^5 %b", IOUT);
		
		//STI M[5] <- R3
		
		#10 
		K <= 16'b0000000000000101;
		FS <= 6'b011000;
		DA <= 4'b0000;
		AA <=	4'b0011;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b1;
		PMS <= 1'b0;
		RS <= 1'b1;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		AS <= 1'b1;
		
		#50$display("STI M[5]<-R3 %d", IOUT);	
	
		//STR M[R2] <- R4
		
		#10 
		K <= 16'b0000000000000000;
		FS <= 6'b01100x;
		DA <= 4'bxxxx;
		AA <=	4'b0100;
		BA <= 4'b0010;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b1;
		PMS <= 1'b0;
		RS <= 1'b1;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		AS <= 1'b1;
		
		#50$display("STR M[R2] <- R4 %d", IOUT);
	
		//LDI R3 <- M[K]
		
		#10 
		K <= 16'b0000000000000101;
		FS <= 6'b000000;
		DA <= 4'b0011;
		AA <=	4'b0000;
		BA <= 4'b0001;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b1;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b1;
		EN_ALU <= 1'b0;
		IL <= 1'b1;
		AS <= 1'b1;
		
		#50$display("LDI R3<-M[5] %d", IOUT);
		

		
		//LDR R4 <- M[R5]
		
		#10 
		K <= 16'b0000000000000000;
		FS <= 6'b000000;
		DA <= 4'b0100;
		AA <=	4'b0000;
		BA <= 4'b0001;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b1;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b1;
		EN_ALU <= 1'b0;
		IL <= 1'b1;
		AS <= 1'b1;
		
		#50$display("LDR R4 <- M[R1] %d", IOUT);
		

		
		//PUSH R5
		
		#10 
		K <= 16'b0000000000000000;
		FS <= 6'b011000;
		DA <= 4'b0000;
		AA <=	4'b0101;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b1;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b1;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		AS <= 1'b0;
		
		#10$display("PUSH R5 %d", IOUT);
		
		//R6 <- POP
		
		#10 
		K <= 16'b0000000000000000;
		FS <= 6'b000000;
		DA <= 4'b0110;
		AA <=	4'b0000;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b1;
		EN_MEM <= 1'b1;
		EN_ALU <= 1'b0;
		IL <= 1'b1;
		AS <= 1'b0;
		
		#10$display("R6<-POP %d", IOUT);
		
		//CALL PUSH[PC+1]
		
		#10 
		K <= 16'b0000000000000000;
		FS <= 6'b100001;
		DA <= 4'b0000;
		AA <=	4'b0000;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b1;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b1;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		AS <= 1'b0;
		LK <= 1'b0;
		EN_A <= 1'b1;
		
		#10$display("CALL PUSH[PC+1] %d", IOUT);
		
		//CALL PC <- K
		
		#10 
		K <= 16'b0000000000000101;
		FS <= 6'b010100;
		DA <= 4'b0000;
		AA <=	4'b0000;
		BA <= 4'b0000;
		PS <= 1'b1;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		AS <= 1'b0;
		LK <= 1'b1;
		EN_A <= 1'b0;
		
		#10$display("CALL PC<-K %d", IOUT);
		
		//RET PC <- POP
		
		#10 
		K <= 16'b0000000000000000;
		FS <= 6'b000000;
		DA <= 4'b0000;
		AA <=	4'b0000;
		BA <= 4'b0000;
		PS <= 1'b1;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b1;
		EN_MEM <= 1'b1;
		EN_ALU <= 1'b0;
		IL <= 1'b1;
		AS <= 1'b0;
		LK <= 1'b1;
		EN_A <= 1'b0;
		
		#10$display("RET PC<-POP %d", IOUT);
		
		//JMPI PC <- 5
		
		#10 
		K <= 16'b0000000000000101;
		FS <= 6'b010100;
		DA <= 4'b0000;
		AA <=	4'b0000;
		BA <= 4'b0000;
		PS <= 1'b1;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		AS <= 1'b0;
		LK <= 1'b0;
		EN_A <= 1'b0;
		
		#10$display("JMPI PC<-5 %d", IOUT);
		
		//JMPR PC <- R2
		
		#10 
		K <= 16'b0000000000000000;
		FS <= 6'b011000;
		DA <= 4'b0000;
		AA <=	4'b0010;
		BA <= 4'b0000;
		PS <= 1'b1;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b0;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		AS <= 1'b0;
		LK <= 1'b0;
		EN_A <= 1'b0;
		BR <= 1'b1;
		
		#10$display("JMPR PC<-R2 %d", IOUT);
		
		//BRZ IF(R2==0) PC <- PC + 5
		
		#10 
		K <= 16'b0000000000000101;
		FS <= 6'b011000;
		DA <= 4'b0000;
		AA <=	4'b0010;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b1;
		WR <= 1'b1;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b0;
		IL <= 1'b1;
		AS <= 1'b0;
		LK <= 1'b0;
		EN_A <= 1'b0;
		BR <= 1'b1;
		EN_P <= 1'b0;
		ZS <= 1'b1;
		NS <= 1'b0;
		
		#10$display("BRZ IF(R2<0) PC <- PC + 5", IOUT);
		
		//BRZ IF(R2<0) PC <- PC + 5
		
		#10 
		K <= 16'b0000000000000101;
		FS <= 6'b011000;
		DA <= 4'b0000;
		AA <=	4'b0010;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b1;
		WR <= 1'b1;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b0;
		IL <= 1'b1;
		AS <= 1'b0;
		LK <= 1'b0;
		EN_A <= 1'b0;
		BR <= 1'b1;
		EN_P <= 1'b0;
		ZS <= 1'b0;
		NS <= 1'b1;
		
		#10$display("BRN IF(R2<0) PC <- PC + 5", IOUT);
		
		//BCLR R2.1 == 0
		
		#10 
		K <= 16'b1111111111111101;
		FS <= 6'b010000;
		DA <= 4'b0010;
		AA <=	4'b0010;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		AS <= 1'b0;
		LK <= 1'b0;
		EN_A <= 1'b0;
		BR <= 1'b0;
		EN_P <= 1'b1;
		ZS <= 1'b0;
		NS <= 1'b0;
		
		#10$display("BCLR R2.1 == 0 %b", IOUT);
		
		//BSET R2.1 == 1
		
		#10 
		K <= 16'b0000000000000010;
		FS <= 6'b011100;
		DA <= 4'b0010;
		AA <=	4'b0010;
		BA <= 4'b0000;
		PS <= 1'b0;
		J <= 1'b0;
		WR <= 1'b0;
		WM <= 1'b0;
		PMS <= 1'b0;
		RS <= 1'b0;
		EN_K <= 1'b1;
		PUSH <= 1'b0;
		POP <= 1'b0;
		EN_MEM <= 1'b0;
		EN_ALU <= 1'b1;
		IL <= 1'b1;
		AS <= 1'b0;
		LK <= 1'b0;
		EN_A <= 1'b0;
		BR <= 1'b0;
		EN_P <= 1'b1;
		ZS <= 1'b0;
		NS <= 1'b0;
		
		#10$display("BCLR R2.1 == 0 %b", IOUT);
		
		
		
		

		
		end
	
	initial begin
		#1000 $stop;
	end
	
endmodule
