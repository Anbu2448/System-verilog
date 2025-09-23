module oned_unpacked_arr;
  int arr[5]={1,2,3,4,5};
  int i;
  int sum = 0;
  
  initial begin
    for(i=0;i<=5;i=i+1)
      sum+=arr[i];
    $display ("sum of array = %0d",sum);
  end
endmodule
