class parent_trans;
  bit[31:0] data;
  
  function void display();
    $display("base:value of data=%0h", data);
  endfunction
endclass 

class child_trans extends parent_trans;
  bit[31:0] data;
  
  function new();
    super.new();
    super.data = 3;
    super.display();
  endfunction
  function void display();
    $display("child:value of data=%0h",data);
  endfunction
endclass
module test;
  initial begin
    child_trans c_tr;
    c_tr = new();
    c_tr.data = 5;
    c_tr.display();
  end 
endmodule
