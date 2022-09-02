module clk2 (clock , Oclock);
	input clock ;
	output reg Oclock = 0 ;
	reg [25:0] counter = 0 ;
	always@(posedge clock) begin
		counter <= counter +1 ;
		if(counter == 7125000)begin
			counter <= 0 ;
			Oclock <= !Oclock ;
		end
	end
endmodule