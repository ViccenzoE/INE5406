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
  signal iniciar    : std_logic;
  signal reset      : std_logic;
  signal sample_ori : std_logic_vector(31 downto 0);
  signal sample_can : std_logic_vector(31 downto 0);
 -- signal finished: std_LOGIC:= '0';
  
  signal SAD_saida  : std_logic_vector(13 downto 0);
  signal end_sad    : std_logic_vector(3 downto 0);
  signal read_sad   : std_logic;
  signal pronto     : std_logic;
 -- signal valor_de_saida : std_logic_vector(7 downto 0);

  --periodo de clock: 9,71 ns
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
	CLOCK <= not CLOCK after passo/2;
					

  stim: process is
    file arquivo_de_estimulos : text open read_mode is "C:\Users\lucas\Documents\Sistemas Digitais\GIT\INE5406Lucas\sad-v3\golden-model\estimulos.dat";
    variable linha_de_estimulos: line;
    variable espaco: character;
    variable memoria_a: bit_vector(31 downto 0); --bo
    variable memoria_b: bit_vector(31 downto 0); --bc
    variable valor_de_saida_bit: bit_vector(13 downto 0);

   -- function bit_vector_to_std_logic_vector(bv: bit_vector) return std_logic_vector is
    --  variable result: std_logic_vector(bv'range);
   -- begin
     -- for i in bv'range loop
      --  result(i) := '0';
       -- if bv(i) = '1' then
        --  result(i) := '1';
        --end if;
    --  end loop;
    --  return result;
    --end function;

	 begin
    -- Reset the DUV
  --  reset <= '1';
  --  wait for 2 * passo;
  --  reset <= '0';


		while not endfile(arquivo_de_estimulos) loop
				iniciar <= '1';
				wait for passo*2;
				iniciar <= '0';
				
				readline(arquivo_de_estimulos, linha_de_estimulos);
				for i in 1 to 16 loop
					read(linha_de_estimulos, memoria_a);
					read(linha_de_estimulos, espaco);
					read(linha_de_estimulos, memoria_b);
					--read(linha_de_estimulos, espaco);
				   --read(linha_de_estimulos, valor_de_saida_bit);
					
					sample_ori <= to_stdlogicvector(memoria_a);
					sample_can <= to_stdlogicvector(memoria_b);
					
					wait for passo*3;
					
					--assert (SAD_saida = to_stdlogicvector(valor_de_saida_bit)) 
				   --report
				   --"Sad incorreta! "
				   --severity error;
				end loop;
				read(linha_de_estimulos, espaco);
				read(linha_de_estimulos, valor_de_saida_bit);
				wait for passo*3;
				assert (SAD_saida = to_stdlogicvector(valor_de_saida_bit)) 
				report
				"Sad incorreta! "
				severity error;
		end loop;


			wait for passo;
			assert false report "Test done." severity note;
		   wait;
	end process stim;
end tb;