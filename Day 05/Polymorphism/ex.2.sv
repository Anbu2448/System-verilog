class parent;
  int data;
  int id;
  virtual function void display();
    $display("base:value of data=%0d,id=%0d",data,id);
  endfunction
endclass
class child_A extends parent;
  function void display();
    $display("child_A:value of data=%0d,id=%0d",data,id);
  endfunction
endclass
class child_B extends parent;
  function void display();
    $display("child_B:value of data=%0d,id=%0d",data,id);
  endfunction
endclass
class child_C extends parent;
  function void display();
    $display("child_C:value of data=%0d,id=%0d",data,id);
  endfunction
endclass
module test;
  initial begin
    parent p_A,p_B,p_C;
    child_A c_A=new();
    child_B c_B=new();
    child_C c_C=new();
    
    c_A.data=$urandom_range(1,10);
    c_B.data=$urandom_range(10,50);
    c_C.data=$urandom_range(1,100);
    
    c_A.id=$urandom_range(1,50);
    c_B.id=$urandom_range(10,70);
    c_C.id=$urandom_range(50,100);
    
    p_A = c_A;
    p_B = c_B;
    p_C = c_C;

    p_A.display();
    p_B.display();
    p_C.display();
  end
endmodule

//output
# child_A:value of data=2,id=16
# child_B:value of data=24,id=31
# child_C:value of data=47,id=53
