module reduction_ops (
    input [3:0] a,
    output not_a,
    output or_all,
    output and_all,
    output xor_out,
    output nor_out,
    output nand_out,
    output xnor_out
);

assign not_a = ~a[0];
assign or_all = |a;
assign and_all = &a;
assign xor_out = ^a;    
assign nor_out = ~(|a);
assign nand_out = ~(&a);
assign xnor_out = ~(^a);
    
endmodule