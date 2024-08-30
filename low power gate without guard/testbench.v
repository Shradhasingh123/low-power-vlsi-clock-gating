// Code your testbench here
// or browse Examples
module evaltb;
reg [31:0]a;
reg[31:0]b;
reg[31:0]in;
reg sel;
wire [31:0]y;
eval va(a,b,in,sel,y);
initial
begin
a=32'h1010;
b=32'h2020;
sel=1'b0;
in=32'h8181;
#5 sel=1'b1;
#5 sel=1'b1;
#5 sel=1'b0;
a=32'h2210;
b=32'h5320;
end
initial begin
$dumpfile("test.vcd");
$dumpvars;
#50 $finish;
end
endmodule