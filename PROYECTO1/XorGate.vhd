-- librerias

library ieee;
use ieee.std_logic_1164.all;

--Entidades

entity XorGate is

	port(
	
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	
	);
end entity;

--Arquitectura

architecture XorGate_Arch of XorGate is
	signal x1, x2, x3, x4 : std_logic;
	
	begin
		
		x1 <= a nand a;
		x2 <= x1 nand b;
		x3 <= b nand b;
		x4 <= x3 nand a;
		y <= x2 nand x4;
		
end architecture;
		