-- CODIGO PARA EL TEST DEL DEMULTIPLEXOR
-- Librerias

library ieee;
use ieee.std_logic_1164.all;

-- Entidades libres

entity DMux_test is
end entity;

-- Arquitectura de testeo

architecture DMux_test_arch of DMux_test is

	-- Declaracion del Componente
	component DMux
		port(
		
			sel1 : in std_logic;
			sel2 : in std_logic;
			e : in std_logic;
			Q1 : out std_logic;
			Q2 : out std_logic;
			Q3 : out std_logic;
			Q4 : out std_logic
		
		);
	end component;
	
	-- Declaracion de Seniales
	signal sel1_test	: std_logic := '0';
	signal sel2_test	: std_logic := '0';
	signal e_test	: std_logic := '0';
	signal Q1_test	: std_logic;
	signal Q2_test	: std_logic;
	signal Q3_test	: std_logic;
	signal Q4_test	: std_logic;
	
	begin
	
	-- Instansiacion DUT
	dut1 : DMux
		port map (
			
			sel1 	=> sel1_test,
			sel2 	=> sel2_test,
			e 		=> e_test,
			Q1 	=> Q1_test,
			Q2 	=> Q2_test,
			Q3 	=> Q3_test,
			Q4 	=> Q4_test
		);
		
	-- Generacion de Estimulos
	Stimulus 	: process
		begin
		
			report "Start of the test of DMux"
				severity note;
				
				sel1_test 	<= '1';
				sel2_test 	<= '1';
				e_test 		<= '1';
				
				wait for 1 ns;
				assert 	Q1_test = '0';
				assert	Q2_test = '0';
				assert	Q3_test = '0';
				assert	Q4_test = '1'
		  report "Failure for {sel1,sel2,e} = {0,0,0}"
		  severity failure;
	
				sel1_test 	<= '0';
				sel2_test 	<= '0';
				e_test 		<= '1';
				
				wait for 1 ns;
				assert 	Q1_test = '1';
				assert	Q2_test = '0';
				assert	Q3_test = '0';
				assert	Q4_test = '0'
		  report "Failure for {sel1,sel2,e} = {1,1,1}"
		  severity failure;
	
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;
	
	
		
		