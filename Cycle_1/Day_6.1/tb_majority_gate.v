`timescale 1ns/1ps

module tb_majority_gate;

    reg A,B,C;
    wire result;

    majority_gate uut (.A(A), .B(B), .C(C), .result(result));

    initial begin
        $display("A B C | result");
        $display("---------------");
        for (integer i = 0; i <= 8; i = i+1) begin
            {A,B,C} = i;
            #5;
            $display("%b %b %b | %b", A, B, C, result);
        end
        $finish;
    end

endmodule
