class packet;
  rand bit [3:0] x;
  rand bit [3:0] y;
  rand bit [3:0] z;
  
  constraint s24 {x==y; y<6; z>7;};
  function void display();
    $display("x=%d,y=%d,z=%d",x,y,z);
  endfunction
endclass

module test;
  initial begin
    packet p;
    p=new();
    repeat(5) begin
      p.randomize();
      p.display();
    end
  end
endmodule

//output
# x= 2,y= 2,z=11
# x= 3,y= 3,z= 9
# x= 3,y= 3,z=11
# x= 4,y= 4,z= 8
# x= 4,y= 4,z=11
