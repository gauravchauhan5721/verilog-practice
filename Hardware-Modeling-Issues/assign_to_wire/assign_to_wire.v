module assign_to_wire (
    input A,
    input B,
    input C,
    output reg f1,
    output reg f2
);

always @(A or B or C) 
begin
    f1 = ~(A & B);
    f2 = f1 ^ C;
end
    
endmodule