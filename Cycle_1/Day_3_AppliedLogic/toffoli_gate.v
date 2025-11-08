module toffoli_gate(
    input wire A,B,C,
    output wire Q
);
assign Q = C ^ (A & B);
endmodule
