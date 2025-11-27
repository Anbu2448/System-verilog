class packet;
  rand bit[3:0] data;
  rand bit[3:0] value;
  
  constraint s24{data>10;value<5;};
  function void display();
    $display("data=%0d,value=%0d",data,value);
    endfunction
endclass

class child extends packet;
  constraint s24{data>10;value<5;};
endclass

module test;
  initial begin
    child c;
    c=new();
    repeat(5) begin
      c.randomize();
      c.display();
    end
  end
endmodule

//output
# data=15,value=2
# data=13,value=2
# data=13,value=1
# data=11,value=1
# data=12,value=4
