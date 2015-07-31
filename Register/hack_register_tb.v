module hack_register_tb;
  reg  signed [15:0]  in;
  reg                 clk, enable;
  wire signed [15:0]  out;

  hack_register register0 (in,enable,clk,out);
 
  always begin
    #1 clk = ~clk;
  end

  `include "../hack_macros.v"

  parameter FORMAT_POS = "| %g+   | %d |  %b  | %d |";
  parameter FORMAT_NEG = "| %g    | %d |  %b  | %d |";

  initial begin
    in = 0; enable = 0; clk = 0;
    $display("| time |   in   |load |  out   |");
    $display(FORMAT_POS,$time,in,enable,out);

    `step(enable = 1)

    `step(in = -32123; enable = 0)
    
    `step(in = 11111; enable = 0)
    
    `step(in = -32123; enable = 1)
    
    `step(in = -32123; enable = 1)

    `step(in = -32123; enable = 0)
    
    `step(in = 12345; enable = 1)
    
    `step(in = 0; enable = 0)
    
    `step(in = 0; enable = 1)
    
    `step(in = 1; enable = 0)

    $finish;
  end
endmodule

