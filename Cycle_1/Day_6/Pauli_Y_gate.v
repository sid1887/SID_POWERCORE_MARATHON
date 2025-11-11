module pauli_y(input wire q_in, output reg q_logic, output reg [1:0] phase);
    // phase: 00 = normal, 01 = +i, 10 = -i
    always @(*) begin
        if (q_in == 0) begin
            q_logic = 1; phase = 2'b01;  // +i phase
        end else begin
            q_logic = 0; phase = 2'b10;  // -i phase
        end
    end
endmodule
