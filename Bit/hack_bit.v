module hack_bit(in,enable,clk,out);
  input   in,enable,clk;
  output  out;

  reg     out;

  always @(posedge clk) begin
    if (enable) begin
      out <= in;
    end 
  end
endmodule
