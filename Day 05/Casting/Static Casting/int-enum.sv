module casting;
  typedef enum {red=0,yellow=1,green=2} colour_t;
  colour_t c;
  int val = 2;
  
  initial begin
    c=colour_t'(val);
    $display("%d",c);
  end
endmodule
//output
#           2
