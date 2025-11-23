`timescale 1ns/1ps

module tb_peres_gate;
reg a,b,c;
wire p,q,r;

peres_gate uut (.a(a), .b(b), .c(c), .p(p), .q(q), .r(r));

initial begin
$display("a b c | p q r");
for (integer i = 0; i <= 8; i = i+1) begin
{a,b,c} = i;

#5;
$display("%b, %b, %b,   %b, %b, %b", a, b, c, p, q, r);
end
$finish;
end
endmodule
