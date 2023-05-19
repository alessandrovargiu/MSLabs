library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;


entity TBFD is
end TBFD;

architecture TEST of TBFD is
    
	constant NBIT:	 integer := 4;
	signal	CK:		 std_logic :='0';
	signal	RESET:	 std_logic :='0';
	signal	D:		 std_logic_vector(NBIT-1 downto 0):="0000";
	signal	QSYNCH:	 std_logic_vector(NBIT-1 downto 0);
	signal	QASYNCH: std_logic_vector(NBIT-1 downto 0);
	
	component FDSYNCH
	
		Generic (NBIT: integer:= NumBit);
 
		Port (	D:		In	std_logic_vector(NBIT-1 downto 0);
				CK:		In	std_logic;
				RESET:	In	std_logic;
				Q:		Out	std_logic_vector(NBIT-1 downto 0));
	end component;


	component FDASYNCH
	
		Generic (NBIT: integer:= NumBit);
 
		Port (	D:	In	std_logic_vector(NBIT-1 downto 0);
				CK:	In	std_logic;
				RESET:	In	std_logic;
				Q:	Out	std_logic_vector(NBIT-1 downto 0));
	end component;

begin 
		
	UFD1 : FDSYNCH
	Port Map ( D, CK, RESET, QSYNCH); -- sinc

	UFD2 : FDASYNCH
	Port Map ( D, CK, RESET, QASYNCH); -- async
	
	RESET <= '0', '1' after 0.6 ns, 
				  '0' after 1.1 ns, 
				  '1' after 2.2 ns,
				  '0' after 3.2 ns;	
	
	D 	  <= "0000", "0011" after 0.4 ns, 
					 "0111" after 1.1 ns, 
					 "0011" after 1.4 ns, 
					 "0111" after 1.7 ns, 
					 "1011" after 1.9 ns;

	PCLOCK : process(CK)
	begin
		CK <= not(CK) after 0.5 ns;	
	end process;
	
end TEST;

configuration FDTEST of TBFD is
   for TEST
      for UFD1 : FDSYNCH
         use configuration WORK.CFG_FDSYNCH_PIPPO; -- sincrono
      end for;
      for UFD2 : FDASYNCH
         use configuration WORK.CFG_FDASYNCH_PLUTO; -- asincrono
      end for;
   end for;
end FDTEST;

