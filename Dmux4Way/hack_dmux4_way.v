module hack_dmux4_way(in,sel,a,b,c,d);
  input           in;
  input   [1:0]   sel;

  output          a,b,c,d;

  wire   [3:0]    dout;

  hack_decoder2 decoder0 (sel[1],sel[0],dout);

  and and0 (a,in,dout[3]);
  and and1 (b,in,dout[2]);
  and and2 (c,in,dout[1]);
  and and3 (d,in,dout[0]);

  // Behavior description
  /*
  reg             a,b,c,d;
  always @* begin
    case (sel)
      0: begin        
        a = in; b = 0; c = 0; d = 0;
      end
      
      1: begin
        a = 0; b = in; c = 0; d = 0;
      end

      2: begin
        a = 0; b = 0; c = in; d = 0;
      end

      default: begin
        a = 0; b = 0; c = 0; d = in;
      end
    endcase
  end
  */
endmodule
