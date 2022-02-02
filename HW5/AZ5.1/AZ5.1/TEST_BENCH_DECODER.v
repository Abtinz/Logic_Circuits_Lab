`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:59:07 11/08/2021
// Design Name:   Decoder_2X4
// Module Name:   C:/Users/ABTIN/Desktop/amirkabir un/term 3/logical circuts/LAB/HW5/AZ5/TEST_BENCH_DECODER.v
// Project Name:  AZ5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder_2X4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_BENCH_DECODER;

	// Inputs
	reg A;
	reg B;
	reg EN;

	// Outputs
	wire O0;
	wire O1;
	wire O2;
	wire O3;

	// Instantiate the Unit Under Test (UUT)
	Decoder_2X4 uut (
		.A(A), 
		.B(B), 
		.EN(EN), 
		.O0(O0), 
		.O1(O1), 
		.O2(O2), 
		.O3(O3)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		EN = 0;

		// Wait 100 ns for global reset to finish
		#100;
      #50 A=0; B=0; EN=0;
		#50 A=0; B=1; EN=0;
		#50 A=1; B=0; EN=0;
		#50 A=1; B=1; EN=0;
		
		#50 A=0; B=0; EN=1;
		#50 A=0; B=1; EN=1;
		#50 A=1; B=0; EN=1;
		#50 A=1; B=1; EN=1;
		
		#100;
		
		$finish;
		// Add stimulus here

	end
      
endmodule

