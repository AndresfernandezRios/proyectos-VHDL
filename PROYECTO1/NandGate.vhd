-- Librerias

library ieee;
use ieee.std_logic_1164.all;

--Entidad

entity AndGate is
	port(
	
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
		
	);
	
end entity;

-- Arquitectura

architecture AndGate_Arch of AndGate is

	begin
		
		y <= a nand b;
		
		
end architecture;
	
	