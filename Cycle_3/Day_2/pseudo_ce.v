module pseudo_ce(
    input in, gain_ctrl,
    output out
);
assign out = gain_ctrl ? ~in : in;
endmodule
