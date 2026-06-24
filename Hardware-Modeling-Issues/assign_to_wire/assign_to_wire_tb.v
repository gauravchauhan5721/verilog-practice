module assign_to_wire_tb;
    reg A;
    reg B;
    reg C;
    wire f1;
    wire f2;

    assign_to_wire uut(
        .A(A),
        .B(B),
        .C(C),
        .f1(f1),
        .f2(f2)
    );

    initial begin
        $dumpfile("assign_to_wire_tb.vcd");
        $dumpvars(0, assign_to_wire_tb);
        // Test case 1
        A = 0; B = 0; C = 0;
        #10;
        $display("Test case 1: A=%b, B=%b, C=%b => f1=%b, f2=%b", A, B, C, f1, f2);

        // Test case 2
        A = 0; B = 0; C = 1;
        #10;
        $display("Test case 2: A=%b, B=%b, C=%b => f1=%b, f2=%b", A, B, C, f1, f2);

        // Test case 3
        A = 0; B = 1; C = 0;
        #10;
        $display("Test case 3: A=%b, B=%b, C=%b => f1=%b, f2=%b", A, B, C, f1, f2);

        // Test case 4
        A = 0; B = 1; C = 1;
        #10;
        $display("Test case 4: A=%b, B=%b, C=%b => f1=%b, f2=%b", A, B, C, f1, f2);

        // Test case 5
        A = 1; B = 0; C = 0;
        #10;
        $display("Test case 5: A=%b, B=%b, C=%b => f1=%b, f2=%b", A, B, C, f1, f2);

        // Test case 6
        A = 1; B = 0; C = 1;
        #10;
        $display("Test case 6: A=%b, B=%b, C=%b => f1=%b, f2=%b", A, B, C, f1, f2);

        // Test case 7
        A = 1; B = 1; C = 0;
        #10;
        $display("Test case 7: A=%b, B=%b, C=%b => f1=%b, f2=%b", A, B, C, f1, f2);

        // Test case 8
        A = 1; B = 1; C = 1;
        #10;
        $display("Test case 8: A=%b, B=%b, C=%b => f1=%b, f2=%b", A, B, C, f1, f2);
    end
endmodule