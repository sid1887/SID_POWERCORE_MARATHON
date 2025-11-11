module pauli_z(input wire q_in, output reg q_out, output reg phase);
    always @(*) begin
        q_out = q_in;
        phase = (q_in) ? 1'b1 : 1'b0; // 1 means negative phase
    end
endmodule
