module latch_inference (
    input data,
    input load,
    output reg d_out
);

reg t;

always @(load or data)
begin
    if (!load)
        t = data;

    d_out = t;
end

endmodule