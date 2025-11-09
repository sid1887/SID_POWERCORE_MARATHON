// reversible_full_adder.v
// Reversible-minded 1-bit full adder: preserves A and B as outputs so mapping is one-to-one.

module reversible_full_adder(
    input  wire A,
    input  wire B,
    input  wire Cin,
    output wire A_out,
    output wire B_out,
    output wire Sum,
    output wire Cout
);
    // preserve inputs
    assign A_out = A;
    assign B_out = B;

    // sum and carry (classical)
    assign Sum  = A ^ B ^ Cin;
    assign Cout = (A & B) | (A & Cin) | (B & Cin);
endmodule

