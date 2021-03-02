LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;


ENTITY addsub IS 
	PORT( ry, rx : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
			AorS  : IN STD_LOGIC;
			Q     : out STD_LOGIC_VECTOR(8 DOWNTO 0));
END addsub;
	
ARCHITECTURE Behavior OF addsub IS
BEGIN
	process(AorS,rx,ry)
	begin
		if AorS='1' then
			q<=rx-ry;
		else
			q<=rx+ry;
		end if;
	end process;
END Behavior;
