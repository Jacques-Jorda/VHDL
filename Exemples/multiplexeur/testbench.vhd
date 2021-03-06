LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.NUMERIC_STD.ALL;

ENTITY test IS
END ENTITY;

ARCHITECTURE arc OF test IS

	SIGNAL I : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL C : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL S : STD_LOGIC;

	COMPONENT multiplexer IS
		PORT (	E : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				C : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
				S : OUT STD_LOGIC);
		END COMPONENT;

BEGIN
	-- test du multiplexeur
	fddMPX : multiplexer PORT MAP (I, C, S);
	I(3) <= '0', '1' AFTER 30 ns, '0' AFTER 40 ns, '1' AFTER 70 ns, '0' AFTER 80 ns, '1' AFTER 110 ns, '0' AFTER 120 ns, '1' AFTER 150 ns, '0' AFTER 160 ns;
	I(2) <= '0', '1' AFTER 20 ns, '0' AFTER 30 ns, '1' AFTER 60 ns, '0' AFTER 70 ns, '1' AFTER 100 ns, '0' AFTER 110 ns, '1' AFTER 140 ns, '0' AFTER 150 ns;
	I(1) <= '0', '1' AFTER 10 ns, '0' AFTER 20 ns, '1' AFTER 50 ns, '0' AFTER 60 ns, '1' AFTER 90 ns, '0' AFTER 100 ns, '1' AFTER 130 ns, '0' AFTER 140 ns;
	I(0) <= '1', '0' AFTER 10 ns, '1' AFTER 40 ns, '0' AFTER 50 ns, '1' AFTER 80 ns, '0' AFTER 90 ns, '1' AFTER 120 ns, '0' AFTER 130 ns;
	C(1) <= '0', '1' AFTER 80 ns, '0' AFTER 160 ns;
	C(0) <= '0', '1' AFTER 40 ns, '0' AFTER 80 ns, '1' AFTER 120 ns;

END ARCHITECTURE;
