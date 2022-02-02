`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:01:17 11/16/2021 
// Design Name: 
// Module Name:    ThreeCopratitorModule 
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
module ThreeCopratitorModule(
    input A0,
    input A1,
    input A2,
    input B0,
    input B1,
    input B2,
    output LT,
    output GRT,
    output EQ
    );
	 
 //LOGICAL CALCULATION 3Bit comprator
  assign GRT = (A2 & (~B2)) || ((~(A2^B2)) & (A1 & (~B1))) || ((~(A2^B2)) & (~(A1^B1)) &(A0 & (~B0)));
  assign LT = (B2 & (~A2)) ||  ((~(A2^B2)) & (B1 & (~A1))) || ((~(A2^B2)) & (~(A1^B1)) &(B0 & (~A0)));
  assign EQ = (~(A0 ^ B0)) & (~(A1^B1)) & (~(A2^B2));
endmodule

