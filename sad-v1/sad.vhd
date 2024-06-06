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
	sample_ori: IN std_LOGIC_VECTOR(7 DOWNTO 0);
	sample_can:IN std_LOGIC_VECTOR(7 DOWNTO 0);
	
	-- Saí­das
	SAD_saida: OUT std_logic_vector(13 DOWNTO 0);
	end_sad: OUT std_logic_vector(5 DOWNTO 0);
	read_sad: OUT std_logic;
	pronto: OUT std_logic
	
);
END ENTITY;

ARCHITECTURE arc OF sad IS

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
		menor : IN STD_LOGIC; -- menor que a quantia de linhas
		read_mem : OUT STD_LOGIC; -- read
		done : OUT STD_LOGIC;
		cpA, cpB, ci, zi, zsoma, csoma, csad_reg : OUT STD_LOGIC
		);
END COMPONENT;

SIGNAL zi, ci, cpA, cpB, zsoma, csoma, csad_reg, men : std_logic;


BEGIN 
	--clock <= CLOCK_50;
	--clock <= CLOCK_16000000; => 
	V1: sad_bo PORT MAP(
	
			CLK => CLOCK,
			zi =>  zi,
			ci =>  ci,
			cpA =>  cpA,
			cpB =>  cpB,
			zsoma =>  zsoma,
			csoma =>  csoma,
			csad_reg =>  csad_reg,
			sample_ori =>  sample_ori, 
			sample_can =>  sample_can,
			menor =>  men,
			endi =>  end_sad,
			SAD =>  SAD_saida);

	V2: sad_bc PORT MAP( 
			clk => CLOCK, 
			enable => iniciar, 
			reset => reset, 
			menor => men, 
			read_mem => read_sad, 
			done => pronto, 
			cpA => cpA, 
			cpB => cpB, 
			ci => ci, 
			zi => zi, 
			zsoma => zsoma, 
			csoma => csoma,
			csad_reg => csad_reg);
	
	
END ARCHITECTURE;
