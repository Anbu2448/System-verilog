
class seq_item;
  rand bit[7:0] value1;
  rand bit[7:0] value2;
  
  constraint value1_c{value1 inside {[10:30]};}
  static constraint value2_c{value2 inside{40,60,70};}
endclass

module test;
  seq_item item1,item2;
  initial begin
    item1=new();
    item2=new();
    item1.randomize();
    item2.randomize();
    
    $display("before constraint disabling");
    $display("item1:item1.value1=%d,item1.value2=%d",item1.value1,item1.value2);
    $display("item2:item2.value1=%d,item2.value2=%d",item2.value1,item2.value2);
    
    item2.value2_c.constraint_mode(0);  
    item1.randomize();
    item2.randomize();
    $display("after constraint disabling for all value2 alone");
    $display("item1:item1.value1=%d,item1.value2=%d",item1.value1,item1.value2);
    $display("item2:item2.value1=%d,item2.value2=%d",item2.value1,item2.value2);
  end
endmodule
//output
# before constraint disabling
# item1:item1.value1= 20,item1.value2= 40
# item2:item2.value1= 19,item2.value2= 70
# after constraint disabling for all value2 alone
# item1:item1.value1= 15,item1.value2= 95
# item2:item2.value1= 29,item2.value2=194
