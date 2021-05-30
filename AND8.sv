//Gabriel Montero

module AND8(A, B, Sum);
    input [7:0] A;
    input [7:0] B;

    output [7:0] Sum;

    and a1 (Sum[0], A[0], B[0]);
    and a2 (Sum[1], A[1], B[1]);
    and a3 (Sum[2], A[2], B[2]);
    and a4 (Sum[3], A[3], B[3]);
    and a5 (Sum[4], A[4], B[4]);
    and a6 (Sum[5], A[5], B[5]);
    and a7 (Sum[6], A[6], B[6]);
    and a8 (Sum[7], A[7], B[7]);
endmodule 