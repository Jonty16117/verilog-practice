module my_design (
  input logic a,
  input wire b,
  input wire select,
  output wire y
);

  assign y = (select == 1'b0) ? a : b;

endmodule
