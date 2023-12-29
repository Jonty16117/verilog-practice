module switchcaseNbit4to1mux
    #(
        parameter N = 4
    )
    (
        input logic [N-1:0] i1, i2, i3, i4,
        input logic [1:0] select,
        output logic [N-1:0] o
    );

    always_comb begin
        case (select)
            2'b00: o = i1;
            2'b01: o = i2;
            2'b10: o = i3;
            2'b11: o = i4;
        endcase
    end

endmodule