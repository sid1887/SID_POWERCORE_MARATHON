module bidir_shifter (
    input  wire [3:0] data_in,
    input  wire       dir,       // 0 = left, 1 = right
    output reg  [3:0] data_out
);

always @(*) begin
    if (dir == 1'b0)
        data_out = data_in << 1;   // logical left shift
    else
        data_out = data_in >> 1;   // logical right shift
end

endmodule
