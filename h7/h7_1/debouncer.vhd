library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debouncer is

	port (
	
		clk_div : in std_logic;
		aclear : in std_logic;
		trigger : in std_logic;
		data : in std_logic;
		q : out std_logic
	
	);
	
end debouncer;

architecture adebouncer of debouncer is
	
begin
	process(aclear, clk_div)
		variable cnt : natural range 0 to 255;
		begin
			if (aclear = '1') then
				cnt := 0;
			elsif (rising_edge(clk_div)) then
				if (trigger = '1') then
					cnt := 4;
				elsif (cnt /= 0) then
					cnt := cnt - 1;
				end if;
			end if;
			if (cnt = 0) then
				q <= '0';
			else
				q <= '1';
			end if;
	end process;
end adebouncer;

