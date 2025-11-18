class transaction;
  bit[31:0] data;
  int id;
  
  extern function void display();
    extern task delay();
      endclass
      function void transaction::display();
        $display("data=%0d,id=%0d",data,id);
      endfunction
      task transaction::delay();
        #50;
        $display("time=%0t,delay data=%0d",$time,data);
      endtask
      module test;
          transaction tr;
        initial begin
          tr=new();
          tr.data=100;
          tr.id=50;
          tr.display();
          tr.delay();
        end
      endmodule
      //output
      # data=100,id=50
# time=50,delay data=100
