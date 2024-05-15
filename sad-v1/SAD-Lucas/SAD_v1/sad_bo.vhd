LIBRARY IEEE;
USE IEEE.std_logic_1164.all; 
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

ENTITY Datapath IS
GENERIC (X : INTEGER := 14;
			N : INTEGER := 8);
PORT(

	CLK, zi, ci, cpA, cpB, zsoma, csoma, csad_reg: IN STD_LOGIC; -- Sinais de controle
	sample_ori, sample_can : IN STD_LOGIC_VECTOR(7 downto 0); -- Acesso à memória, ori = A, can = B
	menor : OUT STD_LOGIC; -- Comparação para identificação da última linha
	endi : OUT STD_LOGIC_VECTOR(5 downto 0); -- Endereço a ser acessado pela memória
	SAD : OUT STD_LOGIC_VECTOR(13 downto 0) -- Valor do SAD atual
);

END ENTITY;

ARCHITECTURE arc OF Datapath IS
	SIGNAL sig3 : SIGNED;
	SIGNAL sig1, sig2,sig4 : STD_LOGIC_VECTOR(7 downto 0);  -- Sinais de 8 bits, lado direito do bloco operacional
	SIGNAL sig5, sig6, sig7, sig8, sig9 : STD_LOGIC_VECTOR(13 downto 0); -- Demais sinais do lado direito, 14 bits
	SIGNAL sig21, sig22, sig25 : STD_LOGIC_VECTOR(6 downto 0); -- Sinais 7 bits lado esquerdo do bloco operacional
	SIGNAL sig23, sig24 : STD_LOGIC_VECTOR(5 downto 0); -- Demais sinais do lado esquerdo do bloco operacional
	SIGNAL zero14 : STD_LOGIC_VECTOR(13 downto 0); -- Opção nula do mux1

------------------------- COMPONENTS -------------------------------------

COMPONENT registrador IS 
PORT(
	sel : IN STD_LOGIC;
	a, b : IN STD_LOGIC_VECTOR (X - 1 DOWNTO 0);
   y : OUT STD_LOGIC_VECTOR (X - 1 DOWNTO 0)
);
END COMPONENT;


COMPONENT subtratornbits IS
PORT (
    sub1 : in std_logic_vector (N-1 downto 0);
    sub2 : in std_logic_vector (N-1 downto 0);
    saida : out signed (N-1 downto 0)
);
END COMPONENT;


COMPONENT abst IS
PORT(
		a : IN SIGNED(N-1 downto 0);
      s : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
);
END COMPONENT;


COMPONENT somadornbits IS
PORT (
		cin : IN STD_LOGIC;
      a, b : IN STD_LOGIC_VECTOR (X-1 DOWNTO 0);
      s : OUT STD_LOGIC_VECTOR (X DOWNTO 0)
);
END COMPONENT;


COMPONENT mux2para1 IS
PORT (
	sel : IN STD_LOGIC;
	a, b : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
   y : OUT STD_LOGIC_VECTOR (N - 1 DOWNTO 0)
);
END COMPONENT;


---------------------------------COMEÇO DO CÓDIGO--------------------------------------------------


BEGIN

sig5 <= "000000" & sig4;
zero14 <= "00000000000000";

-------------------------------------PORTMAPS------------------------------------------------------


pA : registrador PORT MAP(cpA, sample_ori, sig1);
pB : registrador PORT MAP(cpB, sample_can, sig2);
sub : subtratornbits PORT MAP(sig1, sig2, sig3);
absto : abst PORT MAP(sig3, sig4);
som1 : somadornbits PORT MAP('0', sig8, sig5, sig6);
mux1 : mux2para1 PORT MAP(zsoma, sig6, zero14, sig7);
soma : registrador PORT MAP(csoma, sig7, sig8);
SAD_reg : registrador PORT MAP(csad_reg, sig8, sig9);

END arc;