LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY decodeur IS
	PORT ( e0 : IN STD_LOGIC;
		   e1 : IN STD_LOGIC;
		   s0 : OUT STD_LOGIC;
		   s1 : OUT STD_LOGIC;
		   s2 : OUT STD_LOGIC;
		   s3 : OUT STD_LOGIC);
END ENTITY decodeur;

ARCHITECTURE decodeur_fd OF decodeur IS BEGIN
	s0 <= (NOT e0) AND (NOT e1); 
	s1 <= e0 AND (NOT e1);
	s2 <= (NOT e0) AND e1;
	s3 <= e0 AND e1;
END ARCHITECTURE decodeur_fd;