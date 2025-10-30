module unpacked_array;
  int arr[3]='{1,2,3};
  bit[7:0]data[2];
  initial begin
    data[0] = 8'b10101010; 
    data[1] = 8'b11110000;
    foreach(arr[i])
      $display("arr[%0d]=%0d",i,arr[i]);
    foreach(data[j])
      $display("data[%0d)=%b",j,data[j]);
  end
endmodule

# arr[0]=1
# arr[1]=2
# arr[2]=3
# data[0)=10101010
# data[1)=11110000
