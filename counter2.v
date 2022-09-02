module counter2 (reset , inp, out);	
	input inp , reset ;
	output reg[3:0] out ;
	initial out = 0	;
		always@(inp , reset )
			begin 
				if(reset)
				out = 0 ;
			else
				begin
					if(inp == 1)
						out = out + 1 ;
					else 
						out = out ;
			end
			end
	endmodule
	