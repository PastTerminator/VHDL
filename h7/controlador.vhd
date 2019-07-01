library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controlador is
	port (
	
		button : in std_logic;
		clk : in std_logic;
		priority_h5 : in std_logic;
		cod5 : out std_logic;
		c7 : out std_logic;
		fim_z : out std_logic;
		load : out std_logic;
		out_h7 : out std_logic
		
	);
	
end controlador;

architecture control of controlador is

begin

end control; 