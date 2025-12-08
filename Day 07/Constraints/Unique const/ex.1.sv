class packet;
  rand int a,b,c;
  constraint unique_c {unique {a,b,c};}
endclass
module test;
  packet p;
  initial begin
    p=new();
    repeat (4) begin
      p.randomize();
      $display("a=%d,b=%d,c=%d",p.a,p.b,p.c);
    end
  end
endmodule
//output
# a= 2009018608,b= -940970027,c= -599708412
# a=-1791543959,b= -242344144,c=  303176379
# a= 1127154967,b=-1899926985,c= 1036257819
# a=-1536575296,b=  873186413,c= -207399494
