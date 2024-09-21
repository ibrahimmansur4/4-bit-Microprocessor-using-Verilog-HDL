module D2_register(clk,reseta,resetb,Ra,Rb,ena,enb,A,B);
	input clk,reseta,resetb;
	input [3:0] Ra,Rb;
	input ena,enb;
	output [3:0] A,B;

	D_register RA (clk,reseta,ena,Ra,A);
	D_register RB (clk,resetb,enb,Rb,B);
	

endmodule