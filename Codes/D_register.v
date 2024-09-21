
module D_register(clk,reset,en,din,dout);
    input clk, en, reset;
    input[3:0] din;
    output reg[3:0] dout;


always @(posedge clk,posedge reset)
begin
    if (reset == 1)
        dout <= 4'b0000;
    else if (en)
        dout <= din;

end

endmodule
