class board;
  rand bit [7:0] value;
  rand enum{low,mid,high}scale;
  
  constraint scale_c{
    if(scale==low)
      value<45;
    else if(scale==mid)
    {value>=45;value<=90;}
    else
      value>90;
  }
  endclass
  module test;
    board b;
      initial begin
        b=new();
        repeat(10)begin;
          b.randomize();
          $display("scale=%0d,value=%0d",b.scale.name,b.value);
        end
      end
  endmodule

//output
# scale=high,value=239
# scale=high,value=158
# scale=high,value=177
# scale=low,value=22
# scale=high,value=152
# scale=mid,value=60
# scale=high,value=133
# scale=mid,value=85
# scale=high,value=112
# scale=low,value=10
