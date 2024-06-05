library IEEE;
use IEEE.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;
use IEEE.std_logic_textio.all;
use std.textio.all;

entity testbench is
end testbench;
 
architecture tb of testbench is

signal CLOCK: IN std_logic := '0';
signal iniciar: IN std_logic := '1';
signal reset: IN std_logic := '0';
signal sample_ori: IN std_LOGIC_VECTOR(7 DOWNTO 0);
signal sample_can:IN std_LOGIC_VECTOR(7 DOWNTO 0);

--saída
signal SAD_saida: OUT std_logic_vector(13 DOWNTO 0);
signal end_sad: OUT std_logic_vector(5 DOWNTO 0);
signal read_sad: OUT std_logic := '0';
signal pronto: OUT std_logic := '0';

CONSTANT passo : TIME := 20 ns;

begin 

	DUV: entity work.topo
		port map(CLOCK, iniciar, reset, sample_ori, sample_can);
					
	process
	begin
		sample_ori <= std_LOGIC_VECTOR(to_unsigned(0, sample_ori'length));
		sample_can <= std_LOGIC_VECTOR(to_unsigned(0, sample_can'length));
		wait for passo;
		assert(sad_saida = "00000000000000")
		report "Fail 0" severity error;
		

end tb;
		