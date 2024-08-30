// Code your design here
module latch(clk,a,b);
input clk;
input [31:0]a;
output reg [31:0]b;
always @(*)
if (clk==1'b1)
b<=a;
endmodule

module eval(a,b,in,sel,y);
input [31:0]a;
input[31:0]b;
input[31:0]in;
input sel;
wire [31:0]l_a;
wire [31:0]l_b;
wire [32:0] sum;
output reg [31:0]y;
latch l(.clk(sel),.a(a),.b(l_a));
latch m(.clk(sel),.a(b),.b(l_b));
assign sum = l_a + l_b;
always @(*)
if(sel==1'b1)
y=sum;
else

y=in;
endmodule