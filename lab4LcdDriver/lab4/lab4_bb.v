
module lab4 (
	clk_clk,
	leds_export,
	reset_reset_n,
	sdram_clk_clk,
	sdram_ctrl_wire_addr,
	sdram_ctrl_wire_ba,
	sdram_ctrl_wire_cas_n,
	sdram_ctrl_wire_cke,
	sdram_ctrl_wire_cs_n,
	sdram_ctrl_wire_dq,
	sdram_ctrl_wire_dqm,
	sdram_ctrl_wire_ras_n,
	sdram_ctrl_wire_we_n);	

	input		clk_clk;
	output	[7:0]	leds_export;
	input		reset_reset_n;
	output		sdram_clk_clk;
	output	[11:0]	sdram_ctrl_wire_addr;
	output	[1:0]	sdram_ctrl_wire_ba;
	output		sdram_ctrl_wire_cas_n;
	output		sdram_ctrl_wire_cke;
	output		sdram_ctrl_wire_cs_n;
	inout	[15:0]	sdram_ctrl_wire_dq;
	output	[1:0]	sdram_ctrl_wire_dqm;
	output		sdram_ctrl_wire_ras_n;
	output		sdram_ctrl_wire_we_n;
endmodule
