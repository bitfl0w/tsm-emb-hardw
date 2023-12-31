	lab1GetStarted u0 (
		.clk_clk               (<connected-to-clk_clk>),               //             clk.clk
		.reset_reset_n         (<connected-to-reset_reset_n>),         //           reset.reset_n
		.leds_export           (<connected-to-leds_export>),           //            leds.export
		.sdram_clk_clk         (<connected-to-sdram_clk_clk>),         //       sdram_clk.clk
		.sdram_ctrl_wire_addr  (<connected-to-sdram_ctrl_wire_addr>),  // sdram_ctrl_wire.addr
		.sdram_ctrl_wire_ba    (<connected-to-sdram_ctrl_wire_ba>),    //                .ba
		.sdram_ctrl_wire_cas_n (<connected-to-sdram_ctrl_wire_cas_n>), //                .cas_n
		.sdram_ctrl_wire_cke   (<connected-to-sdram_ctrl_wire_cke>),   //                .cke
		.sdram_ctrl_wire_cs_n  (<connected-to-sdram_ctrl_wire_cs_n>),  //                .cs_n
		.sdram_ctrl_wire_dq    (<connected-to-sdram_ctrl_wire_dq>),    //                .dq
		.sdram_ctrl_wire_dqm   (<connected-to-sdram_ctrl_wire_dqm>),   //                .dqm
		.sdram_ctrl_wire_ras_n (<connected-to-sdram_ctrl_wire_ras_n>), //                .ras_n
		.sdram_ctrl_wire_we_n  (<connected-to-sdram_ctrl_wire_we_n>)   //                .we_n
	);

