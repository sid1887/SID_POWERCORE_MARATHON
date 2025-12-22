module matrix_demo1;
reg [7:0] A [1:0][1:0];

initial begin
A[0][0] = 2;
A[0][1] = 5;
A[1][0] = 9;
A[0][1] = 15;
end
endmodule

module matrix_demo2;
reg [7:0] B [1:0][2:0];

initial begin
B[0][0] = 2;
B[0][1] = 6;
B[0][2] = 18;
B[1][0] = 25;
B[1][1] = 3;
B[1][2] = 12;
end
endmodule
