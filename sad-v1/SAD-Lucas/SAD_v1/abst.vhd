LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY abst IS
    PORT (cin, a, b) : IN STD_LOGIC;
                 s, cout : OUT STD_LOGIC);
END abst ;

ARCHITECTURE comportamento OF abd IS
BEGIN
      abst = abs(a-b)
END comportamento;
