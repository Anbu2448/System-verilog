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
    
    c_A.data=10;c_A.id=7;
    c_B.data=20;c_B.id=18;
    c_C.data=50;c_C.id=45;
    
    p_A = c_A;
    p_B = c_B;
    p_C = c_C;

    p_A.display();
    p_B.display();
    p_C.display();
  end
endmodule
//output
# child_A:value of data=10,id=7
# child_B:value of data=20,id=18
# child_C:value of data=50,id=45
