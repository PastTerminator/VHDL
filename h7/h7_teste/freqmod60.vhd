library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity freqmod60 is
	port (
		clk : in std_logic;
		divider_clock : buffer std_logic
	);
end freqmod60;

architecture a_freqmod60 of freqmod60 is
begin
	process(clk)
		variable q : natural range 0 to 5;
		begin
			if (rising_edge(clk)) then
				if (q = 5) then
					if divider_clock = '1' then
						divider_clock <= '0';
					else
						divider_clock <= '1';
						
					q := 0;
					end if;
				else 	
					q := q + 1;
				end if;
			end if;
	end process;
end a_freqmod60; 




