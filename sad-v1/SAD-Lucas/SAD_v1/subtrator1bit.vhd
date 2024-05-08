USE ieee.std_logic_1164.all;

ENTITY somadornbits IS
    PORT (cin : IN STD_LOGIC;
                           a, b : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
                 s : OUT STD_LOGIC_VECTOR (N DOWNTO 0);
                 );
END somadornbits;

ARCHITECTURE comportamento OF somador_nbits IS
    SIGNAL c : STD_LOGIC_VECTOR ( DOWNTO 0);
    COMPONENT Somador1bit
          PORT (cin, a,b : IN  STD_LOGIC;
                        s, cout : OUT  STD_LOGIC);
	
    END COMPONENT;
	 cin = 1;
BEGIN
	USE ieee.std_logic_1164.all;

ENTITY somadornbits IS
    generic(N: POSITIVE := 8);
    PORT (cin : IN STD_LOGIC;
                           a, b : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
                 s : OUT STD_LOGIC_VECTOR (N DOWNTO 0);
                 );
END somadornbits;

ARCHITECTURE comportamento OF somador_nbits IS
    SIGNAL c : STD_LOGIC_VECTOR ( DOWNTO 0);
    COMPONENT Somador1bit
          PORT (cin, a, b : IN  STD_LOGIC;
                        s, cout : OUT  STD_LOGIC);
    END COMPONENT;
	 cin=1
BEGIN
		sc : somadornbit PORT MAP('1', a, not(b), s, c);
		

