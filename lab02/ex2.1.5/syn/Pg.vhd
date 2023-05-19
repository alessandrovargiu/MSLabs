library ieee; 
use ieee.std_logic_1164.all; 

entity Pg is 
  
  port (  P_ik : in std_logic;
          G_ik : in std_logic;
          Gk_1j : in std_logic;
          Pk_1j : in std_logic;
          G_ij : out std_logic;
          P_ij : out std_logic
        );
end entity;


architecture behavioral of Pg is
begin

		G_ij <= G_ik or (P_ik and Gk_1j);
    	P_ij <= P_ik and Pk_1j;

end architecture;
