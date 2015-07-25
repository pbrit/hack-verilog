module hack_dmux4_way_tb;
  reg         in;
  reg [1:0]   sel;
  wire        a,b,c,d;

  parameter FORMAT = "|  %b  |  %b  |  %b  |  %b  |  %b  |  %b  |";

  hack_dmux4_way dmux(in,sel,a,b,c,d);
 
  initial begin
    $display("| in  | sel  |  a  |  b  |  c  |  d  |");

    in = 0; sel = 0;
    #1 $display(FORMAT,in,sel,a,b,c,d);

    #2 sel = 1;
    #3 $display(FORMAT,in,sel,a,b,c,d);

    #4 sel = 2;
    #5 $display(FORMAT,in,sel,a,b,c,d);

    #6 sel = 3;
    #7 $display(FORMAT,in,sel,a,b,c,d);

    #8 in = 1; sel = 0;
    #9 $display(FORMAT,in,sel,a,b,c,d);

    #10 sel = 1;
    #11 $display(FORMAT,in,sel,a,b,c,d);

    #12 sel = 2;
    #13 $display(FORMAT,in,sel,a,b,c,d);

    #14 sel = 3;
    #15 $display(FORMAT,in,sel,a,b,c,d);
  end

endmodule
