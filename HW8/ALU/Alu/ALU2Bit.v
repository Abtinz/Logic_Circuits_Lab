`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:19:58 11/28/2021 
// Design Name: 
// Module Name:    ALU2Bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
///////////////////////////////////////////////////////
///////////////////////////
module Mux(input [3:0]W0,input [3:0]W1,input [3:0]W2,input [3:0]W3,input [1:0]S,output [3:0]Output);

	 assign Output = S[1] ? (S[0] ? W3 : W2) : (S[0] ? W1 : W0 );
	 

endmodule


module ALU2Bit(input [1:0]A,input [1:0]B,input [1:0]Signal,output [3:0]Output);
   
	 wire Sum;
	 wire Multiple;
	 wire NANDWire;
	 wire NotAWire;
	 
	 assign    Sum = A + B ;  
	 assign    Multiple = A*B ;         //{0,0,A} * {0,0,B};          
	 assign	  NANDWire = ~(A&B);      //{0,0,~(A&B)};
	 assign    NotAWire = ~A;         //{0,0,~A};
	 Mux(Sum,Multiple,NANDWire,NotAWire,Signal,Output);	  
   	  
endmodule

