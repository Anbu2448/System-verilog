class packet;
  rand int a,b;
  rand bit [3:0] value;
  
  constraint s24 {a+b==value;};
  function void display();
    $display("a=%d,b=%d,value=%d",a,b,value);
  endfunction
endclass

module test;
  initial begin
    packet p;
    p=new();
    repeat(10) begin
      p.randomize();
      p.display();
    end
  end
endmodule

//output
# a= 1524734112,b=-1524734112,value= 0
# a= 1850461629,b=-1850461618,value=11
# a= 2001140766,b=-2001140754,value=12
# a=  521725949,b= -521725939,value=10
# a=  814585502,b= -814585497,value= 5
# a=-1860766820,b= 1860766826,value= 6
# a= -235102414,b=  235102421,value= 7
# a=-1600579889,b= 1600579893,value= 4
# a=-1058634525,b= 1058634536,value=11
# a= 1317057331,b=-1317057330,value= 1
