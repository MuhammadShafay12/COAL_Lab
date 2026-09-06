module comp_big(a,b,out);
input a;
input b;
output out;
wire t1;
wire t2;
wire ta;
wire tb;
not temp1(t1,a);
and temp2(ta,t1,b);
not temp3(t2,b);
and temp4(tb,a,t2);
or tt(out,ta,tb);
endmodule
module test_bench04();
reg x;
reg y;
wire z;
comp_big tt(.a(x),.b(y),.out(z));
initial 
begin 
x=0;y=0;
#50 x=1;y=0;
#50 x=0;y=1;
#50 x=1;y=1;
#50; 
end
endmodule
