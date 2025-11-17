`timescale 1ns/1ps
module tb_shift_register;

reg clk, rst, load;
reg [1:0] mode;
reg [7:0] data_in;
wire [7:0] q;

shift_register #(.WIDTH(8)) dut (
    .clk(clk), .rst(rst), .load(load),
    .mode(mode), .data_in(data_in), .q(q)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("shift_reg.vcd");
    $dumpvars(0, tb_shift_register);

    clk=0; rst=1; load=0; mode=0; data_in=0;
    #12 rst=0;

    // load data
    load=1; data_in=8'b10110011; #10; load=0;

    // left shift
    mode=2'b01; #50;

    // right shift
    mode=2'b10; #50;

    // hold
    mode=2'b00; #20;

    $finish;
end

endmodule
