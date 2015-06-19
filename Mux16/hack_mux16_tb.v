
module hack_mux16_tb;
  reg   [15:0]  a,b;
  reg           sel;
  wire  [15:0]  out;

  parameter FORMAT = "| %b | %b |  %b  | %b |";

  initial begin
    #0 $display("|        a         |        b         | sel |       out        |");

    #0 a = 0; b = 0; sel = 0; 
    #1 $display(FORMAT,a,b,sel,out);

    #2 sel = 1;
    #3 $display(FORMAT,a,b,sel,out);

    #4 b = 16'b0001001000110100;
    #4 sel = 0; 
    #5 $display(FORMAT,a,b,sel,out);

    #6 sel = 1;
    #7 $display(FORMAT,a,b,sel,out);

    #8 a = 16'b1001100001110110; b = 0; sel = 0;
    #9 $display(FORMAT,a,b,sel,out);

    #10 sel = 1;
    #11 $display(FORMAT,a,b,sel,out);

    #12 a = 16'b1010101010101010; b =16'b0101010101010101; sel = 0;
    #13 $display(FORMAT,a,b,sel,out);

    #14 sel = 1;
    #15 $display(FORMAT,a,b,sel,out);
  end

  hack_mux16 mux (a,b,sel,out);
endmodule
