module sum(a,b,out);
input a;
input b;
output out;
assign out=a^b;
endmodule
module carry(a,b,c);
input a;
input b;
output c;
assign c=a&b;
endmodule 
module test_bench_half_adder();
reg x;
reg y;
wire out1;
wire c1;
sum s1(.a(x),.b(y),.out(out1));
carry c2(.a(x),.b(y),.c(c1));
initial
begin
x=0;y=0;#50;
x=0;y=1;#50;
x=1;y=0;#50;
x=1;y=1;#50;
end
endmodule
