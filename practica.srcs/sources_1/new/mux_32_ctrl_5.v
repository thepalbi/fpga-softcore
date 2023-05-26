`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2023 11:13:20 PM
// Design Name: 
// Module Name: mux_32_ctrl_5
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


module mux_32_ctrl_5(in, ctrl, out);
    input [31:0] in;
    input [4:0] ctrl;
    output out;
    reg out;
    
    wire lower;
    wire upper;
    
    mux_16_ctrl_4 mux_lower(in[15:0], ctrl[3:0], lower);
    mux_16_ctrl_4 mux_upper(in[31:16], ctrl[3:0], upper);
    
    always @ (*) begin
        // if the 4-th bit is set, set as out the upper half
        // else the lower
        if (ctrl[4])
            out <= upper;
        else
           out <= lower;
    end
endmodule
