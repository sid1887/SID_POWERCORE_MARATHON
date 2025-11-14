`timescale 1ns/1ps
module tb_pwm_gen;
parameter WIDTH = 8;

reg clk, rst, enable;
reg [WIDTH-1:0] duty;
wire pwm;
wire [WIDTH-1:0] counter_val;

pwm_gen #(.WIDTH(WIDTH)) uut (
    .clk(clk),
    .rst(rst),
    .enable(enable),
    .duty(duty),
    .pwm(pwm)
);

// Capture internal counter for monitoring
assign counter_val = uut.counter;

always #5 clk = ~clk;

initial begin
    $dumpfile("pwm_gen.vcd");
    $dumpvars(0, tb_pwm_gen);

    clk = 0; rst = 1; enable = 0; duty = 0;
    #20;
    rst = 0;
    #20;

    enable = 1;
    duty = 8'd64;
    #1000;

    duty = 8'd128;
    #1000;

    duty = 8'd200;
    #1000;

    enable = 0;
    #200;
    enable = 1;
    #200;

    $finish;
end

initial $monitor("t=%0t | duty=%0d | pwm=%b | counter=%0d", $time, duty, pwm, counter_val);

endmodule
