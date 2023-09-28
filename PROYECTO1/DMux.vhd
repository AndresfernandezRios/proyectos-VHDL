--Librerias

library ieee;
use ieee.std_logic_1164.all;

--Entidaddes

entity DMux is

	port(
	
		sel1 : in std_logic;
		sel2 : in std_logic;
		e : in std_logic;
		Q1 : out std_logic;
		Q2 : out std_logic;
		Q3 : out std_logic;
		Q4 : out std_logic
	
	);
	
end entity;

--Arquitectura

architecture DMux_Arch of DMux is
signal x1,x2,x3,x4,x5,x6,x7 : std_logic;
	begin
		
		x1 <= not sel1;
		x2 <= not sel2;
		Q1 <= e and x2 and x1;
		Q2 <= e and sel1 and x2;
		Q3 <= e and x1 and sel2;
		Q4 <= e and sel2 and sel1;
end architecture;
		
	
		
		
		