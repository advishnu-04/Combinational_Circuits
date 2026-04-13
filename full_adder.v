module fa_gate (
    input A,
    input B,
    input C,
    output Sum, output Carry
);

assign Sum = (A^B^C);
assign Carry =C&(A^B)|(A&B);

endmodule
