module hack_decoder2_tb;
  reg          s0,s1;
  wire  [3:0]  out;

  hack_decoder2 decoder0 (s0,s1,out);

  parameter FORMAT = "|   %b   |   %b   | %b |";

  initial begin
    $display("|  s0   |  s1   | out  |");

    s0 = 0; s1 = 0;
    #1 $display(FORMAT,s0,s1,out);

    #2 s1 = 1;
    #3 $display(FORMAT,s0,s1,out);

    #4 s0 = 1; s1 = 0;
    #5 $display(FORMAT,s0,s1,out);

    #6 s0 = 1; s1 = 1;
    #7 $display(FORMAT,s0,s1,out);
  end
endmodule
