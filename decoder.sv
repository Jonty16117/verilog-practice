module decoder (
    input A0, A1,
    output logic [3:0] o
);

    assign o[0] = ~A0 & ~A1;
    assign o[1] = ~A0 & A1;
    assign o[2] = A0 & ~A1;
    assign o[3] = A0 & A1;

    assign clk_div = rst ? 0 : !clk_div;

endmodule

// module decoder (
//     input i,
//     output logic [3:0] o
// );

//     always_comb begin
//        case (i)
//         2'b00: o = 4'b0001; 
//         2'b01: o = 4'b0010;
//         2'b10: o = 4'b0100;
//         2'b11: o = 4'b1000;
//        endcase 
//     end

// endmodule

// // this program is wrong deal with it
