class packet;
  rand int data;
  function void pre_randomize();
    $display("before randomize: data=%0d",data);
  endfunction
  function void post_randomize();
    $display("after randomize:data=%0d",data);
  endfunction
endclass
module test;
  packet p=new();
  initial begin
    repeat(5) begin
     p.randomize();
    end
  end
endmodule

//output
# before randomize: data=0
# after randomize:data=-1703372333
# before randomize: data=-1703372333
# after randomize:data=-1343011159
# before randomize: data=-1343011159
# after randomize:data=-1976701575
# before randomize: data=-1976701575
# after randomize:data=410391607
# before randomize: data=410391607
# after randomize:data=-109625653
