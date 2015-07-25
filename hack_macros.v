  `define step(statements) \
      #2 \
      $display(FORMAT_NEG,$time/2,in,enable,out); \
      statements; \
      $display(FORMAT_POS,$time/2,in,enable,out);
