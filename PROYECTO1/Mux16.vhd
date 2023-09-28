library ieee;
use ieee.std_logic_1164.all;

-- Mux16(a= ,b= ,sel= ,out= ) /* Selects between two 16-bit inputs */

entity Mux16 is
	Port(
		a 	: in std_logic_vector(15 downto 0);
		b 	: in std_logic_vector(15 downto 0);
		sel: in std_logic;	
		Q 	: out std_logic_vector(15 downto 0)
	);
end entity;

architecture arch of Mux16 is
	component Mux is
		Port(
			a	:	in 	std_logic;
			b	:	in		std_logic;
			sel:	in 	std_logic;
			Q	:	out	std_logic
		);
	end component;
begin
	mux15: Mux
		Port map(
			a => a(15),
			b => b(15),
			sel => sel,
			Q => Q(15)
		);
	mux14: Mux
		Port map(
			a => a(14),
			b => b(14),
			sel => sel,
			Q => Q(14)
		);
	mux13: Mux
		Port map(
			a => a(13),
			b => b(13),
			sel => sel,
			Q => Q(13)
		);
	mux12: Mux
		Port map(
			a => a(12),
			b => b(12),
			sel => sel,
			Q => Q(12)
		);
	mux11: Mux
		Port map(
			a => a(11),
			b => b(11),
			sel => sel,
			Q => Q(11)
		);
	mux10: Mux
		Port map(
			a => a(10),
			b => b(10),
			sel => sel,
			Q => Q(10)
		);
	mux9: Mux
		Port map(
			a => a(9),
			b => b(9),
			sel => sel,
			Q => Q(9)
		);
	mux8: Mux
		Port map(
			a => a(8),
			b => b(8),
			sel => sel,
			Q => Q(8)
		);
	mux7: Mux
		Port map(
			a => a(7),
			b => b(7),
			sel => sel,
			Q => Q(7)
		);
	mux6: Mux
		Port map(
			a => a(6),
			b => b(6),
			sel => sel,
			Q => Q(6)
		);
	mux5: Mux
		Port map(
			a => a(5),
			b => b(5),
			sel => sel,
			Q => Q(5)
		);
	mux4: Mux
		Port map(
			a => a(4),
			b => b(4),
			sel => sel,
			Q => Q(4)
		);
	mux3: Mux
		Port map(
			a => a(3),
			b => b(3),
			sel => sel,
			Q => Q(3)
		);
	mux2: Mux
		Port map(
			a => a(2),
			b => b(2),
			sel => sel,
			Q => Q(2)
		);
	mux1: Mux
		Port map(
			a => a(1),
			b => b(1),
			sel => sel,
			Q => Q(1)
		);
	mux0: Mux
		Port map(
			a => a(0),
			b => b(0),
			sel => sel,
			Q => Q(0)
		);

end architecture;