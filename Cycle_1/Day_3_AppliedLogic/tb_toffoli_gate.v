`timescale 1ns/1ps

module tb_toffoli_gate;

reg A,B,C;
wire Q;

toffoli_gate uut (.A(A), .B(B), .C(C), .Q(Q));
initial begin
        $display("A B C | Q");
        $display("------------");
        for (integer i = 0; i<=8; i = i+1) begin
        {A,B,C} = i;
        #5;
        $display("%b %b %b | %b", A, B, C, Q);
        end
        $finish;
    end
endmodule
