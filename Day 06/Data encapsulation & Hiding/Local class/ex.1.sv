class transaction;
  bit[31:0] data;
  int id;
  function new();
    data=50;
    id=20;
    display();
  endfunction
  local function void display();
    $display("data=%0d,id=%0d",data,id);
  endfunction
endclass
module test;
  transaction tr;
  initial begin
    tr=new();
  end
endmodule
//output
# data=50,id=20
