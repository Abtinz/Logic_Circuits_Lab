`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:16:47 11/21/2021 
// Design Name: 
// Module Name:    fullAdder 
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
//////////////////////////////////////////////////////////////////////////////////

module fullAdder(input A,input B,input Cin,output Sum,output Cout);
	 
	  wire tempWire;
	  wire tempWireAnd1;
     wire tempWireAnd2;
	  
	  xor #(10) (tempWire,A,B);
     xor #(10) (Sum,tempWire,Cin);
	  and #(5)  (tempWireAnd1,tempWire,Cin);
	  and #(5)  (tempWireAnd2,A,B);
     or  #(5)  (Cout,tempWireAnd1,tempWireAnd2);
	  
endmodule
