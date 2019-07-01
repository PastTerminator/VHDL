library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pwd is
	port (
		clk : in std_logic;
		divider_clock : buffer std_logic
	);
end pwd;

architecture a_freq_divider_mod60 of pwd is
begin
	process(clk)
		variable q : natural range 0 to 10;
		begin
			if (rising_edge(clk)) then
				if (q = 2) then
					if (divider_clock = '1') then
						divider_clock <= '0';
					else
						divider_clock <= '1';
					end if;
				end if;
				
				if (q = 10) then
					if (divider_clock = '1') then
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




