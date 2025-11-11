module hadamard_gate(input wire q_in, output real q0, output real q1);
    // Represent |0⟩ and |1⟩ amplitudes
    always @(*) begin
        if (q_in == 0) begin
            q0 = 0.707;  // 1/sqrt(2)
            q1 = 0.707;
        end else begin
            q0 = 0.707;
            q1 = -0.707;
        end
    end
endmodule
