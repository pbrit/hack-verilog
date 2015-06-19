module hack_mux8_way16_tb;
  reg   [15:0] a,b,c,d,e,f,g,h;
  reg   [2:0] sel;
  wire  [15:0] out;

  parameter FORMAT = "| %b | %b | %b | %b | %b | %b | %b | %b |  %b  | %b |";

  initial begin
    $display("|        a         |        b         |        c         |        d         |        e         |        f         |        g         |        h         |  sel  |       out        |");

    #0 a = 0; b = 0; c=0; d=0; e=0; f=0; g=0; h=0; sel=0;
    #1 $display(FORMAT,a,b,c,d,e,f,g,h,sel,out);

    #2 sel=1;
    #3 $display(FORMAT,a,b,c,d,e,f,g,h,sel,out);

    #4 sel=2;
    #5 $display(FORMAT,a,b,c,d,e,f,g,h,sel,out);
    
    #6 sel=3;
    #7 $display(FORMAT,a,b,c,d,e,f,g,h,sel,out);

    #8 sel=4;
    #9 $display(FORMAT,a,b,c,d,e,f,g,h,sel,out);

    #10 sel=5;
    #11 $display(FORMAT,a,b,c,d,e,f,g,h,sel,out);

    #12 sel=6;
    #13 $display(FORMAT,a,b,c,d,e,f,g,h,sel,out);

    #16 sel=7;
    #17 $display(FORMAT,a,b,c,d,e,f,g,h,sel,out);

    #18 sel=0; 
    #18 a=16'b0001001000110100; b=16'b0010001101000101; c=16'b0011010001010110; d=16'b0100010101100111; 
    #18 e=16'b0101011001111000; f=16'b0110011110001001; g=16'b0111100010011010; h=16'b1000100110101011;
    
    #19 $display(FORMAT,a,b,c,d,e,f,g,h,sel,out);

    #20 sel=1;
    #21 $display(FORMAT,a,b,c,d,e,f,g,h,sel,out);

    #22 sel=2;
    #23 $display(FORMAT,a,b,c,d,e,f,g,h,sel,out);

    #24 sel=3;
    #25 $display(FORMAT,a,b,c,d,e,f,g,h,sel,out);

    #26 sel=4;
    #27 $display(FORMAT,a,b,c,d,e,f,g,h,sel,out);

    #28 sel=5;
    #29 $display(FORMAT,a,b,c,d,e,f,g,h,sel,out);

    #30 sel=6;
    #31 $display(FORMAT,a,b,c,d,e,f,g,h,sel,out);

    #32 sel=7;
    #33 $display(FORMAT,a,b,c,d,e,f,g,h,sel,out);
  end 

  hack_mux8_way16 mux(a,b,c,d,e,f,g,h,sel,out);
endmodule
