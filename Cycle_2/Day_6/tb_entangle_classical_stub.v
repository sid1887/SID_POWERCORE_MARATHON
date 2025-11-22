`timescale 1ns/1ps

module tb_entangle_classical_stub;

    reg  q0_in;
    reg  q1_in;
    wire q0_out;
    wire q1_out;

    entangle_classical_stub dut (
        .q0_in(q0_in),
        .q1_in(q1_in),
        .q0_out(q0_out),
        .q1_out(q1_out)
    );

    initial begin
        $display(" q0_in q1_in | q0_out q1_out ");
        $display("------------------------------");

        // Test all possible combinations
        for (integer i = 0; i < 4; i = i + 1) begin
            {q0_in, q1_in} = i[1:0];
            #5;
            $display("   %b     %b   |    %b      %b",
                q0_in, q1_in, q0_out, q1_out);
        end

        $finish;
    end

endmodule
