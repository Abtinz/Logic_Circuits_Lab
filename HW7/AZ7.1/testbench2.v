`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:33:58 11/21/2021
// Design Name:   fulladder4bit
// Module Name:   C:/Users/ABTIN/Desktop/amirkabir un/term 3/logical circuts/LAB/HW7/AZ7.1/testbench2.v
// Project Name:  AZ7.1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench2;

	// Inputs
	reg A;
	reg B;
	reg Cin;

	// Outputs
	wire Cout;
	wire Sum;

	// Instantiate the Unit Under Test (UUT)
	fulladder4bit uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.Cout(Cout), 
		.Sum(Sum)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A[0]=1; A[0]=1; A[0]=1; A[0]=1; B=4; Cin=1;
		A=4; B=5; Cin=1;
        
		// Add stimulus here

	end
      
endmodule

