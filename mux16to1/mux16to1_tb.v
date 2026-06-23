module muxtest;

reg [15:0] A;
reg [3:0] S;
wire F;

mux16to1 M (
    .in(A),
    .sel(S),
    .out(F)
);

initial begin
    $dumpfile("mux16to1.vcd");
    $dumpvars(0, muxtest);
    $monitor("time=%0t in=%h sel=%h out=%h",
             $time, A, S, F);

    #5 A  = 16'h3F0A; S = 4'h0;
    
    #5 S = 4'h1;
    #5 S = 4'h6;
    #5 S = 4'hc;

    #5 $finish;
end

endmodule