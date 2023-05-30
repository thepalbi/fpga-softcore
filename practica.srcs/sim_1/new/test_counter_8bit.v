`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2023 08:27:11 PM
// Design Name: 
// Module Name: test_counter_8bit
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

`timescale 1ns / 1ps

module test_counter_8bit();
    reg clk, reset_signal;
    reg [7:0] reset_value;
    wire [7:0] out;
    
    counter_8bit uut(
        .clk(clk),
        .reset_signal(reset_signal),
        .reset_value(reset_value),
        .out(out)
    );
        
    // this runs first
    initial begin
        clk = 0;
        reset_signal = 1;
        reset_value = 8'hfa;
        # 10;
        reset_signal = 0;
    end
    
    // https://support.xilinx.com/s/question/0D52E00006hpOINSA2/how-to-feed-a-clock-signal-to-simulate-a-module?language=en_US
    // clk
    always #5 clk = ~clk;

endmodule
