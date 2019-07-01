library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder is 

	port (
	
		q : in std_logic;
		identifier : in std_logic;
		bcd : out std_logic_vector(15 downto 0)
	
	);

end decoder;

architecture a_decoder of decoder is

begin
	

end a_decoder;