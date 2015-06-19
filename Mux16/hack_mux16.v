module hack_mux16(a,b,sel,out);
  input   [15:0]  a,b;
  input           sel;
  output  [15:0]  out;

  wire     [15:0]  out;

  assign out = sel == 0 ? a : b;
endmodule
