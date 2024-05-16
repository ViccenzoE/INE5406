LIBRARY IEEE;
USE IEEE.std_logic_1164.all; 
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

ENTITY sad_bo IS
GENERIC (X : INTEGER := 14;
			N : INTEGER := 8);
PORT(

	CLK, zi, ci, cpA, cpB, zsoma, csoma, csad_reg: IN STD_LOGIC; -- Sinais de controle
	sample_ori, sample_can : IN STD_LOGIC_VECTOR(31 downto 0); -- Acesso à memória, ori = A, can = B
	menor : OUT STD_LOGIC; -- Comparação para identificação da última linha
	endi : OUT STD_LOGIC_VECTOR(3 downto 0); -- Endereço a ser acessado pela memória
	SAD : OUT STD_LOGIC_VECTOR(7 downto 0) -- Valor do SAD atual
);

END ENTITY;

ARCHITECTURE arc OF sad_bo IS
	SIGNAL sig3, sig31, sig32, sig33: SIGNED(7 downto 0);
	SIGNAL sig1, sig11, sig12, sig13, sig14, sig15, sig16, sig17, sig4, sig41, sig42, sig43 : STD_LOGIC_VECTOR(7 downto 0);  -- Sinais de 8 bits, lado direito do bloco operacional
	SIGNAL sig51, sig52 : STD_LOGIC_VECTOR(8 downto 0);
	SIGNAL sig6 : STD_LOGIC_VECTOR(9 downto 0);
	SIGNAL sig7, sig9, sig10, sig101: STD_LOGIC_VECTOR(13 downto 0);
	SIGNAL sig8 : STD_LOGIC_VECTOR(14 downto 0);
	
	SIGNAL ai1, ai2, ai3 : STD_LOGIC_VECTOR(4 downto 0);
	
	
	--SIGNAL sig6 : STD_LOGIC_VECTOR(14 downto 0);
	--SIGNAL sig5, sig7, sig8, sig9: STD_LOGIC_VECTOR(13 downto 0); -- Demais sinais do lado direito, 14 bits
	--SIGNAL sig21, sig22, sig24 : STD_LOGIC_VECTOR(6 downto 0); -- Sinais 7 bits lado esquerdo do bloco operacional
	--SIGNAL sig23 : STD_LOGIC_VECTOR(5 downto 0); -- Demais sinais do lado esquerdo do bloco operacional
	SIGNAL zero14 : STD_LOGIC_VECTOR(13 downto 0); -- Opção nula do mux1
	SIGNAL zero5 : STD_LOGIC_VECTOR(4 downto 0); -- Opção nula do mux2
	SIGNAL um4 : STD_LOGIC_VECTOR(3 downto 0);
------------------------- COMPONENTS -------------------------------------

COMPONENT registrador IS 
GENERIC (N : INTEGER := 14);
PORT (clk : IN STD_LOGIC;
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
generic(N: positive := 14);

PORT (
		cin : IN STD_LOGIC;
      a, b : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
      s : OUT STD_LOGIC_VECTOR (N DOWNTO 0)
);
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

sig7 <= "0000" & sig6;
zero14 <= "00000000000000";
zero5 <= "00000";
--sig23 <= sig22(5 downto 0);
--um6 <= "000001";
--sig25 <= sig24;
--menor <= not(sig22(6));
-------------------------------------PORTMAPS------------------------------------------------------


pA1 : registrador generic map(N => 8) PORT MAP(cpA, sample_ori(31 downto 24), sig1);
pA2 : registrador generic map(N => 8) PORT MAP(cpA, sample_ori(23 downto 16), sig12);
pA3 : registrador generic map(N => 8) PORT MAP(cpA, sample_ori(15 downto 8), sig14);
pA4 : registrador generic map(N => 8) PORT MAP(cpA, sample_ori(7 downto 0), sig16);

pB1 : registrador generic map(N => 8)PORT MAP(cpB, sample_can(31 downto 24), sig11);
pB2 : registrador generic map(N => 8)PORT MAP(cpB, sample_can(23 downto 16), sig13);
pB3 : registrador generic map(N => 8)PORT MAP(cpB, sample_can(15 downto 8), sig15);
pB4 : registrador generic map(N => 8)PORT MAP(cpB, sample_can(7 downto 0), sig17);

sub1 : subtratornbits generic map(N => 8)PORT MAP(sig1, sig11, sig3);
sub2 : subtratornbits generic map(N => 8)PORT MAP(sig12, sig13, sig31);
sub3 : subtratornbits generic map(N => 8)PORT MAP(sig14, sig15, sig32);
sub4 : subtratornbits generic map(N => 8)PORT MAP(sig16, sig17, sig33);


absto1 : abst generic map(N => 8)PORT MAP(sig3, sig4);
absto2 : abst generic map(N => 8)PORT MAP(sig31, sig41);
absto3 : abst generic map(N => 8)PORT MAP(sig32, sig42);
absto4 : abst generic map(N => 8)PORT MAP(sig33, sig43);


som1 : somadornbits generic map(N => 8)PORT MAP('0', sig4, sig41, sig51);
som12 : somadornbits generic map(N => 8)PORT MAP('0', sig42, sig43, sig52);

som3 : somadornbits generic map(N => 9)PORT MAP('0', sig51, sig52, sig6);

som4 : somadornbits generic map(N => 14) PORT MAP('0', sig10, sig7, sig8);

mux1 : mux2para1 generic map(N => 14) PORT MAP(zsoma, sig8(13 downto 0), zero14, sig9);

soma : registrador generic map(N => 14) PORT MAP(csoma, sig9, sig10);

SAD_reg : registrador generic map(N => 14) PORT MAP(csad_reg, sig10, sig101);

mux2 : mux2para1 generic map(N => 5) PORT MAP(zi, ai3, zero5, ai1);

regi : registrador generic map(N => 5) PORT MAP(ci, ai1, ai2);

som2: somadornbits generic map(4)PORT MAP('0', ai2(3 downto 0), "0001", ai3); 


END arc;