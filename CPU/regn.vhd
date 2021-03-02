LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY regn IS
	GENERIC (n : INTEGER := 9);
	
	PORT( R : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			Rin, Clock : IN STD_LOGIC;
			Q : buffer STD_LOGIC_VECTOR(n-1 DOWNTO 0));
END regn;
	
ARCHITECTURE Behavior OF regn IS
BEGIN
	PROCESS (Clock)
	BEGIN
		if clock'event and clock='1' then
			if rin='1' then
				Q <= R;
			END IF;
		END IF;
	END PROCESS;
END Behavior;