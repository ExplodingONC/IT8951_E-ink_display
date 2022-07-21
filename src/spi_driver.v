///////////////////////////////////////////////////////////////////////////////
//
// Description: SPI (Serial Peripheral Interface) Master
//              Creates master based on input configuration.
//              Sends a byte one bit at a time on MOSI
//              Will also receive byte data one bit at a time on MISO.
//              Any data on input byte will be shipped out on MOSI.
//
//              To kick-off transaction, user must pulse mosi_trigger.
//              This module supports multi-byte transmissions by pulsing
//              mosi_trigger and loading up mosi_data when mosi_ready is high.
//
//              This module is only responsible for controlling Clk, MOSI, 
//              and MISO.  If the SPI peripheral requires a chip-select, 
//              this must be done at a higher level.
//
// Note:        clk_in must be at least 2x faster than i_SPI_Clk
//
// Parameters:  SPI_MODE, can be 0, 1, 2, or 3.  See above.
//              Can be configured in one of 4 modes:
//              Mode | Clock Polarity (CPOL/CKP) | Clock Phase (CPHA)
//               0   |             0             |        0
//               1   |             0             |        1
//               2   |             1             |        0
//               3   |             1             |        1
//              More: https://en.wikipedia.org/wiki/Serial_Peripheral_Interface_Bus#Mode_numbers
//              CLKS_PER_HALF_BIT - Sets frequency of spi_clk.  spi_clk is
//              derived from clk_in.  Set to integer number of clocks for each
//              half-bit of SPI data.  E.g. 100 MHz clk_in, CLKS_PER_HALF_BIT = 2
//              would create o_SPI_CLK of 25 MHz.  Must be >= 2
//
///////////////////////////////////////////////////////////////////////////////

