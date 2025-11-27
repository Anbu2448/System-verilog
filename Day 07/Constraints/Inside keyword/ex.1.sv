class packet;
  rand bit [8:0]value;
  rand bit [8:0]data;
  
  constraint s24{value inside{data};};
  function void display();
    $display("value=%d,data=%d",value,data);
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
# value=257,data=257
# value=419,data=419
# value=248,data=248
# value=324,data=324
# value=438,data=438
