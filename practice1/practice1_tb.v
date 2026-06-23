`timescale 1ns/1ps

module practice1_tb;

reg A;
reg B;
reg clk;

wire Y;

practice1 uut(
    .A(A),
    .B(B),
    .clk(clk),
    .Y(Y)
);

always #5 clk = ~clk;

initial
begin

    $dumpfile("practice1.vcd");
    $dumpvars(0,practice1_tb);

    clk = 0;

    A = 0; B = 0;
    #10;

    A = 1; B = 0;
    #10;

    A = 1; B = 1;
    #10;

    A = 0; B = 1;
    #10;

    $finish;

end

endmodule