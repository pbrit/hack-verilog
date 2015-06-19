module hack_mux8_way16(a,b,c,d,e,f,g,h,sel,out);
  input   [15:0]  a,b,c,d,e,f,g,h;
  input   [2:0]   sel;
  output  [15:0]  out;

  wire    [15:0]  left,right;

  hack_mux4_way16 mux1 (a,b,c,d,sel[1:0],right);
  hack_mux4_way16 mux2 (e,f,g,h,sel[1:0],left);

  hack_mux16 mux0 (right,left,sel[2],out);

  /* reg     [15:0]  out; */
  /* always @* begin */
  /*   case (sel) */
  /*     0: out = a; */
  /*     1: out = b; */
  /*     2: out = c; */
  /*     3: out = d; */
  /*     4: out = e; */
  /*     5: out = f; */
  /*     6: out = g; */
  /*     default: out = h; */
  /*   endcase */
  /* end */
endmodule
