module fredkin_gate(
    input wire A,B,C,
    output wire Q1, Q2
);

assign Q1 = (A & C) | (~A & B);
assign Q2 = (A & B) | (~A & C);
endmodule
