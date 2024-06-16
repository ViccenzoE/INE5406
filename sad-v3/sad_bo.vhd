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
	SAD : OUT STD_LOGIC_VECTOR(13 downto 0) -- Valor do SAD atual
);

END ENTITY;

ARCHITECTURE arc OF sad_bo IS
	SIGNAL subtrator0, subtrator1, subtrator2, subtrator3: SIGNED(7 downto 0);
	SIGNAL spA0, spB0, spA1, spB1, spA2, spB2, spA3, spB3, ABS0, ABS1, ABS2, ABS3 : STD_LOGIC_VECTOR(7 downto 0);  -- Sinais de 8 bits, lado direito do bloco operacional
	SIGNAL saida_som1, saida_som2 : STD_LOGIC_VECTOR(8 downto 0);
	SIGNAL saida_som3 : STD_LOGIC_VECTOR(9 downto 0);
	SIGNAL som3_mais_zeros, saida_mux1, saida_reg_soma, sig101: STD_LOGIC_VECTOR(13 downto 0);
	SIGNAL saida_som4 : STD_LOGIC_VECTOR(14 downto 0);
	
	SIGNAL saida_muxi, saida_reg_i, saida_som_i: STD_LOGIC_VECTOR(4 downto 0);

	
	--SIGNAL saida_som3 : STD_LOGIC_VECTOR(14 downto 0);
	--SIGNAL sig5, som3_mais_zeros, saida_som4, saida_mux1: STD_LOGIC_VECTOR(13 downto 0); -- Demais sinais do lado direito, 14 bits
	--SIGNAL sig21, sig22, sig24 : STD_LOGIC_VECTOR(6 downto 0); -- Sinais 7 bits lado esquerdo do bloco operacional
	--SIGNAL sig23 : STD_LOGIC_VECTOR(5 downto 0); -- Demais sinais do lado esquerdo do bloco operacional
	SIGNAL zero14 : STD_LOGIC_VECTOR(13 downto 0); -- Opção nula do mux1
	SIGNAL zero5 : STD_LOGIC_VECTOR(4 downto 0); -- Opção nula do mux2
	SIGNAL um4 : STD_LOGIC_VECTOR(3 downto 0);
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

som3_mais_zeros <= "0000" & saida_som3;
zero14 <= "00000000000000";
zero5 <= "00000";
--sig23 <= sig22(5 downto 0);
--um6 <= "000001";
--sig25 <= sig24;
menor <= not(saida_reg_i(4)); --analisar esse menor
endi <= saida_reg_i(3 downto 0);

-------------------------------------PORTMAPS------------------------------------------------------


pA0 : registrador generic map(N => 8) PORT MAP(CLK, cpA, sample_ori(31 downto 24), spA0);
pA1 : registrador generic map(N => 8) PORT MAP(CLK, cpA, sample_ori(23 downto 16), spA1);
pA2 : registrador generic map(N => 8) PORT MAP(CLK, cpA, sample_ori(15 downto 8), spA2);
pA3 : registrador generic map(N => 8) PORT MAP(CLK, cpA, sample_ori(7 downto 0), spA3);

pB0 : registrador generic map(N => 8)PORT MAP(CLK, cpB, sample_can(31 downto 24), spB0);
pB1 : registrador generic map(N => 8)PORT MAP(CLK, cpB, sample_can(23 downto 16), spB1);
pB2 : registrador generic map(N => 8)PORT MAP(CLK, cpB, sample_can(15 downto 8), spB2);
pB3 : registrador generic map(N => 8)PORT MAP(CLK, cpB, sample_can(7 downto 0), spB3);

sub0 : subtratornbits generic map(N => 8)PORT MAP(spA0,spB0, subtrator0);
sub1 : subtratornbits generic map(N => 8)PORT MAP(spA1, spB1, subtrator1);
sub2 : subtratornbits generic map(N => 8)PORT MAP(spA2, spB2, subtrator2);
sub3 : subtratornbits generic map(N => 8)PORT MAP(spA3, spB3, subtrator3);


absto0 : abst generic map(N => 8)PORT MAP(subtrator0, ABS0);
absto1 : abst generic map(N => 8)PORT MAP(subtrator1, ABS1);
absto2 : abst generic map(N => 8)PORT MAP(subtrator2, ABS2);
absto3 : abst generic map(N => 8)PORT MAP(subtrator3, ABS3);


som1 : somadornbits generic map(N => 8)PORT MAP('0', ABS0, ABS1, saida_som1);
som2 : somadornbits generic map(N => 8)PORT MAP('0', ABS2, ABS3, saida_som2);

som3 : somadornbits generic map(N => 9)PORT MAP('0', saida_som1, saida_som2, saida_som3);

som4 : somadornbits generic map(N => 14) PORT MAP('0', saida_reg_soma, som3_mais_zeros, saida_som4);

mux1 : mux2para1 generic map(N => 14) PORT MAP(zsoma, saida_som4(13 downto 0), zero14, saida_mux1);

soma : registrador generic map(N => 14) PORT MAP(CLK, csoma, saida_mux1, saida_reg_soma);

SAD_reg : registrador generic map(N => 14) PORT MAP(CLK, csad_reg, saida_reg_soma, SAD);

mux2 : mux2para1 generic map(N => 5) PORT MAP(zi, saida_som_i, zero5, saida_muxi);

regi : registrador generic map(N => 5) PORT MAP(CLK, ci, saida_muxi, saida_reg_i);

somi: somadornbits generic map(N => 4)PORT MAP('0', saida_reg_i(3 downto 0), "0001", saida_som_i); 


END arc;