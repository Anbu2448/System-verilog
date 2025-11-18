class transaction;
  bit[31:0] data;
  static int id;
  
  static function void disp(int id);
    $display("id=0%d",id);
  endfunction
  function void auto_disp(int id);
    $display("id=%0d",id);
  endfunction
endclass
  
module test;
  initial begin
    transaction::id=10;
    transaction::disp(transaction::id);
   end
endmodule

//output
# id=0         10
