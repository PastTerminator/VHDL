library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bouncer_mux is
	port (
		button3 : in std_logic;
		button7 : in std_logic;
		q3 : in std_logic;
		q4 : in std_logic;
		write_debouncer : out std_logic;
		identifier_debouncer : out std_logic
	);
end bouncer_mux;

architecture a_bouncer_mux of bouncer_mux is
begin
	process(button3, button7)
		begin
			if (button3 = '1' and button7 = '0') then
				write_debouncer <= q3;
			elsif (button3 = '0' and button7 = '1') then
				write_debouncer <= q4;
			else
				write_debouncer <= '0';
			end if;
	end process;
end a_bouncer_mux;