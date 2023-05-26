`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2023 11:31:35 PM
// Design Name: 
// Module Name: test_mux_32_ctrl_5
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


module test_mux_32_ctrl_5();
    reg [31:0] a;
    reg [4:0] ctrl;
    wire out;
    
    mux_32_ctrl_5 UUT(a, ctrl, out);
    
    initial
        begin
            a = 32'h80000000;
            ctrl = 5'd31;
            
            #10; // out deberia ser 1
            
            a = 32'h70000000;
            ctrl = 5'd31;
            
            #10; // out deberia ser 0
            
            ctrl = 5'd30;
            
            #10; // out deberia ser 1
        end
endmodule
