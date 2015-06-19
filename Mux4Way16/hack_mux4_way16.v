module hack_mux4_way16(a,b,c,d,sel,out);

  input     [15:0]  a,b,c,d;
  input     [1:0]   sel;
  output    [15:0]  out;

  reg       [15:0]  out;

  always @* begin
    case (sel)
      0: out = a;
      1: out = b;
      2: out = c;
      default: out = d;
    endcase
  end
endmodule

