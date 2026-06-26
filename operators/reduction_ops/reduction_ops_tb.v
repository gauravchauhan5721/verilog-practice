module reduction_ops_tb;
    reg [3:0] a;
    wire not_a;
    wire or_all;
    wire and_all;
    wire xor_out;
    wire nor_out;
    wire nand_out;
    wire xnor_out;

reduction_ops uut(
        .a(a),
        .not_a(not_a),
        .or_all(or_all),
        .and_all(and_all),
        .xor_out(xor_out),
        .nor_out(nor_out),
        .nand_out(nand_out),
        .xnor_out(xnor_out)
    );

    initial begin
        $dumpfile("reduction_ops_tb.vcd");
        $dumpvars(0, reduction_ops_tb);

        // Test case 1: a = 4'b1100
        a = 4'b1100;
        #10;
        $display("Test case 1: a = %b", a);
        $display("not_a: %b, or_all: %b, and_all: %b, xor_out: %b, nor_out: %b, nand_out: %b, xnor_out: %b", not_a, or_all, and_all, xor_out, nor_out, nand_out, xnor_out);

        // Test case 2: a = 4'b0110
        a = 4'b0110;
        #10;
        $display("Test case 2: a = %b", a);
        $display("not_a: %b, or_all: %b, and_all: %b, xor_out: %b, nor_out: %b, nand_out: %b, xnor_out: %b", not_a, or_all, and_all, xor_out, nor_out, nand_out, xnor_out);

        // Test case 3: a = 4'b1111
        a = 4'b1111;
        #10;
        $display("Test case 3: a = %b", a);
        $display("not_a: %b, or_all: %b, and_all: %b, xor_out: %b, nor_out: %b, nand_out: %b, xnor_out: %b", not_a, or_all, and_all, xor_out, nor_out, nand_out, xnor_out);

        // Test case 4: a = 4'b0001
        a = 4'b0001;
        #10;
        $display("Test case 4: a = %b", a);
        $display("not_a: %b, or_all: %b, and_all: %b, xor_out: %b, nor_out: %b, nand_out: %b, xnor_out: %b", not_a, or_all, and_all, xor_out, nor_out, nand_out, xnor_out);
    $finish;
    end
endmodule