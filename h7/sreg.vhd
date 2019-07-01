library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sreg is

	port (
		data_in : in std_logic_vector(15 downto 0);
		clk : in std_logic; 
		load : in std_logic;
		
		data_out : out std_logic_vector(15 downto 0)
	);


end sreg;

architecture a_register of sreg is

begin
	process(clk)
	begin
		if (rising_edge(clk) and load = '1') then
			data_out <= data_in;
		end if;
	end process;


end a_register;