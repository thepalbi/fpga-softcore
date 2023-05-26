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
    
    wire cout0;
    full_adder add0(.a(a[0]), .b(b[0]), .cin(cin), .cout(cout0), .s(s[0]));
    wire cout1;
    full_adder add1(.a(a[1]), .b(b[1]), .cin(cout0), .cout(cout1), .s(s[1]));
    wire cout2;
    full_adder add2(.a(a[2]), .b(b[2]), .cin(cout1), .cout(cout2), .s(s[2]));
    wire cout3;
    full_adder add3(.a(a[3]), .b(b[3]), .cin(cout2), .cout(cout3), .s(s[3]));
    wire cout4;
    full_adder add4(.a(a[4]), .b(b[4]), .cin(cout3), .cout(cout4), .s(s[4]));
    wire cout5;
    full_adder add5(.a(a[5]), .b(b[5]), .cin(cout4), .cout(cout5), .s(s[5]));
    wire cout6;
    full_adder add6(.a(a[6]), .b(b[6]), .cin(cout5), .cout(cout6), .s(s[6]));
    wire cout7;
    full_adder add7(.a(a[7]), .b(b[7]), .cin(cout6), .cout(cout), .s(s[7]));
endmodule
