library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debouncercopa is

	port (
	
		clk_div : in std_logic;
		aclear : in std_logic;
		trigger : in std_logic;
		data : in natural;
		q : out std_logic
	
	);
	
end debouncercopa;

architecture adebouncer of debouncercopa is

begin
	process(aclear, clk_div)
		variable n : natural range 0 to 255;
		begin
			if (rising_edge(clk_div)) then
				if (trigger = '1') then
					n := data;
				elsif (trigger = '0') then
					n := n - 1;
				end if;
			end if;
			if (n /= 0) then
				q <= '1';
			else
				q <= '0';
			end if;
	end process;
end adebouncer;