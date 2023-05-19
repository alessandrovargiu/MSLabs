library ieee;
use ieee.std_logic_1164.all;
use work.constants.all;
use ieee.numeric_std.all;

entity PgNetwork is
  generic (NBit : integer := 32);
  port (  A : in std_logic_vector(NBit-1 downto 0);
          B : in std_logic_vector(NBit-1 downto 0);
		  Cin : in std_logic;
          P : out std_logic_vector(NBit-1 downto 0);
          G : out std_logic_vector(NBit-1 downto 0)
        );

end entity;

architecture behavioral of PgNetwork is

  begin

    proc : process (A, B) 
	begin
      for i in 0 to NBit-1 loop
		  if (i = 0) then
        	  P(i) <= a(i) xor b(i); 
			  G(i) <= (a(i) and b(i)) or (a(i) and cin) or (b(i) and cin);
			else
			  P(i) <= A(i) xor B(i);
			  G(i) <= A(i) and B(i);
		  end if;
      end loop;
    end process;
end architecture;

configuration cfg_PgNetwork of PgNetwork is
  for behavioral
  end for;
end configuration;
