module hack_alu_tb;
  reg     [15:0]  x,y;
  reg             zx,nx,zy,ny,f,no;
  wire    [15:0]  out;
  wire            zr,ng;

  hack_alu alu0(x,y,zx,nx,zy,ny,f,no,out,zr,ng);
  
  parameter FORMAT = "| %b | %b | %b | %b | %b | %b | %b | %b | %b | %b | %b |";

  initial begin
    $display("|        x         |        y         |zx |nx |zy |ny | f |no |       out        |zr |ng |");

    x = 0; y = 16'hffff; zx = 1; nx = 0; zy = 1; ny = 0; f = 1; no = 0;
    #1 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);

    #2 nx = 1; ny = 1; no = 1;
    #3 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);

    #4 ny = 0; no = 0; 
    #5 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);

    #6 zx = 0; nx = 0; ny = 1; f = 0; no = 0;
    #7 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);

    #8 zx = 1; nx = 1; zy = 0; ny = 0; f = 0; no = 0;
    #9 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);

    #10 zx = 0; nx = 0; zy = 1; ny = 1; f = 0; no = 1;
    #11 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);

    #12 zx = 1; nx = 1; zy = 0; ny = 0; 
    #13 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);

    #14 zx = 0; nx = 0; zy = 1; ny = 1; f = 1;
    #15 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);
    
    #16 zx = 1; nx = 1; zy = 0; ny = 0; 
    #17 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);

    #18 zx = 0; zy = 1; ny = 1; 
    #19 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);

    #20 zx = 1; zy = 0;
    #21 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);

    #22 zx = 0; nx = 0; zy = 1; no = 0;
    #23 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);

    #24 zx = 1; nx = 1; zy = 0; ny = 0;
    #25 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);

    #26 zx = 0; nx = 0;
    #27 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);

    #28 nx = 1; no = 1;
    #29 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);

    #30 nx = 0; no = 1; ny = 1;
    #31 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);
    
    #32 ny = 0; f = 0; no = 0;
    #33 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);
    
    #34 nx = 1; ny = 1; no = 1;
    #35 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);

    #36 x = 16'b0000000000010001; y = 16'b0000000000000011;
    #36 nx = ~nx; zx = ~zx; ny = ~ny; zy = ~zy; f = ~f; no = ~no; 
    #37 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);

    #38 nx = 1; ny = 1; no = 1; 
    #39 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);
    
    #40 ny = 0; no = 0; 
    #41 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);
    
    #42 nx = 0; zx = 0; ny = 1; f = 0; 
    #43 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);
    
    #44 nx = 1; zx = 1; ny = 0; zy = 0; 
    #45 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);
    
    #46 nx = 0; zx = 0; ny = 1; zy = 1;  no = 1;
    #47 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);
    
    #48 nx = 1; zx = 1; ny = 0; zy = 0;
    #49 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);
    
    #50 nx = 0; zx = 0; ny = 1; zy = 1; f = 1;
    #51 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);
    
    #52 nx = 1; zx = 1; ny = 0; zy = 0;
    #53 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);
    
    #54 zx = 0; ny = 1; zy = 1;
    #55 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);
    
    #56 zx = 1; zy = 0;
    #57 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);
    
    #58 nx = 0; zx = 0; zy = 1; no = 0;
    #59 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);
    
    #60 zx = 1; nx = 1; zy = 0; ny = 0;
    #61 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);

    #62 zx = 0; nx = 0;
    #63 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);
    
    #64 nx = 1; no = 1;
    #65 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);
    
    #66 nx = 0; ny = 1;
    #67 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);

    #68 ny = 0; f = 0; no = 0;
    #69 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);
    
    #70 nx = 1; ny = 1; no = 1;
    #71 $display(FORMAT,x,y,zx,nx,zy,ny,f,no,out,zr,ng);
  end
 
  /*
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars();
  end
  */
endmodule
