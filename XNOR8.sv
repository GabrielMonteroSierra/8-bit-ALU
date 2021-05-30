//Gabriel Montero

module XNOR8(A, B, Cout);
    input [7:0] A;
    input [7:0] B;

    output [7:0] Cout;

    xnor xno1 (Cout[0], A[0], B[0]);
    xnor xno2 (Cout[1], A[1], B[1]);
    xnor xno3 (Cout[2], A[2], B[2]);
    xnor xno4 (Cout[3], A[3], B[3]);
    xnor xno5 (Cout[4], A[4], B[4]);
    xnor xno6 (Cout[5], A[5], B[5]);
    xnor xno7 (Cout[6], A[6], B[6]);
    xnor xno8 (Cout[7], A[7], B[7]);
endmodule