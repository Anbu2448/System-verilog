class packet;
  rand bit a;
  rand bit[3:0] data;
  
  constraint c2{(a==1)-> data==0;}
  function void display();
    $display("class a=%d,data=%d",a,data);
  endfunction
endclass

module test;
  packet p;
  initial begin
    p=new();
    repeat(5) begin
      p.randomize();
      p.display();
    end
  end
endmodule
 //output
# class a=0,data=12
# class a=0,data= 2
# class a=0,data=12
# class a=0,data= 0
# class a=0,data=11
