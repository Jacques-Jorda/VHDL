LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.NUMERIC_STD.ALL;

-----------------------------------------------------------------
-- Déclaration de l'entité
-----------------------------------------------------------------
ENTITY full_adder IS
	PORT (	A		: IN STD_LOGIC;
			B		: IN STD_LOGIC;
			C_in	: IN STD_LOGIC;
			S		: OUT STD_LOGIC;
			C_out	: OUT STD_LOGIC
			);
END ENTITY full_adder;



-----------------------------------------------------------------
-- Description flot de données
-----------------------------------------------------------------
ARCHITECTURE fdd_FA OF full_adder IS
BEGIN
	S <= A XOR B XOR C_in;
	C_out <= (A AND B) OR (C_IN AND (A XOR B));
END ARCHITECTURE fdd_FA;



-----------------------------------------------------------------
-- Description structurelle s'appuyant sur le demi-additionneur
-----------------------------------------------------------------
ARCHITECTURE struct_FA OF full_adder IS
	COMPONENT half_adder IS
		PORT (	A		: IN STD_LOGIC;
				B		: IN STD_LOGIC;
				S		: OUT STD_LOGIC;
				C_out	: OUT STD_LOGIC
				);
	END COMPONENT half_adder;
	SIGNAL co1, s1, co2 : STD_LOGIC;
BEGIN
	ha1 : half_adder 
		PORT MAP (	A => A,
					B => B,
					S => s1,
					C_out => co1 );
	ha2 : half_adder 
		PORT MAP (	A => s1,
					B => c_in,
					S => S,
					c_out => co2 );
	C_out <= co1 OR co2;
END ARCHITECTURE struct_FA;


-- HALF ADDER entity
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY half_adder IS
	PORT (	A		: IN STD_LOGIC;
			B		: IN STD_LOGIC;
			S		: OUT STD_LOGIC;
			C_out	: OUT STD_LOGIC
			);
END ENTITY half_adder;

ARCHITECTURE fdd_HA OF half_adder IS
BEGIN
	S <= A XOR B;
	C_out <= A AND B;
END ARCHITECTURE fdd_HA;


