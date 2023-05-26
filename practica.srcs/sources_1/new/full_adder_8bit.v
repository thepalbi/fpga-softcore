`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2023 12:03:17 AM
// Design Name: 
// Module Name: full_adder_8bit
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


module full_adder_8bit(a, b, cin, s, cout);
    input [7:0] a, b;
    input cin;
    
    output [7:0] s;
    output cout;
    
    // beautiful implementation from https://groups.google.com/g/comp.lang.verilog/c/D2ft7Z3KGOE?pli=1
    assign {cout, s} = a + b + {7'b0, cin};
endmodule
