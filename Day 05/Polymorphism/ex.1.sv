class parent;
  int data;
  int id;

  virtual function void display();
    $display("parent:data=%0d,id=0%0d",data,id);
  endfunction
endclass

class child1 extends parent;
  function void display();
    $display("child1:data=%0d,id=0%0d",data,id);
  endfunction
endclass

class child2 extends parent;
  function void display();
    $display("child2:data=%0d,id=0%0d",data,id);
  endfunction
endclass

module test;
  initial begin
    parent p;        
    child1 c1 = new();
    child2 c2 = new();
    c1.data=100;c1.id=10;
    c2.data=200;c2.id=20;

    p = c1;
    p.display();    

    p = c2;
    p.display(); 
  end
endmodule
//output
# child1:data=100,id=010
# child2:data=200,id=020
