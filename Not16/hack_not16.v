module hack_not16(in,out);
  input   [15:0] in;
  output  [15:0] out;

  assign out = ~in;
endmodule

