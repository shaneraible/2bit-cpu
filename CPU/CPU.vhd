LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY CPU IS 
	PORT ( DIN : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
			Resetn, Clock, Run : IN STD_LOGIC;
			Done : BUFFER STD_LOGIC;
			BusWires : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0));
END CPU;

ARCHITECTURE Behavior OF CPU IS 
	--... declare components 
	component regn IS 
		GENERIC (n : INTEGER := 9); 
		PORT( R : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0); 
				Rin, Clock : IN STD_LOGIC; 
				Q : BUFFER STD_LOGIC_VECTOR(n-1 DOWNTO 0)); 
	END component;
	
	component dec3to8 IS 
		PORT( W : IN STD_LOGIC_VECTOR(2 DOWNTO 0); 
				En : IN STD_LOGIC; 
				Y : OUT STD_LOGIC_VECTOR(7 downto 0)); 
	end component;
	
	component addsub IS
	PORT( ry,rx : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
			AorS  : IN STD_LOGIC;
			Q     : out STD_LOGIC_VECTOR(8 DOWNTO 0));
	END component;

	component mux IS
	PORT( r0,r1,r2,r3,r4,r5,r6,r7,g,din: IN STD_LOGIC_VECTOR(8 DOWNTO 0);
			r: IN STD_LOGIC_VECTOR(7 downto 0);
			g_out, din_out  : IN STD_LOGIC;
			Q    : out STD_LOGIC_VECTOR(8 DOWNTO 0));
	END component;
	--this holds the different states
	TYPE State_type IS (T0, T1, T2, T3); 

	SIGNAL Tstep_Q, Tstep_D: State_type; 
	
	SIGNAL IRIN : STD_LOGIC; --this holds the instruction to activate irin
	SIGNAL IR : STD_LOGIC_VECTOR(8 downto 0); --this is the inputted instructions
	SIGNAL I : STD_LOGIC_VECTOR(2 downto 0); --this holds the assembly code instructions
	
	--these are the signals that hold the registers to be moved
	--x reg holds the x register and yreg holds the y regiser
	SIGNAL Xreg, Yreg : STD_LOGIC_VECTOR(7 downto 0);
	
	--these are the signals for which register to activate
	SIGNAL Rin : STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL Ain, Gin, add_or_sub, high: std_logic;
	
	--these are the signals to hold the output of all the registers
	SIGNAL R0, R1, R2, R3, R4, R5, R6, R7, sum : STD_LOGIC_VECTOR(8 DOWNTO 0):="000000000";
	SIGNAL A,G:std_logic_vector(8 downto 0);
	
	--these are the signals to control the mux
	signal r_select: std_logic_vector(7 downto 0);
	signal g_select, din_select: std_logic;
	
	

BEGIN 

	High <= '1'; 
	I <= IR(8 downto 6); 

	decX: dec3to8 PORT MAP (IR(5 downto 3), High, Xreg); 
	decY: dec3to8 PORT MAP (IR(2 downto 0), High, Yreg);

-------------------------------------------------------------
	statetable: PROCESS (Tstep_Q, Run, Done) 
	BEGIN 
	
		CASE Tstep_Q IS 
			WHEN T0 => 
				IF(Run = '0') THEN 
					Tstep_D <= T0; 
				ELSE 
					Tstep_D <= T1; 
				END IF; 
				-- data is loaded into IR in this time step 
				
			WHEN T1=>
				if done='1' then
					Tstep_D<= T0;
				else
					Tstep_D<=T2;
				end if;
			WHEN T2=>
				Tstep_D<=T3;
			WHEN T3=>
				Tstep_D<= T0;
		END CASE;
	END PROCESS;
