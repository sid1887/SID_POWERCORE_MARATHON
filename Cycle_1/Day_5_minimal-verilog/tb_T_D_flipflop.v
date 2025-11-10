`timescale 1ns/1ps

module tb_T_D_flipflop;
reg clk, rst, mode;
wire Q;

T_D_flipflop uut (.clk(clk), .rst(rst), .mode(mode), .Q(Q));

always #5 clk = ~clk;

initial begin
$dumpfile("T_D_flipflop.vcd");
$dumpvars(0,tb_T_D_flipflop);
clk = 0; rst=1;
#10;
clk = 1; rst = 0; mode = 0;
#50;
mode = 1;
#20;
mode = 0;
#20;
mode = 1;
#20;

$finish;
end
endmodule
