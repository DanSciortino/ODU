
module nios (
	clk_clk,
	gpio_out_export,
	switches_out_export,
	led_out_export);	

	input		clk_clk;
	output	[7:0]	gpio_out_export;
	input	[7:0]	switches_out_export;
	output	[7:0]	led_out_export;
endmodule
