class parent;
  int a;
  function new(int x);
    a = x;
    $display("Parent class called: a = %0d", a);
  endfunction
endclass
class child extends parent;
  int b;
  function new(int x, int y);
    super.new(x);
    b = y;
    $display("Child class called: b = %0d", b);
  endfunction
endclass
module test;
  initial begin
    child c1 = new(10, 20);
  end
endmodule

//output
# Parent class called: a = 10
# Child class called: b = 20
