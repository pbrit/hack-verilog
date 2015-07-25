module hack_bit_tb;
  reg   in,clk = 0,enable;
  wire  out;

  hack_bit bit0 (in,enable,clk,out);
 
  always begin
    #1 clk = ~clk;
  end

  `include "../hack_macros.v"

  parameter FORMAT_POS = "| %g+   |  %b  |  %b  |  %b  |";
  parameter FORMAT_NEG = "| %g    |  %b  |  %b  |  %b  |";

  initial begin
    $display("| time | in  |load | out |");
    in = 0; enable = 0; 
    $display(FORMAT_POS,$time,in,enable,out);

    `step(enable = 1)

    `step(in = 1; enable = 0)

    `step(enable = 1)

    `step(in = 0; enable = 0)

    `step(in = 1)
    
    `step(in = 0; enable = 1)

    `step(in = 1)

    `step(in = 0; enable = 0)

    `step(enable = 1)
    
    `step(in = 1; enable = 0)
      
    #2 $display(FORMAT_NEG,$time/2,in,enable,out);

    $finish;
  end
endmodule
