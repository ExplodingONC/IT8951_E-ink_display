module sdr_data_path(
	CLK,
	RESET_N,
	DATAIN,
	DM,
	DQOUT,
	DQM
);

`include        "Sdram_Params.h"

	input                  CLK;     // SDRAM控制器工作时�	
	input                  RESET_N; // SDRAM控制器复位输入信�	
	input   [`DSIZE-1:0]   DATAIN;  // host 写入数据
	input   [`DSIZE/8-1:0] DM;      // 字节屏蔽信号输入
	output  [`DSIZE-1:0]   DQOUT;	// 数据输出端口
	output  [`DSIZE/8-1:0] DQM;     // 字节屏蔽信号输出
	
	reg     [`DSIZE/8-1:0] DQM;

	//将输入和输出数据连接到数据流通路�	
	always @(posedge CLK or negedge RESET_N)
		if (RESET_N == 0)
			DQM <= `DSIZE / 8 - 8'hF;
		else
   	    	DQM	<= DM;
		  
	assign DQOUT = DATAIN;

endmodule

