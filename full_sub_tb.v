module full_sub_tb;

reg A, B, C;
wire Diff, Borrow;

full_sub_gate uut (.A(A), .B(B), .C(C), .Diff(Diff), .Borrow(Borrow));

initial begin
    
    $dumpfile("wave.vcd");
    $dumpvars;
    $monitor("A=%b B=%b C=%b Diff=%b Borrow=%b", A,B,C,Diff,Borrow);

    A = 0; B = 0;C=0; #10;
    A = 0; B = 0;C=1; #10;
    A = 0; B = 1;C=0; #10;
    A = 0; B = 1;C=1; #10;
    A = 1; B = 0;C=0; #10;
    A = 1; B = 0;C=1; #10;
    A = 1; B = 1;C=0; #10;
    A = 1; B = 1;C=1; #10;

    $finish;
end

endmodule
