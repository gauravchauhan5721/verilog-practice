module testbench;
    reg A,B,C,D,E,F;
    wire Y;
    example1 DUT (
        A,
        B,
        C,
        D,
        E,
        F,
        Y
    );
    initial begin
        $dumpfile("example1.vcd");
        $dumpvars(0,testbench);

        A = 0; B = 0; C = 0; D = 1; E = 0; F = 0;;
        #10;

        A = 1; B = 0; C = 1; D = 1; E = 0; F = 0;
        #10;

        A = 1;C = 0;
        #10;

        F = 1;
        #10;

        $finish;
    end
endmodule
