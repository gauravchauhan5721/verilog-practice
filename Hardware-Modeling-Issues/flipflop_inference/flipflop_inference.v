module flipflop_inference (
    input clock,
    input A,
    input B,
    output reg f1,
    output reg f2
);
    always @(posedge clock)
    begin
        f1 <= ~(A & B);
        f2 <= f1 ^ f2;
    end
endmodule