module spi_driver
	#(
		parameter SPI_MODE = 0,
		parameter CLKS_PER_HALF_BIT = 2
	)
  	(
		// Control/Data Signals,
		input wire rst_n,			// FPGA Reset
		input wire clk_in,		  	// FPGA Clock
		// TX (MOSI) Signals
		input wire [7:0]mosi_data,	// Byte to transmit on MOSI
		input wire mosi_trigger,	// Data Valid Pulse with mosi_data
		output reg mosi_ready,		// Transmit Ready for next byte
		// RX (MISO) Signals
		output reg miso_ready,		// Data Valid pulse (1 clock cycle)
		output reg [7:0]miso_data,	// Byte received on MISO
		// SPI Interface
		output reg spi_clk,
		output reg spi_mosi,
		input wire spi_miso
	);

	// SPI Interface (All Runs at SPI Clock Domain)
	wire CPOL;     // Clock polarity
	wire CPHA;     // Clock phase

	reg [$clog2(CLKS_PER_HALF_BIT*2)-1:0] spi_clk_count;
	reg 		r_spi_clk;
	reg [4:0] 	spi_clk_edges;
	reg 		leading_edge;
	reg			trailing_edge;
	reg			r_mosi_trigger;
	reg [7:0]	r_mosi_data;

	reg [2:0] 	miso_bit_count;
	reg [2:0] 	mosi_bit_count;

	// CPOL: Clock Polarity
	// CPOL=0 means clock idles at 0, leading edge is rising edge.
	// CPOL=1 means clock idles at 1, leading edge is falling edge.
	assign CPOL = (SPI_MODE == 2) | (SPI_MODE == 3);

	// CPHA: Clock Phase
	// CPHA=0 means the "out" side changes the data on trailing edge of clock
	//              the "in" side captures data on leading edge of clock
	// CPHA=1 means the "out" side changes the data on leading edge of clock
	//              the "in" side captures data on the trailing edge of clock
	assign CPHA = (SPI_MODE == 1) | (SPI_MODE == 3);


	// Purpose: Generate SPI Clock correct number of times when DV pulse comes
	always @(posedge clk_in or negedge rst_n) begin
	
		if ( ~rst_n ) begin
			mosi_ready <= 1'b0;
			spi_clk_edges <= 0;
			leading_edge <= 1'b0;
			trailing_edge <= 1'b0;
			r_spi_clk <= CPOL; // assign default state to idle state
			spi_clk_count <= 0;
		end else begin

			// Default assignments
			leading_edge <= 1'b0;
			trailing_edge <= 1'b0;
      
			if ( mosi_trigger ) begin
				mosi_ready <= 1'b0;
				spi_clk_edges <= 16;  // Total # edges in one byte ALWAYS 16
			end else if ( spi_clk_edges > 0 ) begin
				mosi_ready <= 1'b0;
        	
				if ( spi_clk_count == CLKS_PER_HALF_BIT * 2 - 1 ) begin
					spi_clk_edges <= spi_clk_edges - 1;
					trailing_edge <= 1'b1;
					spi_clk_count <= 0;
					r_spi_clk <= ~r_spi_clk;
				end else if ( spi_clk_count == CLKS_PER_HALF_BIT - 1 ) begin
					spi_clk_edges <= spi_clk_edges - 1;
					leading_edge <= 1'b1;
					spi_clk_count <= spi_clk_count + 1;
					r_spi_clk <= ~r_spi_clk;
				end else begin
					spi_clk_count <= spi_clk_count + 1;
				end
			end else begin
				mosi_ready <= 1'b1;
			end
			
		end // else: !if(~rst_n)
	end // always @ (posedge clk_in or negedge rst_n)


	// Purpose: Register mosi_data when Data Valid is pulsed.
	// Keeps local storage of byte in case higher level module changes the data
	always @(posedge clk_in or negedge rst_n) begin
		if ( ~rst_n ) begin
			r_mosi_data <= 8'h00;
			r_mosi_trigger <= 1'b0;
		end else begin
			r_mosi_trigger <= mosi_trigger; // 1 clock cycle delay
			if ( mosi_trigger ) begin
				r_mosi_data <= mosi_data;
			end
		end // else: !if(~rst_n)
	end // always @ (posedge clk_in or negedge rst_n)


	// Purpose: Generate MOSI data
	// Works with both CPHA=0 and CPHA=1
	always @(posedge clk_in or negedge rst_n) begin
		if ( ~rst_n ) begin
			spi_mosi <= 1'b0;
			mosi_bit_count <= 3'b111; // send MSb first
		end else begin
			// If ready is high, reset bit counts to default
			if ( mosi_ready ) begin
				mosi_bit_count <= 3'b111;
			end else if ( r_mosi_trigger & ~CPHA ) begin	// Catch the case where we start transaction and CPHA = 0
				spi_mosi <= r_mosi_data[3'b111];
				mosi_bit_count <= 3'b110;
			end else if ( ( leading_edge & CPHA ) | ( trailing_edge & ~CPHA ) ) begin
				mosi_bit_count <= mosi_bit_count - 1;
				spi_mosi <= r_mosi_data[mosi_bit_count];
			end
		end
	end


	// Purpose: Read in MISO data.
	always @(posedge clk_in or negedge rst_n) begin
		if ( ~rst_n ) begin
			miso_data <= 8'h00;
			miso_ready <= 1'b0;
			miso_bit_count <= 3'b111;
		end else begin
			// Default Assignments
			miso_ready <= 1'b0;

			if ( mosi_ready ) begin	// Check if ready is high, if so reset bit count to default
				miso_bit_count <= 3'b111;
			end else if ( ( leading_edge & ~CPHA ) | ( trailing_edge & CPHA ) ) begin
				miso_data[miso_bit_count] <= spi_miso;  // Sample data
				miso_bit_count <= miso_bit_count - 1;
				if ( miso_bit_count == 3'b000 ) begin
					miso_ready <= 1'b1;   // Byte done, pulse Data Valid
				end
			end
		end
	end
  
  
	// Purpose: Add clock delay to signals for alignment.
	always @(posedge clk_in or negedge rst_n) begin
		if ( ~rst_n ) begin
			spi_clk <= CPOL;
		end else begin
			spi_clk <= r_spi_clk;
		end // else: !if(~rst_n)
	end // always @ (posedge clk_in or negedge rst_n)
  

endmodule // SPI_Master