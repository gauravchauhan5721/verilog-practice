module practice2_tb;
reg A, B, C, D, EN;
wire Y;
practice2 DUT (
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .EN(EN),
    .Y(Y)
);

initial begin
    $dumpfile("practice2_tb.vcd");
    $dumpvars(0, practice2_tb);
    // Test case 1
    A = 0; B = 0; C = 0; D = 0; EN = 1;
    #10;
    $display("Test case 1: A=%b, B=%b, C=%b, D=%b, EN=%b => Y=%b", A, B, C, D, EN, Y);

    // Test case 2
    A = 1; B = 0; C = 1; D = 0; EN = 1;
    #10;
    $display("Test case 2: A=%b, B=%b, C=%b, D=%b, EN=%b => Y=%b", A, B, C, D, EN, Y);

    // Test case 3
    A = 1; B = 1; C = 0; D = 1; EN = 1;
    #10;
    $display("Test case 3: A=%b, B=%b, C=%b, D=%b, EN=%b => Y=%b", A, B, C, D, EN, Y);

    // Test case 4
    A = 0; B = 1; C = 1; D = 1; EN = 0;
    #10;
    $display("Test case 4: A=%b, B=%b, C=%b, D=%b, EN=%b => Y=%b", A, B, C, D, EN, Y);

    // Test case 5
    A = 1; B = 1; C = 1; D = 1; EN = 1;
    #10;
    $display("Test case 5: A=%b, B=%b, C=%b, D=%b, EN=%b => Y=%b", A, B, C, D, EN, Y);

    $finish;

    end
    
endmodule