`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:34:05 11/08/2021
// Design Name:   decoder4to16
// Module Name:   C:/Users/ASUS.PIESC/Desktop/logicLab/5/decoder4x16/testbench.v
// Project Name:  decoder4x16
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder4to16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;

	// Outputs
	wire o0;
	wire o1;
	wire o2;
	wire o3;
	wire o4;
	wire o5;
	wire o6;
	wire o7;
	wire o8;
	wire o9;
	wire oA;
	wire oB;
	wire oC;
	wire oD;
	wire oE;
	wire oF;

	// Instantiate the Unit Under Test (UUT)
	decoder4to16 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.o0(o0), 
		.o1(o1), 
		.o2(o2), 
		.o3(o3), 
		.o4(o4), 
		.o5(o5), 
		.o6(o6), 
		.o7(o7), 
		.o8(o8), 
		.o9(o9), 
		.oA(oA), 
		.oB(oB), 
		.oC(oC), 
		.oD(oD), 
		.oE(oE), 
		.oF(oF)
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

