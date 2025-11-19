class packet#(parameter int WIDTH=8);
  rand bit[WIDTH-1:0]data;
  
  function void display();
    $display("data=%0b",data);
  endfunction
endclass
module test;
  initial begin
    packet #(8)p1=new();
    packet #(16)p2=new();
    p1.randomize();
    p2.randomize();
    
    p1.display();
    p2.display();
  end
endmodule
//output
# data=100101
# data=1010011101100000
