ï»¿// alu_comb.v â€” 4-bit combinational ALU
module alu_comb (
  input  [3:0] a,
  input  [3:0] b,
  input  [2:0] op,
  output reg [3:0] result,
  output reg carry_out,
  output reg zero
);

  reg [4:0] temp; // 5 bits to catch carry

  always @(*) begin
    temp = 5'b00000;
    carry_out = 0;
    case (op)
      3'b000: begin temp = a + b; result = temp[3:0]; carry_out = temp[4]; end
      3'b001: begin temp = a - b; result = temp[3:0]; carry_out = temp[4]; end
      3'b010: result = a & b;
      3'b011: result = a | b;
      3'b100: result = a ^ b;
      3'b101: result = b << 1;
      3'b110: result = b >> 1;
      3'b111: result = b;
      default: result = 4'b0000;
    endcase
    zero = (result == 4'b0000);
  end
endmodule
