module operation_alu(clk,in,C); //side ff for cout
	input clk;
	input [3:0] in;
	output reg [3:0] C;
	
always @(posedge clk)
begin
	C <= in;
end

endmodule