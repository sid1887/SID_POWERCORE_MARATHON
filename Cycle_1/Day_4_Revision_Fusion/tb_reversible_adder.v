// tb_reversible_full_adder.v
`timescale 1ns/1ps
module tb_reversible_full_adder;
    reg A, B, Cin;
    wire A_out, B_out, Sum, Cout;

    reversible_full_adder uut (
        .A(A), .B(B), .Cin(Cin),
        .A_out(A_out), .B_out(B_out),
        .Sum(Sum), .Cout(Cout)
    );

    initial begin
        $display("A B Cin | A_out B_out | Sum Cout");
        $display("-------------------------------");
        for (integer i = 0; i < 8; i = i + 1) begin
            {A, B, Cin} = i;
            #1;
            $display("%b %b  %b  |   %b     %b  |  %b   %b", A, B, Cin, A_out, B_out, Sum, Cout);
        end
        $finish;
    end
endmodule

