library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_textio.all;
use std.textio.all;

entity testbench is
end testbench;

architecture tb of testbench is
  constant passo : TIME := 20 ns;	 

  signal CLOCK      : std_logic := '0';
  signal iniciar    : std_logic := '0';
  signal reset      : std_logic := '0';
  signal sample_ori : std_logic_vector(31 downto 0);
  signal sample_can : std_logic_vector(31 downto 0);
  signal SAD_saida  : std_logic_vector(7 downto 0);
  signal end_sad    : std_logic_vector(3 downto 0);
  signal read_sad   : std_logic;
  signal pronto     : std_logic;
  signal valor_de_saida : std_logic_vector(7 downto 0);

begin
  clock_gen: process
  begin
    while true loop
      CLOCK <= '0';
      wait for passo / 2;
      CLOCK <= '1';
      wait for passo / 2;
    end loop;
  end process clock_gen;

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

  stim: process is
    file arquivo_de_estimulos : text open read_mode is "golden-model/estimulos.dat";
    variable linha_de_estimulos: line;
    variable espaco: character;
    variable valor_de_bo: bit_vector(31 downto 0);
    variable valor_de_bc: bit_vector(31 downto 0);
    variable valor_de_saida_bit: bit_vector(7 downto 0);

    function bit_vector_to_std_logic_vector(bv: bit_vector) return std_logic_vector is
      variable result: std_logic_vector(bv'range);
    begin
      for i in bv'range loop
        result(i) := '0';
        if bv(i) = '1' then
          result(i) := '1';
        end if;
      end loop;
      return result;
    end function;

  begin
    -- Reset the DUV
    reset <= '1';
    wait for 2 * passo;
    reset <= '0';

    while not endfile(arquivo_de_estimulos) loop
      readline(arquivo_de_estimulos, linha_de_estimulos);
      read(linha_de_estimulos, valor_de_bo);
      read(linha_de_estimulos, espaco);
      read(linha_de_estimulos, valor_de_bc);
      read(linha_de_estimulos, espaco);
      read(linha_de_estimulos, valor_de_saida_bit);

      sample_ori  <= bit_vector_to_std_logic_vector(valor_de_bo);
      sample_can  <= bit_vector_to_std_logic_vector(valor_de_bc);
      valor_de_saida <= bit_vector_to_std_logic_vector(valor_de_saida_bit);

      wait for passo;

      iniciar <= '1';
      wait for passo;
      iniciar <= '0';

      wait until pronto = '1';

      assert (SAD_saida = valor_de_saida) 
        report "Falha na simulacao." severity error;

      wait for passo;
    end loop;

    wait for passo;
    assert false report "Test done." severity note;
    wait;
  end process stim;
end tb;
