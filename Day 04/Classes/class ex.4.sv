//Passing current object
class packet;
  int id;
  function new(int id);
    this.id=id;
  endfunction
  function void show();
    $display("id=%od",id);
  endfunction
  function void compare(packet other);
    $display("this.id=%0d,other.id=%0d",this.id,other.id);
  endfunction
endclass
module test;
  packet p1,p2;
  initial begin
    p1=new(5);
    p2=new(10);
    p1.compare(p2);
  end
endmodule

//output
# this.id=5,other.id=10
