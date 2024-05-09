LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.math_real.all;
-- no bloco de controle devemos usar os sinais apenas ou atribuir valores aos registradores, ou ambos? FSM ou FSMD, ou ambos?

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
		sad_value : OUT STD_LOGIC_VECTOR (ceil(Log2(real((2**B-1)*N)))-1 DOWNTO 0); -- SAD 13
		done: OUT STD_LOGIC
	);
END ENTITY; -- sad
-- Ignorar lógica antes do begin
ARCHITECTURE arch OF sad IS
TYPE STATES IS (S0,S1,S2,S3,S4,S5);
SIGNAL EA, PE: STATES;
SIGNAL soma;
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
REG: process(CLK,reset)
begin
	if reset='1' or enable='0' then
		EA <= S0;
   elsif (CLK'event AND CLK = '1') then
      EA <= PE;
   end if;
end process;

COMB: process(EA,reset, enter,end_FPGA, end_User, end_time, win, match)
begin
	case EA is
        
     when S0 => 
			read_mem <= 0;
			done <= 1;
			if enable='1':
				PE <= S1;
			else
				PE <= S0;
	  when S1 =>
		   done <= 0;
			address <= 0;
			soma <= 0;
			-- zi <= 1; 
			-- ci <= 1;
			-- zsoma <= 1;
			-- csoma <= 1;
			-- sel dos mux add?; 
			-- clock dos registradores add?;
	  when S2 => 
			if menor = '1':
				PE <= S3;
			else
				PE <= S0;
	  when S3 =>
			read_mem <= 1;
			-- cpA <= 1;
			-- cpB <= 1;
			PE <= S4;
			-- clock dos registradores add?
	  when S4 =>
			read_mem <= 0;
			-- zi <= 0;
			-- ci <= 1;
			-- zsoma <= 0;
			-- csoma <= 1;
			PE <= S2;
			-- clocks dos registradores e sel add?
	  when S5 =>
			csag_reg <= 1;
BEGIN
END ARCHITECTURE; -- arch