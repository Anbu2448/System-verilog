class seq_item;
  rand bit[7:0]value1;
  rand bit[7:0]value2;
  
  constraint value1_c{value1 dist{2:/3,[6:8]:/5};}
  constraint value2_c{value2 dist{2:=3,[6:8]:=5};}
endclass
module example;
  seq_item item;
  initial begin
    item=new();
    repeat(5) begin
    item.randomize();
      $display("value1 (with :/) = %0d, value2 (with :=)= %0d", item.value1, item.value2);
    end
  end
endmodule

//output
# value1 (with :/) = 2, value2 (with :=)= 6
# value1 (with :/) = 7, value2 (with :=)= 7
# value1 (with :/) = 8, value2 (with :=)= 7
# value1 (with :/) = 2, value2 (with :=)= 8
# value1 (with :/) = 7, value2 (with :=)= 8
