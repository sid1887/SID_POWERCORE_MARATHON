`timescale 1ns/1ps

module tb_comparator_2bit;

reg [1:0] A, B;
wire A_gt_B, A_lt_B, A_eq_B;

comparator_2bit uut (
    .A(A),
    .B(B),
    .A_gt_B(A_gt_B),
    .A_lt_B(A_lt_B),
    .A_eq_B(A_eq_B)
);

initial begin
    $display("A B | A>B A<B A=B");
    $display("-------------------");
    for (integer i = 0; i < 16; i = i+1) begin
        {A,B} = i;
        #5;
        $display("%b %b | %b   %b   %b", A, B, A_gt_B, A_lt_B, A_eq_B);
    end
    $finish;
end

endmodule
