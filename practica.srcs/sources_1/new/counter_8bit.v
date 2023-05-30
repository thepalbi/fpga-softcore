`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2023 08:20:07 PM
// Design Name: 
// Module Name: counter_8bit
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
module counter_8bit(clk, reset_signal, reset_value, out);
    input clk, reset_signal;
    input [7:0] reset_value;
    //
    // PREGUNTA:
    // porq no funca si hago reg en la linea de abajo?
    //
    output reg [7:0] out;
    
    always @ (posedge clk, posedge reset_signal) begin
        if (reset_signal)
            // if reset changes, zero out the value
            // async reset
            out <= reset_value;
        else
            // else normal counter functionality
            out <= out + 8'd1;
    end
endmodule
