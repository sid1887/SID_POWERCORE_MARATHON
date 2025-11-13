module bcd_counter_4bit(
    input wire clk, rst, enable, mode,
    output reg [3:0] count,
    output reg terminal_count
);

always @(posedge clk or posedge rst) begin
    if(rst) begin
        count <= 0;
        terminal_count <= 0;
    end
    else if (enable) begin
        terminal_count <= 1'b0;
        if(mode == 0) begin
            // Count up
            if(count == 4'b1001) begin
                count <= 4'b0000;
                terminal_count <= 1;
            end
            else
                count <= count + 1;
        end
        else begin
            // Count down
            if(count == 4'b0000) begin
                count <= 4'b1001;
                terminal_count <= 1;
            end
            else
                count <= count - 1;
        end
    end
end

endmodule