------------------------------------------------------------

	controlsignals: PROCESS (Tstep_Q, I, Xreg, Yreg) 
	BEGIN 			
		IRin <= '1';
		done<='0';
						
			r_select<="00000000";
			g_select<='0';
			din_select<='0';
					
			Rin<="00000000";
			ain<='0';
			gin<='0';
			add_or_sub<='0';
	--... specify initial values 
		CASE Tstep_Q IS 
				
			WHEN T0 => -- store DIN in IR as long as Tstep_Q = T0 
				IRin <= '1';
				done<='0';
						
				r_select<="00000000";
				g_select<='0';
				din_select<='0';
						
				Rin<="00000000";
				ain<='0';
				gin<='0';
				add_or_sub<='0';
				
			WHEN T1 => -- deﬁne signals in time step T1
				IRin<='0';
				
				CASE I IS 
					when "000" =>
						r_select<=Yreg;
						g_select<='0';
						din_select<='0';
						
						Rin<=xreg;
						ain<='0';
						gin<='0';
						add_or_sub<='0';
						
						done<='1';
					when "001" =>
						din_select<='1';
						r_select<="00000000";
						g_select<='0';
						
						Rin<=xreg;
						ain<='0';
						gin<='0';
						add_or_sub<='0';
						
						done<='1';
					when "010"=>
						r_select<=xreg;
						g_select<='0';
						din_select<='0';
						
						Rin<="00000000";
						ain<='1';
						gin<='0';
						add_or_sub<='0';
						
						done<='0';
					when "011"=>
						r_select<=xreg;
						g_select<='0';
						din_select<='0';
						
						Rin<="00000000";
						ain<='1';
						gin<='0';
						add_or_sub<='0';
						
						done<='0';
						
					when others=>
						done<='0';

				END CASE; 
			WHEN T2 => 	-- deﬁne signals in time step T2 
				CASE I IS 
					when "010"=>
						r_select<=yreg;
						g_select<='0';
						din_select<='0';
						
						Rin<="00000000";
						ain<='0';
						gin<='1';
						add_or_sub<='0';

						done<='0';
					when "011"=>
						r_select<=yreg;
						g_select<='0';
						din_select<='0';
						
						Rin<="00000000";
						ain<='0';
						gin<='1';
						add_or_sub<='1';
						
						done<='0';
					
					when others=>
						done<='0';
				END CASE; 
			WHEN T3 => 
				-- deﬁne signals in time step T3 
				CASE I IS 
					when "010"=>
						r_select<="00000000";
						g_select<='1';
						din_select<='0';
						
						Rin<=xreg;
						ain<='0';
						gin<='0';
						add_or_sub<='0';
						
						done<='1';
					when "011"=>
						r_select<="00000000";
						g_select<='1';
						din_select<='0';
						
						Rin<=xreg;
						ain<='0';
						gin<='0';
						add_or_sub<='0';
						
						done<='1';
						
					when others=>
						done<='0';
				END CASE; 
		END CASE; 
	END PROCESS;


	
	fsmflipflops: process (clock, resetn, tstep_d)
	begin
		if resetn='0' then
			Tstep_Q<=t0;
		elsif rising_edge(clock) then
			tstep_q<=tstep_d;
		end if;
	end process;

	--declaring all of the registers
	reg_0: regn PORT MAP (BusWires, Rin(0), Clock, R0);
	reg_1: regn PORT MAP (BusWires, Rin(1), Clock, R1); 
	reg_2: regn PORT MAP (BusWires, Rin(2), Clock, R2); 
	reg_3: regn PORT MAP (BusWires, Rin(3), Clock, R3); 
	reg_4: regn PORT MAP (BusWires, Rin(4), Clock, R4); 
	reg_5: regn PORT MAP (BusWires, Rin(5), Clock, R5); 
	reg_6: regn PORT MAP (BusWires, Rin(6), Clock, R6); 
	reg_7: regn PORT MAP (BusWires, Rin(7), Clock, R7); 
	
	reg_A: regn PORT MAP (BusWires, Ain, Clock, A);
	
	--doing the additions--
	a_plus_bus: addsub port map(BusWires, A, add_or_sub, sum);
	
	reg_G: regn PORT MAP (sum, Gin, Clock, G);
	
	ir_reg: regn port map(DIN, irin, clock, IR);
	
	--DEFINE THE BUS (will be the output of our mux)
	mux_define: mux port map(r0,r1,r2,r3,r4,r5,r6,r7,g, din, r_select, g_select, din_select, BusWires);

END Behavior;