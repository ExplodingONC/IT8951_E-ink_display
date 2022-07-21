module it8951_driver (
	//clock in
	input wire clk_in,
	input wire rst_n,
	//SPI
	output wire spi_mosi,
	input wire spi_miso,
	output wire spi_clk,
	output reg spi_cs,
	//misc
	input wire [15:0]pixel_in,
	output reg pixel_trigger,
	input wire display_trigger,
	output reg it8951_reset,
	input wire it8951_ready
);
	
	//clocks
	wire clk_io;
	assign clk_io = ~clk_in;
	
	//SPI module
	reg [3:0]spi_flag_updated;
	reg [7:0]mosi_data;
	reg mosi_trigger;
	wire [7:0]miso_data;
	wire mosi_ready, miso_ready;
	spi_driver #(
		.SPI_MODE(0),
		.CLKS_PER_HALF_BIT(2)
	) SPI (
		.rst_n(rst_n),
		.clk_in(clk_io),
		.mosi_data(mosi_data),
		.mosi_trigger(mosi_trigger),
		.mosi_ready(mosi_ready),
		.miso_ready(miso_ready),
		.miso_data(miso_data),
		.spi_clk(spi_clk),
		.spi_mosi(spi_mosi),
		.spi_miso(spi_miso)
	);
	
		
	//status machine
	`define status_unknown 8'd0
	`define status_initialize 8'd1
	`define status_ready 8'd2
	`define status_wait_for_transfer 8'd3
	`define status_set_image_buffer 8'd4
	`define status_load_image_start 8'd5
	`define status_load_image_transfer 8'd6
	`define status_load_image_end 8'd7
	`define status_wait_for_display 8'd8
	`define status_display_image 8'd9
	`define status_done 8'd10
	reg [7:0]status;
	reg flag_initialized, flag_data_send;
	
	//logic contents
	reg [31:0]counter;
	reg [7:0]command_select, command_index;
	reg first_byte_done;
	wire [16:0]command;
	reg [15:0]result;
	reg result_ready;
	wire command_done;
	reg half_word;
	reg [25:0]image_address;
	reg [15:0]area_X, area_Y, area_W, area_H;
	reg [15:0]cursor_X, cursor_Y, pixel;
	reg [15:0]display_mode;
	command_generator COMMANDS (
		.addr_img_buffer(image_address),
		.area_X(area_X),
		.area_Y(area_Y),
		.area_W(area_W),
		.area_H(area_H),
		.pixel(pixel),
		.D_mode(display_mode),
		.command_select(command_select),
		.command_index(command_index),
		.command(command),
		.command_done(command_done)
	);
	
	//IT8951 test run
	always @(posedge clk_in) begin
		
		//reset
		if ( ~rst_n ) begin
			it8951_reset <= 1'b1;
			flag_initialized <= 1'b0;
			flag_data_send <= 1'b0;
			status <= `status_unknown;
			counter <= 32'b0;
			image_address <= 26'b0;
	 		area_X <= 16'b0;
	 		area_Y <= 16'b0;
	 		area_W <= 16'b0;
	 		area_H <= 16'b0;
	 		cursor_X <= 16'b0;
	 		cursor_Y <= 16'b0;
	 		pixel <= 16'b0;
	 		pixel_trigger <= 1'b0;
	 		display_mode <= 16'h0000;
			command_select <= 8'b0;
			command_index <= 8'd0;
			first_byte_done <= 1'b0;
			spi_flag_updated <= 4'b0;
			spi_cs <= 1'b1;
			mosi_data <= 8'b0;
			mosi_trigger <= 1'b0;
			result <= 16'b0;
			result_ready <= 1'b0;
			half_word <= 1'b0;
		end
		
		//run
		else begin
			
			//command sending mechanism
			if ( command_select == 0 ) begin
				command_index <= 8'd0;
				half_word <= 1'b0;
				spi_cs <= 1'b1;
				spi_flag_updated <= 4'd0;
				first_byte_done <= 1'b0;
			end else begin
				//flag update
				if ( mosi_ready && spi_flag_updated == 4'd0 ) begin
					spi_flag_updated <= 4'd1;
					if ( half_word && command[16] ) spi_cs <= 1'b1;	//release CS pin
					if ( first_byte_done ) begin	//next bype
						half_word <= ~half_word;
						if ( half_word ) command_index <= command_index + 1'b1;
					end
					first_byte_done <= 1'b1;
				end
				if ( mosi_ready && spi_flag_updated > 4'd0 && spi_flag_updated < 4'd8 ) begin
					spi_flag_updated <= spi_flag_updated + 1'b1;
					if ( spi_flag_updated == 4'd7 ) spi_cs <= 1'b0;	//set CS pin
				end
				//send
				if ( mosi_ready && spi_flag_updated == 4'd8 ) begin
					if ( half_word || it8951_ready ) begin
						if ( ~half_word ) begin 
							mosi_data <= command[15:8];
						end else begin
							mosi_data <= command[7:0];
						end
						if ( ~command_done ) begin
							mosi_trigger <= 1'b1;
						end
						spi_flag_updated <= 4'd0;
					end
				end else begin
					mosi_trigger <= 1'b0;
					mosi_data <= 8'b0;
				end
				//receive
				if ( miso_ready ) begin
					if ( ~half_word ) begin 
						result[15:8] <= miso_data;
					end else begin
						result[7:0] <= miso_data;
						result_ready <= 1'b1;
					end
				end
				if ( result_ready ) result_ready <= 1'b0;
			end
			
			//status machine
			case ( status )
			
				//just after reset, reset the IT8951 first
				`status_unknown: begin
					if ( counter < 10000000 ) begin				//keep high for 100ms
						it8951_reset <= 1'b1;
						counter <= counter + 1'b1;
					end else if ( counter < 20000000 ) begin	//pull down for 100ms
						it8951_reset <= 1'b0;
						counter <= counter + 1'b1;
					end else if ( counter < 100000000 ) begin	//keep high for 800ms
						it8951_reset <= 1'b1;
						counter <= counter + 1'b1;
					end else if ( it8951_ready ) begin			//clear for operation
						counter <= 32'b0;
						status <= `status_initialize;
					end
				end
				
				//initialize the IT8951 chip
				`status_initialize: begin
					if ( command_select != 2 ) begin		//set the command array
						command_select <= 8'd2;
					end else begin							//work
						if ( ~command_done ) begin	//working
							if ( result_ready && command_index == 8 ) image_address[15: 0] <= result;
							if ( result_ready && command_index == 9 ) image_address[25:16] <= result;
						end else begin				//done
							command_select <= 8'd0;
							counter <= 32'b0;
							status <= `status_ready;
						end
					end
					
				end
				
				//ready to work
				`status_ready: begin
					area_X <= 16'd0;
					area_Y <= 16'd0;
					area_W <= 16'd800;
					area_H <= 16'd600;
					if ( ~flag_initialized ) begin
						status <= `status_wait_for_transfer;
						display_mode <= 16'h0000;
						flag_initialized <= 1'b1;
					end else if ( display_trigger ) begin
						status <= `status_wait_for_transfer;
						display_mode <= 16'h0002;
					end
				end
				
				//wait for IT8951 for data transfer
				`status_wait_for_transfer: begin
					if ( command_select != 1 ) begin		//set the command array
						command_select <= 8'd1;
					end else begin							//work
						if ( ~command_done ) begin	//working
							//nothing
						end else begin				//done
							command_select <= 8'd0;
							if ( result == 16'b0 ) begin
								counter <= 32'b0;
								status <= `status_set_image_buffer;
							end
						end
					end
				end
				
				//assign image buffer address
				`status_set_image_buffer: begin
					if ( command_select != 3 ) begin		//set the command array
						command_select <= 8'd3;
					end else begin							//work
						if ( ~command_done ) begin	//working
							//nothing
						end else begin				//done
							command_select <= 8'd0;
							counter <= 32'b0;
							status <= `status_load_image_start;
						end
					end
				end
				
				//start the image transfer
				`status_load_image_start: begin
					if ( command_select != 4 ) begin		//set the command array
						command_select <= 8'd4;
					end else begin							//work
						if ( ~command_done ) begin	//working
							//nothing
						end else begin				//done
							command_select <= 8'd0;
							counter <= 32'b0;
							status <= `status_load_image_transfer;
						end
					end
				end
				
				//during the image transfer
				`status_load_image_transfer: begin
					if ( command_select != 5 ) begin		//set the command array
						command_select <= 8'd5;
						pixel <= pixel_in;
						pixel_trigger <= 1'b1;
					end else begin							//work
						pixel_trigger <= 1'b0;
						if ( ~command_done ) begin	//working
							//nothing
						end else begin				//done
							command_select <= 8'd0;							
							if ( counter < 119999 ) begin
								counter <= counter + 1'b1;
							end else begin
								counter <= 32'b0;
								status <= `status_load_image_end;
							end
						end
					end
				end
				
				//stop the image transfer
				`status_load_image_end: begin
					if ( command_select != 6 ) begin		//set the command array
						command_select <= 8'd6;
					end else begin							//work
						if ( ~command_done ) begin	//working
							//nothing
						end else begin				//done
							command_select <= 8'd0;
							counter <= 32'b0;
							status <= `status_wait_for_display;
						end
					end
				end
				
				//wait for IT8951 for display
				`status_wait_for_display: begin
					if ( command_select != 1 ) begin		//set the command array
						command_select <= 8'd1;
					end else begin							//work
						if ( ~command_done ) begin	//working
							//nothing
						end else begin				//done
							command_select <= 8'd0;
							if ( result == 16'b0 ) begin
								counter <= 32'b0;
								status <= `status_display_image;
							end
						end
					end
				end
				
				//display from IT8951 buffer
				`status_display_image: begin
					if ( command_select != 7 ) begin		//set the command array
						command_select <= 8'd7;
					end else begin							//work
						if ( ~command_done ) begin	//working
							//nothing
						end else begin				//done
							command_select <= 8'd0;
							counter <= 32'b0;
							status <= `status_done;
						end
					end
				end
				
				//all done
				`status_done: begin
					//nothing to do here
					status <= `status_ready;
				end
				
				//something went wrong
				default: begin
					status <= `status_unknown;
				end
				
			endcase	//end status machine
			
		end	//end run
		
	end
	
	
	
	
	
	
	
	
	
	
	
	
	

endmodule
