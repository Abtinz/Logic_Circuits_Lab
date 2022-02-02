`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:18:58 11/16/2021
// Design Name:   ThreeCopratitorModule
// Module Name:   C:/Users/ABTIN/Desktop/amirkabir un/term 3/logical circuts/LAB/HW6/AZ6.1/New folder/Compratitor3Bit/TESTBENCH1.v
// Project Name:  Compratitor3Bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ThreeCopratitorModule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TESTBENCH1;

	// Inputs
	reg A0;
	reg A1;
	reg A2;
	reg B0;
	reg B1;
	reg B2;

	// Outputs
	wire LT;
	wire GRT;
	wire EQ;

	// Instantiate the Unit Under Test (UUT)
	ThreeCopratitorModule uut (
		.A0(A0), 
		.A1(A1), 
		.A2(A2), 
		.B0(B0), 
		.B1(B1), 
		.B2(B2), 
		.LT(LT), 
		.GRT(GRT), 
		.EQ(EQ)
	);

	initial begin
		// Initialize Inputs
		A0 = 0;
		A1 = 0;
		A2 = 0;
		B0 = 0;
		B1 = 0;
		B2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      #50 A0=0; A1=0; A2=0; B0=0; B1=0; B2=0;
		#50 A0=0; A1=0; A2=0; B0=0; B1=0; B2=1;
		#50 A0=0; A1=0; A2=0; B0=0; B1=1; B2=0;
		#50 A0=0; A1=0; A2=0; B0=0; B1=1; B2=1;
		#50 A0=0; A1=0; A2=0; B0=1; B1=0; B2=0;
		#50 A0=0; A1=0; A2=0; B0=1; B1=0; B2=1;
		#50 A0=0; A1=0; A2=0; B0=1; B1=1; B2=0;
		#50 A0=0; A1=0; A2=0; B0=1; B1=1; B2=1;
		
      #50 A0=1; A1=1; A2=1; B0=0; B1=0; B2=0;
		#50 A0=1; A1=1; A2=1; B0=0; B1=0; B2=1;
		#50 A0=1; A1=1; A2=1; B0=0; B1=1; B2=0;
		#50 A0=1; A1=1; A2=1; B0=0; B1=1; B2=1;
		#50 A0=1; A1=1; A2=1; B0=1; B1=0; B2=0;
		#50 A0=1; A1=1; A2=1; B0=1; B1=0; B2=1;
		#50 A0=1; A1=1; A2=1; B0=1; B1=1; B2=0;
		#50 A0=1; A1=1; A2=1; B0=1; B1=1; B2=1;
       
      #100;
      $finish;		
		// Add stimulus here

	end
      
endmodule

