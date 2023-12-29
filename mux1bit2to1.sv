module mux1bit2to1 (
  input logic a,
  input logic b,
  input logic select,
  output logic y
);

  assign y = (select == 1'b0) ? a : b;

endmodule
