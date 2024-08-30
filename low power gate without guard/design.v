// Code your design here
module eval(a,b,in,sel,y);
input [31:0]a;
input[31:0]b;
input[31:0]in;
input sel;
output reg [31:0]y;
wire [31:0] sum;
assign sum=a+b;
always @(a,b,sel,sum)
begin
case(sel)
1'b1: y=sum;
1'b0: y=in;
endcase
end

endmodule