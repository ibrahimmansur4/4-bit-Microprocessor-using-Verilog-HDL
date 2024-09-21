module fourbit(X,Y,Cin,Cout,Sum);
	input [3:0] X,Y;
	input Cin;
	output [3:0] Sum;
	output Cout;
	wire [3:1] C;
	
	fulladder stage0 (X[0],Y[0],Cin,C[1],Sum[0]);
	fulladder stage1 (X[1],Y[1],C[1],C[2],Sum[1]);
	fulladder stage2 (X[2],Y[2],C[2],C[3],Sum[2]);
	fulladder stage3 (X[3],Y[3],C[3],Cout,Sum[3]);

endmodule