`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:29:09 11/08/2021 
// Design Name: 
// Module Name:    F 
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
module F(
    input a,
    input b,
    input c,
    input d,
    output o
    );
	
	assign o = ((~a)&(~b)& c &(~d))|((~a)&(~b)& c & d)|((~a)& b &(~c)& d)|((~a)& b & c & d)|(a &(~b)& c & d)|(a & b &(~c)& d);

endmodule
