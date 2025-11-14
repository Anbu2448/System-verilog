module casting;
  real r = 20;
  int a;
  initial begin
    a=int'(r);
    $display("a=%0d",a);
  end
endmodule
//output
# a=20
