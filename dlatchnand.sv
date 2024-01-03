module dlatchnand (
    input En, D,
    output Q, Qn
);

    logic Q_int, Qn_int, d_int, dn_int;

    assign Q = Q_int;
    assign Qn = Qn_int;

    assign #1 d_int = En ~& D;
    assign #1 dn_int = En ~& ~D;

    assign #1 Q_int = Qn_int ~& d_int;
    assign #1 Qn_int = Q_int ~& dn_int;

endmodule