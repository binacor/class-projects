module ALU_16_Bit_tb;

parameter bit_width = 16;
	//signals to simulate
	reg Cin;
	reg [4:0] FS;
	reg [bit_width-1:0] A, B,Fex;
	//signals to watch
	wire [bit_width-1:0] F;
	wire Cout;
	
	
	ALU_Lookahead dut( 
	//inputs/outputs connected to internal signals
		.FS(FS),
		.A(A),
		.B(B),
		.C_in(Cin),
		.F(F),
		.Cout(Cout)
		);
		

initial 
		begin	
		A = $random;
		B = $random;
		Cin = 1'b1;
		Fex = A + 16'b1;
		FS = 5'b00000;	
		#500
		
		A = $random;
		B = $random;
		Cin = 1'b1;
		Fex = A + 16'b1;
		FS = 5'b10000;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = A + B;
		FS = 5'b10100;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b1;
		Fex = A - B;
		FS = 5'b10110;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = A - 16'b1;
		FS = 5'b10010;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b1;
		Fex = -A;
		FS = 5'b10001;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = 16'b0;
		FS = 5'b00000;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = A;
		FS = 5'b01100;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = ~A;
		FS = 5'b00011;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = A & B;
		FS = 5'b01000;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
		   #10	
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = A | B;
		FS = 5'b01110;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = A ^ B;
		FS = 5'b00110;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = 16'b1111111111111111;
		FS = 5'b01111;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = A << 1'b1;
		FS = 5'b11000;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = A >> 1'b1;
		FS = 5'b11001;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
				A = $random;
		B = $random;
		Cin = 1'b1;
		Fex = A + 16'b1;
		FS = 5'b00000;	
		#500
		
		A = $random;
		B = $random;
		Cin = 1'b1;
		Fex = A + 16'b1;
		FS = 5'b10000;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = A + B;
		FS = 5'b10100;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b1;
		Fex = A - B;
		FS = 5'b10110;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = A - 16'b1;
		FS = 5'b10010;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b1;
		Fex = -A;
		FS = 5'b10001;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = 16'b0;
		FS = 5'b00000;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = A;
		FS = 5'b01100;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = ~A;
		FS = 5'b00011;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = A & B;
		FS = 5'b01000;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
		   #10	
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = A | B;
		FS = 5'b01110;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = A ^ B;
		FS = 5'b00110;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = 16'b1111111111111111;
		FS = 5'b01111;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = A << 1'b1;
		FS = 5'b11000;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
			#10
		A = $random;
		B = $random;
		Cin = 1'b0;
		Fex = A >> 1'b1;
		FS = 5'b11001;	
		#50
		$display("FS: '%b'\tCin: '%b'\tA: '%h'\tB: '%h'\tF: '%h'\tFex: '%h'",FS,Cin,A,B,F,Fex);
		if (F != Fex) $display("error: F does not match Fex.");
		end 
endmodule
