`timescale 1ns/1ps

module tb_t_flipflop;
    reg clk, rst, T;
    wire Q;

    t_flipflop uut (.clk(clk), .rst(rst), .T(T), .Q(Q));

    always #5 clk = ~clk; // 100 MHz clock

    initial begin
        $dumpfile("tff.vcd"); $dumpvars(0, tb_t_flipflop);
        clk=0; rst=1; T=0;
        #10 rst=0; T=1;
        #100 T=0;
        #40 T=1;
        #60 $finish;
    end
endmodule
