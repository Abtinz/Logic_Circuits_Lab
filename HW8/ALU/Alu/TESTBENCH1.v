`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:40:00 11/28/2021
// Design Name:   ALU2Bit
// Module Name:   C:/Users/ABTIN/Desktop/amirkabir un/term 3/logical circuts/LAB/HW8/ALU/Alu/TESTBENCH1.v
// Project Name:  Alu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU2Bit
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
	reg [1:0] A;
	reg [1:0] B;
	reg [1:0] Signal;

	// Outputs
	wire [3:0] Output;

	// Instantiate the Unit Under Test (UUT)
	ALU2Bit uut (
		.A(A), 
		.B(B), 
		.Signal(Signal), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Signal = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#50 A=2'b01; B=2'b01; Signal = 2'b01;
		#50 A=2'b01; B=2'b01; Signal = 2'b00;
		#50 A=2'b01; B=2'b01; Signal = 2'b10;
		#50 A=2'b01; B=2'b01; Signal = 2'b11;
        
		// Add stimulus here

	end
      
endmodule

