library IEEE;
use IEEE.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;
use IEEE.std_logic_textio.all;
use std.textio.all;

entity testbench is
end testbench;
 
architecture tb of testbench is

signal CLOCK: std_logic := '0';
signal iniciar: std_logic := '1';
signal reset: std_logic := '0';
signal sample_ori: std_LOGIC_VECTOR(7 DOWNTO 0);
signal sample_can: std_LOGIC_VECTOR(7 DOWNTO 0);

--saída
signal SAD_saida: std_logic_vector(13 DOWNTO 0);
signal end_sad: std_logic_vector(5 DOWNTO 0);
signal read_sad: std_logic := '0';
signal pronto: std_logic := '0';

CONSTANT passo : TIME := 20 ns;

begin 

	DUV: entity work.sad
		port map(CLOCK, iniciar, reset, sample_ori, sample_can, SAD_saida, end_sad, read_sad, pronto);
	CLOCK <= not CLOCK after passo/2;
					
	process
	begin
		sample_ori <= std_LOGIC_VECTOR(to_unsigned(0, sample_ori'length));
		sample_can <= std_LOGIC_VECTOR(to_unsigned(0, sample_can'length));
		wait for passo;
		assert(SAD_saida = "00000000000000")
		report "Fail 0" severity error;
		
		sample_ori <= std_LOGIC_VECTOR(to_unsigned(255, sample_ori'length));
		sample_can <= std_LOGIC_VECTOR(to_unsigned(0, sample_can'length));
		wait for passo;
		assert(SAD_saida = "11111111000000")
		report "Fail 1" severity error;
		
		
		wait for passo;
		assert false report "Test done." severity note;
		wait;
	end process;
end tb;

		