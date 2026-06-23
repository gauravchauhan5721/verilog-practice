module arithop;

integer A, B;

initial begin
    A = 10;
    B = 5;

    $display("A = %d, B = %d", A, B);
    $display("A + B = %d", A + B);
    $display("A - B = %d", A - B);
    $display("A * B = %d", A * B);
    $display("A / B = %d", A / B);
    $display("A % B = %d", A % B);

    $finish;
end
    
endmodule