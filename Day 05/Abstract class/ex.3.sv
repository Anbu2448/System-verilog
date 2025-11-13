class base;
  int id;
  int data;
  virtual function void display();
    $display("base:id=%0d,data=%0d",id,data);
  endfunction
endclass
class child extends base;
  int value;
  virtual function void display();
    $display("child:data=%0d,id=%0d,value=%0d",data,id,value);
  endfunction
endclass
module test;
  initial begin
    base b;child c;
    c=new();
    b=c;
    b.id=45;
    c.data=18;
    c.value=7;
    b.display();
    c.display();
  end
endmodule
//output
# child:data=18,id=45,value=7
# child:data=18,id=45,value=7
