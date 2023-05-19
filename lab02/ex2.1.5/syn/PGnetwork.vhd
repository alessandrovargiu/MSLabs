library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use WORK.constants.all;

entity PGNetwork is
	--generic (Nbits: integer := 32);
	port(
	  a: in std_logic_vector (Nbit-1 downto 0);
	  b: in std_logic_vector (Nbit-1 downto 0);
	  cin: in std_logic;
	  g: out std_logic_vector (Nbit-1 downto 0);
	  p: out std_logic_vector (Nbit-1 downto 0)
	);
end PGNetwork;

architecture BEHAVIORAL of PGNetwork is
begin

	process(a, b)
	begin
	
		for i in 0 to Nbit-1 loop
		    if(i = 0) then		            -- in case of subtraction
	                g(i) <= a(i) and (b(i) xor cin);
		        p(i) <= a(i) xor (b(i) xor cin);
		    end if;
	            g(i) <= a(i) and b(i);
		    p(i) <= a(i) xor b(i);
		end loop;
	end process;

end BEHAVIORAL;

configuration cfg_pgNetwork of PGNetwork is 
	for BEHAVIORAL
	end for;
end configuration cfg_pgNetwork;
