module Queue;
  int q[$]='{1,2,3,4,5,6};
  initial begin
    q.insert($size(q)/2,8);
    $display ("%p",q);
    q.insert($size(q),7);
    $display ("%p",q);
    q.insert ($size(q),9);
    $display ("%p",q);
    q.delete($size(q)-1);
    $display ("%p",q);
    q.pop_front();
    $display ("%p",q);
    q.pop_back();
    $display ("%p",q);
    q.push_front(5);
    $display ("%p",q);
    q.push_back(2);
    $display ("%p",q);  
  end
endmodule
    
