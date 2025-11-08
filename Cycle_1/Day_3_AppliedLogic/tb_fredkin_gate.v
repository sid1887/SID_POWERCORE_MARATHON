`timescale 1ns/1ps

module tb_fredkin_gate;

reg A,B,C;
wire Q1, Q2;

fredkin_gate uut (.A(A), .B(B), .C(C), .Q1(Q1), .Q2(Q2));

initial begin
  $display("A B C | Q1 Q2");
  $display("--------------");
  for (integer i = 0; i <= 8; i = i+1) begin
    {A,B,C} = i;
    #5;
    $display("%b %b %b | %b %b", A, B, C, Q1, Q2);
  end
  $finish;
end

endmodule
