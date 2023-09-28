-- Librerias
library ieee;
use ieee.std_logic_1164.all;

-- Entidades
entity Add16 is
	port(
	
		a : in std_logic_vector(15 downto 0);
		b : in std_logic_vector(15 downto 0);
		sum : out std_logic_vector(15 downto 0);
		carry : out std_logic
	
	);
end entity;

-- Arquitectura

architecture Add16_arch of Add16 is
	signal C_carry : std_logic_vector(15 downto 0);
	component FullAdder is
	
		Port(
		a 	: in std_logic;
		b 	: in std_logic;
		c  : in std_logic;	
		sum 	: out std_logic;
		carry : out std_logic
	);
	end component;
	
	begin
	FullAdder15: FullAdder
		Port map(
			a 		=> a(15),
			b 		=> b(15),
			c 		=> C_carry(15),
			sum 	=> sum(15),
			carry => carry
		);
	FullAdder14: FullAdder
		Port map(
			a 		=> a(14),
			b 		=> b(14),
			c 		=> C_carry(14),
			sum 	=> sum(14),
			carry => C_carry(15)
		);
	FullAdder13: FullAdder
		Port map(
			a 		=> a(13),
			b 		=> b(13),
			c 		=> C_carry(13),
			sum 	=> sum(13),
			carry => C_carry(14)
		);
		FullAdder12: FullAdder
		Port map(
			a 		=> a(12),
			b 		=> b(12),
			c 		=> C_carry(12),
			sum 	=> sum(12),
			carry => C_carry(13)
		);
		FullAdder11: FullAdder
		Port map(
			a 		=> a(11),
			b 		=> b(11),
			c 		=> C_carry(11),
			sum 	=> sum(11),
			carry => C_carry(12)
		);
		FullAdder10: FullAdder
		Port map(
			a 		=> a(10),
			b 		=> b(10),
			c 		=> C_carry(10),
			sum 	=> sum(10),
			carry => C_carry(11)
		);
		FullAdder9: FullAdder
		Port map(
			a 		=> a(9),
			b 		=> b(9),
			c 		=> C_carry(9),
			sum 	=> sum(9),
			carry => C_carry(10)
		);
		FullAdder8: FullAdder
		Port map(
			a 		=> a(8),
			b 		=> b(8),
			c 		=> C_carry(8),
			sum 	=> sum(8),
			carry => C_carry(9)
		);
		FullAdder7: FullAdder
		Port map(
			a 		=> a(7),
			b 		=> b(7),
			c 		=> C_carry(7),
			sum 	=> sum(7),
			carry => C_carry(8)
		);
		FullAdder6: FullAdder
		Port map(
			a 		=> a(6),
			b 		=> b(6),
			c 		=> C_carry(6),
			sum 	=> sum(6),
			carry => C_carry(7)
		);
		FullAdder5: FullAdder
		Port map(
			a 		=> a(5),
			b 		=> b(5),
			c 		=> C_carry(5),
			sum 	=> sum(5),
			carry => C_carry(6)
		);
		FullAdder4: FullAdder
		Port map(
			a 		=> a(4),
			b 		=> b(4),
			c 		=> C_carry(4),
			sum 	=> sum(4),
			carry => C_carry(5)
		);
		FullAdder3: FullAdder
		Port map(
			a 		=> a(3),
			b 		=> b(3),
			c 		=> C_carry(3),
			sum 	=> sum(3),
			carry => C_carry(4)
		);
		FullAdder2: FullAdder
		Port map(
			a 		=> a(2),
			b 		=> b(2),
			c 		=> C_carry(2),
			sum 	=> sum(2),
			carry => C_carry(3)
		);
		FullAdder1: FullAdder
		Port map(
			a 		=> a(1),
			b 		=> b(1),
			c 		=> C_carry(1),
			sum 	=> sum(1),
			carry => C_carry(2)
		);
		FullAdder0: FullAdder
		Port map(
			a 		=> a(0),
			b 		=> b(0),
			c 		=> C_carry(0),
			sum 	=> sum(0),
			carry => C_carry(1)
		);
		
	end architecture;	
		
		
		
		
		
		
		
		
		
		