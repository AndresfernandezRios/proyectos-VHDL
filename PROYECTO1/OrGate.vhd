-- librerias

library ieee;
use ieee.std_logic_1164.all;

-- entidades

entity OrGate is

	port(
	
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	
	);
	
end entity;

-- arquitectura

architecture OrGate_Arch of OrGate is

signal x1 : std_logic;
signal x2 : std_logic;

begin 

	x1 <= a nand a;
	x2 <= b nand b;
	y <= x1 nand x2;
	
end architecture;