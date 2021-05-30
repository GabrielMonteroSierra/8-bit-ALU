//Gabriel Montero

module XOR8(A, B, Cout);
    input [7:0] A;
    input [7:0] B;

    output [7:0] Cout;

    xor xo1 (Cout[0], A[0], B[0]);
    xor xo2 (Cout[1], A[1], B[1]);
    xor xo3 (Cout[2], A[2], B[2]);
    xor xo4 (Cout[3], A[3], B[3]);
    xor xo5 (Cout[4], A[4], B[4]);
    xor xo6 (Cout[5], A[5], B[5]);
    xor xo7 (Cout[6], A[6], B[6]);
    xor xo8 (Cout[7], A[7], B[7]);
endmodule