library IEEE;
use IEEE.std_logic_1164.all; 
use WORK.constants.all;

entity FDASYNCH is
	Generic (NBIT: integer:= NumBit);
	Port (	D:	In	std_logic_vector(NBIT-1 downto 0);
		CK:	In	std_logic;
		RESET:	In	std_logic;
		Q:	Out	std_logic_vector(NBIT-1 downto 0));
end FDASYNCH;
architecture PLUTO of FDASYNCH is -- flip flop D with asyncronous reset

begin
	
	PASYNCH: process(CK,RESET)
	begin
	  if RESET='1' then
	    Q <= (OTHERS => '0');
	  elsif CK'event and CK='1' then -- positive edge triggered:
	    Q <= D; 
	  end if;
          end process;

end PLUTO;

configuration CFG_FDASYNCH_PLUTO of FDASYNCH is
	for PLUTO
	end for;
end CFG_FDASYNCH_PLUTO;
