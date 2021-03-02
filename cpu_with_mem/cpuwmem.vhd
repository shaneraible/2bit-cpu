LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY cpuwmem IS 
	PORT (PClock, MClock,Resetn, run: IN STD_LOGIC;
			Done : BUFFER STD_LOGIC;
			BusWires : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0));
END cpuwmem;

ARCHITECTURE Behavior OF cpuwmem IS 
	
	Component CPU IS 
	PORT ( DIN : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
			Resetn, Clock, Run : IN STD_LOGIC;
			Done : BUFFER STD_LOGIC;
			BusWires : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0));
	END component;
	
	component inst_mem
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (8 DOWNTO 0)
	);
	
end component;
	
	signal DIN: std_logic_vector(8 downto 0);
	signal addy: std_logic_vector(4 downto 0):="00000";
	
	Begin
	
	process(mclock)
	begin
		if resetn='0' then
			addy<="00000";
		elsif rising_edge(mclock) then
			addy<=addy+1;
		else
			addy<=addy;
		end if;
	end process;
	
	--////instantiating the CPU////
	get_mem: inst_mem port map(addy, mClock, din);
	get_cpu: CPU port map(din, resetn, pclock, run, done, buswires);
	
	

END Behavior;