-- Librerias 

	library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;

-- Entidad

	entity HalfAdder is
	
		port(
		
			a, b : std_logic;
			sum, carry : out std_logic
		
		);
		
	end entity;

--Arquitectura

	architecture arch_HalfAdder of HalfAdder is
		begin 
		
			sum <= a xor b;
			carry <= a and b;
		
		end architecture;