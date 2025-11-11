class data;
  int a;
  int b;
  function new();
    a=a;
    b=b;
  endfunction
  function void display();
    $display("value of a %0d,value of b %0d",a,b);
  endfunction
endclass

module test;
  data d1,d2;
  initial begin
    d1=new();
    $display("d1 object is created");
    d1.a=10;
    d1.b=20;
    d1.display();
    d2=new d1;
    $display("d2 object is created");
    d2.display();
    d2.a=5;
    d2.display();
    d1.display();
    $display("d1 copy is displayed");
    d1.a=17;
    d1.display();
    $display("d2 copy is displayed");

    d2.display();
  end
endmodule

//output
# d1 object is created
# value of a 10,value of b 20
# d2 object is created
# value of a 10,value of b 20
# value of a 5,value of b 20
# value of a 10,value of b 20
# d1 copy is displayed
# value of a 17,value of b 20
# d2 copy is displayed
# value of a 5,value of b 20
