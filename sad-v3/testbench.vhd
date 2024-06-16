library IEEE;
use IEEE.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;
use IEEE.std_logic_textio.all;
use std.textio.all;

entity testbench is
end testbench;

architecture tb of testbench is

  signal CLOCK      : std_logic := '0';
  signal iniciar    : std_logic := '0';
  signal reset      : std_logic := '0';
  signal sample_ori : std_logic_vector(31 downto 0);
  signal sample_can : std_logic_vector(31 downto 0);
  signal finished   : std_logic := '0';

  signal SAD_saida  : std_logic_vector(13 downto 0);
  signal end_sad    : std_logic_vector(3 downto 0);
  signal read_sad   : std_logic;
  signal pronto     : std_logic;

  CONSTANT passo : TIME := 10 ns;

begin

  -- Connect DUV
  DUV: entity work.sad 
    port map(
      CLOCK      => CLOCK,
      iniciar    => iniciar,
      reset      => reset,
      sample_ori => sample_ori,
      sample_can => sample_can,
      SAD_saida  => SAD_saida,
      end_sad    => end_sad,
      read_sad   => read_sad,
      pronto     => pronto
    );

  CLOCK <= not CLOCK after passo/2 when finished /= '1' else '0';

  stim: process
    file arquivo_de_estimulos : text open read_mode is "C:\INE5406\sad-v3\golden-model/estimulos.dat";
    variable linha_de_estimulos : line;
    variable valor_ori : bit_vector(31 downto 0);
    variable valor_can : bit_vector(31 downto 0);
    variable valor_saida : bit_vector(13 downto 0);
  begin

    while not endfile(arquivo_de_estimulos) loop
      -- read inputs
      readline(arquivo_de_estimulos, linha_de_estimulos);
      read(linha_de_estimulos, valor_ori);
      sample_ori <= std_logic_vector(valor_ori);
      
      read(linha_de_estimulos, valor_can);
      sample_can <= std_logic_vector(valor_can);

      read(linha_de_estimulos, valor_saida);

      reset <= '1';
      wait for passo;
      reset <= '0';
      iniciar <= '1';
      wait for passo;
      iniciar <= '0';
      wait until pronto = '1';

      -- Checar saida
      assert (SAD_saida = std_logic_vector(valor_saida))
        report "Falha na simulacao. "
        severity error;

      wait for passo;
    end loop;

    assert false report "Test done." severity note;
    wait;
  end process;

end tb;
