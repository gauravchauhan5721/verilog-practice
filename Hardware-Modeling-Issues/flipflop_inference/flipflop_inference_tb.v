module flipflop_inference_tb;

reg clock;
reg A;  
reg B;
wire f1;
wire f2;

flipflop_inference uut(
    .clock(clock),
    .A(A),
    .B(B),
    .f1(f1),
    .f2(f2)
);

initial begin
    $dumpfile("flipflop_inference_tb.vcd");
    $dumpvars(0, flipflop_inference_tb);
    clock = 0;
    A = 0; B = 0;
    #10;
    $display("Test case 1: A=%b, B=%b => f1=%b, f2=%b", A, B, f1, f2);

    A = 0; B = 1;
    #10;
    $display("Test case 2: A=%b, B=%b => f1=%b, f2=%b", A, B, f1, f2);

    A = 1; B = 0;
    #10;
    $display("Test case 3: A=%b, B=%b => f1=%b, f2=%b", A, B, f1, f2);

    A = 1; B = 1;
    #10;
    $display("Test case 4: A=%b, B=%b => f1=%b, f2=%b", A, B, f1, f2);
end

endmodule