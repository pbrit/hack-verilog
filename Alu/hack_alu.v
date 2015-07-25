module hack_alu(
  x,y,
  zx,
  nx,
  zy,
  ny,
  f,
  no,
  out,
  zr,
  ng
);
  input       [15:0]  x,y;
  input               zx,nx,zy,ny,f,no;
  output      [15:0]  out;
  output              zr,ng;

  reg         [15:0]  effective_x, effective_y;
  reg signed  [15:0]  out;
  reg                 zr,ng;

  always @* begin
    // handle effective_x
    if (zx && nx) begin
      effective_x = 16'hffff; 
    end else if (!zx && nx) begin
      effective_x = ~x; 
    end else if (zx && !nx) begin
      effective_x = 0;
    end else begin
      effective_x = x;
    end

    // handle effective_y
    if (zy && ny) begin
      effective_y = 16'hffff;
    end else if (!zy && ny) begin
      effective_y = ~y;
    end else if (zy && !ny) begin
      effective_y = 0;
    end else begin
      effective_y = y;
    end

    // handle out
    if (f && no) begin
      out = ~(effective_x + effective_y);
    end else if (!f && no) begin
      out = ~(effective_x & effective_y);
    end else if (f && !no) begin
      out = effective_x + effective_y;
    end else begin
      out = effective_x & effective_y;
    end
 
    // handle flags
    if (out == 0) begin
      zr = 1;
    end else begin
      zr = 0;
    end
    
    if (out < 0) begin
      ng = 1;
    end else begin
      ng = 0;
    end
  end

endmodule
