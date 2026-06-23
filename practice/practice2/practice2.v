module practice2 (
    input A, B, C, D, EN,
    output Y
);
wire w1, w2, w3;
and g1 (w1, A, B);
xor g2 (w2, C, D);
or g3 (w3, w1, w2);
bufif1 g4 (Y, w3, EN);

endmodule