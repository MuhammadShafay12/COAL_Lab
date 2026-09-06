module ones_comp(a,b,c,d,e,f,g,h);
input a;
input b;
input c;
input d;
output e;
output f;
output g;
output h;
not t1(e,a);
not t2(f,b);
not t3(g,c);
not t4(h,d);
endmodule

module test_bench_05();
reg x;
reg y;
reg w;
reg u;
wire z1;
wire z2;
wire z3;
wire z4;
ones_comp uu(.a(x),.b(y),.c(w),.d(u),.e(z1),.f(z2),.g(z3),.h(z4));

initial 
begin

    x = 0; y = 0; w = 0; u = 0;
    #50;
    x = 0; y = 0; w = 0; u = 1;
    #50;
    x = 0; y = 0; w = 1; u = 0;
    #50;
    x = 0; y = 0; w = 1; u = 1;
    #50;
    x = 0; y = 1; w = 0; u = 0;
    #50;
    x = 0; y = 1; w = 0; u = 1;
    #50;
    x = 0; y = 1; w = 1; u = 0;
    #50;
    x = 0; y = 1; w = 1; u = 1;
    #50;
    x = 1; y = 0; w = 0; u = 0;
    #50;
    x = 1; y = 0; w = 0; u = 1;
    #50;
    x = 1; y = 0; w = 1; u = 0;
    #50;
    x = 1; y = 0; w = 1; u = 1;
    #50;
    x = 1; y = 1; w = 0; u = 0;
    #50;
    x = 1; y = 1; w = 0; u = 1;
    #50;
    x = 1; y = 1; w = 1; u = 0;
    #50;
    x = 1; y = 1; w = 1; u = 1;
    #50;

end
endmodule


