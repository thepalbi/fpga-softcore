`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2023 10:43:00 PM
// Design Name: 
// Module Name: mux_16_ctrl_4
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


module mux_16_ctrl_4(in, ctrl, out);
    input [15:0] in;
    input [3:0] ctrl;
    output out;
    reg out;
    
    always @ (*)
    begin
      case(ctrl)
        // hay algun tipo de macro o algo para generar aumaticamente este tipo de codigo, o se puede indexar un array con un valor?
        4'd0: out = in[0];
        4'd1: out = in[1];
        4'd2: out = in[2];
        4'd3: out = in[3];
        4'd4: out = in[4];
        4'd5: out = in[5];
        4'd6: out = in[6];
        4'd7: out = in[7];
        4'd8: out = in[8];
        4'd9: out = in[9];
        4'd10: out = in[10];
        4'd11: out = in[11];
        4'd12: out = in[12];
        4'd13: out = in[13];
        4'd14: out = in[14];
        4'd15: out = in[15];
      endcase      
    end
endmodule
