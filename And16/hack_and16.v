module hack_and16(a,b,out);
  input     [15:0] a,b;
  output    [15:0] out;

  genvar i;

  generate
    for (i = 0; i < 16; i = i + 1) begin
      and and0 (out[i],a[i],b[i]);
    end
  endgenerate

  // Behavior description
  /*
  assign out = a & b;
  */
endmodule
