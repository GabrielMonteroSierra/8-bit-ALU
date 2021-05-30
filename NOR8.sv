//Gabriel Montero

module NOR8(A, B, Cout);
    input [7:0] A;
    input [7:0] B;

    output [7:0] Cout;

    nor no1 (Cout[0], A[0], B[0]);
    nor no2 (Cout[1], A[1], B[1]);
    nor no3 (Cout[2], A[2], B[2]);
    nor no4 (Cout[3], A[3], B[3]);
    nor no5 (Cout[4], A[4], B[4]);
    nor no6 (Cout[5], A[5], B[5]);
    nor no7 (Cout[6], A[6], B[6]);
    nor no8 (Cout[7], A[7], B[7]);
endmodule