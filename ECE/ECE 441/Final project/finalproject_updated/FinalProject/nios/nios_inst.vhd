	component nios is
		port (
			clk_clk             : in  std_logic                    := 'X';             -- clk
			gpio_out_export     : out std_logic_vector(7 downto 0);                    -- export
			led_out_export      : out std_logic_vector(7 downto 0);                    -- export
			switches_out_export : in  std_logic_vector(7 downto 0) := (others => 'X')  -- export
		);
	end component nios;

	u0 : component nios
		port map (
			clk_clk             => CONNECTED_TO_clk_clk,             --          clk.clk
			gpio_out_export     => CONNECTED_TO_gpio_out_export,     --     gpio_out.export
			led_out_export      => CONNECTED_TO_led_out_export,      --      led_out.export
			switches_out_export => CONNECTED_TO_switches_out_export  -- switches_out.export
		);

