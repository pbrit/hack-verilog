module hack_dmux(in,sel,a,b);
  input in,sel;
  output a,b;

  wire nsel; 

  and and0 (a,in,nsel);
  and and1 (b,in,sel);
  not inv0 (nsel,sel);

  // Behavior description
  /*
  assign  a = sel == 0 ? in : 0;
  assign  b = sel == 1 ? in : 0;
  */
endmodule
