module counter(clk, reset , out);
	input clk , reset ;
	output reg out ;
	always@(posedge clk , posedge reset)
		begin
			if(reset)
				out = 0 ;
			else 
				out = 1 ;
		end
	endmodule
			