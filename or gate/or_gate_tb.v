module or_gate_tb;

    // Inputs
    reg A;
    reg B;

    // Output
    wire Y;

    // Instantiate the OR gate
    or_gate uut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    // Test stimulus
    initial begin

        // Create waveform file
        $dumpfile("wave.vcd");
        $dumpvars(0, or_gate_tb);

        // Display heading
        $display("A B | Y");
        $monitor("%b %b | %b", A, B, Y);

        // Test all input combinations
        A = 0; B = 0;
        #10;

        A = 0; B = 1;
        #10;

        A = 1; B = 0;
        #10;

        A = 1; B = 1;
        #10;

        // End simulation
        $finish;

    end

endmodule