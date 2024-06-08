library IEEE;
use IEEE.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;
use IEEE.std_logic_textio.all;
use std.textio.all;
 
entity testbench is
end testbench;

architecture tb of testbench is
CONSTANT passo : TIME := 20 ns;	 

begin
  -- Connect DUV
  DUV: entity work.sad 
    port map(CLOCK, iniciar, reset, sample_ori, sample_can, SAD_saida, end_sad, read_sad, pronto);

  stim: process is
    file arquivo_de_estimulos : text open read_mode is "C:\Trabalho\INE5406\sad-v3\golden-model/estimulos.dat";
    variable linha_de_estimulos: line;
    variable espaco: character;
    variable valor_de_bo: bit_vector(31 downto 0);
	 variable valor_de_bc: bit_vector(31 downto 0);
    variable valor_de_saida: bit_vector(13 downto 0);
	 begin
	 
    while not endfile(arquivo_de_estimulos) loop
      -- read inputs
		CLOCK <= 
		iniciar <= '1';
		reset <= '0';
		pronto <= '0';
      readline(arquivo_de_estimulos, linha_de_estimulos);
      read(linha_de_estimulos, valor_de_bo, valor_de_bc);
      sample_ori  <= to_stdlogicvector (valor_de_bo);
      read(linha_de_estimulos, espaco);
		sample_can  <= to_stdlogicvector (valor_de_bc);
		read(linha_de_estimulos, espaco);
      read(linha_de_estimulos, valor_de_saida);
      wait for passo;
        assert (output = to_stdlogicvector(valor_de_saida)) 
          report  
            "Falha na simulacao. "
          severity error;
    end loop;

    wait for passo;
    assert false report "Test done." severity note;
    wait;
  end process;
end tb;
