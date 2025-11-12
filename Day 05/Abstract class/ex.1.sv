virtual class parent_trans;
  bit [31:0] data;
  int id ;
  
 virtual function void display();
    $display("base:value of data=%0d,id=%0d",data,id);
  endfunction
endclass

class child_trans extends parent_trans;
  function void display();
    $display("child:value of data=%0d,id=%0d",data,id);
  endfunction
endclass

module test;
  initial begin
    child_trans c_tr;
    c_tr = new();
    
    c_tr.data=10;
    c_tr.id=5;
    c_tr.display();
  end
endmodule
//output
# child:value of data=10,id=5
