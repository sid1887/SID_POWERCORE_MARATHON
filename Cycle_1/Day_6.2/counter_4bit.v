module counter_4bit(
    input wire clk,
    input wire rst,
    input wire mode,          // 0=Up, 1=Down
    output reg [3:0] count
);
always @(posedge clk or posedge rst) begin
    if (rst)
        count <= 4'b0000;
    else begin
        if (mode == 1'b0)           // Up
            count <= count + 1'b1;
        else                        // Down
            count <= count - 1'b1;
    end
end
endmodule
