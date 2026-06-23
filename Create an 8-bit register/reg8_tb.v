`timescale 1ns / 1ps

module reg8_tb;
reg clk;
reg [7:0] D;
wire [7:0] Q;
reg8 uut(
    .clk(clk),
    .D(D),
    .Q(Q)
);
always #5 clk = ~clk;
initial begin

    $dumpfile("reg8.vcd");
    $dumpvars(0,reg8_tb);

    clk = 0;

    D = 8'b00000000;
    #10;

    D = 8'b11111111;
    #10;

    D = 8'b10101010;
    #10;

    D = 8'b01010101;
    #10;

    $finish;
    
end

endmodule