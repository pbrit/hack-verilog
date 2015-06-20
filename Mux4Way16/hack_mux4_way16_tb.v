module hack_mux4_way16_tb;
  reg   [15:0]    a,b,c,d;
  reg   [1:0]     sel;

  wire  [15:0]    out;

  parameter FORMAT = "| %b | %b | %b | %b |  %b  | %b |";

  hack_mux4_way16 mux0 (a,b,c,d,sel,out);

  initial begin
    $display("|        a         |        b         |        c         |        d         | sel  |       out        |");

    a = 0; b = 0; c = 0; d = 0; sel = 0;
    #1 $display(FORMAT,a,b,c,d,sel,out);

    #2 sel = 1;
    #3 $display(FORMAT,a,b,c,d,sel,out);
    
    #4 sel = 2;
    #5 $display(FORMAT,a,b,c,d,sel,out);

    #6 sel = 3;
    #7 $display(FORMAT,a,b,c,d,sel,out);

    #10 a = 16'b0001001000110100;
    #10 b = 16'b1001100001110110;
    #10 c = 16'b1010101010101010;
    #10 d = 16'b0101010101010101;

    #10 sel = 0;
    #11 $display(FORMAT,a,b,c,d,sel,out);

    #12 sel = 1;
    #13 $display(FORMAT,a,b,c,d,sel,out);

    #14 sel = 2;
    #15 $display(FORMAT,a,b,c,d,sel,out);
    
    #16 sel = 3;
    #17 $display(FORMAT,a,b,c,d,sel,out);
  end
endmodule
