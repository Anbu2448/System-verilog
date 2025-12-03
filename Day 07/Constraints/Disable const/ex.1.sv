class packet;
  rand int data;
  
  constraint c1{data inside {10,20,30,40,50};}
  function void display();
    $display("data=%d",data);
  endfunction
endclass

module test;
  packet p;
  initial begin
    p=new();
    repeat(4) begin
      p.randomize();
      p.display();
    end
    $display("disable constraint");
    p.c1.constraint_mode(0);
    repeat(4) begin
    p.randomize();
    p.display();
  end
  end
endmodule
//output
# data= 10
# data= 50
# data= 50
# data= 40
# disable constraint
# data= 1296376467
# data= 1779763087
# data= 1360007918
# data= 1370000966
