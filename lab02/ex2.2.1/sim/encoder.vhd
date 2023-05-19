library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity encoder is 

	Port ( pieceofB:	In std_logic_vector(2 downto 0);
		   sel:			out std_logic_vector(2 downto 0) );

end encoder;


architecture behavioral of encoder is

begin

	process (pieceofB)

	begin

	case (pieceofB) is
	
		when "000" | "111" =>	sel <= "000" ; -- will select zero signal -
		when "001" | "010" =>	sel <= "001" ; -- will select A -
		--when "010" =>	sel <= "001" ; -- will select A
		when "101" | "110" =>	sel <= "010" ; -- will select -A
		when "011" 			=>	sel <= "011" ; -- will select 2A
		when "100" 			=>	sel <= "100" ; -- will select -2A
		--when "110" =>	sel <= "010" ; -- will select -A
		--when "111" =>	sel <= "000" ; -- will select the zero signal
		when others =>	sel <= "XXX" ;

end case;

end process;


end behavioral;
