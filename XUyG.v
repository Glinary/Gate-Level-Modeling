//Gleezell Vina A. Uy S14

`timescale 1ns / 1ps

//Module name: simple circuit
//F = A(CD+B) + BC'

module XUyG(F, A, B, C, D);
    input A, B, C, D;
    output F;
    wire w1, w2, w3, w4, w5;

    and G1(w1, C, D); // w1 = CD
    or G2(w2, w1, B); // w2 = CD + B
    and G3(w3, A, w2); // w3 = A(CD + B)
    not G4(w4, C); // C'
    and G5(w5, B, w4); // BC'
    or G6(F, w3, w5);
endmodule

