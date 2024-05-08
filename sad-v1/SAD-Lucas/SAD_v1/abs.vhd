LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY abs IS
    PORT (cin, a, b) : IN STD_LOGIC;
                 s, cout : OUT STD_LOGIC);
END abs ;

ARCHITECTURE comportamento OF abd IS
BEGIN
      abs = abs(a-b)
END comportamento;
