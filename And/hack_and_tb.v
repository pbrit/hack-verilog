/*
|   a   |   b   |  out  |
|   0   |   0   |   0   |
|   0   |   1   |   0   |
|   1   |   0   |   0   |
|   1   |   1   |   1   |
*/

module hack_and_tb;
  reg a,b;
  wire out;

  parameter FORMAT = "|   %d   |   %d   |   %d   |";

  initial begin
    $display("|   a   |   b   |  out  |");

    #0 a = 0; b = 0; 
    #1 $display(FORMAT,a,b,out);  

    #2 a = 0; b = 1; 
    #3 $display(FORMAT,a,b,out);  

    #4 a = 1; b = 0; 
    #5 $display(FORMAT,a,b,out);  

    #6 a = 1; b = 1; 
    #7 $display(FORMAT,a,b,out);  

    #8 $finish;
  end

  hack_and u0 (a,b,out);
endmodule

