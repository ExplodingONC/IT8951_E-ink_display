module top (
	//clock in
	input wire clk_in,
	//GPIO
	input wire [15:0]switch_port,
	input wire [4:0]button_port,
	output wire [15:0]led_port,
	//UART
	output wire uart_tx,
	input wire uart_rx,
	//SPI
	output wire spi_mosi,
	input wire spi_miso,
	output wire spi_clk,
	output wire spi_cs_0,
	output wire spi_cs_1,
	//misc
	output wire it8951_reset,
	input wire it8951_ready,
	//watcher
	output	wire [10:0]SA_prob,
	output	wire [1:0]BA_prob,
	output	wire [1:0]CS_prob,
	output	wire RAS_prob,
	output	wire CAS_prob,
	output	wire WE_prob,
	output	wire [1:0]DQM_prob
);
	
	//internal logics
	wire reset, reset_n;
	assign reset = ~button_port[0];
	assign reset_n = button_port[0];
	wire [15:0]debug_port;
	
	reg [31:0]counter;
	reg [31:0]timer;
	reg [7:0]subpixel[3:0];
	reg [1:0]subpixel_counter;
	reg [15:0]pixel_group;
	reg [1:0]group_counter;
	reg [15:0]cursor_X, cursor_Y;
	reg [7:0]data_buffer[53:0];
	
	reg header_valid;
	reg start_receiving;
	reg display_trigger;

	//system clocks
	wire clk_main, clk_sdram, clk_io;
	sys_pll CLOCK (
		.refclk(clk_in),		//24MHz, input
		.reset(),
		.stdby(),
		.extlock(),
		.clk0_out(clk_main),	//96MHz
		.clk1_out(clk_sdram),	//96MHz, 120бу shifted
		.clk2_out(clk_io)		//96MHz, 180бу shifted
	);
	
	//UART module
	reg tx_trigger, rx_trigger;
	wire tx_ready, rx_ready;
	reg [7:0]tx_data;
	wire [7:0]rx_data;
	uart_driver #(
		.CLOCK_IN(96000000),
		.BAUD_RATE(921600)
	) UART (
		.clk_in(clk_main),
		.rst_n(reset_n),
		.tx_trigger(tx_trigger),
		.tx_ready(tx_ready),
		.tx_data(tx_data),
		.rx_trigger(rx_trigger),
		.rx_ready(rx_ready),
		.rx_data(rx_data),
		.uart_tx(uart_tx),
		.uart_rx(uart_rx)
	);
	
	//stack for image line flipping
	reg stack_ce, stack_we;
	wire stack_empty, stack_full;
	wire stack_valid;
	wire [3:0]stack_pop;
	line_stack STACK (
		.clk(clk_main),
		.ce(stack_ce),
		.we(stack_we),
		.di(subpixel[3][7:4]),
		.do(stack_pop),
		.empty(stack_empty),
		.full(stack_full),
		.valid(stack_valid),
		.usage()
	);
	
	//SDRAM
	wire [15:0]data_write;
	reg write_enable;
	wire [15:0]data_read;
	wire read_enable;
	Sdram_Control_4Port SDRAM (
		//	HOST Side
		.CTRL_CLK(clk_main),
		.SDRAM_CLK(clk_sdram),
		.RESET_N(reset_n),
		//	FIFO Write Side 1
		.WR1_DATA(data_write),
		.WR1(write_enable),
		.WR1_ADDR(0),
		.WR1_MAX_ADDR(120512),
		.WR1_LENGTH(256),
		.WR1_LOAD(reset|header_valid),
		.WR1_CLK(clk_main),
		.WR1_FULL(),
		.WR1_USE(),
		//	FIFO Read Side 1
		.RD1_DATA(data_read),
		.RD1(read_enable),
		.RD1_ADDR(0),
		.RD1_MAX_ADDR(120512),
		.RD1_LENGTH(256),
		.RD1_LOAD(reset|display_trigger),
		.RD1_CLK(clk_main),
		.RD1_EMPTY(),
		.RD1_USE(),
		//watcher
		.SA_prob(SA_prob),
		.BA_prob(BA_prob),
		.CS_prob(CS_prob),
		.RAS_prob(RAS_prob),
		.CAS_prob(CAS_prob),
		.WE_prob(WE_prob),
		.DQM_prob(DQM_prob)
	);
	assign data_write = pixel_group;
	
	//IT8951 test driver
	it8951_driver IT8951 (
		.clk_in(clk_main),
		.rst_n(reset_n),
		.spi_mosi(spi_mosi),
		.spi_miso(spi_miso),
		.spi_clk(spi_clk),
		.spi_cs(spi_cs_0),
		.pixel_in(data_read),
		.pixel_trigger(read_enable),
		.display_trigger(display_trigger),
		.it8951_reset(it8951_reset),
		.it8951_ready(it8951_ready)
	);
	
	
	//UART loopback test & e-ink display test
	always @(posedge clk_main) begin
		//reset
		if ( reset ) begin
			tx_data <= 8'b0;
			tx_trigger <= 1'b0;
			rx_trigger <= 1'b0;
			cursor_X <= 16'b0;
			cursor_Y <= 16'b0;
			write_enable <= 1'b0;
			header_valid <= 1'b0;
			start_receiving <= 1'b0;
			display_trigger <= 1'b0;
			timer <= 32'b0;
			counter <= 32'b0;
			subpixel_counter <= 2'b0;
			pixel_group <= 16'b0;
			group_counter <= 2'b0;
			stack_ce <= 1'b0;
			stack_we <= 1'b0;
		end
		//uart loop-back & image generate
		else begin
			//rx
			if ( rx_ready ) begin
				tx_data <= rx_data;
			end
			//tx			
			if ( rx_trigger ) begin
				tx_trigger <= 1'b1;
			end else begin
				tx_trigger <= 1'b0;
			end
			//watchdog
			if ( counter > 0 || start_receiving ) begin
				if ( rx_ready ) timer <= 32'b0;
				else timer <= timer + 1'b1;
			end
			if ( timer >= 100000000 && timer < 100001000 ) begin
				counter <= 32'b0;
				write_enable <= 1'b0;
				start_receiving <= 1'b0;
				stack_we <= 1'b0;
				stack_ce <= 1'b1;
			end else if ( timer >= 100001000 ) begin
				if ( ~start_receiving ) stack_ce <= 1'b0;
				timer <= 32'b0;
			end
			//locate image header
			if ( ~start_receiving ) begin
				//receive
				if ( rx_ready ) begin
					data_buffer[counter] <= rx_data;
					counter <= counter + 1'b1;
					rx_trigger <= 1'b1;
				end else begin
					rx_trigger <= 1'b0;
				end
				//check file header
				if ( counter == 2 ) begin
					if ( data_buffer[0] == 8'h42 && data_buffer[1] == 8'h4D ) begin
						//valid header for .bmp files
						
					end else begin
						//invalid data
						counter <= 32'b1;
						data_buffer[0] <= data_buffer[1];	//shift the second byte
					end
				end else if ( counter == 54 ) begin
					counter <= 32'b0;
					header_valid <= 1'b1;
					start_receiving <= 1'b1;
					stack_we <= 1'b1;
					stack_ce <= 1'b0;
				end
			end
			//receive image data
			if ( start_receiving ) begin
				//receive
				if ( rx_ready && stack_we ) begin
					subpixel[subpixel_counter] <= rx_data;
					subpixel_counter <= subpixel_counter + 1'b1;
					rx_trigger <= 1'b1;
				end else begin
					rx_trigger <= 1'b0;
				end
				//data process and push stack
				if ( subpixel_counter == 3 ) begin
					subpixel_counter <= 2'b0;
					subpixel[3] <= ( subpixel[2] >> 2 ) + ( subpixel[1] >> 1 ) + ( subpixel[1] >> 3 ) + ( subpixel[0] >> 3 );
					stack_ce <= 1'b1;
				end
				if ( stack_ce && stack_we ) begin
					stack_ce <= 1'b0;
				end
				//pop stack
				if ( stack_full ) begin 
					stack_we <= 1'b0;
					stack_ce <= 1'b1;
				end
				if ( ~stack_we && stack_valid ) begin
					group_counter <= group_counter + 1'b1;
					pixel_group[ group_counter * 4 +: 4 ] <= stack_pop;
					if ( group_counter == 3 ) begin
						write_enable <= 1'b1;
						counter <= counter + 1'b1;
						if ( stack_empty ) begin
							stack_ce <= 1'b0;
							stack_we <= 1'b1;
							group_counter <= 2'b0;
						end
					end
				end
				//flush all data into sdarm
				if ( counter >= 120000 && counter < 120200 ) begin
					pixel_group <= 16'hFFFF;
					write_enable <= 1'b1;
					counter <= counter + 1'b1;
				end
				//end
				if ( counter >= 120200 ) begin
					counter <= 32'b0;
					write_enable <= 1'b0;
					start_receiving <= 1'b0;
					display_trigger <= 1'b1;
				end
			end
			//clear triggers
			if ( display_trigger ) display_trigger <= 1'b0;
			if ( header_valid ) header_valid <= 1'b0;
			if ( write_enable ) write_enable <= 1'b0;
		end
	end
	
	assign led_port = ~( switch_port | debug_port );
	assign debug_port[0] = reset;
	assign debug_port[1] = it8951_ready;
	assign debug_port[2] = it8951_reset;
	assign debug_port[3] = spi_mosi;
	assign debug_port[4] = spi_miso;

endmodule
