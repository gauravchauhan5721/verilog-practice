module logical_ops (
    input A,
    input B,
    input C,
    output Y1,
    output Y2,
    output Y3,
    output Y4,
    output Y5
);

wire Y1, Y2, Y3, Y4, Y5;

assign Y1 = A && B;
assign Y2 = A || B;
assign Y3 = !A;
assign Y4 = (A > B) || (C == 0);
assign Y5 = (A > B) && !(B > C);

endmodule