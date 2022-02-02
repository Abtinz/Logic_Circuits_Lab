`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:32:35 11/08/2021
// Design Name:   F
// Module Name:   C:/Users/ASUS.PIESC/Desktop/logicLab/5/decoder4x16/test_bench_F.v
// Project Name:  decoder4x16
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: F
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_bench_F;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	F uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		#50 a=0;b=0;c=0;d=0;
		#50 a=0;b=0;c=0;d=1;
		#50 a=0;b=0;c=1;d=0;
		#50 a=0;b=0;c=1;d=1;
		#50 a=0;b=1;c=0;d=0;
		#50 a=0;b=1;c=0;d=1;
		#50 a=0;b=1;c=1;d=0;
		#50 a=0;b=1;c=1;d=1;
		#50 a=1;b=0;c=0;d=0;
		#50 a=1;b=0;c=0;d=1;
		#50 a=1;b=0;c=1;d=0;
		#50 a=1;b=0;c=1;d=1;
		#50 a=1;b=1;c=0;d=0;
		#50 a=1;b=1;c=0;d=1;
		#50 a=1;b=1;c=1;d=0;
		#50 a=1;b=1;c=1;d=1;
		
		// Wait 100 ns for global reset to finish
		#100;
        $finish;
		// Add stimulus here

	end
      
endmodule

