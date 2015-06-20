module hack_mux(a,b,sel,out);
  input     a,b,sel;
  output    out;

  wire  left, right, nsel;

  or    or0  (out, left, right);
  and   and0 (left, a, nsel);
  and   and1 (right, b, sel);
  not   inv0 (nsel, sel);

  // Behavior description
  // assign out = sel == 0 ? a : b; 
endmodule
