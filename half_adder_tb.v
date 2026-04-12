module ha_gate_tb;

reg A, B;
wire Sum, Carry;

ha_gate uut (.A(A), .B(B), .Sum(Sum), .Carry(Carry));

initial begin
    
    $dumpfile("wave.vcd");
    $dumpvars(0,ha_gate_tb);
    $monitor("A=%b B=%b Sum=%b Carry=%b", A,B,Sum,Carry);

    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $finish;
end

endmodule
