module initialmux(alu_out,custom_input,s,m_out);
	input [3:0] alu_out;
	input [2:0] custom_input;
	input s;
	output reg [3:0] m_out;
	wire [3:0] w;
	
assign w[2:0] = custom_input;
assign w[3] = 0; 
	
always @(*)
begin
	if(s==0)
		m_out = alu_out;
	else 
		m_out = w;
end	
	
endmodule