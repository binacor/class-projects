module RegFile_16by16_tb;

	parameter bit_width = 16;
	//signals to simulate
	reg clock, reset, write;
	reg [3:0] DA, BA, AA;
	reg [bit_width-1:0] D;
	//signals to watch
	wire [bit_width-1:0] A, B, reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15;
	
	RegFile_16by16 dut( 
	//inputs/outputs connected to internal signals
		.write(write),
		.reset(reset),
		.clock(clock),
		.D(D),
		.DA(DA),
		.BA(BA),
		.AA(AA),
		.r0(reg0),
		.r1(reg1),
		.r2(reg2),
		.r3(reg3),
		.r4(reg4),
		.r5(reg5),
		.r6(reg6),
		.r7(reg7),
		.r8(reg8),
		.r9(reg9),
		.r10(reg10),
		.r11(reg11),
		.r12(reg12),
		.r13(reg13),
		.r14(reg14),
		.r15(reg15),
		.A(A),
		.B(B)
   );
		

		//Generates Clock Signal
	initial
	begin
		clock <= 1'b0;
		forever
		#10 clock = ~clock;
	end
	//stimulus
	
	initial
	begin
		#2 reset = 1'b1;
		#5 reset = 1'b0;
		write =1'b1;
		
		DA = 4'b0;
		forever
			begin
	
				#20 D = $random;
				DA = DA + 4'b1;//Selects address for output
				AA = $random;  //Address output for A is random
				BA = $random;  //Address output for B is random
	
		end 
	end
	
		initial 
			#1000 $stop; //stops simulation after 1000 clock cycles
		
	endmodule