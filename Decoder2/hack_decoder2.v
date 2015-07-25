module hack_decoder2(s0,s1,out);
  input           s0,s1;
  output  [3:0]   out; 

  wire            ns0, ns1;

  not inv0 (ns0, s0);
  not inv1 (ns1, s1);

  and and0 (out[3], ns0, ns1);
  and and1 (out[2], ns0, s1);
  and and2 (out[1], s0, ns1);
  and and3 (out[0], s0, s1);

  // Behavior description
  /*
  reg     [3:0]   out;  
  always @* begin
    out = 0;
    out[3-{s0,s1}] = 1;
  end
  */
endmodule
