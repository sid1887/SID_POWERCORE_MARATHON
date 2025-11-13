`timescale 1ns/1ps
module tb_counter_4bit;
reg clk, rst, mode;
wire [3:0] count;

counter_4bit uut (.clk(clk), .rst(rst), .mode(mode), .count(count));

always #5 clk = ~clk;   // 10 ns clock period

initial begin
  $dumpfile("counter_4bit.vcd");
  $dumpvars(0, tb_counter_4bit);
  clk=0; rst=1; mode=0;
  #12 rst=0;
  #100 mode=1;        // switch to down-count
  #80  mode=0;        // back to up
  #60  $finish;
end

initial $monitor("t=%0t | mode=%b | count=%b", $time, mode, count);
endmodule
