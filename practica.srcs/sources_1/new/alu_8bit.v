`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2023 09:12:57 PM
// Design Name: 
// Module Name: alu_8bit
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


module alu_8bit(
    a,
    b,
    op,
    out,
    zero,
    negative,
    carry,
    overflow,
    parity
    );
    input [7:0] a, b;
    /*
    0 -> and
    1 -> or
    2 -> not, toma primer operando solo
    3 -> xor
    4 -> suma
    5 -> resta
    6 -> << logico
    7 -> >> logico
    8 -> << arim
    9 -> >> arim
    */
    input [3:0] op;
    output reg [7:0] out;
    output zero, negative, parity, overflow, carry;
    
    
    // combinatory flags
    assign zero = (out == 8'd0) ? 1 : 0;
    // operadores en ca2, bit mas significativo es signo
    assign negative = out[7];
    // https://en.wikipedia.org/wiki/Parity_function
    assign parity = ^out;
    
    wire overflow_add, overflow_sub;
    
    assign overflow_add = 
        (a[7] ~^ b[7]) // si los dos operando tienen el mismo signo
        & (b[7] != out[7]); // y la salida tiene signo diferente, dio la vuelta
        
    assign overflow_sub = 
        (~a[7] & b[7] & out[7]) |
        (a[7] & ~b[7] & ~out[7]);
    
    assign overflow = overflow_add | overflow_sub;
    
    assign carry = t_carry | 0;
    
    // PREGUNTA: que hacemo con el carry deivid?
    reg t_carry;
    
    always @ (*) begin
        case (op)
            4'd0: out <= a & b;
            4'd1: out <= a | b;
            4'd2: out <= ~a;
            4'd3: out <= a ^ b;
            4'd4: begin
                {t_carry, out} <= a + b;
            end
            4'd5: out <= a - b;
            4'd6: out <= a << b;
            4'd7: out <= a >> b;
            4'd8: out <= a <<< b;
            4'd9: out <= a >>> b;
            default: out <= 8'd0;
        endcase
        
        
    end
endmodule
