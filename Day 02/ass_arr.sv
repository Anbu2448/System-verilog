module ass_arr;
  int arr[string];
  initial begin
    arr["bench"] = 10;
    arr["chair"] = 20;
    $display("bench = %0d", arr["bench"]);
    $display("chair = %0d", arr["chair"]);
  end
endmodule
