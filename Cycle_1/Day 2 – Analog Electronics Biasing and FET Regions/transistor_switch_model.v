module transistor_switch(input base, output reg led);
  always @(*) begin
    if (base)
      led = 1;  // Saturation → ON
    else
      led = 0;  // Cutoff → OFF
  end
endmodule
