USE ieee.std_logic_1164.all;

ENTITY somador13bits IS
    PORT (cin : IN STD_LOGIC;
                           a, b : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
                 s : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
                 cout : OUT STD_LOGIC);
END somador13bits;

ARCHITECTURE comportamento OF somador_13bits IS
    SIGNAL c : STD_LOGIC_VECTOR (13 DOWNTO 1);
    COMPONENT Somador1bit
          PORT (cin, a, b : IN  STD_LOGIC;
                        s, cout : OUT  STD_LOGIC);
    END COMPONENT;

BEGIN

	 SC0: Somador1bit PORT MAP (cin,  a(0), b(0), s(0), c(1)); 
	 SC1: Somador1bit PORT MAP (c(1), a(1), b(1), s(1), c(2)); 
	 SC2: Somador1bit PORT MAP (c(2), a(2), b(2), s(2), c(3)); 
	 SC3: Somador1bit PORT MAP (c(3), a(3), b(3), s(3), c(4)); 
	 SC4: Somador1bit PORT MAP (c(4), a(4), b(4), s(4), c(5));
	 SC5: Somador1bit PORT MAP (c(5), a(5), b(5), s(5), c(6));
	 SC6: Somador1bit PORT MAP (c(6), a(6), b(6), s(6), c(7));
	 SC7: Somador1bit PORT MAP (c(7), a(7), b(7), s(7), c(8));
	 SC7: Somador1bit PORT MAP (c(8), a(8), b(8), s(8), c(9));
	 SC7: Somador1bit PORT MAP (c(9), a(9), b(9), s(9), c(10));
	 SC7: Somador1bit PORT MAP (c(10), a(10), b(10), s(10), c(11));
	 SC7: Somador1bit PORT MAP (c(11), a(11), b(11), s(11), c(12));
	 SC7: Somador1bit PORT MAP (c(12), a(12), b(12), s(12), c(13));
	 SC7: Somador1bit PORT MAP (c(13), a(13), b(13), s(13), cout);



END comportamento;