`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:04 11/08/2021 
// Design Name: 
// Module Name:    Priority_Encoder_4X2 
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

 module Priority_Encoder_4X2(
    input D0,
    input D1,
    input D2,
    input D3,
    output O0,
    output O1
    );

 assign O0 = ((~D2) & D1) + D3; 
 assign O1 = D2 + D3+ D0&(~D0);

 endmodule
