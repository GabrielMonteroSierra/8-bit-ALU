module NAND8(A, B, Sum);
    input [7:0] A;
    input [7:0] B;

    output [7:0] Sum;

    nand na1(Sum[0], A[0], B[0]);
    nand na2(Sum[1], A[1], B[1]);
    nand na3(Sum[2], A[2], B[2]);
    nand na4(Sum[3], A[3], B[3]);
    nand na5(Sum[4], A[4], B[4]);
    nand na6(Sum[5], A[5], B[5]);
    nand na7(Sum[6], A[6], B[6]);
    nand na8(Sum[7], A[7], B[7]);
endmodule