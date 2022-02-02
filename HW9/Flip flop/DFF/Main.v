`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:46:56 12/11/2021 
// Design Name: 
// Module Name:    Main 
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
module Main(input A,input B,input CLK, output Y,output Z);

    wire S , DFFInput1 , DFFInput2; 
	 wire QDff1,QDff2; // First and second (Q`)outputs
	 wire tempDffOutput; // for second DFF
	 wire R ; // R wire will help us for Z output
	 
    //FIRST DFF 
    and #(10) (S,QDff2,B);
	 or  #(10) (DFFInput1,S,A); // DFFInput1 --> input D for first Dff
	 DFF DFF1(DFFInput1,CLK,Y,QDff1); //Y --> Q output of first DFF , Y is the first output of this circuit
	
	 //Seconnd DFF 
	 nor #(10) (DFFInput2,DFFInput1,QDff1); // DFFInput2 --> input D for second Dff
	 DFF DFF2(DFFInput2,CLK,tempDffOutput,QDff2); //QDff2 --> Q` (we will need it forr Z)
	
	 //wire R
	 and  #(10) (R,B,QDff2);
	
	 //Zoutput
	 or #(10) (Z,QDff1,R);
	
endmodule
