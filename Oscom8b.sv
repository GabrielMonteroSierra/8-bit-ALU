//Gabriel Montero

module Oscom8b(A, Result);
    input [7:0] A;

    output [7:0] Result;

    not n1(Result[0], A[0]);
    not n2(Result[1], A[1]);
    not n3(Result[2], A[2]);
    not n4(Result[3], A[3]);
    not n5(Result[4], A[4]);
    not n6(Result[5], A[5]);
    not n7(Result[6], A[6]);
    not n8(Result[7], A[7]);
endmodule