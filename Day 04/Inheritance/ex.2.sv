class grand_parent;
  int a;
  function void show_a();
    $display("grand parent variable a=%0d",a);
  endfunction
endclass
class parent extends grand_parent;
  int b;
  function void show_b;
    $display("parent variable b=%0d",b);
  endfunction
endclass
class child extends parent;
  int c;
  function void show_c;
    $display("child variable c=%0d",c);
  endfunction
endclass
module test;
  initial begin
    child c1;
    c1=new();
    c1.a=4;
    c1.b=5;
    c1.c=6;
    
    c1.show_a();
    c1.show_b();
    c1.show_c();
  end
endmodule

//output
# grand parent variable a=4
# parent variable b=5
# child variable c=6
