virtual class parent_trans;
  bit [31:0] data;
  int id ;
  
 virtual function void display();
   $display("base:value of data=%0h,id=%0h",data,id);
  endfunction
endclass

class child_trans extends parent_trans;
  function void display();
    $display("child:value of data=%0h,id=%0h",data,id);
  endfunction
endclass

module test;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr=new();
    
    p_tr=c_tr;
    p_tr.data=7;
    p_tr.id=18;
    p_tr.display();
  end
endmodule
//output
# child:value of data=7,id=18
