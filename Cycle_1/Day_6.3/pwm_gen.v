`timescale 1ns/1ps
module pwm_gen #(
    parameter WIDTH = 8
)(
    input  wire                 clk,
    input  wire                 rst,
    input  wire                 enable,
    input  wire [WIDTH-1:0]     duty,   // 0..2^WIDTH-1
    output reg                  pwm
);

reg [WIDTH-1:0] counter;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        counter <= {WIDTH{1'b0}};
        pwm     <= 1'b0;
    end else begin
        if (!enable) begin
            counter <= counter; // hold
            pwm <= 1'b0;
        end else begin
            // increment counter
            counter <= counter + 1'b1;

            // simple compare: ON when counter < duty
            if (counter < duty)
                pwm <= 1'b1;
            else
                pwm <= 1'b0;
        end
    end
end

endmodule
