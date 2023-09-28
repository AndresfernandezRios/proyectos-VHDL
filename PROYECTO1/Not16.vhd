--Librerias
library ieee;
use ieee.std_logic_1164.all;

--Entidades

entity Not16 is

	port(
	
		a : in std_logic_vector(0 to 15);
		y : out std_logic_vector(0 to 15)
	
	);
	
end entity;

--Arquitectura

architecture Not16_Arch of Not16 is

begin
	y(0) <= not a(0);
	y(1) <= not a(1);
	y(2) <= not a(2);
	y(3) <= not a(3);
	y(4) <= not a(4);
	y(5) <= not a(5);
	y(6) <= not a(6);
	y(7) <= not a(7);
	y(8) <= not a(8);
	y(9) <= not a(9);
	y(10) <= not a(10);
	y(11) <= not a(11);
	y(12) <= not a(12);
	y(13) <= not a(13);
	y(14) <= not a(14);
	y(15) <= not a(15);
end architecture;

	