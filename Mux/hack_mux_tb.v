module hack_mux_tb;
  reg     a,b,sel;
  wire    out;

  hack_mux mux0(a,b,sel,out);

  parameter FORMAT = "|   %b   |   %b   |   %b   |   %b   |";

  initial begin
    $display("|   a   |   b   |  sel  |  out  |");

    a = 0; b = 0; sel = 0;

    #1 $display(FORMAT,a,b,sel,out);

    #2 sel = 1;
    #3 $display(FORMAT,a,b,sel,out);

    #4 b = 1; sel = 0;
    #5 $display(FORMAT,a,b,sel,out);

    #6 sel = 1;
    #7 $display(FORMAT,a,b,sel,out);

    #8 a = 1; b = 0; sel = 0;
    #9 $display(FORMAT,a,b,sel,out);

    #10 sel = 1;
    #11 $display(FORMAT,a,b,sel,out);

    #12 a = 1; b = 1; sel = 0;
    #13 $display(FORMAT,a,b,sel,out);

    #14 sel = 1;
    #15 $display(FORMAT,a,b,sel,out);
  end
endmodule
