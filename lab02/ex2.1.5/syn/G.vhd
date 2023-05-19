library ieee; 
use ieee.std_logic_1164.all; 

entity G is 
  port (  P_ik : in std_logic;
          G_ik : in std_logic;
          Gk_1j : in std_logic;
          G_ij : out std_logic
        );
end entity;


architecture behavioral of G is
begin
    
    G_ij <= G_ik or (P_ik and Gk_1j);

end architecture;
