`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:24:50 11/21/2021
// Design Name:   fullAdder
// Module Name:   C:/Users/ABTIN/Desktop/amirkabir un/term 3/logical circuts/LAB/HW7/AZ7.1/testBench.v
// Project Name:  AZ7.1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fullAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testBench;

	// Inputs
	reg A;
	reg B;
	reg Cin;

	// Outputs
	wire Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	fullAdder uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.Sum(Sum), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		   
		#50 A=0; B = 0; Cin = 0;
		#50 A=0; B = 0; Cin = 1;
		#50 A=0; B = 1; Cin = 0;
		#50 A=0; B = 1; Cin = 1;
		#50 A=1; B = 0; Cin = 0;
		#50 A=1; B = 0; Cin = 1;
		#50 A=1; B = 1; Cin = 0;
		#50 A=1; B = 1; Cin = 1;
		
		$finish;
        
		// Add stimulus here

	end
      
endmodule

