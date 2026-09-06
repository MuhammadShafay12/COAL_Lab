module decoder(a,b,c,out1,out2,out3,out4,out5,out6,out7,out8);
input a,b,c;
output out1,out2,out3,out4,out5,out6,out7,out8;
wire s1;
wire s2;
wire s3;
assign s1=~a;
assign s2=~b;
assign s3=~c;
assign out1=(s1&s2)&s3;
assign out2=(s1&s2)&c;
assign out3=(s1&b)&s3;
assign out4=(s1&b)&c;
assign out5=(a&s2)&s3;
assign out6=(a&s2)&c;
assign out7=(a&b)&s3;
assign out8=(a&b)&c;
endmodule
module decoder_test_bench();
reg x,y,z;
wire c1,c2,c3,c4,c5,c6,c7,c8;
decoder uu(.a(x),.b(y),.c(z),.out1(c1),.out2(c2),.out3(c3),.out4(c4),.out5(c5),.out6(c6),.out7(c7),.out8(c8));
initial
begin
x=0;y=0;z=0;#50;
x=0;y=0;z=1;#50;
x=0;y=1;z=0;#50;
x=0;y=1;z=1;#50;
x=1;y=0;z=0;#50;
x=1;y=0;z=1;#50;
x=1;y=1;z=0;#50;
x=1;y=1;z=1;#50;
end
endmodule
