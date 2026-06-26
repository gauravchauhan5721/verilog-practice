module relatonal_ops_tb;
    reg [3:0] a;
    reg [3:0] b;
    wire eq;
    wire neq;
    wire lt;
    wire le;
    wire gt;
    wire ge;

relational_ops uut (
    .a(a),
    .b(b),
    .eq(eq),
    .neq(neq),
    .lt(lt),
    .le(le),
    .gt(gt),
    .ge(ge)
);

initial begin

    $dumpfile("relational_ops_tb.vcd");
    $dumpvars(0, relatonal_ops_tb);
    // Test case 1: a = 4, b = 4
    a = 4; b = 4;
    #10;
    $display("Test case 1: a = %d, b = %d", a, b);
    $display("eq: %b, neq: %b, lt: %b, le: %b, gt: %b, ge: %b", eq, neq, lt, le, gt, ge);

    // Test case 2: a = 3, b = 5
    a = 3; b = 5;
    #10;
    $display("Test case 2: a = %d, b = %d", a, b);
    $display("eq: %b, neq: %b, lt: %b, le: %b, gt: %b, ge: %b", eq, neq, lt, le, gt, ge);

    // Test case 3: a = 6, b = 2
    a = 6; b = 2;
    #10;
    $display("Test case 3: a = %d, b = %d", a, b);
    $display("eq: %b, neq: %b, lt: %b, le: %b, gt: %b, ge: %b", eq, neq, lt, le, gt, ge);

    // Test case 4: a = 0, b = 0
    a = 0; b = 0;
    #10;
    $display("Test case 4: a = %d, b = %d", a, b);
    $display("eq: %b, neq: %b, lt: %b, le: %b, gt: %b, ge: %b", eq, neq, lt, le, gt, ge);

    // Test case 5: a = 7, b = 7
    a = 7; b = 7;
    #10;
    $display("Test case 5: a = %d, b = %d", a, b);
    $display("eq: %b, neq: %b, lt: %b, le: %b, gt: %b, ge: %b", eq, neq,
    lt, le, gt, ge);
    $finish;
end

endmodule