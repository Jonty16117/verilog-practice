module mux2bit2to1(
  input logic [1:0] a, b,
  input logic select,
  output logic [1:0] y
);
  mux1bit2to1 mux_1 (.y(y[0]), .a(a[0]), .b(b[0]), .select);
  mux1bit2to1 mux_2 (.y(y[1]), .a(a[1]), .b(b[1]), .select);
endmodule
