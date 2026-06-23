module practice1 (
    input A,
    input B,
    input clk,
    output Y
);
    wire w;
    reg r;

    assign w = A & B;
    always @(posedge clk) begin
        r = A;
    end

    assign Y = w | r;
    
endmodule