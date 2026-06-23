module tristate_example(
    input in,
    input ctrl,
    output out1,
    output out2,
    output out3,
    output out4
);

bufif1 G1 (out1, in, ctrl);
bufif0 G2 (out2, in, ctrl);

notif1 G3 (out3, in, ctrl);
notif0 G4 (out4, in, ctrl);

endmodule