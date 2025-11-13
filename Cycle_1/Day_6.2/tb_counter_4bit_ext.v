`timescale 1ns/1ps

module tb_counter_4bit_ext;

reg clk, rst, mode, enable;
wire [3:0] count;
wire terminal_count;

counter_4bit_ext uut (
    .clk(clk),
    .rst(rst),
    .enable(enable),
    .mode(mode),
    .count(count),
    .terminal_count(terminal_count)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("counter_4bit_ext.vcd");
    $dumpvars(0, tb_counter_4bit_ext);

    clk = 0; rst = 1; enable = 0; mode = 0;
    #10;
    rst = 0;

    // Test count up
    enable = 1; mode = 0;
    #80;

    enable = 0;
    #20;

    // Test count down
    enable = 1; mode = 1;
    #80;

    rst = 1;
    #20;
    rst = 0;

    #100;
    $finish;
end

initial $monitor("t=%0t | en=%b | mode=%b | count=%b | tc=%b", $time, enable, mode, count, terminal_count);

endmodule
