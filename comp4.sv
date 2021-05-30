//Gabriel Montero

//4-bit comparator

module comp4(A, B, A_GT_B, A_LT_B, A_EQ_B);
    input [3:0] A;
    input [3:0] B;

    output A_GT_B;
    output A_LT_B;
    output A_EQ_B;

    wire [7:0] nb;
    wire [7:0] na;
    wire [7:0] j;
    wire [7:0] k;
    wire [7:0] l;
    wire [7:0] m;
    wire [7:0] n;
    wire [7:0] o;
    wire [7:0] p;

    not n1 (nb[0], B[0]);
    not n2 (nb[1], B[1]);
    not n3 (nb[2], B[2]);
    not n4 (nb[3], B[3]);

    not n5 (na[0], A[0]);
    not n6 (na[1], A[1]);
    not n7 (na[2], A[2]);
    not n8 (na[3], A[3]);

    and a1 (j[0], B[0], na[0]);
    and a2 (j[1], A[0], nb[0]);

    and a3 (j[2], B[1], na[1]);
    and a4 (j[3], A[1], nb[1]);

    and a5 (j[4], B[2], na[2]);
    and a6 (j[5], A[2], nb[2]);

    and a7 (j[6], B[3], na[3]);
    and a8 (j[7], A[3], nb[3]);


    nor nr1 (k[3], j[1], j[0]);
    nor nr2 (l[3], j[3], j[2]);
    nor nr3 (m[3], j[5], j[4]);
    nor nr4 (n[3], j[7], j[6]);

    and a9  (o[4], k[3], j[5]);
    and a10 (o[3], k[3], m[3]);
    and a11 (o[2], o[3], j[3]);
    and a12 (o[1], o[3], l[3]);
    and a13 (o[0], o[1], j[1]);

    and a14 (p[3], k[3], j[4]);
    and a15 (p[2], o[3], j[2]);
    and a16 (p[1], o[1], j[0]);

    nor nr5 (A_EQ_B, A_LT_B,A_GT_B);
    or o1 (A_GT_B, o[0], o[2], o[4], j[7]);
    or o2 (A_GT_B, p[3], p[2], p[1], j[6]);
endmodule