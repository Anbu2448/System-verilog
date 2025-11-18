class pkg;
 static int x=10;
  
  static function int add(int a,int b);
    return (a+b);
  endfunction
endclass

module test;
  initial begin
    $display("x=%0d",pkg::x);
    $display("sum=%0h",pkg::add(0105,2402));
  end
endmodule
//output
# x=10
# sum=9cb
