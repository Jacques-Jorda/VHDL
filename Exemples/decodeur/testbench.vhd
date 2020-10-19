LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.NUMERIC_STD.ALL;

ENTITY test IS
END ENTITY;

ARCHITECTURE arc OF test IS

	SIGNAL I1, I0, O3, O2, O1, O0 : STD_LOGIC := '0';

	COMPONENT decodeur IS
		PORT (	e0, e1			: IN STD_LOGIC;
				s0, s1, s2, s3	: OUT STD_LOGIC);
	END COMPONENT;


BEGIN
	-- test du décodeur
	fddDec : decodeur PORT MAP (I0, I1, O0, O1, O2, O3);
	I1 <= '0', '1' AFTER 20 ns, 'U' AFTER 40 ns, '0' AFTER 50 ns;
	I0 <= '0', '1' AFTER 10 ns, '0' AFTER 20 ns, '1' AFTER 30 ns, 'U' AFTER 40 ns, '0' AFTER 50 ns; 


END ARCHITECTURE;
