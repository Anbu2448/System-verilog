module dynamic_array;
  int dyn_arr[];
  initial begin
  dyn_arr = new[6];
    for(int i=0;i<dyn_arr.size();i++);
    $display("dyn_arr elements");
    foreach (dyn_arr[i])begin;
    $display("dyn_arr[%0d]=%0d",i,dyn_arr[i]);
  end
  end
 endmodule

dyn_arr elements
# dyn_arr[0]=0
# dyn_arr[1]=0
# dyn_arr[2]=0
# dyn_arr[3]=0
# dyn_arr[4]=0
# dyn_arr[5]=0
