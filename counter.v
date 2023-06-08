module counter(reset,clk,J,C,Cout,custom_input,count);
	input reset,clk,J,C,Cout;
	input [2:0] custom_input;
	output reg 	[3:0] count;
	wire [3:0] w;
	wire load;

assign w[2:0] = custom_input;
assign w[3] = 0;
assign load = J | (C & Cout); 		
	
always @(posedge clk, posedge reset)
begin
	if(reset == 1)
		count <= 4'b0000;
	else if(load)
		count <= w;
	else
		count <= count + 4'b0001;
end

endmodule


