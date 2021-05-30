module FA(A, B, Cin, Cout, Sum);
    input A, B, Cin;
    output Cout, Sum;
    wire w1, w2, w3;

    xor xo1 (Sum, A, B, Cin);
    and an1 (w1, A, B);
    and an2 (w2, A, Cin);
    and an3 (w3, B, Cin);
    or o1 (Cout, w1, w2, w3);
endmodule