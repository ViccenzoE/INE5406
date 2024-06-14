LIBRARY IEEE;
USE IEEE.Std_Logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

ENTITY sad IS
PORT(
	-- Entradas
	CLOCK: IN std_logic;
	iniciar: IN std_logic;
	reset: IN std_logic;
	sample_ori: IN std_LOGIC_VECTOR(31 DOWNTO 0);
	sample_can:IN std_LOGIC_VECTOR(31 DOWNTO 0);
	
	-- Saí­das
	SAD_saida: OUT std_logic_vector(13 DOWNTO 0);
	end_sad: OUT std_logic_vector(3 DOWNTO 0);
	read_sad: OUT std_logic;
	pronto: OUT std_logic
	
);
END ENTITY;

ARCHITECTURE arc OF sad IS

COMPONENT sad_bo IS
PORT(

	CLK, zi, ci, cpA, cpB, zsoma, csoma, csad_reg: IN STD_LOGIC; -- Sinais de controle
	sample_ori, sample_can : IN STD_LOGIC_VECTOR(31 downto 0); -- Acesso à memória, ori = A, can = B
	menor : OUT STD_LOGIC; -- Comparação para identificação da última linha
	endi : OUT STD_LOGIC_VECTOR(3 downto 0); -- Endereço a ser acessado pela memória
	SAD : OUT STD_LOGIC_VECTOR(13 downto 0) -- Valor do SAD atual
);
END COMPONENT;

COMPONENT sad_bc IS
	PORT (
		clk : IN STD_LOGIC; -- ck
		enable : IN STD_LOGIC; -- iniciar
		reset : IN STD_LOGIC; -- reset
		menor : IN STD_LOGIC; -- menor que a quantia de linhas
		read_mem : OUT STD_LOGIC; -- read
		done : OUT STD_LOGIC;
		cpA, cpB, ci, zi, zsoma, csoma, csad_reg : OUT STD_LOGIC
		);
END COMPONENT;
SIGNAL si1, si2, si3, si4, si5, si6, si7, men : std_logic;


BEGIN 
	--clock <= CLOCK_50;
	--clock <= CLOCK_16000000;
	V1: sad_bo PORT MAP(CLOCK, si1, si2, si3, si4, si5, si6, si7, sample_ori(31 downto 0), sample_can(31 downto 0), men, end_sad, SAD_saida);
	V2: sad_bc PORT MAP(CLOCK, iniciar, reset, men, read_sad, pronto, si3, si4, si2, si1, si5, si6, si7);
	
	
END ARCHITECTURE;
	