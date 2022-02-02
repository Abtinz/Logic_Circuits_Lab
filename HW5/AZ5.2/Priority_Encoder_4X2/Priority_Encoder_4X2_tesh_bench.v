`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:48:42 11/08/2021
// Design Name:   Priority_Encoder_4X2
// Module Name:   C:/Users/ABTIN/Desktop/amirkabir un/term 3/logical circuts/LAB/HW5/AZ5.2/Priority_Encoder_4X2/Priority_Encoder_4X2_tesh_bench.v
// Project Name:  Priority_Encoder_4X2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Priority_Encoder_4X2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Priority_Encoder_4X2_tesh_bench;

	// Inputs
	reg D0;
	reg D1;
	reg D2;
	reg D3;

	// Outputs
	wire O0;
	wire O1;

	// Instantiate the Unit Under Test (UUT)
	Priority_Encoder_4X2 uut (
		.D0(D0), 
		.D1(D1), 
		.D2(D2), 
		.D3(D3), 
		.O0(O0), 
		.O1(O1)
	);

	initial begin
		// Initialize Inputs
		D0 = 0;
		D1 = 0;
		D2 = 0;
		D3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      #50 D0=0; D1=0; D2=0; D3=0;
      #50 D0=1; D1=0; D2=0; D3=0;
      #50 D0=1; D1=1; D2=0; D3=0;	
      #50 D0=1; D1=1; D2=1; D3=0;	
      #50 D0=1; D1=1; D2=1; D3=1;
      #100;
      $finish;		
		// Add stimulus here

	end
      
endmodule

