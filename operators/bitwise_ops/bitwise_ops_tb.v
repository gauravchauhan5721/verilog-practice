module bitwise_ops_tb;
    reg [3:0] a;
    reg [3:0] b;
    wire [3:0] not_a;
    wire [3:0] and_out;
    wire [3:0] or_out;
    wire [3:0] xnor_out;
    wire [3:0] xor_out;

    bitwise_ops uut (
        .a(a),
        .b(b),
        .not_a(not_a),
        .and_out(and_out),
        .or_out(or_out),
        .xnor_out(xnor_out),
        .xor_out(xor_out)
    );

    initial begin
        $dumpfile("bitwise_ops_tb.vcd");
        $dumpvars(0, bitwise_ops_tb);

        // Test case 1: a = 4'b1100, b = 4'b1010
        a = 4'b1100; b = 4'b1010;
        #10;
        $display("Test case 1: a = %b, b = %b", a, b);
        $display("not_a: %b, and_out: %b, or_out: %b, xnor_out: %b, xor_out: %b", not_a, and_out, or_out, xnor_out, xor_out);

        // Test case 2: a = 4'b0110, b = 4'b0011
        a = 4'b0110; b = 4'b0011;
        #10;
        $display("Test case 2: a = %b, b = %b", a, b);
        $display("not_a: %b, and_out: %b, or_out: %b, xnor_out: %b, xor_out: %b", not_a, and_out, or_out, xnor_out, xor_out);

        // Test case 3: a = 4'b1111, b = 4'b0000
        a = 4'b1111; b = 4'b0000;
        #10;
        $display("Test case 3: a = %b, b = %b", a, b);
        $display("not_a: %b, and_out: %b, or_out: %b, xnor_out: %b, xor_out: %b", not_a, and_out, or_out, xnor_out, xor_out);

        // Test case 4: a = 4'b0001, b = 4'b0010
        a = 4'b0001; b = 4'b0010;
        #10;
        $display("Test case 4: a = %b, b = %b", a, b);
        $display("not_a: %b, and_out: %b, or_out: %b, xnor_out: %b, xor_out: %b", not_a, and_out, or_out, xnor_out, xor_out);
        $finish;
    end
endmodule