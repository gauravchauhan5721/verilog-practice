module relational_ops (
    input [3:0] a,
    input [3:0] b,
    output eq,
    output neq,
    output lt,
    output le,
    output gt,
    output ge
);

assign eq = (a == b);
assign neq = (a != b);
assign lt = (a < b);
assign le = (a <= b);
assign gt = (a > b);
assign ge = (a >= b);

endmodule