module fixed_array;
  int arr[4] = '{1,2,3,4};
  initial begin
    foreach (arr[i]) begin
      $display("element %0d,i=%0d",arr[i],i);
    end
  end
endmodule

# element 1,i=0
# element 2,i=1
# element 3,i=2
# element 4,i=3
