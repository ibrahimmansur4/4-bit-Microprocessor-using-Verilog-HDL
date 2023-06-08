module register_out(clk,Ro,reseto,eno,O);
	input clk,eno,reseto;
	input [3:0] Ro;
	output [3:0] O;
	
	D_register RO (clk,reseto,eno,Ro,O);
	

endmodule