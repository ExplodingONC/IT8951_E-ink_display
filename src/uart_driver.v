module uart_driver
	#(
		parameter CLOCK_IN = 24000000,
		parameter BAUD_RATE = 115200
	)
	(
		input wire clk_in,
		input wire rst_n,
		
		input wire tx_trigger,
		output wire tx_ready,
		input wire [7:0]tx_data,
		input wire rx_trigger,
		output wire rx_ready,
		output wire [7:0]rx_data,
		
		output wire uart_tx,
		input wire uart_rx
	);
	
//***time control***//
	localparam [15:0]bit_interval = CLOCK_IN / BAUD_RATE;
	reg [15:0]tx_bit_interval_counter = 16'b0;		//tx use
	reg [3:0]tx_bit_counter = 4'b0;
	reg [15:0]rx_bit_interval_counter = 16'b0;		//rx use
	reg [3:0]rx_bit_counter = 4'b0;
	
//***buffers***//
	//tx buffer
	wire tx_full;
	wire tx_empty;
	assign tx_ready = ~tx_full;
	reg tx_read;
	wire [7:0]tx_byte;
	reg [9:0]tx_byte_sending;
	uart_buffer tx_buffer (
		.rst(~rst_n),
		.clkw(clk_in),
		.we(tx_trigger),
		.di(tx_data),
		.clkr(clk_in),
		.re(tx_read),
		.do(tx_byte),
		.empty_flag(tx_empty),
		.full_flag(tx_full)
	);
	//rx buffer
	wire rx_empty, rx_full;
	assign rx_ready = ~rx_empty & ~rx_trigger;
	reg rx_save;
	wire [7:0]rx_byte;
	reg [9:0]rx_byte_receiving;
	uart_buffer rx_buffer (
		.rst(~rst_n),
		.clkw(clk_in),
		.we(rx_save),
		.di(rx_byte),
		.clkr(clk_in),
		.re(rx_trigger),
		.do(rx_data),
		.empty_flag(rx_empty),
		.full_flag(rx_full)
	);
	
	
//***tx module***//
	reg tx_busy = 1'b0;
	reg tx_bit = 1'b0;
	always @(posedge clk_in) begin
		//reset
		if ( ~rst_n ) begin
			tx_read <= 1'b0;
			tx_busy <= 1'b0;
			tx_bit_interval_counter <= 16'b0;
			tx_bit_counter <= 4'b0;
			tx_byte_sending <= 10'b0;
			tx_bit <= 1'b1;
		end
		//start tx
		if ( tx_busy ) begin
			if ( tx_bit_interval_counter < bit_interval - 1 )
				tx_bit_interval_counter <= tx_bit_interval_counter + 1'b1;
			else begin
				tx_bit_interval_counter <= 16'b0;
				tx_bit_counter <= tx_bit_counter + 1'b1;
			end
		end	else begin
			tx_bit <= 1'b1;
			if ( ~tx_empty ) begin
				tx_busy <= 1'b1;
				tx_bit_interval_counter <= 16'b0;
				tx_bit_counter <= 4'b0;
				tx_read <= 1'b1;
				tx_byte_sending <= {1'b1,tx_byte,1'b0};
			end
		end
		//read tx buffer
		if ( tx_read ) begin
			tx_read <= 1'b0;
		end
		//execute tx timing
		if  ( tx_busy == 1 && tx_bit_interval_counter == 0 ) begin
			tx_bit <= tx_byte_sending[tx_bit_counter];
		end
		//finish tx
		if ( tx_bit_counter == 10 ) begin
			tx_busy <= 1'b0;
			tx_bit_interval_counter <= 16'b0;
			tx_bit_counter <= 4'b0;
		end
	end
	//tx line drive
	assign uart_tx = tx_bit;
	
	
//***rx module***//
	reg rx_busy = 1'b0;
	reg rx_bit = 1'b0;
	always @(posedge clk_in) begin
		//reset
		if ( ~rst_n ) begin
			rx_save <= 1'b0;
			rx_busy <= 1'b0;
			rx_bit_interval_counter <= 16'b0;
			rx_bit_counter <= 4'b0;
			rx_byte_receiving <= 10'b0;
			rx_bit <= 1'b1;
		end
		//start rx
		if ( rx_busy ) begin
			if ( rx_bit_interval_counter < bit_interval - 1 )
				rx_bit_interval_counter <= rx_bit_interval_counter + 1'b1;
			else begin
				rx_bit_interval_counter <= 16'b0;
				rx_bit_counter <= rx_bit_counter + 1'b1;
			end
		end	else begin
			//rx_byte_receiving <= 10'b0;
			if ( ~uart_rx ) begin
				rx_busy <= 1'b1;
				rx_bit_interval_counter <= 16'b0;
				rx_bit_counter <= 4'b0;
				rx_byte_receiving <= 10'b0;
			end
		end
		//execute rx timing
		if  ( rx_busy == 1 && rx_bit_interval_counter == ( bit_interval >> 1 ) ) begin
			rx_byte_receiving[rx_bit_counter] <= uart_rx;
		end
		//finish rx
		if ( rx_bit_counter == 9 ) begin
			if ( rx_bit_interval_counter - ( bit_interval >> 1 ) == 1 )
				rx_save <= 1'b1;
			if ( rx_bit_interval_counter - ( bit_interval >> 1 ) == 2 ) begin
				rx_save <= 1'b0;
				rx_busy <= 1'b0;
				rx_bit_interval_counter <= 16'b0;
				rx_bit_counter <= 4'b0;
			end
		end
	end
	assign rx_byte = rx_byte_receiving[8:1];
	
	
endmodule
