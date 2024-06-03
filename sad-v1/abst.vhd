LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY abst IS
GENERIC(N : POSITIVE := 8);
    PORT (a : IN SIGNED((N-1) downto 0);
          s : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0));
END entity;

ARCHITECTURE comportamento OF abst IS
BEGIN
      s <= std_LOGIC_VECTOR(unsigned(abs(a)));
END comportamento;