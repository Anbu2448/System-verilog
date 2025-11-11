class parent_trans;
  bit[31:0] data;
  int id;
  virtual function void display;
    $display("base:value of data =%0d,id=%0d",data,id);
  endfunction
endclass

class child_trans extends parent_trans;
  bit [31:0] data;
  int id;
  function void display;
    $display("child:value of data=%0d,id=%0d",data,id);
  endfunction
endclass

module test;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr = new();
    
    p_tr=c_tr;
    c_tr.data=3;
    c_tr.id=5;
    
    p_tr.data=7;
    p_tr.id=10;
    p_tr.display();
  end 
endmodule
