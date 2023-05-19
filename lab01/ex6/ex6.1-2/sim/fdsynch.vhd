library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity FDSYNCH is
        Generic (NBIT: integer:= numBit);
	Port (	D:	In	std_logic_vector(NBIT-1 downto 0);
		CK:	In	std_logic;
		RESET:	In	std_logic;
		Q:	Out	std_logic_vector(NBIT-1 downto 0));
end FDSYNCH;


architecture PIPPO of FDSYNCH is -- flip flop D with syncronous reset

begin
	PSYNCH: process(CK,RESET)
	begin
	  if CK'event and CK='1' then -- positive edge triggered:
	    if RESET='1' then -- active high reset 
	      Q <= (others => '0'); --assign the correct number of 0
	    else
	      Q <= D; -- input is written on output
	    end if;
          end if;
	end process;

end PIPPO;
configuration CFG_FDSYNCH_PIPPO of FDSYNCH is
	for PIPPO
	end for;
end CFG_FDSYNCH_PIPPO;
