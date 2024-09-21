//module main(KEY,SW,O);
module main(KEY,SW,HEX1,HEX0);
	input [1:0] KEY;
	input [1:0] SW;
	wire [7:0] q; //eeprom outputs
	wire [3:0] w1,w2,w3,w4,w5,w6,w7,w8; //4 bit wires
	wire R;
	wire w9,w10; //ff
	//output [3:0] O;
	output [6:0] HEX1,HEX0;
	
	assign R = SW[0];
	eeprom e1(w7,KEY[0],q);
	
	initialmux m1(w4,q[2:0],q[3],w1);
	
	decoder d1(q[5],q[4],w6);
	
	D_register RA (KEY[0],R,w6[0],w1,w2);
	D_register RB (KEY[0],R,w6[1],w1,w3);
	D_register RO (KEY[0],R,w6[2],w2,w8);
	
	display(w8,HEX1,HEX0);
	
	alu a1(w2,w3,q[2],w4,w9);
	
	operation_alu f1(KEY[0],w9,w10);
	
	counter c1(R,KEY[0],q[7],q[6],w10,q[2:0],w7);
	
	//assign O = w8;
	
endmodule