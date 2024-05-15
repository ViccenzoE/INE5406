LIBRARY IEEE;
USE IEEE.Std_Logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

ENTITY topo IS
PORT(
	-- Entradas
	CLOCK: IN std_logic;
	iniciar: IN std_logic;
	reset: IN std_logic;
	Mem_A: IN std_LOGIC_VECTOR(7 DOWNTO 0);
	Mem_B:IN std_LOGIC_VECTOR(7 DOWNTO 0);
	
	-- Saí­das
	SAD_saida: OUT std_logic_vector(13 DOWNTO 0);
	end_sad: OUT std_logic_vector(5 DOWNTO 0)
	read_sad: OUT std_logic;
	pronto: OUT std_logic;
	
);
END ENTITY;

ARCHITECTURE arc OF topo IS

COMPONENT sad_bo IS
	PORT(
		CLK, zi, ci, cpA, cpB, zsoma, csoma, csad_reg: IN STD_LOGIC; -- Sinais de controle
		sample_ori, sample_can : IN STD_LOGIC_VECTOR(7 downto 0); -- Acesso à memória, ori = A, can = B
		menor : OUT STD_LOGIC; -- Comparação para identificação da última linha
		endi : OUT STD_LOGIC_VECTOR(5 downto 0); -- Endereço a ser acessado pela memória
		SAD : OUT STD_LOGIC_VECTOR(13 downto 0) -- Valor do SAD atual
	);
END COMPONENT;

COMPONENT sad_bc IS
	PORT (
		clk : IN STD_LOGIC; -- ck
		enable : IN STD_LOGIC; -- iniciar
		reset : IN STD_LOGIC; -- reset
		sample_ori : IN STD_LOGIC_VECTOR ((B-1)*P DOWNTO 0); -- Mem_A[end]
		sample_can : IN STD_LOGIC_VECTOR ((B-1)*P DOWNTO 0); -- Mem_B[end]
		menor : IN STD_LOGIC; -- menor que a quantia de linhas
		read_mem : OUT STD_LOGIC; -- read
		address : OUT STD_LOGIC_VECTOR (5 DOWNTO 0); -- end 5
		sad_value : OUT STD_LOGIC_VECTOR ((B + 5) DOWNTO 0); -- SAD 13
		done : OUT STD_LOGIC;
		cpA, cpB, ci, zi, zsoma, csoma, csad_reg : OUT STD_LOGIC
		);
END COMPONENT;

SIGNAL clock: std_logic;

BEGIN 
	--clock <= CLOCK_50;
	V1: sad_bo port map()
	
	
END ARCHITECTURE;
	