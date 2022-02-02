`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:40:10 11/08/2021
// Design Name:   MULTIPLEXER_4X1
// Module Name:   C:/Users/ABTIN/Desktop/amirkabir un/term 3/logical circuts/LAB/HW5/AZ5.3/AZG/MuxOutpu_test_bench.v
// Project Name:  AZG
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MULTIPLEXER_4X1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MuxOutpu_test_bench;

	// Inputs
	reg W0;
	reg W1;
	reg W2;
	reg W3;
	reg S1;
	reg S2;

	// Outputs
	wire MuxOutput;

	// Instantiate the Unit Under Test (UUT)
	MULTIPLEXER_4X1 uut (
		.W0(W0), 
		.W1(W1), 
		.W2(W2), 
		.W3(W3), 
		.S1(S1), 
		.S2(S2), 
		.MuxOutput(MuxOutput)
	);

	initial begin
		// Initialize Inputs
		W0 = 0;
		W1 = 0;
		W2 = 0;
		W3 = 0;
		S1 = 0;
		S2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      #50 W0=1; W1=0; W2=0; W3=0; S1=0; S2=0;
      #50 W0=1; W1=0; W2=1; W3=1; S1=1; S2=0;
      #50 W0=0; W1=0; W2=1; W3=0; S1=0; S2=1;	
      #50 W0=0; W1=0; W2=0; W3=1; S1=1; S2=1;	
      #100;
      $finish;		
		// Add stimulus here

	end
      
endmodule

