`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:48:20 12/11/2021 
// Design Name: 
// Module Name:    DFF 
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

//D flip flap with nand gates 
module DFF(input D,input CLK,output Q1,output Q2);

wire P1,P2,P3,P4; // P wires will help us to connect nand gates 
wire temp;//THIS WIRE WILL HELP US IN P2 NAND WITH 3 INPUTS ...

//P1 WIRE
nand #(15) (P1,P3,CLK); 
//P2 WIRE
and  #(10) (temp,P1,P4);
nand #(10) (P2,temp,CLK);
//P3 WIRE
nand #(10) (P3,P1,P4); 
//P4 WIRE
nand #(10) (P4,P2,D); 

//Q1 OUTPUT
nand #(10) (Q1,Q2,P1);
//Q2 OUTPUT
nand #(15) (Q2,Q1,P2);

endmodule

