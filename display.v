module display(a,b,c);
	input [3:0] a;
	output [6:0] b,c;
	wire [3:0] w1,w2,w3;
	
	compare c1(a,w1);
	
	cct ct(a,w2);
	
	mux m(a,w2,w1[0],w3);
	
	seg s0(w3,c);
	seg s1(w1,b);



endmodule


module seg(x,y);
	input [3:0] x;
	output reg [6:0] y;

always@(*)
case(x)
	4'b0000: y = 7'b1000000;
	4'b0001: y = 7'b1111001;
	4'b0010: y = 7'b0100100;
	4'b0011: y = 7'b0110000;
	4'b0100: y = 7'b0011001;
	4'b0101: y = 7'b0010010;
	4'b0110: y = 7'b0000010;
	4'b0111: y = 7'b1111000;
	4'b1000: y = 7'b0000000;
	4'b1001: y = 7'b0010000;
endcase
endmodule


module compare(a,b);
	input [3:0] a;
	output reg [3:0] b;
always@(*)
begin	
	if(a > 4'b1001)
		b = 4'b0001;
	else
		b = 4'b0000;
end
endmodule

module mux(x,y,s,o);
	input [3:0] x,y;
	input s;
	output reg [3:0] o;
	
always@(*)
begin
	if(s==1)
		o = y;
	else 
		o = x;
end
endmodule


module cct(a,b);
	input [3:0] a;
	output reg [3:0] b;
always@(*)
	b = a - 4'b1010;
	
endmodule