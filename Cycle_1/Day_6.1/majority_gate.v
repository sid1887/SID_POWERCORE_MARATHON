module majority_gate(
    input wire A,B,C,
    output wire result
);

assign result = (A & B) | (A & C) | (B & C);

endmodule
