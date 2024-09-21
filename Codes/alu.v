module alu(A,B,s,Out,C);
input [3:0]A,B;
input s;
output reg C;
output reg [3:0]Out;


always@(*)
begin 
	if (s==1)
	{C,Out}=A+(~B)+1;
	if(s==0)
	{C,Out}=A+B;
end

endmodule

