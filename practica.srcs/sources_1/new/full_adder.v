`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2023 11:51:03 PM
// Design Name: 
// Module Name: full_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder(a, b, cin, s, cout);
    input a, b, cin;
    output s, cout;
    
    assign cout = (a & b) | (cin & (a | b));
    assign s = ~cin & (a ^ b) | cin & ~(a & b);
endmodule
