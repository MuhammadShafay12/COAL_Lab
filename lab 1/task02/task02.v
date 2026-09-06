module data_OR_gate(a,b,c);  //or Gate
input a;
input b;
output c;
assign c=a|b;

endmodule
module data_OR_test_bench(); // the input vars would be of reg type and the output vars would be of wire type
reg x;
reg y;
wire z;
 data_OR_gate uu(.a(x),.b(y),.c(z));
initial
begin
x=0;y=0;
#50 x=1;y=0;
#50 x=0;y=1;
#50 x=1;y=1;
end
endmodule
//and Gate
module data_AND_gate(a,b,c);  
input a;
input b;
output c;
assign c=a&b;

endmodule
module data_AND_test_bench();// the input vars would be of reg type and the output vars would be of wire type
reg x;
reg y;
wire z;
 data_AND_gate uu(.a(x),.b(y),.c(z));
initial
begin
x=0;y=0;
#50 x=1;y=0;
#50 x=0;y=1;
#50 x=1;y=1;
end
endmodule
//not Gate
module data_NOT_gate(a,c);  
input a;
output c;
assign c=~a;

endmodule
module data_NOT_test_bench();// the input vars would be of reg type and the output vars would be of wire type
reg x;
wire z;
 data_NOT_gate uu(.a(x),.c(z));
initial
begin
x=0;
#50 x=1;
#50;
end
endmodule
//NOR Gate
module data_NOR_gate(a,b,c);  
input a;
input b;
output c;
assign c=~(a|b);

endmodule
module data_NOR_test_bench();// the input vars would be of reg type and the output vars would be of wire type
reg x;
reg y;
wire z;
 data_NOR_gate uu(.a(x),.b(y),.c(z));
initial
begin
x=0;y=0;
#50 x=1;y=0;
#50 x=0;y=1;
#50 x=1;y=1;
end
endmodule
//XOR Gate
module data_XOR_gate(a,b,c);  
input a;
input b;
output c;
assign c=a^b;

endmodule
module data_XOR_test_bench();// the input vars would be of reg type and the output vars would be of wire type
reg x;
reg y;
wire z;
 data_XOR_gate uu(.a(x),.b(y),.c(z));
initial
begin
x=0;y=0;
#50 x=1;y=0;
#50 x=0;y=1;
#50 x=1;y=1;
end
endmodule
//Nand Gate
module data_NAND_gate(a,b,c);  
input a;
input b;
output c;
assign c=~(a&b);

endmodule
module data_NAND_test_bench();// the input vars would be of reg type and the output vars would be of wire type
reg x;
reg y;
wire z;
 data_NAND_gate uu(.a(x),.b(y),.c(z));
initial
begin
x=0;y=0;
#50 x=1;y=0;
#50 x=0;y=1;
#50 x=1;y=1;
end
endmodule
//XNOR Gate
module data_XNOR_gate(a,b,c);  
input a;
input b;
output c;
assign c=~(a^b);

endmodule
module data_XNOR_test_bench();// the input vars would be of reg type and the output vars would be of wire type
reg x;
reg y;
wire z;
 data_XNOR_gate uu(.a(x),.b(y),.c(z));
initial
begin
x=0;y=0;
#50 x=1;y=0;
#50 x=0;y=1;
#50 x=1;y=1;
end
endmodule

