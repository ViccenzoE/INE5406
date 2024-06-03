LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.math_real.all;
use ieee.numeric_std.all; 

-- no bloco de controle devemos usar os sinais apenas ou atribuir valores aos registradores, ou ambos? FSM ou FSMD, ou ambos?

ENTITY sad_bc IS
	GENERIC (
		-- obrigatório ---
		-- defina as operações considerando o número B de bits por amostra
		B : INTEGER := 8; -- número de bits por amostra
		-----------------------------------------------------------------------
		-- desejado (i.e., não obrigatório) ---
		-- se você desejar, pode usar os valores abaixo para descrever uma
		-- entidade que funcione tanto para a SAD v1 quanto para a SAD v3.
		N : INTEGER := 64; -- número de amostras por bloco
		P : INTEGER := 1 -- número de amostras de cada bloco lidas em paralelo
		-----------------------------------------------------------------------
	);
	PORT (
		-- ATENÇÃO: modifiquem a largura de bits das entradas e saídas que
		-- estão marcadas com DEFINIR de acordo com o número de bits B e
		-- de acordo com o necessário para cada versão da SAD (tentem utilizar
		-- os valores N e P descritos acima para criar apenas uma descrição
		-- configurável que funcione tanto para a SAD v1 quanto para a SAD v3).
		-- Não modifiquem os nomes das portas, apenas a largura de bits quando
		-- for necessário.
		clk : IN STD_LOGIC; -- ck
		enable : IN STD_LOGIC; -- iniciar
		reset : IN STD_LOGIC; -- reset
		menor : IN STD_LOGIC; -- menor que a quantia de linhas
		read_mem : OUT STD_LOGIC; -- read
		done : OUT STD_LOGIC;
		cpA, cpB, ci, zi, zsoma, csoma, csad_reg : OUT STD_LOGIC
		);
END ENTITY; -- sad
-- Ignorar lógica antes do begin
ARCHITECTURE arch OF sad_bc IS
TYPE STATES IS (S0,S1,S2,S3,S4,S5);
SIGNAL EA, PE: STATES;
	-- descrever
	-- usar sad_bo e sad_bc (sad_operativo e sad_controle)
	-- não codifiquem toda a arquitetura apenas neste arquivo
	-- modularizem a descrição de vocês...
		--pronto <= '0'; soma <= 0; i <= 0; end <= 0;
	--	while i<64:
		--	pA <= Mem_A[end]; pB<= Mem_B[end];
			--soma <= soma + ABS(pA – pB); end <= end +1; i <= i +1;
		--SAD_reg <= soma;
		--pronto <= 1;
		
BEGIN
	REG: process(CLK,reset)
	begin
		if reset='1' then
			EA <= S0;
		elsif (CLK'event AND CLK = '1') then
			EA <= PE;
		end if;
	end process;

	COMB: process(EA, enable)
	begin
		case EA is
			  
		  when S0 => 
				--read_mem <= '0';
				--done <= '1';
				if enable='1' then
					PE <= S1;
				else
					PE <= S0;
				end if;
		  when S1 =>
				--done <= '0';
				--zi <= '1'; 
				--ci <= '1';
				--zsoma <= '1';
				--csoma <= '1';
				PE <= S2;
		  when S2 => 
				if menor = '1' then
					PE <= S3;
				else
					PE <= S5;
				end if;
		  when S3 =>
				--read_mem <= '1';
				--cpA <= '1';
				--cpB <= '1';
				PE <= S4;
		  when S4 =>
				--read_mem <= '0';
				--zi <= '0';
				--ci <= '1';
				--zsoma <= '0';
				--csoma <= '1';
				PE <= S2;
		  when S5 =>
				--csad_reg <= '1';
				PE <= S0;
		end case;
	end process;
	read_mem <= '1' when EA = S3 else '0';
	done <= '1' when EA = S0 else '0';
	zi <= '1' when EA = S1 else '0';
	ci <= '1' when EA = S1 or EA = S4 else '0';
	zsoma <= '1' when EA = S1 else '0';
	csoma <= '1' when EA = S1 or EA = S4 else '0';
	csad_reg <= '1' when EA = S5 else '0';
	cpA <= '1' when EA = S3 else '0';
	cpB <= '1' when EA = S3 else '0';
END ARCHITECTURE; -- arch