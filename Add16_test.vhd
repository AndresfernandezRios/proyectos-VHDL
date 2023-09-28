-- Librerias 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entidad Libre
entity Add16_test is	
end entity;

-- Arquitectura
architecture arch_test of Add16_test is

	-- Declaracion de componente
	component Add16
		port(
			a		:	in 	std_logic_vector(15 downto 0);
			b		:	in		std_logic_vector(15 downto 0);
			
			sum	:	out 	std_logic_vector(15 downto 0);
			carry :	out	std_logic
		);
	end component;
	
	-- Declaracion de Seniales
	signal a_test			: std_logic_vector(15 downto 0);
	signal b_test			: std_logic_vector(15 downto 0);
	signal c_test			: std_logic;
	signal sum_test		: std_logic_vector(15 downto 0);
	signal carry_test		: std_logic;
	signal carryc_test	: std_logic_vector(15 downto 0);
	begin
	
	-- instansiacion de la DUT
	dut1	: Add16 
		port map (
			a 		 => a_test,
			b 		 => b_test,
			
			sum  	 => sum_test,
			carry	 => carry_test
		);
	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Start of the test of Add16"	  
		severity note;
		
		a_test 	<= "0000000000000000";
		b_test 	<= "0000000000000000";
		
		wait for 1 ns;
		assert (sum_test = "0000000000000000") and (carry_test = '0')
		  report "Failure for {a,b} = {0000000000000000,0}"
		  severity failure;
		
		a_test 	<= "0000000000000000";
		b_test 	<= "1111111111111111";		
		
		wait for 1 ns;
		assert (sum_test = "1111111111111111") and (carry_test = '0')
		  report "Failure for {a,b} = {1111111111111111,0}"
		  severity failure;
		
		a_test 	<= "1111111111111111";
		b_test 	<= "0000000000000000";		
		
		wait for 1 ns;
		assert (sum_test = "1111111111111111") and (carry_test = '0')
		  report "Failure for {a,b} = {1111111111111111,0}"
		  severity failure;
		
		a_test 	<= "1111111111111111";
		b_test 	<= "1111111111111111";		
		
		wait for 1 ns;
		assert (sum_test = "0000000000000000") and (carry_test = '1')
		  report "Failure for {a,b} = {1111111111111111,1}"
		  severity failure;
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;