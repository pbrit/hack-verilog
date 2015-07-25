module hack_not16_tb;
  reg   [15:0] in;
  wire  [15:0] out;

  hack_not16 not0 (in,out);

  parameter FORMAT = "| %b | %b |";

  initial begin
    $display("|        in        |       out        |");

    in = 0;
    #1 $display(FORMAT,in,out);

    #2 in = 16'hffff;
    #3 $display(FORMAT,in,out);

    #4 in = 16'b1010101010101010;
    #5 $display(FORMAT,in,out);

    #6 in = 16'b0011110011000011;
    #7 $display(FORMAT,in,out);

    #8 in = 16'b0001001000110100;
    #9 $display(FORMAT,in,out);
  end
endmodule
