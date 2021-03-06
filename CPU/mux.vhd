LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux IS
	PORT( r0,r1,r2,r3,r4,r5,r6,r7,g,din: IN STD_LOGIC_VECTOR(8 DOWNTO 0);
			r: IN STD_LOGIC_VECTOR(7 downto 0);
			g_out, din_out  : IN STD_LOGIC;
			Q    : out STD_LOGIC_VECTOR(8 DOWNTO 0));
END mux;
	
ARCHITECTURE Behavior OF mux IS
BEGIN
	process(r, g_out, din_out,g,din, r0,r1,r2,r3,r4,r5,r6,r7)
	begin
		q<="000000000";
		if g_out='1' then
			q<=g;
		elsif din_out='1' then	
			q<=din;
		elsif r(7)='1' then
			q<=r7;
		elsif r(6)='1' then
			q<=r6;
		elsif r(5)='1' then
			q<=r5;
		elsif r(4)='1' then
			q<=r4;
		elsif r(3)='1' then
			q<=r3;
		elsif r(2)='1' then
			q<=r2;
		elsif r(1)='1' then
			q<=r1;
		elsif r(0)='1' then
			q<=r0;
		end if;
	end process;
END Behavior;
