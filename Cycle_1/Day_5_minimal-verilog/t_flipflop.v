module t_flipflop(
    input wire clk, rst, T,
    output reg Q
);

always @(posedge clk or posedge rst) begin
if (rst)
            Q <= 0;
        else if (T)
            Q <= ~Q;   // toggle when T=1
        else
            Q <= Q;    // hold
    end
endmodule
