class transaction #(parameter int WIDTH=6,
                    parameter int ID_WIDTH=5);
  bit [WIDTH-1:0] data;
  int id;
  function void display();
    $display("data=%0b,id=%0b",data,id);
  endfunction
endclass
module test;
  transaction t1;
  transaction #(3,5)t2;
  initial begin
    t1=new();
    t2=new();
    t1.data=6;
    t1.id=12;
    t1.display();
    
    t2.data=7;
    t2.id=17;
    t2.display();
  end
endmodule
//output
# data=110,id=1100
# data=111,id=10001
