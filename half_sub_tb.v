module half_sub_tb;

reg A, B;
wire Diff, Borrow;

half_sub_gate uut (.A(A), .B(B), .Diff(Diff), .Borrow(Borrow));

initial begin
    
    $dumpfile("wave.vcd");
    $dumpvars;
    $monitor("A=%b B=%b  Diff=%b Borrow=%b", A,B,Diff,Borrow);

    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $finish;
end

endmodule
