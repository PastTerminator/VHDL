library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity freq_div_3 is
	port (
		clk : in std_logic;
		divider_clock : buffer std_logic
	);
end freq_div_3;

architecture a_freq_divider_mod60 of freq_div_3 is
begin
	process(clk)
		variable q : natural range 0 to 3;
		begin
			if (rising_edge(clk)) then
				if (q = 3) then
					if divider_clock = '1' then
						divider_clock <= '0';
					else
						divider_clock <= '1';
					end if;
					q := 0;
				else 	
					q := q + 1;
				end if;
			end if;
	end process;
end a_freq_divider_mod60; 




