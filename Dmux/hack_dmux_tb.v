module hack_dmux_tb;
  reg   in, sel;
  wire  a,b;

  hack_dmux dmux (in, sel, a, b);

  parameter FORMAT = "|   %b   |   %b   |   %b   |   %b   |";

  initial begin
    $display("|  in   |  sel  |   a   |   b   |");

    in = 0; sel = 0;
    #1 $display(FORMAT,in,sel,a,b);

    #2 sel = 1;
    #3 $display(FORMAT,in,sel,a,b);

    #4 in = 1; sel = 0;
    #5 $display(FORMAT,in,sel,a,b);

    #6 sel = 1;
    #7 $display(FORMAT,in,sel,a,b);
  end

endmodule
