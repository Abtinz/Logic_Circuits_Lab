`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:17:58 11/08/2021 
// Design Name: 
// Module Name:    decoder4to16 
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
module decoder4to16(
    input a,
    input b,
    input c,
    input d,
    output o0,
    output o1,
    output o2,
    output o3,
    output o4,
    output o5,
    output o6,
    output o7,
    output o8,
    output o9,
    output oA,
    output oB,
    output oC,
    output oD,
    output oE,
    output oF
    );
assign o0 = (~a)&(~b)&(~c)&(~d);
assign o1 = (~a)&(~b)&(~c)& d ;
assign o2 = (~a)&(~b)& c &(~d);
assign o3 = (~a)&(~b)& c & d ;
assign o4 = (~a)& b &(~c)&(~d);
assign o5 = (~a)& b &(~c)& d ;
assign o6 = (~a)& b & c &(~d);
assign o7 = (~a)& b & c & d ;
assign o8 =  a &(~b)&(~c)&(~d);
assign o9 =  a &(~b)&(~c)& d ;
assign oA =  a &(~b)& c &(~d);
assign oB =  a &(~b)& c & d ;
assign oC =  a & b &(~c)&(~d);
assign oD =  a & b &(~c)& d ;
assign oE =  a & b & c &(~d);
assign oF =  a & b & c & d ;
endmodule
