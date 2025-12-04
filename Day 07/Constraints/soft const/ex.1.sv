class top;
  rand bit[7:0] data;
  rand bit[7:0] value;
  
  constraint c1 {soft data inside {10,20,30,40,50};}
  constraint c2 {soft value >30;}
endclass
module test;
  top t;
  initial begin
    t=new();
    repeat (5) begin
      t.randomize() with {data==40;value>30;};
      $display("data=%d, value=%d",t.data,t.value);
    end
  end
endmodule

//output
# data= 40, value= 36
# data= 40, value=171
# data= 40, value= 86
# data= 40, value=221
# data= 40, value=135
