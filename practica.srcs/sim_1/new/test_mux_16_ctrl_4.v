`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2023 10:48:39 PM
// Design Name: 
// Module Name: test_mux_16_ctrl_4
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

module test_mux_16_ctrl_4();
    reg [15:0] a;
    reg [3:0] ctrl;
    wire out;
    
    mux_16_ctrl_4 UUT(a, ctrl, out);
    
    initial
        begin
            a = 16'h0000;
            ctrl = 4'd15;
            
            // out should be 0
            
            #10;
            
            a = 16'h8000;
            
            // out should be 1
            
            #10;
            
            a = 16'h7000;
            
            // out should be 0
            
            #10;
            
            ctrl = 4'd14;
            
            // out should be 1
        end
endmodule
