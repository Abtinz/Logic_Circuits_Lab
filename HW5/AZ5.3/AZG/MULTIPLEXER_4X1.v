`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:05 11/08/2021 
// Design Name: 
// Module Name:    MULTIPLEXER_4X1 
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
module MULTIPLEXER_4X1(
    input W0,
    input W1,
    input W2,
    input W3,
    input S1,
    input S2,
    output MuxOutput
    );

assign MuxOutput = S2 ? (S1 ? W3 : W2) : (S1 ? W1 : W0);

endmodule
