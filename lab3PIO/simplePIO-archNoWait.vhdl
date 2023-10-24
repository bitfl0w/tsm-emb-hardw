architecture noWait of simplePIO is
	signal RegDir_D : std_logic_vector (7 DOWNTO 0);
	signal RegPort_D : std_logic_vector (7 DOWNTO 0);
	signal RegPin_D : std_logic_vector (7 DOWNTO 0);
begin 

pRegWr : process(Clk_CI, Reset_RLI)
begin
	if (Reset_RLI = ’0’) then
		-- Input by default
		RegDir_D <= (others => ’0’);
		RegPort_D <= (others => ’0’);
		elsif rising_edge(Clk_CI) then
			if Write_SI = ’1’ then
			-- Write cycle
			case Address_DI(2 downto 0) is
				when "000" => RegDir_D <= WriteData_DI;
				when "010" => RegPort_D <= WriteData_DI;
				when "011" => RegPort_D <= RegPort_D OR WriteData_DI;
				when "100" => RegPort_D <= RegPort_D AND NOT WriteData_DI;
				when others => null;
			end case;
		end if;
	end if;
end process pRegWr;