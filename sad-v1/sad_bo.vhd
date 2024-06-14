LIBRARY IEEE;
USE IEEE.std_logic_1164.all; 
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

ENTITY sad_bo IS
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

ARCHITECTURE arc OF sad_bo IS
	SIGNAL sig3: SIGNED(8 downto 0);
	SIGNAL sig4: STD_LOGIC_VECTOR(8 downto 0);
	SIGNAL sig1, sig2 : STD_LOGIC_VECTOR(7 downto 0);  -- Sinais de 8 bits, lado direito do bloco operacional
	SIGNAL sig6 : STD_LOGIC_VECTOR(14 downto 0);
	SIGNAL sig5, sig7, sig8: STD_LOGIC_VECTOR(13 downto 0); -- Demais sinais do lado direito, 14 bits
	SIGNAL sig21, sig22, sig24 : STD_LOGIC_VECTOR(6 downto 0); -- Sinais 7 bits lado esquerdo do bloco operacional
	SIGNAL sig23 : STD_LOGIC_VECTOR(5 downto 0); -- Demais sinais do lado esquerdo do bloco operacional
	SIGNAL zero14 : STD_LOGIC_VECTOR(13 downto 0); -- Opção nula do mux1
	SIGNAL zero7 : STD_LOGIC_VECTOR(6 downto 0); -- Opção nula do mux2
	SIGNAL um6 : STD_LOGIC_VECTOR(5 downto 0);
------------------------- COMPONENTS -------------------------------------

COMPONENT registrador IS 
GENERIC (N : INTEGER := 14);
PORT (clk, carga: IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
	Q : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
END COMPONENT;


COMPONENT subtratornbits IS
generic (N: integer := 8);
PORT (
    sub1 : in std_logic_vector (N-1 downto 0);
    sub2 : in std_logic_vector (N-1 downto 0);
    saida : out signed (N-1 downto 0)
);
END COMPONENT;


COMPONENT abst IS
generic (N: integer := 8);

PORT(
		a : IN SIGNED(N-1 downto 0);
      s : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
);
END COMPONENT;


COMPONENT somadornbits IS
GENERIC (N : INTEGER := 14);
PORT (
	cin: IN std_logic;
	add1 : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
	add2 : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
	sum : OUT STD_LOGIC_VECTOR(N DOWNTO 0));
END COMPONENT;


COMPONENT mux2para1 IS
generic(N: positive := 14);

PORT (
	sel : IN STD_LOGIC;
	a, b : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
   y : OUT STD_LOGIC_VECTOR (N - 1 DOWNTO 0)
);
END COMPONENT;


---------------------------------COMEÇO DO CÓDIGO--------------------------------------------------


BEGIN

sig5 <= "00000" & sig4;
zero14 <= "00000000000000";
zero7 <= "0000000";
--sig23 <= sig22(5 downto 0);
--um6 <= "000001";
--sig25 <= sig24;
menor <= not(sig22(6));
endi <= sig22(5 downto 0);
-------------------------------------PORTMAPS------------------------------------------------------


pA : registrador generic map(N => 8) PORT MAP(clk, cpA, sample_ori, sig1);
pB : registrador generic map(N => 8)PORT MAP(clk, cpB, sample_can, sig2);
sub : subtratornbits generic map(N => 9)PORT MAP('0'&sig1, '0'&sig2, sig3);
absto : abst generic map(N => 9)PORT MAP(sig3, sig4);
som1 : somadornbits generic map(N => 14)PORT MAP('0', sig8, sig5, sig6);
mux1 : mux2para1 generic map(N => 14) PORT MAP(zsoma, sig6(13 downto 0), zero14, sig7);
soma_reg : registrador generic map(N => 14) PORT MAP(clk, csoma, sig7, sig8);
SAD_reg : registrador generic map(N => 14) PORT MAP(clk, csad_reg, sig8, SAD);
mux2 : mux2para1 generic map(N => 7) PORT MAP(zi, sig24, zero7, sig21);
regi : registrador generic map(N => 7) PORT MAP(clk, ci, sig21, sig22);
som2: somadornbits generic map(N => 6) PORT MAP('0', sig22(5 downto 0), "000001", sig24); 


END arc;