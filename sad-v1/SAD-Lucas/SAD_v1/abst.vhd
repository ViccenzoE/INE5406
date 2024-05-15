LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY abst IS
GENERIC(N : POSITIVE := 8);
    PORT (a: IN SIGNED(N-1 downto 0);
          s : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0));
END abst;

ARCHITECTURE comportamento OF abd IS
BEGIN
      s <= std_LOGIC_VECTOR(unsigned(abs(a)));
END comportamento;