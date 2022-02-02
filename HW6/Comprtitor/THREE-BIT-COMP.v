`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:38:27 11/10/2021 
// Design Name: 
// Module Name:    THREE-BIT-COMP 
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

module THREE_BIT_COMP(A,B,EQ,LT,GRT);
  
  input A[0:2];
  input B[0:2];
  output EQ;
  output LT;
  output GRT;
  
  //LOGICAL CALCULATION 3Bit comprator
  assign GRT = (A[2] & (~B[2])) || ((~(A[2]^B[2])) & (A[1] & (~B[1]))) || ((~(A[2]^B[2])) & (~(A[1]^B[1])) &(A[0] & (~B[0])));
  assign lT = (B[2] & (~A[2])) || ((~(A[2]^B[2]) & (B[1] & (~A[1]))) || ((~(A[2]^B[2])) & (~(A[1]^B[1])) &(B[0] & (~A[0])));
  assign EQ = (~(A[0] ^ B[0])) & (~(A[1]^B[1])) & (~(A[2]^B[2]));
endmodule
