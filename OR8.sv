//Gabriel Montero

module OR8(A, B, Cout);
    input [7:0] A;
    input [7:0] B;

    output [7:0] Cout;

    or o1 (Cout[0], A[0], B[0]);
    or o2 (Cout[1], A[1], B[1]);
    or o3 (Cout[2], A[2], B[2]);
    or o4 (Cout[3], A[3], B[3]);
    or o5 (Cout[4], A[4], B[4]);
    or o6 (Cout[5], A[5], B[5]);
    or o7 (Cout[6], A[6], B[6]);
    or o8 (Cout[7], A[7], B[7]);
endmodule