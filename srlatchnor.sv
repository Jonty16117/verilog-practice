`timescale 1ns / 1ps
module srlatchnor(
    input S,
    input R,
    output Q,
    output Qn
);

    logic Q_int, Qn_int;

    assign Q = Q_int;
    assign Qn = Qn_int;

    assign #1 Q_int = R ~| Qn_int;
    assign #1 Qn_int = S ~| Q_int;

endmodule