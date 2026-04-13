module half_sub_gate (
    input A,
    input B,
    output Diff,
    output Borrow
);

assign Diff = A ^ B ;
assign Borrow = (~A & B);

endmodule
