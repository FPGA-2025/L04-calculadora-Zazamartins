module calculadora(
  input   [7:0] entrada_A,
  input   [7:0] entrada_B,
  input   [2:0] codigo,
  output  [7:0] saida
);

  assign saida = (codigo == 3'b000) ? 8'b00000000 :  // Zerar
                 (codigo == 3'b001) ? entrada_A  :  // Mostrar A
                 (codigo == 3'b010) ? entrada_B  :  // Mostrar B
                 (codigo == 3'b011) ? (entrada_A + entrada_B) : // Somar
                 (codigo == 3'b100) ? (entrada_A - entrada_B) : // Subtrair
                 8'b00000000; // Operação inválida retorna ZERO

endmodule
