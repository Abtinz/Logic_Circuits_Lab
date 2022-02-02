`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:20 11/21/2021 
// Design Name: 
// Module Name:    fulladder4bit 
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
	  
	 /*assign Sum = (A ^ B) ^ Cin ,
	        Cout = ((A ^ B) & Cin) || (A & B);*/

endmodule

module fullAdderXorType(input A,input B,input Cin,output Sum,output Cout);
	 
	 wire tempWire;
	 xor #(10) (tempWire,Cin,B);
	 fullAdder (A,tempWire,Cin,Sum,Cout);
endmodule

module fulladder4bit(input [3:0]A,input [3:0]B,input Cin,output [3:0]Cout,output [3:0]Sum);

	 fullAdderXorType(A[0],B[0],Cin,Sum[0],Cout[0]);
    fullAdderXorType(A[1],B[1],Cout[0],Sum[1],Cout[1]);
	 fullAdderXorType(A[2],B[2],Cout[1],Sum[2],Cout[2]);
	 fullAdderXorType(A[3],B[3],Cout[2],Sum[3],Cout[3]);

endmodule
