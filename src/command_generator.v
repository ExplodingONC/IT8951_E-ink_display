module command_generator(
	input wire [25:0]addr_img_buffer,
	input wire [15:0]area_X,
	input wire [15:0]area_Y,
	input wire [15:0]area_W,
	input wire [15:0]area_H,
	input wire [15:0]pixel,
	input wire [15:0]D_mode,
	input wire [7:0]command_select,
	input wire [7:0]command_index,
	output wire [16:0]command,
	output wire command_done
);

//commands  [16]need to release CS, [15:0]actual command

	//1
	wire [16:0]command_query_for_ready = 
		//read ready flag
		command_index ==  0 ? 17'h0_6000 :		//cmd
		command_index ==  1 ? 17'h1_0010 :		//cmd: read register
		command_index ==  2 ? 17'h0_0000 :		//data
		command_index ==  3 ? 17'h1_1224 :		//data: register adress: LUT Status Reg
		command_index ==  4 ? 17'h0_1000 :		//read data
		command_index ==  5 ? 17'h0_0000 :		//wait for data
		command_index ==  6 ? 17'h1_0000 :		//reading: LUT Status Reg
		17'h0_0000;
	wire doneflag_query_for_ready = ( command_index > 6 );
	
	//2
	wire [16:0]command_initialize = 
		//start system
		command_index ==  0 ? 17'h0_6000 :		//cmd
		command_index ==  1 ? 17'h1_0001 :		//cmd: system run
		//acquire device info
		command_index ==  2 ? 17'h0_6000 :		//cmd
		command_index ==  3 ? 17'h1_0302 :		//cmd: get dev info
		command_index ==  4 ? 17'h0_1000 :		//read data
		command_index ==  5 ? 17'h0_0000 :		//wait for data
		command_index ==  6 ? 17'h0_0000 :		//start reading
		command_index == 25 ? 17'h1_0000 :		//finish reading
		//enable packed write
		command_index == 26 ? 17'h0_6000 :		//cmd
		command_index == 27 ? 17'h1_0011 :		//cmd: write register
		command_index == 28 ? 17'h0_0000 :		//data
		command_index == 29 ? 17'h1_0004 :		//data: register adress: I80CPCR
		command_index == 30 ? 17'h0_0000 :		//data
		command_index == 31 ? 17'h1_0001 :		//data: enable
		//set vcom
		command_index == 32 ? 17'h0_6000 :		//cmd
		command_index == 33 ? 17'h1_0039 :		//cmd: vcom
		command_index == 34 ? 17'h0_0000 :		//data
		command_index == 35 ? 17'h1_0001 :		//data: mode: set
		command_index == 36 ? 17'h0_0000 :		//data
		command_index == 37 ? 17'h1_0870 :		//data: vcom: -2.16 (aka 2160)
		17'h0_0000;
	wire doneflag_initialize = ( command_index > 37 );
	
	//3
	wire [16:0]command_set_memory_address = 
		//set target memory address
		command_index ==  0 ? 17'h0_6000 :		//cmd
		command_index ==  1 ? 17'h1_0011 :		//cmd: write register
		command_index ==  2 ? 17'h0_0000 :		//data
		command_index ==  3 ? 17'h1_020A :		//data: register adress: LISAR+2
		command_index ==  4 ? 17'h0_0000 :		//data
		command_index ==  5 ? {1'b1,6'b0,addr_img_buffer[25:16]} :
												//data: addr[25:16]
		command_index ==  6 ? 17'h0_6000 :		//cmd
		command_index ==  7 ? 17'h1_0011 :		//cmd: write register
		command_index ==  8 ? 17'h0_0000 :		//data
		command_index ==  9 ? 17'h1_0208 :		//data: register adress: LISAR
		command_index == 10 ? 17'h0_0000 :		//data
		command_index == 11 ? {1'b1,addr_img_buffer[15:0]} :
												//data: addr[15:0]
		17'h0_0000;
	wire doneflag_set_memory_address = ( command_index > 11 );
	
	//4
	wire [16:0]command_load_image_start = 
		//start loading image area
		command_index ==  0 ? 17'h0_6000 :		//cmd
		command_index ==  1 ? 17'h1_0021 :		//cmd: load area image
		command_index ==  2 ? 17'h0_0000 :		//data
		command_index ==  3 ? 17'h1_0022 :		//data: image info (little endian, 4 bits per pixel, rotate 180)
		command_index ==  4 ? 17'h0_0000 :		//data
		command_index ==  5 ? {1'b1,area_X} :	//data: area X
		command_index ==  6 ? 17'h0_0000 :		//data
		command_index ==  7 ? {1'b1,area_Y} :	//data: area Y
		command_index ==  8 ? 17'h0_0000 :		//data
		command_index ==  9 ? {1'b1,area_W} :	//data: area W
		command_index == 10 ? 17'h0_0000 :		//data
		command_index == 11 ? {1'b1,area_H} :	//data: area H
		17'h0_0000;
	wire doneflag_load_image_start = ( command_index > 11 );
	
	//5
	wire [16:0]command_load_image_transfer = 
		//end loading image
		command_index ==  0 ? 17'h0_0000 :		//data
		command_index ==  1 ? {1'b1,pixel} :	//data: pixels
		17'h0_0000;
	wire doneflag_load_image_transfer = ( command_index > 1 );
	
	//6
	wire [16:0]command_load_image_end = 
		//end loading image
		command_index ==  0 ? 17'h0_6000 :		//cmd
		command_index ==  1 ? 17'h1_0022 :		//cmd: load image end
		17'h0_0000;
	wire doneflag_load_image_end = ( command_index > 1 );
	
	//7
	wire [16:0]command_display_image = 
		//display image area
		command_index ==  0 ? 17'h0_6000 :		//cmd
		command_index ==  1 ? 17'h1_0034 :		//cmd: load area image
		command_index ==  2 ? 17'h0_0000 :		//data
		command_index ==  3 ? {1'b1,area_X} :	//data: area X
		command_index ==  4 ? 17'h0_0000 :		//data
		command_index ==  5 ? {1'b1,area_Y} :	//data: area Y
		command_index ==  6 ? 17'h0_0000 :		//data
		command_index ==  7 ? {1'b1,area_W} :	//data: area W
		command_index ==  8 ? 17'h0_0000 :		//data
		command_index ==  9 ? {1'b1,area_H} :	//data: area H
		command_index == 10 ? 17'h0_0000 :		//data
		command_index == 11 ? {1'b1,D_mode} :	//data: INIT mode (0) / GC16 mode (2)
		17'h0_0000;
	wire doneflag_display_image = ( command_index > 11 );
	
	
	//command output
	assign command = 
		command_select ==  0 ? 17'h1_0000 :
		command_select ==  1 ? command_query_for_ready :
		command_select ==  2 ? command_initialize :
		command_select ==  3 ? command_set_memory_address :
		command_select ==  4 ? command_load_image_start :
		command_select ==  5 ? command_load_image_transfer :
		command_select ==  6 ? command_load_image_end :
		command_select ==  7 ? command_display_image :
		17'h1_0000;
	assign command_done =
		command_select ==  0 ? 1'b1 :
		command_select ==  1 ? doneflag_query_for_ready :
		command_select ==  2 ? doneflag_initialize :
		command_select ==  3 ? doneflag_set_memory_address :
		command_select ==  4 ? doneflag_load_image_start :
		command_select ==  5 ? doneflag_load_image_transfer :
		command_select ==  6 ? doneflag_load_image_end :
		command_select ==  7 ? doneflag_display_image :
		1'b1;


endmodule
