`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2023 12:10:37 AM
// Design Name: 
// Module Name: test_full_adder_8bit
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

`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module test_full_adder_8bit();
    reg [7:0] a, b;
    wire [7:0] s;
    reg cin;
    wire cout;
    
    full_adder_8bit UUT(.a(a), .b(b), .cin(cin), .cout(cout), .s(s));
    
    initial
        begin
            cin = 0;
        
            a = 8'd4;
            b = 8'd4;
            // assert 8
            
            #10;
            
            b = 8'd10;
            // assert 10
            
            #10
            
            cin = 1;
            // assert 11
        end
endmodule
