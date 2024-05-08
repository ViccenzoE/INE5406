LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.math_real.all;

ENTITY sad IS
	GENERIC (
		-- obrigatório ---
		-- defina as operações considerando o número B de bits por amostra
		B : POSITIVE := 8; -- número de bits por amostra
		-----------------------------------------------------------------------
		-- desejado (i.e., não obrigatório) ---
		-- se você desejar, pode usar os valores abaixo para descrever uma
		-- entidade que funcione tanto para a SAD v1 quanto para a SAD v3.
		N : POSITIVE := 64; -- número de amostras por bloco
		P : POSITIVE := 1 -- número de amostras de cada bloco lidas em paralelo
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
		sample_ori : IN STD_LOGIC_VECTOR ((B-1)*P DOWNTO 0); -- Mem_A[end]
		sample_can : IN STD_LOGIC_VECTOR ((B-1)*P DOWNTO 0); -- Mem_B[end]
		read_mem : OUT STD_LOGIC; -- read
		address : OUT STD_LOGIC_VECTOR (Log2(N/P)-1 DOWNTO 0); -- end 5
		sad_value : OUT STD_LOGIC_VECTOR (ceil(Log2(real((2**B-1)*N)))-1 DOWNTO 0) -- SAD 13
	);
END ENTITY; -- sad

ARCHITECTURE arch OF sad IS
	-- descrever
	-- usar sad_bo e sad_bc (sad_operativo e sad_controle)
	-- não codifiquem toda a arquitetura apenas neste arquivo
	-- modularizem a descrição de vocês...
		pronto <= 0; soma <= 0; i <= 0; end <= 0;
		Enquanto i<64 faça
		{
		pA <= Mem_A[end]; pB<= Mem_B[end];
		soma <= soma + ABS(pA – pB); end <= end +1; i <= i +1;
		}
		SAD_reg <= soma;
		pronto <= 1;
BEGIN
END ARCHITECTURE; -- arch