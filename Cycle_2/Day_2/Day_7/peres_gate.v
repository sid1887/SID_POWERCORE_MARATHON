module peres_gate(
    input wire a,b,c,
    output wire p,q,r
);
assign p = a;
assign q = a ^ b;
assign r = (a & b) ^ c;
endmodule
