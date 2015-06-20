module hack_mux4_way16(a,b,c,d,sel,out);

  input     [15:0]  a,b,c,d;
  input     [1:0]   sel;
  output    [15:0]  out;

  wire      [15:0]  right, left;  
  wire              nsel0;

  not inv0 (nsel0,sel[0]);

  hack_mux16 mux0(left,right,sel[1],out);

  hack_mux16 mux_right (a,b,sel[0],left);
  hack_mux16 mux_left  (d,c,nsel0,right);
  
  // Behavior description
  /*
  reg       [15:0]  out;

  always @* begin
    case (sel)
      0: out = a;
      1: out = b;
      2: out = c;
      default: out = d;
    endcase
  end
  */
endmodule

