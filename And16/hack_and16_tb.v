module hack_and16_tb;
  reg     [15:0] a,b;
  wire    [15:0] out;

  parameter FORMAT = "| %b | %b | %b |";

  hack_and16 and0 (a,b,out);

  initial begin
    $display("|        a         |        b         |       out        |");
  
    a = 0; b = 0;
    #1 $display(FORMAT,a,b,out);

    #2 b = 16'hffff;
    #3 $display(FORMAT,a,b,out);

    #4 a = 16'hffff;
    #5 $display(FORMAT,a,b,out);

    #6 a = 16'b1010101010101010;
    #6 b = 16'b0101010101010101;
    #7 $display(FORMAT,a,b,out);

    #8 a = 16'b0011110011000011;
    #8 b = 16'b0000111111110000;
    #9 $display(FORMAT,a,b,out);

    #10 a = 16'b0001001000110100;
    #10 b = 16'b1001100001110110;
    #11 $display(FORMAT,a,b,out);
  end
endmodule
