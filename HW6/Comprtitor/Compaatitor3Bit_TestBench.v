`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:45:46 11/16/2021
// Design Name:   THREE
// Module Name:   C:/Users/ABTIN/Desktop/amirkabir un/term 3/logical circuts/LAB/HW6/AZ6.1/AZ6.1/Compaatitor3Bit_TestBench.v
// Project Name:  AZ6.1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: THREE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Compaatitor3Bit_TestBench;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire EQ;
	wire LT;
	wire GRT;

	// Instantiate the Unit Under Test (UUT)
	THREE uut (
		.A(A), 
		.B(B), 
		.EQ(EQ), 
		.LT(LT), 
		.GRT(GRT)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
      #50 A[0]=0 A[1]=0 A[2]=0 B[0]=0 B[0]=0 B[0]=0;
		#50 A[0]=0 A[1]=0 A[2]=0 B[0]=0 B[0]=0 B[0]=1;
		#50 A[0]=0 A[1]=0 A[2]=0 B[0]=0 B[0]=1 B[0]=0;
		#50 A[0]=0 A[1]=0 A[2]=0 B[0]=0 B[0]=1 B[0]=1;
		#50 A[0]=0 A[1]=0 A[2]=0 B[0]=1 B[0]=0 B[0]=0;
		#50 A[0]=0 A[1]=0 A[2]=0 B[0]=1 B[0]=0 B[0]=1;
		#50 A[0]=0 A[1]=0 A[2]=0 B[0]=1 B[0]=1 B[0]=0;
		#50 A[0]=0 A[1]=0 A[2]=0 B[0]=1 B[0]=1 B[0]=1;
		
		#200;
		#50 A[0]=1 A[1]=1 A[2]=1 B[0]=0 B[0]=0 B[0]=0;
		#50 A[0]=1 A[1]=1 A[2]=1 B[0]=0 B[0]=0 B[0]=1;
		#50 A[0]=1 A[1]=1 A[2]=1 B[0]=0 B[0]=1 B[0]=0;
		#50 A[0]=1 A[1]=1 A[2]=1 B[0]=0 B[0]=1 B[0]=1;
		#50 A[0]=1 A[1]=1 A[2]=1 B[0]=1 B[0]=0 B[0]=0;
		#50 A[0]=1 A[1]=1 A[2]=1 B[0]=1 B[0]=0 B[0]=1;
		#50 A[0]=1 A[1]=1 A[2]=1 B[0]=1 B[0]=1 B[0]=0;
		#50 A[0]=1 A[1]=1 A[2]=1 B[0]=1 B[0]=1 B[0]=1;
		// Add stimulus here

	end
      
endmodule

