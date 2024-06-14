LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY registrador IS
GENERIC (N : INTEGER := 14);
PORT (clk : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
	Q : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
END registrador;

ARCHITECTURE comportamento OF registrador IS
	BEGIN
		PROCESS (clk)
			BEGIN
				IF (rising_edge(clk)) THEN
					Q <= D;
				END IF;
		END PROCESS;
END comportamento;