class parent;
  int id;
endclass

class child extends parent;
  int data = 7777777;
endclass

module test;
  initial begin
    parent p;
    child c;
    c=new();
    p=c;
    if($cast(c,p))
      $display("cast success:c.data=%0d",c.data);
    else
      $display("cast failed");
  end
endmodule
//output
# cast success:c.data=7777777
