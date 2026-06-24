`timescale 1ns/1ps

module latch_inference_tb;

reg data;
reg load;

wire d_out;

latch_inference uut(
    .data(data),
    .load(load),
    .d_out(d_out)
);

initial begin

    $dumpfile("latch_inference.vcd");
    $dumpvars(0, latch_inference_tb);

    // Case 1: Latch open
    load = 0;
    data = 0;
    #10;

    data = 1;
    #10;

    // Case 2: Latch closed
    load = 1;
    data = 0;
    #10;

    data = 1;
    #10;

    // Case 3: Open latch again
    load = 0;
    data = 0;
    #10;

    data = 1;
    #10;

    $finish;

end

endmodule