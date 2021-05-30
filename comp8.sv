//Gabriel Montero

//8-bit comparator

//`include "comp4.sv"

module comp8(A, B, Cout);
    input [7:0] A;
    input [7:0] B;

    output [7:0] Cout;

    wire A_GT_B;
    wire A_LT_B;
    wire A_EQ_B;

    wire [5:0] x;
    wire [5:0] y;

    comp4 c1 (A[7:4], B[7:4], x[5], x[4], x[3]);
    comp4 c2 (A[3:0], B[3:0], x[2], x[1], x[0]);

    //Greater Than
    and a1 (y[1], x[5], x[1]);
    or o1 (A_GT_B, x[4], y[1]);

    //Lesser Than
    and a2 (y[3], x[5], x[0]);
    or o2 (A_LT_B, y[3], x[3]);

    //Equals to
    and a3 (A_EQ_B, x[5], x[2]);

    assign Cout[0] = A_GT_B;
    assign Cout[1] = A_LT_B;
    assign Cout[2] = A_EQ_B;
    assign Cout[7:3] = 5'b0;
endmodule