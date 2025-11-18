`timescale 1ns/1ps

module tb_bidir_shifter;

reg  [3:0] data_in;
reg        dir;
wire [3:0] data_out;

bidir_shifter uut (
    .data_in(data_in),
    .dir(dir),
    .data_out(data_out)
);

initial begin
    $dumpfile("bidir_shifter.vcd");
    $dumpvars(0, tb_bidir_shifter);

    data_in = 4'b1010; dir = 1'b0;  #10; // left: expect 0100
    data_in = 4'b1010; dir = 1'b1;  #10; // right: expect 0101
    data_in = 4'b0001; dir = 1'b0;  #10; // left: expect 0010
    data_in = 4'b1000; dir = 1'b1;  #10; // right: expect 0100

    $finish;
end

initial begin
    $monitor("t=%0t | dir=%b | in=%b | out=%b",
              $time, dir, data_in, data_out);
end

endmodule
