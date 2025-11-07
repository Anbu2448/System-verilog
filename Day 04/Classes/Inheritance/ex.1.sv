class parent_class;
  int a;
  function void show_a();
    $display("parent variable a= %0d",a);
  endfunction
endclass
class child_class extends parent_class;
  int b;
  function void show_b();
    $display("child variable b=%0d",b);
  endfunction
endclass
module test;
  initial begin
    child_class c1;
    c1=new();
    c1.a=100;
    c1.b=200;
    c1.show_a();
    c1.show_b();
  end
endmodule

//output
# parent variable a= 100
# child variable b=200
