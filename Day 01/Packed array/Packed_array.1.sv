module packed_array;
  bit[7:0] byte_array;
  logic[3:0][7:0] matrix;
  initial begin
    byte_array = 8'hA5;
    matrix = '{8'hA1,8'hA2,8'hA3,8'hA4};
    $display("byte_array=%0d",byte_array);
    foreach (matrix[i]) begin
      $display("matrix[%d]=%0b",i,matrix[i]);
    end
  end
endmodule

# byte_array=165
# matrix[          3]=10100001
# matrix[          2]=10100010
# matrix[          1]=10100011
# matrix[          0]=10100100
