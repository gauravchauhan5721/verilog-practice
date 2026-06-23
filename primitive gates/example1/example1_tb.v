module example1_tb;

reg in, ctrl;
wire out1, out2, out3, out4;

tristate_example DUT(
    .in(in),
    .ctrl(ctrl),
    .out1(out1),
    .out2(out2),
    .out3(out3),
    .out4(out4)
);

initial begin
    $dumpfile("example1_tb.vcd");
    $dumpvars(0, example1_tb);
    $monitor("t=%0t in=%b ctrl=%b out1=%b out2=%b out3=%b out4=%b",
              $time, in, ctrl, out1, out2, out3, out4);

    in = 0; ctrl = 0; #10;
    in = 1; ctrl = 0; #10;
    in = 0; ctrl = 1; #10;
    in = 1; ctrl = 1; #10;

    $finish;
end

endmodule