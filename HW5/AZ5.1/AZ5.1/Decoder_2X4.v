`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:22:26 11/08/2021 
// Design Name: 
// Module Name:    Decoder_2X4 
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
module Decoder_2X4(
    input A,
    input B,
    input EN,
    output O0,
    output O1,
    output O2,
    output O3
    );

assign O0 = (~A) & (~B) & EN;
assign O1 = (~A) & B & EN; 
assign O2 = A & (~B) & EN;
assign O3 = A & B & EN;


endmodule
