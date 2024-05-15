LIBRARY IEEE;
USE IEEE.std_logic_1164.all; 
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

ENTITY Datapath IS
PORT(

	CLK, zi, ci, cpA, cpB, zsoma, csoma, csad_reg: IN STD_LOGIC;
	pA, pB : IN STD_LOGIC_VECTOR(7 downto 0);
	menor : OUT STD_LOGIC;
	endi : OUT STD_LOGIC_VECTOR(5 downto 0);
	SAD : OUT STD_LOGIC_VECTOR(13 downto 0)
);

END ENTITY;

ARCHITECTURE arc OF Datapath IS
	SIGNAL sig1, sig2, sig3, sig4 : STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL sig5, sig6, sig7, sig8, sig9 : STD_LOGIC_VECTOR(13 downto 0);
	SIGNAL sig21, sig22, sig25 : STD_LOGIC_VECTOR(6 downto 0);
	SIGNAL sig23, sig24 : STD_LOGIC_VECTOR(5 downto 0);
BEGIN
END arc;	