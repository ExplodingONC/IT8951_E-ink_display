module line_stack
(
	input wire rst,
	input wire clk,
	input wire ce,
	input wire we,
	input wire [3:0]di,
	output wire [3:0]do,
	output wire empty,
	output wire full,
	output reg valid,
	output wire [9:0]usage
);
	
	//ram used for stack
	reg [9:0]addr_i;
	reg [9:0]addr_o;
	wire [9:0]addr = we ? addr_i : addr_o;
	stack_ram RAM (
		.clka(clk),
		.cea(ce),
		.wea(we),
		.addra(addr),
		.dia(di),
		.doa(do)
	);
	
	`define empty 0
	`define line_size 800
	
	//address control
	always @(posedge clk) begin
		//reset
		if ( rst ) begin
			addr_i <= 10'b0;
			addr_o <= 10'b0;
		end
		//work
		else begin
			if ( ce ) begin
				//write
				if ( we ) begin 
					if ( addr_i < `line_size ) begin 
						addr_i <= addr_i + 1'b1;
						addr_o <= addr_i;
					end
					valid <= 1'b0;
				//read
				end else begin
					if ( addr_o > `empty ) begin
						addr_o <= addr_o - 1'b1;
					end
					if ( addr_i > `empty ) begin
						valid <= 1'b1;
					end else begin
						valid <= 1'b0;
					end
					addr_i <= addr_o;
				end
			end else begin
				valid <= 1'b0;
			end
		end
	end
	
	assign usage = addr_i;
	assign empty = ( addr_i == `empty );
	assign full = ( addr_i >= `line_size );

endmodule
