module HA(A,B,Cout,Sum);

input A,B;
output Cout,Sum;

xor xor1(Sum,A,B);
and and1(Cout,A,B);

endmodule