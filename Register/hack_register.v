module hack_register(in,enable,clk,out);
  input   [15:0]  in;
  input           enable, clk;
  output  [15:0]  out;

  genvar i;

  generate 
    for (i = 0; i < 16; i = i+1) begin
      hack_bit inst (in[i], enable, clk, out[i]);
    end
  endgenerate
endmodule
