USE ieee.std_logic_1164.all;

ENTITY subtrator1bit IS
    PORT (cin : IN STD_LOGIC;
                 a, b : IN STD_LOGIC;
                 s : OUT STD_LOGIC
                 );
END subtrator1bit;

ARCHITECTURE comportamento OF subtrator1bit IS
    SIGNAL c : STD_LOGIC;
    COMPONENT Somador1bit
          PORT (cin, a, b : IN  STD_LOGIC;
                s, cout : OUT  STD_LOGIC);
    END COMPONENT;
BEGIN
		cin=1;
		sc : somadornbit PORT MAP('1', a, not(b), s, c);
End ARCHITECTURE;
		

