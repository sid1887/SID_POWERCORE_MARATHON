module shift_register #(
    parameter WIDTH = 8
)(
    input wire clk,
    input wire rst,
    input wire load,
    input wire [1:0] mode,   // 00 = hold, 01 = left shift, 10 = right shift
    input wire [WIDTH-1:0] data_in,
    output reg [WIDTH-1:0] q
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 0;

    else if (load)
        q <= data_in;

    else begin
        case (mode)
            2'b00: q <= q;                  // hold
            2'b01: q <= {q[WIDTH-2:0], 1'b0}; // left shift
            2'b10: q <= {1'b0, q[WIDTH-1:1]}; // right shift
            default: q <= q;
        endcase
    end
end

endmodule
