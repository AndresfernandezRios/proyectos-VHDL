--Librerias

library ieee;
use ieee.std_logic_1164.all;

--Entity

entity Mux is

	port(
	
		a : in std_logic;
		b : in std_logic;
		sel : in std_logic;
		Q : out std_logic
	
	);
	
end entity;

--Arquitectura

architecture Mux_Arch of Mux is

signal x1, x2 : std_logic;

begin
	x1 <= ( not sel ) and a;
	x2 <= sel and b;
	Q <= x1 or x2;
end architecture;	
		
			
		
		
		
		
	
		