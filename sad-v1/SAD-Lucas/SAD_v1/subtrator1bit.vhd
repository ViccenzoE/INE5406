LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY subtrator1bit IS
    PORT (cin : IN STD_LOGIC;
                           a, b : IN STD_LOGIC;
                 s : OUT STD_LOGIC;
                 );
END somadornbits;

ARCHITECTURE comportamento OF subtrator1bit IS
BEGIN
    SIGNAL c : STD_LOGIC_VECTOR;
    COMPONENT Somador1bit
          PORT (cin, a, b : IN  STD_LOGIC;
                        s, cout : OUT  STD_LOGIC);
    END COMPONENT;
	 cin=1;
end comportamento;
BEGIN
		sc : somadornbit PORT MAP('1', a, not(b), s, c);
end comportamento;