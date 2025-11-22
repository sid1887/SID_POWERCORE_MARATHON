// entangle_classical_stub.v
// Classical analogue of the H + CNOT entanglement circuit
// q0_in -> "superposition" placeholder (represented as toggling input)
// q1_in -> partner qubit
// Output: q0_out, q1_out (correlated pair)

module entangle_classical_stub (
    input  wire q0_in,     // placeholder for superposition-like input
    input  wire q1_in,     // partner qubit
    output wire q0_out,    // propagated
    output wire q1_out     // CNOT applied
);

    // Step 1: Pass q0 forward (represents the H|0> state "chosen" outcome)
    assign q0_out = q0_in;

    // Step 2: Classical CNOT equivalent
    // Flip q1 when q0_in = 1
    assign q1_out = q1_in ^ q0_in;

endmodule
