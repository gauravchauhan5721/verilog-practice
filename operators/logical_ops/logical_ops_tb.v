module logical_ops_tb;

reg A, B, C;
wire Y1, Y2, Y3, Y4, Y5;

logical_ops uut(
    .A(A),
    .B(B),
    .C(C),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5)
);

initial begin

    $display("Starting logical operations testbench...");
    $dumpfile("logical_ops_tb.vcd");
    $dumpvars(0, logical_ops_tb);
    // Test case 1
    A = 1; B = 0; C = 0;
    #10;
    $display("Test case 1: A=%b, B=%b, C=%b => Y1=%b, Y2=%b, Y3=%b, Y4=%b, Y5=%b", A, B, C, Y1, Y2, Y3, Y4, Y5);

    // Test case 2
    A = 0; B = 1; C = 1;
    #10;
    $display("Test case 2: A=%b, B=%b, C=%b => Y1=%b, Y2=%b, Y3=%b, Y4=%b, Y5=%b", A, B, C, Y1, Y2, Y3, Y4, Y5);

    // Test case 3
    A = 1; B = 1; C = 0;
    #10;
    $display("Test case 3: A=%b, B=%b, C=%b => Y1=%b, Y2=%b, Y3=%b, Y4=%b, Y5=%b", A, B, C, Y1, Y2, Y3, Y4, Y5);

    // Test case 4
    A = 0; B = 0; C = 1;
    #10;
    $display("Test case 4: A=%b, B=%b, C=%b => Y1=%b, Y2=%b, Y3=%b, Y4=%b, Y5=%b", A, B, C, Y1, Y2, Y3, Y4, Y5);

    $finish;
end

endmodule