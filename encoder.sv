module encoder (
  input [3:0] data_in,
  output reg [1:0] data_out
);

    assign data_out[0] = data_in[1] | data_in[3];
    assign data_out[1] = data_in[2] | data_in[3];

// this below aslo works btw

//   always_comb begin
//     case (data_in)
//       4'b0001: data_out = 2'b00;
//       4'b0010: data_out = 2'b01;
//       4'b0100: data_out = 2'b10;
//       4'b1000: data_out = 2'b11;
//       default: data_out = 2'b00; // Default case, can be modified based on requirements
//     endcase
//   end

endmodule
