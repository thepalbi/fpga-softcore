`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2023 09:20:55 PM
// Design Name: 
// Module Name: test_alu_8bit
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


module test_alu_8bit;
  reg [7:0] a, b;
  reg [3:0] op;
  wire [7:0] out;
  wire zero,
    negative,
    carry,
    overflow,
    parity;

  alu_8bit dut(
    .a(a),
    .b(b),
    .op(op),
    .out(out),
    .zero(zero),
    .negative(negative),
    .carry(carry),
    .overflow(overflow),
    .parity(parity)
   );

  initial begin
    // Prueba 1: Operación AND
    a = 8'b11001100;
    b = 8'b10101010;
    op = 4'b0000;
    #10;
    if (out !== 8'b10001000)
      $display("Error en la prueba 1");

    // Prueba 2: Operación SUMA
    a = 8'b01111111;
    b = 8'b00000001;
    op = 4'b0100;
    #10;
    if (out !== 8'b10000000)
      $display("Error en la prueba 2");

    // Prueba 3: Operación NOT
    a = 8'b00001111;
    b = 8'b11110000; // Valor de b no utilizado en esta operación
    op = 4'd2; // era 2
    #10;
    if (out !== 8'b11110000)
      $display("Error en la prueba 3");

    // Prueba 4: Operación DESPLAZAMIENTO IZQUIERDA LÓGICO
    a = 8'b00000110;
    b = 8'd1;
    op = 4'b0110;
    #10;
    if (out !== 8'b00001100)
      $display("Error en la prueba 4");
      
    // Prueba 5: resta
    a = 8'd1;
    b = 8'b11111111;
    op = 4'd5;
    #10;
    if (out !== 8'd2)
      $display("Error en la prueba resta");

    // Agrega más pruebas según sea necesario...

    $display("testbench execution done");
    $finish;
  end

endmodule