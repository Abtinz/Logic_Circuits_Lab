`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:48:13 12/16/2021
// Design Name:   Main
// Module Name:   C:/Users/ABTIN/Desktop/amirkabir un/term 3/logical circuts/LAB/HW9/Flip flop/DFF/Testbench.v
// Project Name:  DFF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench;

	// Inputs
	reg A;
	reg B;
	reg CLK;

	// Outputs
	wire Y;
	wire Z;

	// Instantiate the Unit Under Test (UUT)
	Main uut (
		.A(A), 
		.B(B), 
		.CLK(CLK), 
		.Y(Y), 
		.Z(Z)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		//first Periodicity
		#40; A=0; B=0; CLK=0; // 40 ns delay is for our clock Periodicity
		#40; A=0; B=0; CLK=1;
		
		//second Periodicity
		#40; A=0; B=1; CLK=0;
		#40; A=1; B=1; CLK=1;
		
		//third Periodicity
		#40; A=1; B=1; CLK=0;
		#40; A=0; B=1; CLK=1;
		
		//fourth Periodicity
		#40; A=0; B=1; CLK=0;
		#40; A=0; B=0; CLK=1;
		
		//Fifth Periodicity
		#40; A=1; B=0; CLK=0;
		#40; A=1; B=0; CLK=1;
		
		//Sixth Periodicity
		#40; A=1; B=0; CLK=0;
		#40; A=1; B=1; CLK=1;
		
		//Seventh Periodicity
		#40; A=0; B=0; CLK=0; 
		#40; A=0; B=0; CLK=1;
		
	   //Eighth Periodicity
		#40; A=0; B=0; CLK=0; 
		#40; A=0; B=1; CLK=1;
        
		//Ninth Periodicity
		#40; A=1; B=1; CLK=0; 
		#40; A=1; B=1; CLK=1;

	   #100;
		$finish;
		
	end
      
endmodule

