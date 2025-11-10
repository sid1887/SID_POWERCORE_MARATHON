module T_D_flipflop(
    input wire clk, rst, mode,
    output reg Q
);

always @(posedge clk or posedge rst) begin
if (rst)
Q<=0;
else if (mode == 0) // acting as T-flipflop
Q <= ~Q;
else if (mode == 1) // acting as D-flipflop
Q <= Q;
end
endmodule
