// tb_comb.v — Testbench for combinational ALU
`timescale 1ns/1ps
module tb_comb;

  reg [3:0] a;
  reg [3:0] b;
  reg [2:0] op;
  wire [3:0] result;
  wire carry_out;
  wire zero;

  alu_comb dut (.a(a), .b(b), .op(op), .result(result), .carry_out(carry_out), .zero(zero));

  initial begin
    $dumpfile("alu_comb.vcd");
    $dumpvars(0, tb_comb);

    $display("\n==== COMBINATIONAL ALU TEST ====\n");
    $display("Time\ta\tb\top\tresult\tcarry\tzero");
    $monitor("%0t\t%b\t%b\t%b\t%b\t%b\t%b", $time, a, b, op, result, carry_out, zero);

    a=4'b0101; b=4'b0011; op=3'b000; #10;
    a=4'b1000; b=4'b0011; op=3'b001; #10;
    a=4'b1100; b=4'b1010; op=3'b010; #10;
    a=4'b1100; b=4'b1010; op=3'b011; #10;
    a=4'b1100; b=4'b1010; op=3'b100; #10;
    a=4'b0000; b=4'b0101; op=3'b101; #10;
    a=4'b0000; b=4'b0101; op=3'b110; #10;
    a=4'b0000; b=4'b1111; op=3'b111; #10;

    $display("\n==== TEST COMPLETE ====\n");
    $finish;
  end
endmodule
