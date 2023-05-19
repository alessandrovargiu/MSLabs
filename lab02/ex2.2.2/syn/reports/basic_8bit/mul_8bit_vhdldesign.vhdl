
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_BOOTHMUL is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_BOOTHMUL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_63 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_63;

architecture SYN_BEHAVIORAL of FA_63 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_62 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_62;

architecture SYN_BEHAVIORAL of FA_62 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_61 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_61;

architecture SYN_BEHAVIORAL of FA_61 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_60 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_60;

architecture SYN_BEHAVIORAL of FA_60 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_59 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_59;

architecture SYN_BEHAVIORAL of FA_59 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_58 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_58;

architecture SYN_BEHAVIORAL of FA_58 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_57 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_57;

architecture SYN_BEHAVIORAL of FA_57 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_56 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_56;

architecture SYN_BEHAVIORAL of FA_56 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_55 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_55;

architecture SYN_BEHAVIORAL of FA_55 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_54 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_54;

architecture SYN_BEHAVIORAL of FA_54 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_53 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_53;

architecture SYN_BEHAVIORAL of FA_53 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_52 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_52;

architecture SYN_BEHAVIORAL of FA_52 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_51 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_51;

architecture SYN_BEHAVIORAL of FA_51 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_50 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_50;

architecture SYN_BEHAVIORAL of FA_50 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_49 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_49;

architecture SYN_BEHAVIORAL of FA_49 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_48 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_48;

architecture SYN_BEHAVIORAL of FA_48 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_47 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_47;

architecture SYN_BEHAVIORAL of FA_47 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_46 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_46;

architecture SYN_BEHAVIORAL of FA_46 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_45 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_45;

architecture SYN_BEHAVIORAL of FA_45 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_44 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_44;

architecture SYN_BEHAVIORAL of FA_44 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_43 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_43;

architecture SYN_BEHAVIORAL of FA_43 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_42 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_42;

architecture SYN_BEHAVIORAL of FA_42 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_41 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_41;

architecture SYN_BEHAVIORAL of FA_41 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_40 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_40;

architecture SYN_BEHAVIORAL of FA_40 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_39 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_39;

architecture SYN_BEHAVIORAL of FA_39 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_38 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_38;

architecture SYN_BEHAVIORAL of FA_38 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_37 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_37;

architecture SYN_BEHAVIORAL of FA_37 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_36 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_36;

architecture SYN_BEHAVIORAL of FA_36 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_35 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_35;

architecture SYN_BEHAVIORAL of FA_35 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_34 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_34;

architecture SYN_BEHAVIORAL of FA_34 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_33 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_33;

architecture SYN_BEHAVIORAL of FA_33 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_32 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_32;

architecture SYN_BEHAVIORAL of FA_32 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_31 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_31;

architecture SYN_BEHAVIORAL of FA_31 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_30 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_30;

architecture SYN_BEHAVIORAL of FA_30 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_29 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_29;

architecture SYN_BEHAVIORAL of FA_29 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_28 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_28;

architecture SYN_BEHAVIORAL of FA_28 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_27 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_27;

architecture SYN_BEHAVIORAL of FA_27 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_26 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_26;

architecture SYN_BEHAVIORAL of FA_26 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_25 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_25;

architecture SYN_BEHAVIORAL of FA_25 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_24 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_24;

architecture SYN_BEHAVIORAL of FA_24 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_23 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_23;

architecture SYN_BEHAVIORAL of FA_23 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_22 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_22;

architecture SYN_BEHAVIORAL of FA_22 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_21 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_21;

architecture SYN_BEHAVIORAL of FA_21 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_20 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_20;

architecture SYN_BEHAVIORAL of FA_20 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_19 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_19;

architecture SYN_BEHAVIORAL of FA_19 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_18 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_18;

architecture SYN_BEHAVIORAL of FA_18 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_17 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_17;

architecture SYN_BEHAVIORAL of FA_17 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_16 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_16;

architecture SYN_BEHAVIORAL of FA_16 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_15 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_15;

architecture SYN_BEHAVIORAL of FA_15 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_14 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_14;

architecture SYN_BEHAVIORAL of FA_14 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_13 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_13;

architecture SYN_BEHAVIORAL of FA_13 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_12 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_12;

architecture SYN_BEHAVIORAL of FA_12 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_11 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_11;

architecture SYN_BEHAVIORAL of FA_11 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_10 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_10;

architecture SYN_BEHAVIORAL of FA_10 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_9 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_9;

architecture SYN_BEHAVIORAL of FA_9 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_8 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_8;

architecture SYN_BEHAVIORAL of FA_8 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_6 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_5 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_5;

architecture SYN_BEHAVIORAL of FA_5 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_4 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_4;

architecture SYN_BEHAVIORAL of FA_4 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_BEHAVIORAL of FA_3 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_BEHAVIORAL of FA_2 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity MUX51_MuxNbit16_3 is

   port( zeroSignal, A_signal, A_neg, A_shifted, A_neg_shifted : in 
         std_logic_vector (15 downto 0);  Sel : in std_logic_vector (2 downto 
         0);  Y : out std_logic_vector (15 downto 0));

end MUX51_MuxNbit16_3;

architecture SYN_BEHAVIORAL_2 of MUX51_MuxNbit16_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X2
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n39, n40 : std_logic;

begin
   
   U1 : XNOR2_X2 port map( A => n38, B => Sel(2), ZN => n5);
   U2 : NOR3_X4 port map( A1 => Sel(0), A2 => Sel(2), A3 => n39, ZN => n7);
   U3 : NOR3_X4 port map( A1 => Sel(1), A2 => Sel(2), A3 => n40, ZN => n6);
   U4 : NOR3_X4 port map( A1 => n40, A2 => Sel(2), A3 => n39, ZN => n3);
   U5 : NAND2_X1 port map( A1 => n1, A2 => n2, ZN => Y(9));
   U6 : AOI222_X1 port map( A1 => A_shifted(9), A2 => n3, B1 => 
                           A_neg_shifted(9), B2 => n4, C1 => zeroSignal(9), C2 
                           => n5, ZN => n2);
   U7 : AOI22_X1 port map( A1 => A_signal(9), A2 => n6, B1 => A_neg(9), B2 => 
                           n7, ZN => n1);
   U8 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => Y(8));
   U9 : AOI222_X1 port map( A1 => A_shifted(8), A2 => n3, B1 => 
                           A_neg_shifted(8), B2 => n4, C1 => zeroSignal(8), C2 
                           => n5, ZN => n9);
   U10 : AOI22_X1 port map( A1 => A_signal(8), A2 => n6, B1 => A_neg(8), B2 => 
                           n7, ZN => n8);
   U11 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => Y(7));
   U12 : AOI222_X1 port map( A1 => A_shifted(7), A2 => n3, B1 => 
                           A_neg_shifted(7), B2 => n4, C1 => zeroSignal(7), C2 
                           => n5, ZN => n11);
   U13 : AOI22_X1 port map( A1 => A_signal(7), A2 => n6, B1 => A_neg(7), B2 => 
                           n7, ZN => n10);
   U14 : NAND2_X1 port map( A1 => n12, A2 => n13, ZN => Y(6));
   U15 : AOI222_X1 port map( A1 => A_shifted(6), A2 => n3, B1 => 
                           A_neg_shifted(6), B2 => n4, C1 => zeroSignal(6), C2 
                           => n5, ZN => n13);
   U16 : AOI22_X1 port map( A1 => A_signal(6), A2 => n6, B1 => A_neg(6), B2 => 
                           n7, ZN => n12);
   U17 : NAND2_X1 port map( A1 => n14, A2 => n15, ZN => Y(5));
   U18 : AOI222_X1 port map( A1 => A_shifted(5), A2 => n3, B1 => 
                           A_neg_shifted(5), B2 => n4, C1 => zeroSignal(5), C2 
                           => n5, ZN => n15);
   U19 : AOI22_X1 port map( A1 => A_signal(5), A2 => n6, B1 => A_neg(5), B2 => 
                           n7, ZN => n14);
   U20 : NAND2_X1 port map( A1 => n16, A2 => n17, ZN => Y(4));
   U21 : AOI222_X1 port map( A1 => A_shifted(4), A2 => n3, B1 => 
                           A_neg_shifted(4), B2 => n4, C1 => zeroSignal(4), C2 
                           => n5, ZN => n17);
   U22 : AOI22_X1 port map( A1 => A_signal(4), A2 => n6, B1 => A_neg(4), B2 => 
                           n7, ZN => n16);
   U23 : NAND2_X1 port map( A1 => n18, A2 => n19, ZN => Y(3));
   U24 : AOI222_X1 port map( A1 => A_shifted(3), A2 => n3, B1 => 
                           A_neg_shifted(3), B2 => n4, C1 => zeroSignal(3), C2 
                           => n5, ZN => n19);
   U25 : AOI22_X1 port map( A1 => A_signal(3), A2 => n6, B1 => A_neg(3), B2 => 
                           n7, ZN => n18);
   U26 : NAND2_X1 port map( A1 => n20, A2 => n21, ZN => Y(2));
   U27 : AOI222_X1 port map( A1 => A_shifted(2), A2 => n3, B1 => 
                           A_neg_shifted(2), B2 => n4, C1 => zeroSignal(2), C2 
                           => n5, ZN => n21);
   U28 : AOI22_X1 port map( A1 => A_signal(2), A2 => n6, B1 => A_neg(2), B2 => 
                           n7, ZN => n20);
   U29 : NAND2_X1 port map( A1 => n22, A2 => n23, ZN => Y(1));
   U30 : AOI222_X1 port map( A1 => A_shifted(1), A2 => n3, B1 => 
                           A_neg_shifted(1), B2 => n4, C1 => zeroSignal(1), C2 
                           => n5, ZN => n23);
   U31 : AOI22_X1 port map( A1 => A_signal(1), A2 => n6, B1 => A_neg(1), B2 => 
                           n7, ZN => n22);
   U32 : NAND2_X1 port map( A1 => n24, A2 => n25, ZN => Y(15));
   U33 : AOI222_X1 port map( A1 => A_shifted(15), A2 => n3, B1 => 
                           A_neg_shifted(15), B2 => n4, C1 => zeroSignal(15), 
                           C2 => n5, ZN => n25);
   U34 : AOI22_X1 port map( A1 => A_signal(15), A2 => n6, B1 => A_neg(15), B2 
                           => n7, ZN => n24);
   U35 : NAND2_X1 port map( A1 => n26, A2 => n27, ZN => Y(14));
   U36 : AOI222_X1 port map( A1 => A_shifted(14), A2 => n3, B1 => 
                           A_neg_shifted(14), B2 => n4, C1 => zeroSignal(14), 
                           C2 => n5, ZN => n27);
   U37 : AOI22_X1 port map( A1 => A_signal(14), A2 => n6, B1 => A_neg(14), B2 
                           => n7, ZN => n26);
   U38 : NAND2_X1 port map( A1 => n28, A2 => n29, ZN => Y(13));
   U39 : AOI222_X1 port map( A1 => A_shifted(13), A2 => n3, B1 => 
                           A_neg_shifted(13), B2 => n4, C1 => zeroSignal(13), 
                           C2 => n5, ZN => n29);
   U40 : AOI22_X1 port map( A1 => A_signal(13), A2 => n6, B1 => A_neg(13), B2 
                           => n7, ZN => n28);
   U41 : NAND2_X1 port map( A1 => n30, A2 => n31, ZN => Y(12));
   U42 : AOI222_X1 port map( A1 => A_shifted(12), A2 => n3, B1 => 
                           A_neg_shifted(12), B2 => n4, C1 => zeroSignal(12), 
                           C2 => n5, ZN => n31);
   U43 : AOI22_X1 port map( A1 => A_signal(12), A2 => n6, B1 => A_neg(12), B2 
                           => n7, ZN => n30);
   U44 : NAND2_X1 port map( A1 => n32, A2 => n33, ZN => Y(11));
   U45 : AOI222_X1 port map( A1 => A_shifted(11), A2 => n3, B1 => 
                           A_neg_shifted(11), B2 => n4, C1 => zeroSignal(11), 
                           C2 => n5, ZN => n33);
   U46 : AOI22_X1 port map( A1 => A_signal(11), A2 => n6, B1 => A_neg(11), B2 
                           => n7, ZN => n32);
   U47 : NAND2_X1 port map( A1 => n34, A2 => n35, ZN => Y(10));
   U48 : AOI222_X1 port map( A1 => A_shifted(10), A2 => n3, B1 => 
                           A_neg_shifted(10), B2 => n4, C1 => zeroSignal(10), 
                           C2 => n5, ZN => n35);
   U49 : AOI22_X1 port map( A1 => A_signal(10), A2 => n6, B1 => A_neg(10), B2 
                           => n7, ZN => n34);
   U50 : NAND2_X1 port map( A1 => n36, A2 => n37, ZN => Y(0));
   U51 : AOI222_X1 port map( A1 => A_shifted(0), A2 => n3, B1 => 
                           A_neg_shifted(0), B2 => n4, C1 => zeroSignal(0), C2 
                           => n5, ZN => n37);
   U52 : NAND2_X1 port map( A1 => n39, A2 => n40, ZN => n38);
   U53 : AND3_X1 port map( A1 => n40, A2 => n39, A3 => Sel(2), ZN => n4);
   U54 : AOI22_X1 port map( A1 => A_signal(0), A2 => n6, B1 => A_neg(0), B2 => 
                           n7, ZN => n36);
   U55 : INV_X1 port map( A => Sel(1), ZN => n39);
   U56 : INV_X1 port map( A => Sel(0), ZN => n40);

end SYN_BEHAVIORAL_2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity MUX51_MuxNbit16_2 is

   port( zeroSignal, A_signal, A_neg, A_shifted, A_neg_shifted : in 
         std_logic_vector (15 downto 0);  Sel : in std_logic_vector (2 downto 
         0);  Y : out std_logic_vector (15 downto 0));

end MUX51_MuxNbit16_2;

architecture SYN_BEHAVIORAL_2 of MUX51_MuxNbit16_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X2
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n39, n40 : std_logic;

begin
   
   U1 : XNOR2_X2 port map( A => n38, B => Sel(2), ZN => n5);
   U2 : NOR3_X4 port map( A1 => Sel(0), A2 => Sel(2), A3 => n39, ZN => n7);
   U3 : NOR3_X4 port map( A1 => Sel(1), A2 => Sel(2), A3 => n40, ZN => n6);
   U4 : NOR3_X4 port map( A1 => n40, A2 => Sel(2), A3 => n39, ZN => n3);
   U5 : NAND2_X1 port map( A1 => n1, A2 => n2, ZN => Y(9));
   U6 : AOI222_X1 port map( A1 => A_shifted(9), A2 => n3, B1 => 
                           A_neg_shifted(9), B2 => n4, C1 => zeroSignal(9), C2 
                           => n5, ZN => n2);
   U7 : AOI22_X1 port map( A1 => A_signal(9), A2 => n6, B1 => A_neg(9), B2 => 
                           n7, ZN => n1);
   U8 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => Y(8));
   U9 : AOI222_X1 port map( A1 => A_shifted(8), A2 => n3, B1 => 
                           A_neg_shifted(8), B2 => n4, C1 => zeroSignal(8), C2 
                           => n5, ZN => n9);
   U10 : AOI22_X1 port map( A1 => A_signal(8), A2 => n6, B1 => A_neg(8), B2 => 
                           n7, ZN => n8);
   U11 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => Y(7));
   U12 : AOI222_X1 port map( A1 => A_shifted(7), A2 => n3, B1 => 
                           A_neg_shifted(7), B2 => n4, C1 => zeroSignal(7), C2 
                           => n5, ZN => n11);
   U13 : AOI22_X1 port map( A1 => A_signal(7), A2 => n6, B1 => A_neg(7), B2 => 
                           n7, ZN => n10);
   U14 : NAND2_X1 port map( A1 => n12, A2 => n13, ZN => Y(6));
   U15 : AOI222_X1 port map( A1 => A_shifted(6), A2 => n3, B1 => 
                           A_neg_shifted(6), B2 => n4, C1 => zeroSignal(6), C2 
                           => n5, ZN => n13);
   U16 : AOI22_X1 port map( A1 => A_signal(6), A2 => n6, B1 => A_neg(6), B2 => 
                           n7, ZN => n12);
   U17 : NAND2_X1 port map( A1 => n14, A2 => n15, ZN => Y(5));
   U18 : AOI222_X1 port map( A1 => A_shifted(5), A2 => n3, B1 => 
                           A_neg_shifted(5), B2 => n4, C1 => zeroSignal(5), C2 
                           => n5, ZN => n15);
   U19 : AOI22_X1 port map( A1 => A_signal(5), A2 => n6, B1 => A_neg(5), B2 => 
                           n7, ZN => n14);
   U20 : NAND2_X1 port map( A1 => n16, A2 => n17, ZN => Y(4));
   U21 : AOI222_X1 port map( A1 => A_shifted(4), A2 => n3, B1 => 
                           A_neg_shifted(4), B2 => n4, C1 => zeroSignal(4), C2 
                           => n5, ZN => n17);
   U22 : AOI22_X1 port map( A1 => A_signal(4), A2 => n6, B1 => A_neg(4), B2 => 
                           n7, ZN => n16);
   U23 : NAND2_X1 port map( A1 => n18, A2 => n19, ZN => Y(3));
   U24 : AOI222_X1 port map( A1 => A_shifted(3), A2 => n3, B1 => 
                           A_neg_shifted(3), B2 => n4, C1 => zeroSignal(3), C2 
                           => n5, ZN => n19);
   U25 : AOI22_X1 port map( A1 => A_signal(3), A2 => n6, B1 => A_neg(3), B2 => 
                           n7, ZN => n18);
   U26 : NAND2_X1 port map( A1 => n20, A2 => n21, ZN => Y(2));
   U27 : AOI222_X1 port map( A1 => A_shifted(2), A2 => n3, B1 => 
                           A_neg_shifted(2), B2 => n4, C1 => zeroSignal(2), C2 
                           => n5, ZN => n21);
   U28 : AOI22_X1 port map( A1 => A_signal(2), A2 => n6, B1 => A_neg(2), B2 => 
                           n7, ZN => n20);
   U29 : NAND2_X1 port map( A1 => n22, A2 => n23, ZN => Y(1));
   U30 : AOI222_X1 port map( A1 => A_shifted(1), A2 => n3, B1 => 
                           A_neg_shifted(1), B2 => n4, C1 => zeroSignal(1), C2 
                           => n5, ZN => n23);
   U31 : AOI22_X1 port map( A1 => A_signal(1), A2 => n6, B1 => A_neg(1), B2 => 
                           n7, ZN => n22);
   U32 : NAND2_X1 port map( A1 => n24, A2 => n25, ZN => Y(15));
   U33 : AOI222_X1 port map( A1 => A_shifted(15), A2 => n3, B1 => 
                           A_neg_shifted(15), B2 => n4, C1 => zeroSignal(15), 
                           C2 => n5, ZN => n25);
   U34 : AOI22_X1 port map( A1 => A_signal(15), A2 => n6, B1 => A_neg(15), B2 
                           => n7, ZN => n24);
   U35 : NAND2_X1 port map( A1 => n26, A2 => n27, ZN => Y(14));
   U36 : AOI222_X1 port map( A1 => A_shifted(14), A2 => n3, B1 => 
                           A_neg_shifted(14), B2 => n4, C1 => zeroSignal(14), 
                           C2 => n5, ZN => n27);
   U37 : AOI22_X1 port map( A1 => A_signal(14), A2 => n6, B1 => A_neg(14), B2 
                           => n7, ZN => n26);
   U38 : NAND2_X1 port map( A1 => n28, A2 => n29, ZN => Y(13));
   U39 : AOI222_X1 port map( A1 => A_shifted(13), A2 => n3, B1 => 
                           A_neg_shifted(13), B2 => n4, C1 => zeroSignal(13), 
                           C2 => n5, ZN => n29);
   U40 : AOI22_X1 port map( A1 => A_signal(13), A2 => n6, B1 => A_neg(13), B2 
                           => n7, ZN => n28);
   U41 : NAND2_X1 port map( A1 => n30, A2 => n31, ZN => Y(12));
   U42 : AOI222_X1 port map( A1 => A_shifted(12), A2 => n3, B1 => 
                           A_neg_shifted(12), B2 => n4, C1 => zeroSignal(12), 
                           C2 => n5, ZN => n31);
   U43 : AOI22_X1 port map( A1 => A_signal(12), A2 => n6, B1 => A_neg(12), B2 
                           => n7, ZN => n30);
   U44 : NAND2_X1 port map( A1 => n32, A2 => n33, ZN => Y(11));
   U45 : AOI222_X1 port map( A1 => A_shifted(11), A2 => n3, B1 => 
                           A_neg_shifted(11), B2 => n4, C1 => zeroSignal(11), 
                           C2 => n5, ZN => n33);
   U46 : AOI22_X1 port map( A1 => A_signal(11), A2 => n6, B1 => A_neg(11), B2 
                           => n7, ZN => n32);
   U47 : NAND2_X1 port map( A1 => n34, A2 => n35, ZN => Y(10));
   U48 : AOI222_X1 port map( A1 => A_shifted(10), A2 => n3, B1 => 
                           A_neg_shifted(10), B2 => n4, C1 => zeroSignal(10), 
                           C2 => n5, ZN => n35);
   U49 : AOI22_X1 port map( A1 => A_signal(10), A2 => n6, B1 => A_neg(10), B2 
                           => n7, ZN => n34);
   U50 : NAND2_X1 port map( A1 => n36, A2 => n37, ZN => Y(0));
   U51 : AOI222_X1 port map( A1 => A_shifted(0), A2 => n3, B1 => 
                           A_neg_shifted(0), B2 => n4, C1 => zeroSignal(0), C2 
                           => n5, ZN => n37);
   U52 : NAND2_X1 port map( A1 => n39, A2 => n40, ZN => n38);
   U53 : AND3_X1 port map( A1 => n40, A2 => n39, A3 => Sel(2), ZN => n4);
   U54 : AOI22_X1 port map( A1 => A_signal(0), A2 => n6, B1 => A_neg(0), B2 => 
                           n7, ZN => n36);
   U55 : INV_X1 port map( A => Sel(1), ZN => n39);
   U56 : INV_X1 port map( A => Sel(0), ZN => n40);

end SYN_BEHAVIORAL_2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity MUX51_MuxNbit16_1 is

   port( zeroSignal, A_signal, A_neg, A_shifted, A_neg_shifted : in 
         std_logic_vector (15 downto 0);  Sel : in std_logic_vector (2 downto 
         0);  Y : out std_logic_vector (15 downto 0));

end MUX51_MuxNbit16_1;

architecture SYN_BEHAVIORAL_2 of MUX51_MuxNbit16_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X2
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n39, n40 : std_logic;

begin
   
   U1 : XNOR2_X2 port map( A => n38, B => Sel(2), ZN => n5);
   U2 : NOR3_X4 port map( A1 => Sel(0), A2 => Sel(2), A3 => n39, ZN => n7);
   U3 : NOR3_X4 port map( A1 => Sel(1), A2 => Sel(2), A3 => n40, ZN => n6);
   U4 : NOR3_X4 port map( A1 => n40, A2 => Sel(2), A3 => n39, ZN => n3);
   U5 : NAND2_X1 port map( A1 => n1, A2 => n2, ZN => Y(9));
   U6 : AOI222_X1 port map( A1 => A_shifted(9), A2 => n3, B1 => 
                           A_neg_shifted(9), B2 => n4, C1 => zeroSignal(9), C2 
                           => n5, ZN => n2);
   U7 : AOI22_X1 port map( A1 => A_signal(9), A2 => n6, B1 => A_neg(9), B2 => 
                           n7, ZN => n1);
   U8 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => Y(8));
   U9 : AOI222_X1 port map( A1 => A_shifted(8), A2 => n3, B1 => 
                           A_neg_shifted(8), B2 => n4, C1 => zeroSignal(8), C2 
                           => n5, ZN => n9);
   U10 : AOI22_X1 port map( A1 => A_signal(8), A2 => n6, B1 => A_neg(8), B2 => 
                           n7, ZN => n8);
   U11 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => Y(7));
   U12 : AOI222_X1 port map( A1 => A_shifted(7), A2 => n3, B1 => 
                           A_neg_shifted(7), B2 => n4, C1 => zeroSignal(7), C2 
                           => n5, ZN => n11);
   U13 : AOI22_X1 port map( A1 => A_signal(7), A2 => n6, B1 => A_neg(7), B2 => 
                           n7, ZN => n10);
   U14 : NAND2_X1 port map( A1 => n12, A2 => n13, ZN => Y(6));
   U15 : AOI222_X1 port map( A1 => A_shifted(6), A2 => n3, B1 => 
                           A_neg_shifted(6), B2 => n4, C1 => zeroSignal(6), C2 
                           => n5, ZN => n13);
   U16 : AOI22_X1 port map( A1 => A_signal(6), A2 => n6, B1 => A_neg(6), B2 => 
                           n7, ZN => n12);
   U17 : NAND2_X1 port map( A1 => n14, A2 => n15, ZN => Y(5));
   U18 : AOI222_X1 port map( A1 => A_shifted(5), A2 => n3, B1 => 
                           A_neg_shifted(5), B2 => n4, C1 => zeroSignal(5), C2 
                           => n5, ZN => n15);
   U19 : AOI22_X1 port map( A1 => A_signal(5), A2 => n6, B1 => A_neg(5), B2 => 
                           n7, ZN => n14);
   U20 : NAND2_X1 port map( A1 => n16, A2 => n17, ZN => Y(4));
   U21 : AOI222_X1 port map( A1 => A_shifted(4), A2 => n3, B1 => 
                           A_neg_shifted(4), B2 => n4, C1 => zeroSignal(4), C2 
                           => n5, ZN => n17);
   U22 : AOI22_X1 port map( A1 => A_signal(4), A2 => n6, B1 => A_neg(4), B2 => 
                           n7, ZN => n16);
   U23 : NAND2_X1 port map( A1 => n18, A2 => n19, ZN => Y(3));
   U24 : AOI222_X1 port map( A1 => A_shifted(3), A2 => n3, B1 => 
                           A_neg_shifted(3), B2 => n4, C1 => zeroSignal(3), C2 
                           => n5, ZN => n19);
   U25 : AOI22_X1 port map( A1 => A_signal(3), A2 => n6, B1 => A_neg(3), B2 => 
                           n7, ZN => n18);
   U26 : NAND2_X1 port map( A1 => n20, A2 => n21, ZN => Y(2));
   U27 : AOI222_X1 port map( A1 => A_shifted(2), A2 => n3, B1 => 
                           A_neg_shifted(2), B2 => n4, C1 => zeroSignal(2), C2 
                           => n5, ZN => n21);
   U28 : AOI22_X1 port map( A1 => A_signal(2), A2 => n6, B1 => A_neg(2), B2 => 
                           n7, ZN => n20);
   U29 : NAND2_X1 port map( A1 => n22, A2 => n23, ZN => Y(1));
   U30 : AOI222_X1 port map( A1 => A_shifted(1), A2 => n3, B1 => 
                           A_neg_shifted(1), B2 => n4, C1 => zeroSignal(1), C2 
                           => n5, ZN => n23);
   U31 : AOI22_X1 port map( A1 => A_signal(1), A2 => n6, B1 => A_neg(1), B2 => 
                           n7, ZN => n22);
   U32 : NAND2_X1 port map( A1 => n24, A2 => n25, ZN => Y(15));
   U33 : AOI222_X1 port map( A1 => A_shifted(15), A2 => n3, B1 => 
                           A_neg_shifted(15), B2 => n4, C1 => zeroSignal(15), 
                           C2 => n5, ZN => n25);
   U34 : AOI22_X1 port map( A1 => A_signal(15), A2 => n6, B1 => A_neg(15), B2 
                           => n7, ZN => n24);
   U35 : NAND2_X1 port map( A1 => n26, A2 => n27, ZN => Y(14));
   U36 : AOI222_X1 port map( A1 => A_shifted(14), A2 => n3, B1 => 
                           A_neg_shifted(14), B2 => n4, C1 => zeroSignal(14), 
                           C2 => n5, ZN => n27);
   U37 : AOI22_X1 port map( A1 => A_signal(14), A2 => n6, B1 => A_neg(14), B2 
                           => n7, ZN => n26);
   U38 : NAND2_X1 port map( A1 => n28, A2 => n29, ZN => Y(13));
   U39 : AOI222_X1 port map( A1 => A_shifted(13), A2 => n3, B1 => 
                           A_neg_shifted(13), B2 => n4, C1 => zeroSignal(13), 
                           C2 => n5, ZN => n29);
   U40 : AOI22_X1 port map( A1 => A_signal(13), A2 => n6, B1 => A_neg(13), B2 
                           => n7, ZN => n28);
   U41 : NAND2_X1 port map( A1 => n30, A2 => n31, ZN => Y(12));
   U42 : AOI222_X1 port map( A1 => A_shifted(12), A2 => n3, B1 => 
                           A_neg_shifted(12), B2 => n4, C1 => zeroSignal(12), 
                           C2 => n5, ZN => n31);
   U43 : AOI22_X1 port map( A1 => A_signal(12), A2 => n6, B1 => A_neg(12), B2 
                           => n7, ZN => n30);
   U44 : NAND2_X1 port map( A1 => n32, A2 => n33, ZN => Y(11));
   U45 : AOI222_X1 port map( A1 => A_shifted(11), A2 => n3, B1 => 
                           A_neg_shifted(11), B2 => n4, C1 => zeroSignal(11), 
                           C2 => n5, ZN => n33);
   U46 : AOI22_X1 port map( A1 => A_signal(11), A2 => n6, B1 => A_neg(11), B2 
                           => n7, ZN => n32);
   U47 : NAND2_X1 port map( A1 => n34, A2 => n35, ZN => Y(10));
   U48 : AOI222_X1 port map( A1 => A_shifted(10), A2 => n3, B1 => 
                           A_neg_shifted(10), B2 => n4, C1 => zeroSignal(10), 
                           C2 => n5, ZN => n35);
   U49 : AOI22_X1 port map( A1 => A_signal(10), A2 => n6, B1 => A_neg(10), B2 
                           => n7, ZN => n34);
   U50 : NAND2_X1 port map( A1 => n36, A2 => n37, ZN => Y(0));
   U51 : AOI222_X1 port map( A1 => A_shifted(0), A2 => n3, B1 => 
                           A_neg_shifted(0), B2 => n4, C1 => zeroSignal(0), C2 
                           => n5, ZN => n37);
   U52 : NAND2_X1 port map( A1 => n39, A2 => n40, ZN => n38);
   U53 : AND3_X1 port map( A1 => n40, A2 => n39, A3 => Sel(2), ZN => n4);
   U54 : AOI22_X1 port map( A1 => A_signal(0), A2 => n6, B1 => A_neg(0), B2 => 
                           n7, ZN => n36);
   U55 : INV_X1 port map( A => Sel(1), ZN => n39);
   U56 : INV_X1 port map( A => Sel(0), ZN => n40);

end SYN_BEHAVIORAL_2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity encoder_3 is

   port( pieceofB : in std_logic_vector (2 downto 0);  sel : out 
         std_logic_vector (2 downto 0));

end encoder_3;

architecture SYN_behavioral of encoder_3 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U3 : AND3_X1 port map( A1 => pieceofB(2), A2 => n1, A3 => n2, ZN => sel(2));
   U4 : INV_X1 port map( A => n3, ZN => sel(1));
   U5 : MUX2_X1 port map( A => n1, B => n2, S => pieceofB(2), Z => n3);
   U6 : AOI21_X1 port map( B1 => n2, B2 => n1, A => pieceofB(2), ZN => sel(0));
   U7 : NAND2_X1 port map( A1 => pieceofB(1), A2 => pieceofB(0), ZN => n1);
   U8 : XNOR2_X1 port map( A => pieceofB(0), B => pieceofB(1), ZN => n2);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity encoder_2 is

   port( pieceofB : in std_logic_vector (2 downto 0);  sel : out 
         std_logic_vector (2 downto 0));

end encoder_2;

architecture SYN_behavioral of encoder_2 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U3 : AND3_X1 port map( A1 => pieceofB(2), A2 => n1, A3 => n2, ZN => sel(2));
   U4 : INV_X1 port map( A => n3, ZN => sel(1));
   U5 : MUX2_X1 port map( A => n1, B => n2, S => pieceofB(2), Z => n3);
   U6 : AOI21_X1 port map( B1 => n2, B2 => n1, A => pieceofB(2), ZN => sel(0));
   U7 : NAND2_X1 port map( A1 => pieceofB(1), A2 => pieceofB(0), ZN => n1);
   U8 : XNOR2_X1 port map( A => pieceofB(0), B => pieceofB(1), ZN => n2);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity encoder_1 is

   port( pieceofB : in std_logic_vector (2 downto 0);  sel : out 
         std_logic_vector (2 downto 0));

end encoder_1;

architecture SYN_behavioral of encoder_1 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U3 : AND3_X1 port map( A1 => pieceofB(2), A2 => n1, A3 => n2, ZN => sel(2));
   U4 : INV_X1 port map( A => n3, ZN => sel(1));
   U5 : MUX2_X1 port map( A => n1, B => n2, S => pieceofB(2), Z => n3);
   U6 : AOI21_X1 port map( B1 => n2, B2 => n1, A => pieceofB(2), ZN => sel(0));
   U7 : NAND2_X1 port map( A1 => pieceofB(1), A2 => pieceofB(0), ZN => n1);
   U8 : XNOR2_X1 port map( A => pieceofB(0), B => pieceofB(1), ZN => n2);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity leftshifter_NbitShifter16_14 is

   port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
         std_logic_vector (15 downto 0));

end leftshifter_NbitShifter16_14;

architecture SYN_behavioral of leftshifter_NbitShifter16_14 is

signal X_Logic0_port : std_logic;

begin
   shift_out <= ( shift_in(14), shift_in(13), shift_in(12), shift_in(11), 
      shift_in(10), shift_in(9), shift_in(8), shift_in(7), shift_in(6), 
      shift_in(5), shift_in(4), shift_in(3), shift_in(2), shift_in(1), 
      shift_in(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity leftshifter_NbitShifter16_13 is

   port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
         std_logic_vector (15 downto 0));

end leftshifter_NbitShifter16_13;

architecture SYN_behavioral of leftshifter_NbitShifter16_13 is

signal X_Logic0_port : std_logic;

begin
   shift_out <= ( shift_in(14), shift_in(13), shift_in(12), shift_in(11), 
      shift_in(10), shift_in(9), shift_in(8), shift_in(7), shift_in(6), 
      shift_in(5), shift_in(4), shift_in(3), shift_in(2), shift_in(1), 
      shift_in(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity leftshifter_NbitShifter16_12 is

   port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
         std_logic_vector (15 downto 0));

end leftshifter_NbitShifter16_12;

architecture SYN_behavioral of leftshifter_NbitShifter16_12 is

signal X_Logic0_port : std_logic;

begin
   shift_out <= ( shift_in(14), shift_in(13), shift_in(12), shift_in(11), 
      shift_in(10), shift_in(9), shift_in(8), shift_in(7), shift_in(6), 
      shift_in(5), shift_in(4), shift_in(3), shift_in(2), shift_in(1), 
      shift_in(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity leftshifter_NbitShifter16_11 is

   port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
         std_logic_vector (15 downto 0));

end leftshifter_NbitShifter16_11;

architecture SYN_behavioral of leftshifter_NbitShifter16_11 is

signal X_Logic0_port : std_logic;

begin
   shift_out <= ( shift_in(14), shift_in(13), shift_in(12), shift_in(11), 
      shift_in(10), shift_in(9), shift_in(8), shift_in(7), shift_in(6), 
      shift_in(5), shift_in(4), shift_in(3), shift_in(2), shift_in(1), 
      shift_in(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity leftshifter_NbitShifter16_10 is

   port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
         std_logic_vector (15 downto 0));

end leftshifter_NbitShifter16_10;

architecture SYN_behavioral of leftshifter_NbitShifter16_10 is

signal X_Logic0_port : std_logic;

begin
   shift_out <= ( shift_in(14), shift_in(13), shift_in(12), shift_in(11), 
      shift_in(10), shift_in(9), shift_in(8), shift_in(7), shift_in(6), 
      shift_in(5), shift_in(4), shift_in(3), shift_in(2), shift_in(1), 
      shift_in(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity leftshifter_NbitShifter16_9 is

   port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
         std_logic_vector (15 downto 0));

end leftshifter_NbitShifter16_9;

architecture SYN_behavioral of leftshifter_NbitShifter16_9 is

signal X_Logic0_port : std_logic;

begin
   shift_out <= ( shift_in(14), shift_in(13), shift_in(12), shift_in(11), 
      shift_in(10), shift_in(9), shift_in(8), shift_in(7), shift_in(6), 
      shift_in(5), shift_in(4), shift_in(3), shift_in(2), shift_in(1), 
      shift_in(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity leftshifter_NbitShifter16_8 is

   port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
         std_logic_vector (15 downto 0));

end leftshifter_NbitShifter16_8;

architecture SYN_behavioral of leftshifter_NbitShifter16_8 is

signal X_Logic0_port : std_logic;

begin
   shift_out <= ( shift_in(14), shift_in(13), shift_in(12), shift_in(11), 
      shift_in(10), shift_in(9), shift_in(8), shift_in(7), shift_in(6), 
      shift_in(5), shift_in(4), shift_in(3), shift_in(2), shift_in(1), 
      shift_in(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity leftshifter_NbitShifter16_7 is

   port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
         std_logic_vector (15 downto 0));

end leftshifter_NbitShifter16_7;

architecture SYN_behavioral of leftshifter_NbitShifter16_7 is

signal X_Logic0_port : std_logic;

begin
   shift_out <= ( shift_in(14), shift_in(13), shift_in(12), shift_in(11), 
      shift_in(10), shift_in(9), shift_in(8), shift_in(7), shift_in(6), 
      shift_in(5), shift_in(4), shift_in(3), shift_in(2), shift_in(1), 
      shift_in(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity leftshifter_NbitShifter16_6 is

   port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
         std_logic_vector (15 downto 0));

end leftshifter_NbitShifter16_6;

architecture SYN_behavioral of leftshifter_NbitShifter16_6 is

signal X_Logic0_port : std_logic;

begin
   shift_out <= ( shift_in(14), shift_in(13), shift_in(12), shift_in(11), 
      shift_in(10), shift_in(9), shift_in(8), shift_in(7), shift_in(6), 
      shift_in(5), shift_in(4), shift_in(3), shift_in(2), shift_in(1), 
      shift_in(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity leftshifter_NbitShifter16_5 is

   port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
         std_logic_vector (15 downto 0));

end leftshifter_NbitShifter16_5;

architecture SYN_behavioral of leftshifter_NbitShifter16_5 is

signal X_Logic0_port : std_logic;

begin
   shift_out <= ( shift_in(14), shift_in(13), shift_in(12), shift_in(11), 
      shift_in(10), shift_in(9), shift_in(8), shift_in(7), shift_in(6), 
      shift_in(5), shift_in(4), shift_in(3), shift_in(2), shift_in(1), 
      shift_in(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity leftshifter_NbitShifter16_4 is

   port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
         std_logic_vector (15 downto 0));

end leftshifter_NbitShifter16_4;

architecture SYN_behavioral of leftshifter_NbitShifter16_4 is

signal X_Logic0_port : std_logic;

begin
   shift_out <= ( shift_in(14), shift_in(13), shift_in(12), shift_in(11), 
      shift_in(10), shift_in(9), shift_in(8), shift_in(7), shift_in(6), 
      shift_in(5), shift_in(4), shift_in(3), shift_in(2), shift_in(1), 
      shift_in(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity leftshifter_NbitShifter16_3 is

   port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
         std_logic_vector (15 downto 0));

end leftshifter_NbitShifter16_3;

architecture SYN_behavioral of leftshifter_NbitShifter16_3 is

signal X_Logic0_port : std_logic;

begin
   shift_out <= ( shift_in(14), shift_in(13), shift_in(12), shift_in(11), 
      shift_in(10), shift_in(9), shift_in(8), shift_in(7), shift_in(6), 
      shift_in(5), shift_in(4), shift_in(3), shift_in(2), shift_in(1), 
      shift_in(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity leftshifter_NbitShifter16_2 is

   port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
         std_logic_vector (15 downto 0));

end leftshifter_NbitShifter16_2;

architecture SYN_behavioral of leftshifter_NbitShifter16_2 is

signal X_Logic0_port : std_logic;

begin
   shift_out <= ( shift_in(14), shift_in(13), shift_in(12), shift_in(11), 
      shift_in(10), shift_in(9), shift_in(8), shift_in(7), shift_in(6), 
      shift_in(5), shift_in(4), shift_in(3), shift_in(2), shift_in(1), 
      shift_in(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity leftshifter_NbitShifter16_1 is

   port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
         std_logic_vector (15 downto 0));

end leftshifter_NbitShifter16_1;

architecture SYN_behavioral of leftshifter_NbitShifter16_1 is

signal X_Logic0_port : std_logic;

begin
   shift_out <= ( shift_in(14), shift_in(13), shift_in(12), shift_in(11), 
      shift_in(10), shift_in(9), shift_in(8), shift_in(7), shift_in(6), 
      shift_in(5), shift_in(4), shift_in(3), shift_in(2), shift_in(1), 
      shift_in(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity RCA_NbitRca16_3 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_NbitRca16_3;

architecture SYN_STRUCTURAL of RCA_NbitRca16_3 is

   component FA_33
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_34
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_35
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_36
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_37
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_38
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_39
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_40
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_41
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_42
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_43
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_44
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_45
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_46
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_47
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_48
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, CTMP_11_port,
      CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, CTMP_6_port, 
      CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, CTMP_1_port : 
      std_logic;

begin
   
   FAI_1 : FA_48 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_47 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_46 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_45 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_44 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_43 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_42 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_41 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_40 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_39 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9),
                           Co => CTMP_10_port);
   FAI_11 : FA_38 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_37 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_36 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_35 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_34 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_33 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity RCA_NbitRca16_2 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_NbitRca16_2;

architecture SYN_STRUCTURAL of RCA_NbitRca16_2 is

   component FA_17
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_18
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_19
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_20
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_21
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_22
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_23
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_24
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_25
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_26
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_27
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_28
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_29
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_30
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_31
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_32
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, CTMP_11_port,
      CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, CTMP_6_port, 
      CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, CTMP_1_port : 
      std_logic;

begin
   
   FAI_1 : FA_32 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_31 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_30 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_29 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_28 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_27 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_26 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_25 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_24 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_23 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9),
                           Co => CTMP_10_port);
   FAI_11 : FA_22 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_21 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_20 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_19 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_18 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_17 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity RCA_NbitRca16_1 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_NbitRca16_1;

architecture SYN_STRUCTURAL of RCA_NbitRca16_1 is

   component FA_1
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_2
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_3
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_4
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_5
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_6
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_7
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_8
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_9
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_10
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_11
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_12
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_13
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_14
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_15
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_16
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, CTMP_11_port,
      CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, CTMP_6_port, 
      CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, CTMP_1_port : 
      std_logic;

begin
   
   FAI_1 : FA_16 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_15 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_14 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_13 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_12 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_11 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_10 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_9 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_8 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_7 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9), 
                           Co => CTMP_10_port);
   FAI_11 : FA_6 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_5 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_4 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_3 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_2 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_1 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity IV_15 is

   port( A : in std_logic;  Y : out std_logic);

end IV_15;

architecture SYN_BEHAVIORAL of IV_15 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity IV_14 is

   port( A : in std_logic;  Y : out std_logic);

end IV_14;

architecture SYN_BEHAVIORAL of IV_14 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity IV_13 is

   port( A : in std_logic;  Y : out std_logic);

end IV_13;

architecture SYN_BEHAVIORAL of IV_13 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity IV_12 is

   port( A : in std_logic;  Y : out std_logic);

end IV_12;

architecture SYN_BEHAVIORAL of IV_12 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity IV_11 is

   port( A : in std_logic;  Y : out std_logic);

end IV_11;

architecture SYN_BEHAVIORAL of IV_11 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity IV_10 is

   port( A : in std_logic;  Y : out std_logic);

end IV_10;

architecture SYN_BEHAVIORAL of IV_10 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity IV_9 is

   port( A : in std_logic;  Y : out std_logic);

end IV_9;

architecture SYN_BEHAVIORAL of IV_9 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity IV_8 is

   port( A : in std_logic;  Y : out std_logic);

end IV_8;

architecture SYN_BEHAVIORAL of IV_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity IV_7 is

   port( A : in std_logic;  Y : out std_logic);

end IV_7;

architecture SYN_BEHAVIORAL of IV_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity IV_6 is

   port( A : in std_logic;  Y : out std_logic);

end IV_6;

architecture SYN_BEHAVIORAL of IV_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity IV_5 is

   port( A : in std_logic;  Y : out std_logic);

end IV_5;

architecture SYN_BEHAVIORAL of IV_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity IV_4 is

   port( A : in std_logic;  Y : out std_logic);

end IV_4;

architecture SYN_BEHAVIORAL of IV_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity IV_3 is

   port( A : in std_logic;  Y : out std_logic);

end IV_3;

architecture SYN_BEHAVIORAL of IV_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity IV_2 is

   port( A : in std_logic;  Y : out std_logic);

end IV_2;

architecture SYN_BEHAVIORAL of IV_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity IV_1 is

   port( A : in std_logic;  Y : out std_logic);

end IV_1;

architecture SYN_BEHAVIORAL of IV_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_0 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_0;

architecture SYN_BEHAVIORAL of FA_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity MUX51_MuxNbit16_0 is

   port( zeroSignal, A_signal, A_neg, A_shifted, A_neg_shifted : in 
         std_logic_vector (15 downto 0);  Sel : in std_logic_vector (2 downto 
         0);  Y : out std_logic_vector (15 downto 0));

end MUX51_MuxNbit16_0;

architecture SYN_BEHAVIORAL_2 of MUX51_MuxNbit16_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X2
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n39, n40 : std_logic;

begin
   
   U1 : XNOR2_X2 port map( A => n38, B => Sel(2), ZN => n5);
   U2 : NOR3_X4 port map( A1 => Sel(0), A2 => Sel(2), A3 => n39, ZN => n7);
   U3 : NOR3_X4 port map( A1 => Sel(1), A2 => Sel(2), A3 => n40, ZN => n6);
   U4 : NOR3_X4 port map( A1 => n40, A2 => Sel(2), A3 => n39, ZN => n3);
   U5 : NAND2_X1 port map( A1 => n1, A2 => n2, ZN => Y(9));
   U6 : AOI222_X1 port map( A1 => A_shifted(9), A2 => n3, B1 => 
                           A_neg_shifted(9), B2 => n4, C1 => zeroSignal(9), C2 
                           => n5, ZN => n2);
   U7 : AOI22_X1 port map( A1 => A_signal(9), A2 => n6, B1 => A_neg(9), B2 => 
                           n7, ZN => n1);
   U8 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => Y(8));
   U9 : AOI222_X1 port map( A1 => A_shifted(8), A2 => n3, B1 => 
                           A_neg_shifted(8), B2 => n4, C1 => zeroSignal(8), C2 
                           => n5, ZN => n9);
   U10 : AOI22_X1 port map( A1 => A_signal(8), A2 => n6, B1 => A_neg(8), B2 => 
                           n7, ZN => n8);
   U11 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => Y(7));
   U12 : AOI222_X1 port map( A1 => A_shifted(7), A2 => n3, B1 => 
                           A_neg_shifted(7), B2 => n4, C1 => zeroSignal(7), C2 
                           => n5, ZN => n11);
   U13 : AOI22_X1 port map( A1 => A_signal(7), A2 => n6, B1 => A_neg(7), B2 => 
                           n7, ZN => n10);
   U14 : NAND2_X1 port map( A1 => n12, A2 => n13, ZN => Y(6));
   U15 : AOI222_X1 port map( A1 => A_shifted(6), A2 => n3, B1 => 
                           A_neg_shifted(6), B2 => n4, C1 => zeroSignal(6), C2 
                           => n5, ZN => n13);
   U16 : AOI22_X1 port map( A1 => A_signal(6), A2 => n6, B1 => A_neg(6), B2 => 
                           n7, ZN => n12);
   U17 : NAND2_X1 port map( A1 => n14, A2 => n15, ZN => Y(5));
   U18 : AOI222_X1 port map( A1 => A_shifted(5), A2 => n3, B1 => 
                           A_neg_shifted(5), B2 => n4, C1 => zeroSignal(5), C2 
                           => n5, ZN => n15);
   U19 : AOI22_X1 port map( A1 => A_signal(5), A2 => n6, B1 => A_neg(5), B2 => 
                           n7, ZN => n14);
   U20 : NAND2_X1 port map( A1 => n16, A2 => n17, ZN => Y(4));
   U21 : AOI222_X1 port map( A1 => A_shifted(4), A2 => n3, B1 => 
                           A_neg_shifted(4), B2 => n4, C1 => zeroSignal(4), C2 
                           => n5, ZN => n17);
   U22 : AOI22_X1 port map( A1 => A_signal(4), A2 => n6, B1 => A_neg(4), B2 => 
                           n7, ZN => n16);
   U23 : NAND2_X1 port map( A1 => n18, A2 => n19, ZN => Y(3));
   U24 : AOI222_X1 port map( A1 => A_shifted(3), A2 => n3, B1 => 
                           A_neg_shifted(3), B2 => n4, C1 => zeroSignal(3), C2 
                           => n5, ZN => n19);
   U25 : AOI22_X1 port map( A1 => A_signal(3), A2 => n6, B1 => A_neg(3), B2 => 
                           n7, ZN => n18);
   U26 : NAND2_X1 port map( A1 => n20, A2 => n21, ZN => Y(2));
   U27 : AOI222_X1 port map( A1 => A_shifted(2), A2 => n3, B1 => 
                           A_neg_shifted(2), B2 => n4, C1 => zeroSignal(2), C2 
                           => n5, ZN => n21);
   U28 : AOI22_X1 port map( A1 => A_signal(2), A2 => n6, B1 => A_neg(2), B2 => 
                           n7, ZN => n20);
   U29 : NAND2_X1 port map( A1 => n22, A2 => n23, ZN => Y(1));
   U30 : AOI222_X1 port map( A1 => A_shifted(1), A2 => n3, B1 => 
                           A_neg_shifted(1), B2 => n4, C1 => zeroSignal(1), C2 
                           => n5, ZN => n23);
   U31 : AOI22_X1 port map( A1 => A_signal(1), A2 => n6, B1 => A_neg(1), B2 => 
                           n7, ZN => n22);
   U32 : NAND2_X1 port map( A1 => n24, A2 => n25, ZN => Y(15));
   U33 : AOI222_X1 port map( A1 => A_shifted(15), A2 => n3, B1 => 
                           A_neg_shifted(15), B2 => n4, C1 => zeroSignal(15), 
                           C2 => n5, ZN => n25);
   U34 : AOI22_X1 port map( A1 => A_signal(15), A2 => n6, B1 => A_neg(15), B2 
                           => n7, ZN => n24);
   U35 : NAND2_X1 port map( A1 => n26, A2 => n27, ZN => Y(14));
   U36 : AOI222_X1 port map( A1 => A_shifted(14), A2 => n3, B1 => 
                           A_neg_shifted(14), B2 => n4, C1 => zeroSignal(14), 
                           C2 => n5, ZN => n27);
   U37 : AOI22_X1 port map( A1 => A_signal(14), A2 => n6, B1 => A_neg(14), B2 
                           => n7, ZN => n26);
   U38 : NAND2_X1 port map( A1 => n28, A2 => n29, ZN => Y(13));
   U39 : AOI222_X1 port map( A1 => A_shifted(13), A2 => n3, B1 => 
                           A_neg_shifted(13), B2 => n4, C1 => zeroSignal(13), 
                           C2 => n5, ZN => n29);
   U40 : AOI22_X1 port map( A1 => A_signal(13), A2 => n6, B1 => A_neg(13), B2 
                           => n7, ZN => n28);
   U41 : NAND2_X1 port map( A1 => n30, A2 => n31, ZN => Y(12));
   U42 : AOI222_X1 port map( A1 => A_shifted(12), A2 => n3, B1 => 
                           A_neg_shifted(12), B2 => n4, C1 => zeroSignal(12), 
                           C2 => n5, ZN => n31);
   U43 : AOI22_X1 port map( A1 => A_signal(12), A2 => n6, B1 => A_neg(12), B2 
                           => n7, ZN => n30);
   U44 : NAND2_X1 port map( A1 => n32, A2 => n33, ZN => Y(11));
   U45 : AOI222_X1 port map( A1 => A_shifted(11), A2 => n3, B1 => 
                           A_neg_shifted(11), B2 => n4, C1 => zeroSignal(11), 
                           C2 => n5, ZN => n33);
   U46 : AOI22_X1 port map( A1 => A_signal(11), A2 => n6, B1 => A_neg(11), B2 
                           => n7, ZN => n32);
   U47 : NAND2_X1 port map( A1 => n34, A2 => n35, ZN => Y(10));
   U48 : AOI222_X1 port map( A1 => A_shifted(10), A2 => n3, B1 => 
                           A_neg_shifted(10), B2 => n4, C1 => zeroSignal(10), 
                           C2 => n5, ZN => n35);
   U49 : AOI22_X1 port map( A1 => A_signal(10), A2 => n6, B1 => A_neg(10), B2 
                           => n7, ZN => n34);
   U50 : NAND2_X1 port map( A1 => n36, A2 => n37, ZN => Y(0));
   U51 : AOI222_X1 port map( A1 => A_shifted(0), A2 => n3, B1 => 
                           A_neg_shifted(0), B2 => n4, C1 => zeroSignal(0), C2 
                           => n5, ZN => n37);
   U52 : NAND2_X1 port map( A1 => n39, A2 => n40, ZN => n38);
   U53 : AND3_X1 port map( A1 => n40, A2 => n39, A3 => Sel(2), ZN => n4);
   U54 : AOI22_X1 port map( A1 => A_signal(0), A2 => n6, B1 => A_neg(0), B2 => 
                           n7, ZN => n36);
   U55 : INV_X1 port map( A => Sel(1), ZN => n39);
   U56 : INV_X1 port map( A => Sel(0), ZN => n40);

end SYN_BEHAVIORAL_2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity encoder_0 is

   port( pieceofB : in std_logic_vector (2 downto 0);  sel : out 
         std_logic_vector (2 downto 0));

end encoder_0;

architecture SYN_behavioral of encoder_0 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U3 : AND3_X1 port map( A1 => pieceofB(2), A2 => n1, A3 => n2, ZN => sel(2));
   U4 : INV_X1 port map( A => n3, ZN => sel(1));
   U5 : MUX2_X1 port map( A => n1, B => n2, S => pieceofB(2), Z => n3);
   U6 : AOI21_X1 port map( B1 => n2, B2 => n1, A => pieceofB(2), ZN => sel(0));
   U7 : NAND2_X1 port map( A1 => pieceofB(1), A2 => pieceofB(0), ZN => n1);
   U8 : XNOR2_X1 port map( A => pieceofB(0), B => pieceofB(1), ZN => n2);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity leftshifter_NbitShifter16_0 is

   port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
         std_logic_vector (15 downto 0));

end leftshifter_NbitShifter16_0;

architecture SYN_behavioral of leftshifter_NbitShifter16_0 is

signal X_Logic0_port : std_logic;

begin
   shift_out <= ( shift_in(14), shift_in(13), shift_in(12), shift_in(11), 
      shift_in(10), shift_in(9), shift_in(8), shift_in(7), shift_in(6), 
      shift_in(5), shift_in(4), shift_in(3), shift_in(2), shift_in(1), 
      shift_in(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity RCA_NbitRca16_0 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_NbitRca16_0;

architecture SYN_STRUCTURAL of RCA_NbitRca16_0 is

   component FA_49
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_50
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_51
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_52
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_53
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_54
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_55
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_56
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_57
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_58
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_59
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_60
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_61
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_62
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_63
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, CTMP_11_port,
      CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, CTMP_6_port, 
      CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, CTMP_1_port : 
      std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_63 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_62 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_61 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_60 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_59 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_58 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_57 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_56 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_55 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9),
                           Co => CTMP_10_port);
   FAI_11 : FA_54 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_53 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_52 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_51 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_50 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_49 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity IV_0 is

   port( A : in std_logic;  Y : out std_logic);

end IV_0;

architecture SYN_BEHAVIORAL of IV_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BOOTHMUL is

   port( A, B : in std_logic_vector (7 downto 0);  P : out std_logic_vector (15
         downto 0));

end BOOTHMUL;

architecture SYN_STRUCTURAL of BOOTHMUL is

   component RCA_NbitRca16_1
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (15 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NbitRca16_2
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (15 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NbitRca16_3
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (15 downto 0);  Co : out std_logic);
   end component;
   
   component MUX51_MuxNbit16_1
      port( zeroSignal, A_signal, A_neg, A_shifted, A_neg_shifted : in 
            std_logic_vector (15 downto 0);  Sel : in std_logic_vector (2 
            downto 0);  Y : out std_logic_vector (15 downto 0));
   end component;
   
   component encoder_1
      port( pieceofB : in std_logic_vector (2 downto 0);  sel : out 
            std_logic_vector (2 downto 0));
   end component;
   
   component MUX51_MuxNbit16_2
      port( zeroSignal, A_signal, A_neg, A_shifted, A_neg_shifted : in 
            std_logic_vector (15 downto 0);  Sel : in std_logic_vector (2 
            downto 0);  Y : out std_logic_vector (15 downto 0));
   end component;
   
   component encoder_2
      port( pieceofB : in std_logic_vector (2 downto 0);  sel : out 
            std_logic_vector (2 downto 0));
   end component;
   
   component MUX51_MuxNbit16_3
      port( zeroSignal, A_signal, A_neg, A_shifted, A_neg_shifted : in 
            std_logic_vector (15 downto 0);  Sel : in std_logic_vector (2 
            downto 0);  Y : out std_logic_vector (15 downto 0));
   end component;
   
   component encoder_3
      port( pieceofB : in std_logic_vector (2 downto 0);  sel : out 
            std_logic_vector (2 downto 0));
   end component;
   
   component MUX51_MuxNbit16_0
      port( zeroSignal, A_signal, A_neg, A_shifted, A_neg_shifted : in 
            std_logic_vector (15 downto 0);  Sel : in std_logic_vector (2 
            downto 0);  Y : out std_logic_vector (15 downto 0));
   end component;
   
   component encoder_0
      port( pieceofB : in std_logic_vector (2 downto 0);  sel : out 
            std_logic_vector (2 downto 0));
   end component;
   
   component leftshifter_NbitShifter16_1
      port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component leftshifter_NbitShifter16_2
      port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component leftshifter_NbitShifter16_3
      port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component leftshifter_NbitShifter16_4
      port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component leftshifter_NbitShifter16_5
      port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component leftshifter_NbitShifter16_6
      port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component leftshifter_NbitShifter16_7
      port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component leftshifter_NbitShifter16_8
      port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component leftshifter_NbitShifter16_9
      port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component leftshifter_NbitShifter16_10
      port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component leftshifter_NbitShifter16_11
      port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component leftshifter_NbitShifter16_12
      port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component leftshifter_NbitShifter16_13
      port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component leftshifter_NbitShifter16_14
      port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component leftshifter_NbitShifter16_0
      port( shift_in : in std_logic_vector (15 downto 0);  shift_out : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component RCA_NbitRca16_0
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (15 downto 0);  Co : out std_logic);
   end component;
   
   component IV_1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_3
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_5
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_6
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_7
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_8
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_9
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_10
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_11
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_12
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_13
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_14
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_15
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_0
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, positive_inputs_7_15_port, 
      positive_inputs_7_14_port, positive_inputs_7_13_port, 
      positive_inputs_7_12_port, positive_inputs_7_11_port, 
      positive_inputs_7_10_port, positive_inputs_7_9_port, 
      positive_inputs_7_8_port, positive_inputs_7_7_port, 
      positive_inputs_7_6_port, positive_inputs_7_5_port, 
      positive_inputs_7_4_port, positive_inputs_7_3_port, 
      positive_inputs_7_2_port, positive_inputs_7_1_port, 
      positive_inputs_7_0_port, positive_inputs_6_15_port, 
      positive_inputs_6_14_port, positive_inputs_6_13_port, 
      positive_inputs_6_12_port, positive_inputs_6_11_port, 
      positive_inputs_6_10_port, positive_inputs_6_9_port, 
      positive_inputs_6_8_port, positive_inputs_6_7_port, 
      positive_inputs_6_6_port, positive_inputs_6_5_port, 
      positive_inputs_6_4_port, positive_inputs_6_3_port, 
      positive_inputs_6_2_port, positive_inputs_6_1_port, 
      positive_inputs_6_0_port, positive_inputs_5_15_port, 
      positive_inputs_5_14_port, positive_inputs_5_13_port, 
      positive_inputs_5_12_port, positive_inputs_5_11_port, 
      positive_inputs_5_10_port, positive_inputs_5_9_port, 
      positive_inputs_5_8_port, positive_inputs_5_7_port, 
      positive_inputs_5_6_port, positive_inputs_5_5_port, 
      positive_inputs_5_4_port, positive_inputs_5_3_port, 
      positive_inputs_5_2_port, positive_inputs_5_1_port, 
      positive_inputs_5_0_port, positive_inputs_4_15_port, 
      positive_inputs_4_14_port, positive_inputs_4_13_port, 
      positive_inputs_4_12_port, positive_inputs_4_11_port, 
      positive_inputs_4_10_port, positive_inputs_4_9_port, 
      positive_inputs_4_8_port, positive_inputs_4_7_port, 
      positive_inputs_4_6_port, positive_inputs_4_5_port, 
      positive_inputs_4_4_port, positive_inputs_4_3_port, 
      positive_inputs_4_2_port, positive_inputs_4_1_port, 
      positive_inputs_4_0_port, positive_inputs_3_15_port, 
      positive_inputs_3_14_port, positive_inputs_3_13_port, 
      positive_inputs_3_12_port, positive_inputs_3_11_port, 
      positive_inputs_3_10_port, positive_inputs_3_9_port, 
      positive_inputs_3_8_port, positive_inputs_3_7_port, 
      positive_inputs_3_6_port, positive_inputs_3_5_port, 
      positive_inputs_3_4_port, positive_inputs_3_3_port, 
      positive_inputs_3_2_port, positive_inputs_3_1_port, 
      positive_inputs_3_0_port, positive_inputs_2_15_port, 
      positive_inputs_2_14_port, positive_inputs_2_13_port, 
      positive_inputs_2_12_port, positive_inputs_2_11_port, 
      positive_inputs_2_10_port, positive_inputs_2_9_port, 
      positive_inputs_2_8_port, positive_inputs_2_7_port, 
      positive_inputs_2_6_port, positive_inputs_2_5_port, 
      positive_inputs_2_4_port, positive_inputs_2_3_port, 
      positive_inputs_2_2_port, positive_inputs_2_1_port, 
      positive_inputs_2_0_port, positive_inputs_1_15_port, 
      positive_inputs_1_14_port, positive_inputs_1_13_port, 
      positive_inputs_1_12_port, positive_inputs_1_11_port, 
      positive_inputs_1_10_port, positive_inputs_1_9_port, 
      positive_inputs_1_8_port, positive_inputs_1_7_port, 
      positive_inputs_1_6_port, positive_inputs_1_5_port, 
      positive_inputs_1_4_port, positive_inputs_1_3_port, 
      positive_inputs_1_2_port, positive_inputs_1_1_port, 
      positive_inputs_1_0_port, A_complement_15_port, A_complement_14_port, 
      A_complement_13_port, A_complement_12_port, A_complement_11_port, 
      A_complement_10_port, A_complement_9_port, A_complement_8_port, 
      A_complement_7_port, A_complement_6_port, A_complement_5_port, 
      A_complement_4_port, A_complement_3_port, A_complement_2_port, 
      A_complement_1_port, A_complement_0_port, negative_inputs_7_15_port, 
      negative_inputs_7_14_port, negative_inputs_7_13_port, 
      negative_inputs_7_12_port, negative_inputs_7_11_port, 
      negative_inputs_7_10_port, negative_inputs_7_9_port, 
      negative_inputs_7_8_port, negative_inputs_7_7_port, 
      negative_inputs_7_6_port, negative_inputs_7_5_port, 
      negative_inputs_7_4_port, negative_inputs_7_3_port, 
      negative_inputs_7_2_port, negative_inputs_7_1_port, 
      negative_inputs_7_0_port, negative_inputs_6_15_port, 
      negative_inputs_6_14_port, negative_inputs_6_13_port, 
      negative_inputs_6_12_port, negative_inputs_6_11_port, 
      negative_inputs_6_10_port, negative_inputs_6_9_port, 
      negative_inputs_6_8_port, negative_inputs_6_7_port, 
      negative_inputs_6_6_port, negative_inputs_6_5_port, 
      negative_inputs_6_4_port, negative_inputs_6_3_port, 
      negative_inputs_6_2_port, negative_inputs_6_1_port, 
      negative_inputs_6_0_port, negative_inputs_5_15_port, 
      negative_inputs_5_14_port, negative_inputs_5_13_port, 
      negative_inputs_5_12_port, negative_inputs_5_11_port, 
      negative_inputs_5_10_port, negative_inputs_5_9_port, 
      negative_inputs_5_8_port, negative_inputs_5_7_port, 
      negative_inputs_5_6_port, negative_inputs_5_5_port, 
      negative_inputs_5_4_port, negative_inputs_5_3_port, 
      negative_inputs_5_2_port, negative_inputs_5_1_port, 
      negative_inputs_5_0_port, negative_inputs_4_15_port, 
      negative_inputs_4_14_port, negative_inputs_4_13_port, 
      negative_inputs_4_12_port, negative_inputs_4_11_port, 
      negative_inputs_4_10_port, negative_inputs_4_9_port, 
      negative_inputs_4_8_port, negative_inputs_4_7_port, 
      negative_inputs_4_6_port, negative_inputs_4_5_port, 
      negative_inputs_4_4_port, negative_inputs_4_3_port, 
      negative_inputs_4_2_port, negative_inputs_4_1_port, 
      negative_inputs_4_0_port, negative_inputs_3_15_port, 
      negative_inputs_3_14_port, negative_inputs_3_13_port, 
      negative_inputs_3_12_port, negative_inputs_3_11_port, 
      negative_inputs_3_10_port, negative_inputs_3_9_port, 
      negative_inputs_3_8_port, negative_inputs_3_7_port, 
      negative_inputs_3_6_port, negative_inputs_3_5_port, 
      negative_inputs_3_4_port, negative_inputs_3_3_port, 
      negative_inputs_3_2_port, negative_inputs_3_1_port, 
      negative_inputs_3_0_port, negative_inputs_2_15_port, 
      negative_inputs_2_14_port, negative_inputs_2_13_port, 
      negative_inputs_2_12_port, negative_inputs_2_11_port, 
      negative_inputs_2_10_port, negative_inputs_2_9_port, 
      negative_inputs_2_8_port, negative_inputs_2_7_port, 
      negative_inputs_2_6_port, negative_inputs_2_5_port, 
      negative_inputs_2_4_port, negative_inputs_2_3_port, 
      negative_inputs_2_2_port, negative_inputs_2_1_port, 
      negative_inputs_2_0_port, negative_inputs_1_15_port, 
      negative_inputs_1_14_port, negative_inputs_1_13_port, 
      negative_inputs_1_12_port, negative_inputs_1_11_port, 
      negative_inputs_1_10_port, negative_inputs_1_9_port, 
      negative_inputs_1_8_port, negative_inputs_1_7_port, 
      negative_inputs_1_6_port, negative_inputs_1_5_port, 
      negative_inputs_1_4_port, negative_inputs_1_3_port, 
      negative_inputs_1_2_port, negative_inputs_1_1_port, 
      negative_inputs_1_0_port, negative_inputs_0_15_port, 
      negative_inputs_0_14_port, negative_inputs_0_13_port, 
      negative_inputs_0_12_port, negative_inputs_0_11_port, 
      negative_inputs_0_10_port, negative_inputs_0_9_port, 
      negative_inputs_0_8_port, negative_inputs_0_7_port, 
      negative_inputs_0_6_port, negative_inputs_0_5_port, 
      negative_inputs_0_4_port, negative_inputs_0_3_port, 
      negative_inputs_0_2_port, negative_inputs_0_1_port, 
      negative_inputs_0_0_port, sel_3_2_port, sel_3_1_port, sel_3_0_port, 
      sel_2_2_port, sel_2_1_port, sel_2_0_port, sel_1_2_port, sel_1_1_port, 
      sel_1_0_port, sel_0_2_port, sel_0_1_port, sel_0_0_port, 
      MuxOutputs_3_15_port, MuxOutputs_3_14_port, MuxOutputs_3_13_port, 
      MuxOutputs_3_12_port, MuxOutputs_3_11_port, MuxOutputs_3_10_port, 
      MuxOutputs_3_9_port, MuxOutputs_3_8_port, MuxOutputs_3_7_port, 
      MuxOutputs_3_6_port, MuxOutputs_3_5_port, MuxOutputs_3_4_port, 
      MuxOutputs_3_3_port, MuxOutputs_3_2_port, MuxOutputs_3_1_port, 
      MuxOutputs_3_0_port, MuxOutputs_2_15_port, MuxOutputs_2_14_port, 
      MuxOutputs_2_13_port, MuxOutputs_2_12_port, MuxOutputs_2_11_port, 
      MuxOutputs_2_10_port, MuxOutputs_2_9_port, MuxOutputs_2_8_port, 
      MuxOutputs_2_7_port, MuxOutputs_2_6_port, MuxOutputs_2_5_port, 
      MuxOutputs_2_4_port, MuxOutputs_2_3_port, MuxOutputs_2_2_port, 
      MuxOutputs_2_1_port, MuxOutputs_2_0_port, MuxOutputs_1_15_port, 
      MuxOutputs_1_14_port, MuxOutputs_1_13_port, MuxOutputs_1_12_port, 
      MuxOutputs_1_11_port, MuxOutputs_1_10_port, MuxOutputs_1_9_port, 
      MuxOutputs_1_8_port, MuxOutputs_1_7_port, MuxOutputs_1_6_port, 
      MuxOutputs_1_5_port, MuxOutputs_1_4_port, MuxOutputs_1_3_port, 
      MuxOutputs_1_2_port, MuxOutputs_1_1_port, MuxOutputs_1_0_port, 
      MuxOutputs_0_15_port, MuxOutputs_0_14_port, MuxOutputs_0_13_port, 
      MuxOutputs_0_12_port, MuxOutputs_0_11_port, MuxOutputs_0_10_port, 
      MuxOutputs_0_9_port, MuxOutputs_0_8_port, MuxOutputs_0_7_port, 
      MuxOutputs_0_6_port, MuxOutputs_0_5_port, MuxOutputs_0_4_port, 
      MuxOutputs_0_3_port, MuxOutputs_0_2_port, MuxOutputs_0_1_port, 
      MuxOutputs_0_0_port, SumOutputs_1_15_port, SumOutputs_1_14_port, 
      SumOutputs_1_13_port, SumOutputs_1_12_port, SumOutputs_1_11_port, 
      SumOutputs_1_10_port, SumOutputs_1_9_port, SumOutputs_1_8_port, 
      SumOutputs_1_7_port, SumOutputs_1_6_port, SumOutputs_1_5_port, 
      SumOutputs_1_4_port, SumOutputs_1_3_port, SumOutputs_1_2_port, 
      SumOutputs_1_1_port, SumOutputs_1_0_port, SumOutputs_0_15_port, 
      SumOutputs_0_14_port, SumOutputs_0_13_port, SumOutputs_0_12_port, 
      SumOutputs_0_11_port, SumOutputs_0_10_port, SumOutputs_0_9_port, 
      SumOutputs_0_8_port, SumOutputs_0_7_port, SumOutputs_0_6_port, 
      SumOutputs_0_5_port, SumOutputs_0_4_port, SumOutputs_0_3_port, 
      SumOutputs_0_2_port, SumOutputs_0_1_port, SumOutputs_0_0_port, n1, n_1000
      , n_1001, n_1002, n_1003, n_1004, n_1005, n_1006, n_1007, n_1008, n_1009,
      n_1010, n_1011, n_1012, n_1013, n_1014, n_1015, n_1016, n_1017, n_1018, 
      n_1019 : std_logic;

begin
   
   inverterI_0 : IV_0 port map( A => A(0), Y => A_complement_0_port);
   inverterI_1 : IV_15 port map( A => A(1), Y => A_complement_1_port);
   inverterI_2 : IV_14 port map( A => A(2), Y => A_complement_2_port);
   inverterI_3 : IV_13 port map( A => A(3), Y => A_complement_3_port);
   inverterI_4 : IV_12 port map( A => A(4), Y => A_complement_4_port);
   inverterI_5 : IV_11 port map( A => A(5), Y => A_complement_5_port);
   inverterI_6 : IV_10 port map( A => A(6), Y => A_complement_6_port);
   inverterI_7 : IV_9 port map( A => A(7), Y => A_complement_7_port);
   inverterI_8 : IV_8 port map( A => A(7), Y => A_complement_8_port);
   inverterI_9 : IV_7 port map( A => A(7), Y => A_complement_9_port);
   inverterI_10 : IV_6 port map( A => A(7), Y => A_complement_10_port);
   inverterI_11 : IV_5 port map( A => A(7), Y => A_complement_11_port);
   inverterI_12 : IV_4 port map( A => A(7), Y => A_complement_12_port);
   inverterI_13 : IV_3 port map( A => A(7), Y => A_complement_13_port);
   inverterI_14 : IV_2 port map( A => A(7), Y => A_complement_14_port);
   inverterI_15 : IV_1 port map( A => A(7), Y => A_complement_15_port);
   FinilizingNegativeSignal : RCA_NbitRca16_0 port map( A(15) => 
                           A_complement_15_port, A(14) => A_complement_14_port,
                           A(13) => A_complement_13_port, A(12) => 
                           A_complement_12_port, A(11) => A_complement_11_port,
                           A(10) => A_complement_10_port, A(9) => 
                           A_complement_9_port, A(8) => A_complement_8_port, 
                           A(7) => A_complement_7_port, A(6) => 
                           A_complement_6_port, A(5) => A_complement_5_port, 
                           A(4) => A_complement_4_port, A(3) => 
                           A_complement_3_port, A(2) => A_complement_2_port, 
                           A(1) => A_complement_1_port, A(0) => 
                           A_complement_0_port, B(15) => X_Logic0_port, B(14) 
                           => X_Logic0_port, B(13) => X_Logic0_port, B(12) => 
                           X_Logic0_port, B(11) => X_Logic0_port, B(10) => 
                           X_Logic0_port, B(9) => X_Logic0_port, B(8) => 
                           X_Logic0_port, B(7) => X_Logic0_port, B(6) => 
                           X_Logic0_port, B(5) => X_Logic0_port, B(4) => 
                           X_Logic0_port, B(3) => X_Logic0_port, B(2) => 
                           X_Logic0_port, B(1) => X_Logic0_port, B(0) => 
                           X_Logic0_port, Ci => X_Logic1_port, S(15) => 
                           negative_inputs_0_15_port, S(14) => 
                           negative_inputs_0_14_port, S(13) => 
                           negative_inputs_0_13_port, S(12) => 
                           negative_inputs_0_12_port, S(11) => 
                           negative_inputs_0_11_port, S(10) => 
                           negative_inputs_0_10_port, S(9) => 
                           negative_inputs_0_9_port, S(8) => 
                           negative_inputs_0_8_port, S(7) => 
                           negative_inputs_0_7_port, S(6) => 
                           negative_inputs_0_6_port, S(5) => 
                           negative_inputs_0_5_port, S(4) => 
                           negative_inputs_0_4_port, S(3) => 
                           negative_inputs_0_3_port, S(2) => 
                           negative_inputs_0_2_port, S(1) => 
                           negative_inputs_0_1_port, S(0) => 
                           negative_inputs_0_0_port, Co => n_1000);
   shifted_pos_1 : leftshifter_NbitShifter16_0 port map( shift_in(15) => A(7), 
                           shift_in(14) => A(7), shift_in(13) => A(7), 
                           shift_in(12) => A(7), shift_in(11) => A(7), 
                           shift_in(10) => A(7), shift_in(9) => A(7), 
                           shift_in(8) => A(7), shift_in(7) => A(7), 
                           shift_in(6) => A(6), shift_in(5) => A(5), 
                           shift_in(4) => A(4), shift_in(3) => A(3), 
                           shift_in(2) => A(2), shift_in(1) => A(1), 
                           shift_in(0) => A(0), shift_out(15) => 
                           positive_inputs_1_15_port, shift_out(14) => 
                           positive_inputs_1_14_port, shift_out(13) => 
                           positive_inputs_1_13_port, shift_out(12) => 
                           positive_inputs_1_12_port, shift_out(11) => 
                           positive_inputs_1_11_port, shift_out(10) => 
                           positive_inputs_1_10_port, shift_out(9) => 
                           positive_inputs_1_9_port, shift_out(8) => 
                           positive_inputs_1_8_port, shift_out(7) => 
                           positive_inputs_1_7_port, shift_out(6) => 
                           positive_inputs_1_6_port, shift_out(5) => 
                           positive_inputs_1_5_port, shift_out(4) => 
                           positive_inputs_1_4_port, shift_out(3) => 
                           positive_inputs_1_3_port, shift_out(2) => 
                           positive_inputs_1_2_port, shift_out(1) => 
                           positive_inputs_1_1_port, shift_out(0) => 
                           positive_inputs_1_0_port);
   shifted_pos_2 : leftshifter_NbitShifter16_14 port map( shift_in(15) => 
                           positive_inputs_1_15_port, shift_in(14) => 
                           positive_inputs_1_14_port, shift_in(13) => 
                           positive_inputs_1_13_port, shift_in(12) => 
                           positive_inputs_1_12_port, shift_in(11) => 
                           positive_inputs_1_11_port, shift_in(10) => 
                           positive_inputs_1_10_port, shift_in(9) => 
                           positive_inputs_1_9_port, shift_in(8) => 
                           positive_inputs_1_8_port, shift_in(7) => 
                           positive_inputs_1_7_port, shift_in(6) => 
                           positive_inputs_1_6_port, shift_in(5) => 
                           positive_inputs_1_5_port, shift_in(4) => 
                           positive_inputs_1_4_port, shift_in(3) => 
                           positive_inputs_1_3_port, shift_in(2) => 
                           positive_inputs_1_2_port, shift_in(1) => 
                           positive_inputs_1_1_port, shift_in(0) => n1, 
                           shift_out(15) => positive_inputs_2_15_port, 
                           shift_out(14) => positive_inputs_2_14_port, 
                           shift_out(13) => positive_inputs_2_13_port, 
                           shift_out(12) => positive_inputs_2_12_port, 
                           shift_out(11) => positive_inputs_2_11_port, 
                           shift_out(10) => positive_inputs_2_10_port, 
                           shift_out(9) => positive_inputs_2_9_port, 
                           shift_out(8) => positive_inputs_2_8_port, 
                           shift_out(7) => positive_inputs_2_7_port, 
                           shift_out(6) => positive_inputs_2_6_port, 
                           shift_out(5) => positive_inputs_2_5_port, 
                           shift_out(4) => positive_inputs_2_4_port, 
                           shift_out(3) => positive_inputs_2_3_port, 
                           shift_out(2) => positive_inputs_2_2_port, 
                           shift_out(1) => positive_inputs_2_1_port, 
                           shift_out(0) => positive_inputs_2_0_port);
   shifted_pos_3 : leftshifter_NbitShifter16_13 port map( shift_in(15) => 
                           positive_inputs_2_15_port, shift_in(14) => 
                           positive_inputs_2_14_port, shift_in(13) => 
                           positive_inputs_2_13_port, shift_in(12) => 
                           positive_inputs_2_12_port, shift_in(11) => 
                           positive_inputs_2_11_port, shift_in(10) => 
                           positive_inputs_2_10_port, shift_in(9) => 
                           positive_inputs_2_9_port, shift_in(8) => 
                           positive_inputs_2_8_port, shift_in(7) => 
                           positive_inputs_2_7_port, shift_in(6) => 
                           positive_inputs_2_6_port, shift_in(5) => 
                           positive_inputs_2_5_port, shift_in(4) => 
                           positive_inputs_2_4_port, shift_in(3) => 
                           positive_inputs_2_3_port, shift_in(2) => 
                           positive_inputs_2_2_port, shift_in(1) => 
                           positive_inputs_2_1_port, shift_in(0) => n1, 
                           shift_out(15) => positive_inputs_3_15_port, 
                           shift_out(14) => positive_inputs_3_14_port, 
                           shift_out(13) => positive_inputs_3_13_port, 
                           shift_out(12) => positive_inputs_3_12_port, 
                           shift_out(11) => positive_inputs_3_11_port, 
                           shift_out(10) => positive_inputs_3_10_port, 
                           shift_out(9) => positive_inputs_3_9_port, 
                           shift_out(8) => positive_inputs_3_8_port, 
                           shift_out(7) => positive_inputs_3_7_port, 
                           shift_out(6) => positive_inputs_3_6_port, 
                           shift_out(5) => positive_inputs_3_5_port, 
                           shift_out(4) => positive_inputs_3_4_port, 
                           shift_out(3) => positive_inputs_3_3_port, 
                           shift_out(2) => positive_inputs_3_2_port, 
                           shift_out(1) => positive_inputs_3_1_port, 
                           shift_out(0) => positive_inputs_3_0_port);
   shifted_pos_4 : leftshifter_NbitShifter16_12 port map( shift_in(15) => 
                           positive_inputs_3_15_port, shift_in(14) => 
                           positive_inputs_3_14_port, shift_in(13) => 
                           positive_inputs_3_13_port, shift_in(12) => 
                           positive_inputs_3_12_port, shift_in(11) => 
                           positive_inputs_3_11_port, shift_in(10) => 
                           positive_inputs_3_10_port, shift_in(9) => 
                           positive_inputs_3_9_port, shift_in(8) => 
                           positive_inputs_3_8_port, shift_in(7) => 
                           positive_inputs_3_7_port, shift_in(6) => 
                           positive_inputs_3_6_port, shift_in(5) => 
                           positive_inputs_3_5_port, shift_in(4) => 
                           positive_inputs_3_4_port, shift_in(3) => 
                           positive_inputs_3_3_port, shift_in(2) => 
                           positive_inputs_3_2_port, shift_in(1) => 
                           positive_inputs_3_1_port, shift_in(0) => n1, 
                           shift_out(15) => positive_inputs_4_15_port, 
                           shift_out(14) => positive_inputs_4_14_port, 
                           shift_out(13) => positive_inputs_4_13_port, 
                           shift_out(12) => positive_inputs_4_12_port, 
                           shift_out(11) => positive_inputs_4_11_port, 
                           shift_out(10) => positive_inputs_4_10_port, 
                           shift_out(9) => positive_inputs_4_9_port, 
                           shift_out(8) => positive_inputs_4_8_port, 
                           shift_out(7) => positive_inputs_4_7_port, 
                           shift_out(6) => positive_inputs_4_6_port, 
                           shift_out(5) => positive_inputs_4_5_port, 
                           shift_out(4) => positive_inputs_4_4_port, 
                           shift_out(3) => positive_inputs_4_3_port, 
                           shift_out(2) => positive_inputs_4_2_port, 
                           shift_out(1) => positive_inputs_4_1_port, 
                           shift_out(0) => positive_inputs_4_0_port);
   shifted_pos_5 : leftshifter_NbitShifter16_11 port map( shift_in(15) => 
                           positive_inputs_4_15_port, shift_in(14) => 
                           positive_inputs_4_14_port, shift_in(13) => 
                           positive_inputs_4_13_port, shift_in(12) => 
                           positive_inputs_4_12_port, shift_in(11) => 
                           positive_inputs_4_11_port, shift_in(10) => 
                           positive_inputs_4_10_port, shift_in(9) => 
                           positive_inputs_4_9_port, shift_in(8) => 
                           positive_inputs_4_8_port, shift_in(7) => 
                           positive_inputs_4_7_port, shift_in(6) => 
                           positive_inputs_4_6_port, shift_in(5) => 
                           positive_inputs_4_5_port, shift_in(4) => 
                           positive_inputs_4_4_port, shift_in(3) => 
                           positive_inputs_4_3_port, shift_in(2) => 
                           positive_inputs_4_2_port, shift_in(1) => 
                           positive_inputs_4_1_port, shift_in(0) => n1, 
                           shift_out(15) => positive_inputs_5_15_port, 
                           shift_out(14) => positive_inputs_5_14_port, 
                           shift_out(13) => positive_inputs_5_13_port, 
                           shift_out(12) => positive_inputs_5_12_port, 
                           shift_out(11) => positive_inputs_5_11_port, 
                           shift_out(10) => positive_inputs_5_10_port, 
                           shift_out(9) => positive_inputs_5_9_port, 
                           shift_out(8) => positive_inputs_5_8_port, 
                           shift_out(7) => positive_inputs_5_7_port, 
                           shift_out(6) => positive_inputs_5_6_port, 
                           shift_out(5) => positive_inputs_5_5_port, 
                           shift_out(4) => positive_inputs_5_4_port, 
                           shift_out(3) => positive_inputs_5_3_port, 
                           shift_out(2) => positive_inputs_5_2_port, 
                           shift_out(1) => positive_inputs_5_1_port, 
                           shift_out(0) => positive_inputs_5_0_port);
   shifted_pos_6 : leftshifter_NbitShifter16_10 port map( shift_in(15) => 
                           positive_inputs_5_15_port, shift_in(14) => 
                           positive_inputs_5_14_port, shift_in(13) => 
                           positive_inputs_5_13_port, shift_in(12) => 
                           positive_inputs_5_12_port, shift_in(11) => 
                           positive_inputs_5_11_port, shift_in(10) => 
                           positive_inputs_5_10_port, shift_in(9) => 
                           positive_inputs_5_9_port, shift_in(8) => 
                           positive_inputs_5_8_port, shift_in(7) => 
                           positive_inputs_5_7_port, shift_in(6) => 
                           positive_inputs_5_6_port, shift_in(5) => 
                           positive_inputs_5_5_port, shift_in(4) => 
                           positive_inputs_5_4_port, shift_in(3) => 
                           positive_inputs_5_3_port, shift_in(2) => 
                           positive_inputs_5_2_port, shift_in(1) => 
                           positive_inputs_5_1_port, shift_in(0) => n1, 
                           shift_out(15) => positive_inputs_6_15_port, 
                           shift_out(14) => positive_inputs_6_14_port, 
                           shift_out(13) => positive_inputs_6_13_port, 
                           shift_out(12) => positive_inputs_6_12_port, 
                           shift_out(11) => positive_inputs_6_11_port, 
                           shift_out(10) => positive_inputs_6_10_port, 
                           shift_out(9) => positive_inputs_6_9_port, 
                           shift_out(8) => positive_inputs_6_8_port, 
                           shift_out(7) => positive_inputs_6_7_port, 
                           shift_out(6) => positive_inputs_6_6_port, 
                           shift_out(5) => positive_inputs_6_5_port, 
                           shift_out(4) => positive_inputs_6_4_port, 
                           shift_out(3) => positive_inputs_6_3_port, 
                           shift_out(2) => positive_inputs_6_2_port, 
                           shift_out(1) => positive_inputs_6_1_port, 
                           shift_out(0) => positive_inputs_6_0_port);
   shifted_pos_7 : leftshifter_NbitShifter16_9 port map( shift_in(15) => 
                           positive_inputs_6_15_port, shift_in(14) => 
                           positive_inputs_6_14_port, shift_in(13) => 
                           positive_inputs_6_13_port, shift_in(12) => 
                           positive_inputs_6_12_port, shift_in(11) => 
                           positive_inputs_6_11_port, shift_in(10) => 
                           positive_inputs_6_10_port, shift_in(9) => 
                           positive_inputs_6_9_port, shift_in(8) => 
                           positive_inputs_6_8_port, shift_in(7) => 
                           positive_inputs_6_7_port, shift_in(6) => 
                           positive_inputs_6_6_port, shift_in(5) => 
                           positive_inputs_6_5_port, shift_in(4) => 
                           positive_inputs_6_4_port, shift_in(3) => 
                           positive_inputs_6_3_port, shift_in(2) => 
                           positive_inputs_6_2_port, shift_in(1) => 
                           positive_inputs_6_1_port, shift_in(0) => n1, 
                           shift_out(15) => positive_inputs_7_15_port, 
                           shift_out(14) => positive_inputs_7_14_port, 
                           shift_out(13) => positive_inputs_7_13_port, 
                           shift_out(12) => positive_inputs_7_12_port, 
                           shift_out(11) => positive_inputs_7_11_port, 
                           shift_out(10) => positive_inputs_7_10_port, 
                           shift_out(9) => positive_inputs_7_9_port, 
                           shift_out(8) => positive_inputs_7_8_port, 
                           shift_out(7) => positive_inputs_7_7_port, 
                           shift_out(6) => positive_inputs_7_6_port, 
                           shift_out(5) => positive_inputs_7_5_port, 
                           shift_out(4) => positive_inputs_7_4_port, 
                           shift_out(3) => positive_inputs_7_3_port, 
                           shift_out(2) => positive_inputs_7_2_port, 
                           shift_out(1) => positive_inputs_7_1_port, 
                           shift_out(0) => positive_inputs_7_0_port);
   shifted_pos_8 : leftshifter_NbitShifter16_8 port map( shift_in(15) => 
                           positive_inputs_7_15_port, shift_in(14) => 
                           positive_inputs_7_14_port, shift_in(13) => 
                           positive_inputs_7_13_port, shift_in(12) => 
                           positive_inputs_7_12_port, shift_in(11) => 
                           positive_inputs_7_11_port, shift_in(10) => 
                           positive_inputs_7_10_port, shift_in(9) => 
                           positive_inputs_7_9_port, shift_in(8) => 
                           positive_inputs_7_8_port, shift_in(7) => 
                           positive_inputs_7_7_port, shift_in(6) => 
                           positive_inputs_7_6_port, shift_in(5) => 
                           positive_inputs_7_5_port, shift_in(4) => 
                           positive_inputs_7_4_port, shift_in(3) => 
                           positive_inputs_7_3_port, shift_in(2) => 
                           positive_inputs_7_2_port, shift_in(1) => 
                           positive_inputs_7_1_port, shift_in(0) => n1, 
                           shift_out(15) => n_1001, shift_out(14) => n_1002, 
                           shift_out(13) => n_1003, shift_out(12) => n_1004, 
                           shift_out(11) => n_1005, shift_out(10) => n_1006, 
                           shift_out(9) => n_1007, shift_out(8) => n_1008, 
                           shift_out(7) => n_1009, shift_out(6) => n_1010, 
                           shift_out(5) => n_1011, shift_out(4) => n_1012, 
                           shift_out(3) => n_1013, shift_out(2) => n_1014, 
                           shift_out(1) => n_1015, shift_out(0) => n_1016);
   shifted_neg_1 : leftshifter_NbitShifter16_7 port map( shift_in(15) => 
                           negative_inputs_0_15_port, shift_in(14) => 
                           negative_inputs_0_14_port, shift_in(13) => 
                           negative_inputs_0_13_port, shift_in(12) => 
                           negative_inputs_0_12_port, shift_in(11) => 
                           negative_inputs_0_11_port, shift_in(10) => 
                           negative_inputs_0_10_port, shift_in(9) => 
                           negative_inputs_0_9_port, shift_in(8) => 
                           negative_inputs_0_8_port, shift_in(7) => 
                           negative_inputs_0_7_port, shift_in(6) => 
                           negative_inputs_0_6_port, shift_in(5) => 
                           negative_inputs_0_5_port, shift_in(4) => 
                           negative_inputs_0_4_port, shift_in(3) => 
                           negative_inputs_0_3_port, shift_in(2) => 
                           negative_inputs_0_2_port, shift_in(1) => 
                           negative_inputs_0_1_port, shift_in(0) => 
                           negative_inputs_0_0_port, shift_out(15) => 
                           negative_inputs_1_15_port, shift_out(14) => 
                           negative_inputs_1_14_port, shift_out(13) => 
                           negative_inputs_1_13_port, shift_out(12) => 
                           negative_inputs_1_12_port, shift_out(11) => 
                           negative_inputs_1_11_port, shift_out(10) => 
                           negative_inputs_1_10_port, shift_out(9) => 
                           negative_inputs_1_9_port, shift_out(8) => 
                           negative_inputs_1_8_port, shift_out(7) => 
                           negative_inputs_1_7_port, shift_out(6) => 
                           negative_inputs_1_6_port, shift_out(5) => 
                           negative_inputs_1_5_port, shift_out(4) => 
                           negative_inputs_1_4_port, shift_out(3) => 
                           negative_inputs_1_3_port, shift_out(2) => 
                           negative_inputs_1_2_port, shift_out(1) => 
                           negative_inputs_1_1_port, shift_out(0) => 
                           negative_inputs_1_0_port);
   shifted_neg_2 : leftshifter_NbitShifter16_6 port map( shift_in(15) => 
                           negative_inputs_1_15_port, shift_in(14) => 
                           negative_inputs_1_14_port, shift_in(13) => 
                           negative_inputs_1_13_port, shift_in(12) => 
                           negative_inputs_1_12_port, shift_in(11) => 
                           negative_inputs_1_11_port, shift_in(10) => 
                           negative_inputs_1_10_port, shift_in(9) => 
                           negative_inputs_1_9_port, shift_in(8) => 
                           negative_inputs_1_8_port, shift_in(7) => 
                           negative_inputs_1_7_port, shift_in(6) => 
                           negative_inputs_1_6_port, shift_in(5) => 
                           negative_inputs_1_5_port, shift_in(4) => 
                           negative_inputs_1_4_port, shift_in(3) => 
                           negative_inputs_1_3_port, shift_in(2) => 
                           negative_inputs_1_2_port, shift_in(1) => 
                           negative_inputs_1_1_port, shift_in(0) => n1, 
                           shift_out(15) => negative_inputs_2_15_port, 
                           shift_out(14) => negative_inputs_2_14_port, 
                           shift_out(13) => negative_inputs_2_13_port, 
                           shift_out(12) => negative_inputs_2_12_port, 
                           shift_out(11) => negative_inputs_2_11_port, 
                           shift_out(10) => negative_inputs_2_10_port, 
                           shift_out(9) => negative_inputs_2_9_port, 
                           shift_out(8) => negative_inputs_2_8_port, 
                           shift_out(7) => negative_inputs_2_7_port, 
                           shift_out(6) => negative_inputs_2_6_port, 
                           shift_out(5) => negative_inputs_2_5_port, 
                           shift_out(4) => negative_inputs_2_4_port, 
                           shift_out(3) => negative_inputs_2_3_port, 
                           shift_out(2) => negative_inputs_2_2_port, 
                           shift_out(1) => negative_inputs_2_1_port, 
                           shift_out(0) => negative_inputs_2_0_port);
   shifted_neg_3 : leftshifter_NbitShifter16_5 port map( shift_in(15) => 
                           negative_inputs_2_15_port, shift_in(14) => 
                           negative_inputs_2_14_port, shift_in(13) => 
                           negative_inputs_2_13_port, shift_in(12) => 
                           negative_inputs_2_12_port, shift_in(11) => 
                           negative_inputs_2_11_port, shift_in(10) => 
                           negative_inputs_2_10_port, shift_in(9) => 
                           negative_inputs_2_9_port, shift_in(8) => 
                           negative_inputs_2_8_port, shift_in(7) => 
                           negative_inputs_2_7_port, shift_in(6) => 
                           negative_inputs_2_6_port, shift_in(5) => 
                           negative_inputs_2_5_port, shift_in(4) => 
                           negative_inputs_2_4_port, shift_in(3) => 
                           negative_inputs_2_3_port, shift_in(2) => 
                           negative_inputs_2_2_port, shift_in(1) => 
                           negative_inputs_2_1_port, shift_in(0) => n1, 
                           shift_out(15) => negative_inputs_3_15_port, 
                           shift_out(14) => negative_inputs_3_14_port, 
                           shift_out(13) => negative_inputs_3_13_port, 
                           shift_out(12) => negative_inputs_3_12_port, 
                           shift_out(11) => negative_inputs_3_11_port, 
                           shift_out(10) => negative_inputs_3_10_port, 
                           shift_out(9) => negative_inputs_3_9_port, 
                           shift_out(8) => negative_inputs_3_8_port, 
                           shift_out(7) => negative_inputs_3_7_port, 
                           shift_out(6) => negative_inputs_3_6_port, 
                           shift_out(5) => negative_inputs_3_5_port, 
                           shift_out(4) => negative_inputs_3_4_port, 
                           shift_out(3) => negative_inputs_3_3_port, 
                           shift_out(2) => negative_inputs_3_2_port, 
                           shift_out(1) => negative_inputs_3_1_port, 
                           shift_out(0) => negative_inputs_3_0_port);
   shifted_neg_4 : leftshifter_NbitShifter16_4 port map( shift_in(15) => 
                           negative_inputs_3_15_port, shift_in(14) => 
                           negative_inputs_3_14_port, shift_in(13) => 
                           negative_inputs_3_13_port, shift_in(12) => 
                           negative_inputs_3_12_port, shift_in(11) => 
                           negative_inputs_3_11_port, shift_in(10) => 
                           negative_inputs_3_10_port, shift_in(9) => 
                           negative_inputs_3_9_port, shift_in(8) => 
                           negative_inputs_3_8_port, shift_in(7) => 
                           negative_inputs_3_7_port, shift_in(6) => 
                           negative_inputs_3_6_port, shift_in(5) => 
                           negative_inputs_3_5_port, shift_in(4) => 
                           negative_inputs_3_4_port, shift_in(3) => 
                           negative_inputs_3_3_port, shift_in(2) => 
                           negative_inputs_3_2_port, shift_in(1) => 
                           negative_inputs_3_1_port, shift_in(0) => n1, 
                           shift_out(15) => negative_inputs_4_15_port, 
                           shift_out(14) => negative_inputs_4_14_port, 
                           shift_out(13) => negative_inputs_4_13_port, 
                           shift_out(12) => negative_inputs_4_12_port, 
                           shift_out(11) => negative_inputs_4_11_port, 
                           shift_out(10) => negative_inputs_4_10_port, 
                           shift_out(9) => negative_inputs_4_9_port, 
                           shift_out(8) => negative_inputs_4_8_port, 
                           shift_out(7) => negative_inputs_4_7_port, 
                           shift_out(6) => negative_inputs_4_6_port, 
                           shift_out(5) => negative_inputs_4_5_port, 
                           shift_out(4) => negative_inputs_4_4_port, 
                           shift_out(3) => negative_inputs_4_3_port, 
                           shift_out(2) => negative_inputs_4_2_port, 
                           shift_out(1) => negative_inputs_4_1_port, 
                           shift_out(0) => negative_inputs_4_0_port);
   shifted_neg_5 : leftshifter_NbitShifter16_3 port map( shift_in(15) => 
                           negative_inputs_4_15_port, shift_in(14) => 
                           negative_inputs_4_14_port, shift_in(13) => 
                           negative_inputs_4_13_port, shift_in(12) => 
                           negative_inputs_4_12_port, shift_in(11) => 
                           negative_inputs_4_11_port, shift_in(10) => 
                           negative_inputs_4_10_port, shift_in(9) => 
                           negative_inputs_4_9_port, shift_in(8) => 
                           negative_inputs_4_8_port, shift_in(7) => 
                           negative_inputs_4_7_port, shift_in(6) => 
                           negative_inputs_4_6_port, shift_in(5) => 
                           negative_inputs_4_5_port, shift_in(4) => 
                           negative_inputs_4_4_port, shift_in(3) => 
                           negative_inputs_4_3_port, shift_in(2) => 
                           negative_inputs_4_2_port, shift_in(1) => 
                           negative_inputs_4_1_port, shift_in(0) => n1, 
                           shift_out(15) => negative_inputs_5_15_port, 
                           shift_out(14) => negative_inputs_5_14_port, 
                           shift_out(13) => negative_inputs_5_13_port, 
                           shift_out(12) => negative_inputs_5_12_port, 
                           shift_out(11) => negative_inputs_5_11_port, 
                           shift_out(10) => negative_inputs_5_10_port, 
                           shift_out(9) => negative_inputs_5_9_port, 
                           shift_out(8) => negative_inputs_5_8_port, 
                           shift_out(7) => negative_inputs_5_7_port, 
                           shift_out(6) => negative_inputs_5_6_port, 
                           shift_out(5) => negative_inputs_5_5_port, 
                           shift_out(4) => negative_inputs_5_4_port, 
                           shift_out(3) => negative_inputs_5_3_port, 
                           shift_out(2) => negative_inputs_5_2_port, 
                           shift_out(1) => negative_inputs_5_1_port, 
                           shift_out(0) => negative_inputs_5_0_port);
   shifted_neg_6 : leftshifter_NbitShifter16_2 port map( shift_in(15) => 
                           negative_inputs_5_15_port, shift_in(14) => 
                           negative_inputs_5_14_port, shift_in(13) => 
                           negative_inputs_5_13_port, shift_in(12) => 
                           negative_inputs_5_12_port, shift_in(11) => 
                           negative_inputs_5_11_port, shift_in(10) => 
                           negative_inputs_5_10_port, shift_in(9) => 
                           negative_inputs_5_9_port, shift_in(8) => 
                           negative_inputs_5_8_port, shift_in(7) => 
                           negative_inputs_5_7_port, shift_in(6) => 
                           negative_inputs_5_6_port, shift_in(5) => 
                           negative_inputs_5_5_port, shift_in(4) => 
                           negative_inputs_5_4_port, shift_in(3) => 
                           negative_inputs_5_3_port, shift_in(2) => 
                           negative_inputs_5_2_port, shift_in(1) => 
                           negative_inputs_5_1_port, shift_in(0) => n1, 
                           shift_out(15) => negative_inputs_6_15_port, 
                           shift_out(14) => negative_inputs_6_14_port, 
                           shift_out(13) => negative_inputs_6_13_port, 
                           shift_out(12) => negative_inputs_6_12_port, 
                           shift_out(11) => negative_inputs_6_11_port, 
                           shift_out(10) => negative_inputs_6_10_port, 
                           shift_out(9) => negative_inputs_6_9_port, 
                           shift_out(8) => negative_inputs_6_8_port, 
                           shift_out(7) => negative_inputs_6_7_port, 
                           shift_out(6) => negative_inputs_6_6_port, 
                           shift_out(5) => negative_inputs_6_5_port, 
                           shift_out(4) => negative_inputs_6_4_port, 
                           shift_out(3) => negative_inputs_6_3_port, 
                           shift_out(2) => negative_inputs_6_2_port, 
                           shift_out(1) => negative_inputs_6_1_port, 
                           shift_out(0) => negative_inputs_6_0_port);
   shifted_neg_7 : leftshifter_NbitShifter16_1 port map( shift_in(15) => 
                           negative_inputs_6_15_port, shift_in(14) => 
                           negative_inputs_6_14_port, shift_in(13) => 
                           negative_inputs_6_13_port, shift_in(12) => 
                           negative_inputs_6_12_port, shift_in(11) => 
                           negative_inputs_6_11_port, shift_in(10) => 
                           negative_inputs_6_10_port, shift_in(9) => 
                           negative_inputs_6_9_port, shift_in(8) => 
                           negative_inputs_6_8_port, shift_in(7) => 
                           negative_inputs_6_7_port, shift_in(6) => 
                           negative_inputs_6_6_port, shift_in(5) => 
                           negative_inputs_6_5_port, shift_in(4) => 
                           negative_inputs_6_4_port, shift_in(3) => 
                           negative_inputs_6_3_port, shift_in(2) => 
                           negative_inputs_6_2_port, shift_in(1) => 
                           negative_inputs_6_1_port, shift_in(0) => n1, 
                           shift_out(15) => negative_inputs_7_15_port, 
                           shift_out(14) => negative_inputs_7_14_port, 
                           shift_out(13) => negative_inputs_7_13_port, 
                           shift_out(12) => negative_inputs_7_12_port, 
                           shift_out(11) => negative_inputs_7_11_port, 
                           shift_out(10) => negative_inputs_7_10_port, 
                           shift_out(9) => negative_inputs_7_9_port, 
                           shift_out(8) => negative_inputs_7_8_port, 
                           shift_out(7) => negative_inputs_7_7_port, 
                           shift_out(6) => negative_inputs_7_6_port, 
                           shift_out(5) => negative_inputs_7_5_port, 
                           shift_out(4) => negative_inputs_7_4_port, 
                           shift_out(3) => negative_inputs_7_3_port, 
                           shift_out(2) => negative_inputs_7_2_port, 
                           shift_out(1) => negative_inputs_7_1_port, 
                           shift_out(0) => negative_inputs_7_0_port);
   encoder0_0 : encoder_0 port map( pieceofB(2) => B(1), pieceofB(1) => B(0), 
                           pieceofB(0) => X_Logic0_port, sel(2) => sel_0_2_port
                           , sel(1) => sel_0_1_port, sel(0) => sel_0_0_port);
   MUX0_0 : MUX51_MuxNbit16_0 port map( zeroSignal(15) => X_Logic0_port, 
                           zeroSignal(14) => X_Logic0_port, zeroSignal(13) => 
                           X_Logic0_port, zeroSignal(12) => X_Logic0_port, 
                           zeroSignal(11) => X_Logic0_port, zeroSignal(10) => 
                           X_Logic0_port, zeroSignal(9) => X_Logic0_port, 
                           zeroSignal(8) => X_Logic0_port, zeroSignal(7) => 
                           X_Logic0_port, zeroSignal(6) => X_Logic0_port, 
                           zeroSignal(5) => X_Logic0_port, zeroSignal(4) => 
                           X_Logic0_port, zeroSignal(3) => X_Logic0_port, 
                           zeroSignal(2) => X_Logic0_port, zeroSignal(1) => 
                           X_Logic0_port, zeroSignal(0) => X_Logic0_port, 
                           A_signal(15) => A(7), A_signal(14) => A(7), 
                           A_signal(13) => A(7), A_signal(12) => A(7), 
                           A_signal(11) => A(7), A_signal(10) => A(7), 
                           A_signal(9) => A(7), A_signal(8) => A(7), 
                           A_signal(7) => A(7), A_signal(6) => A(6), 
                           A_signal(5) => A(5), A_signal(4) => A(4), 
                           A_signal(3) => A(3), A_signal(2) => A(2), 
                           A_signal(1) => A(1), A_signal(0) => A(0), A_neg(15) 
                           => negative_inputs_0_15_port, A_neg(14) => 
                           negative_inputs_0_14_port, A_neg(13) => 
                           negative_inputs_0_13_port, A_neg(12) => 
                           negative_inputs_0_12_port, A_neg(11) => 
                           negative_inputs_0_11_port, A_neg(10) => 
                           negative_inputs_0_10_port, A_neg(9) => 
                           negative_inputs_0_9_port, A_neg(8) => 
                           negative_inputs_0_8_port, A_neg(7) => 
                           negative_inputs_0_7_port, A_neg(6) => 
                           negative_inputs_0_6_port, A_neg(5) => 
                           negative_inputs_0_5_port, A_neg(4) => 
                           negative_inputs_0_4_port, A_neg(3) => 
                           negative_inputs_0_3_port, A_neg(2) => 
                           negative_inputs_0_2_port, A_neg(1) => 
                           negative_inputs_0_1_port, A_neg(0) => 
                           negative_inputs_0_0_port, A_shifted(15) => 
                           positive_inputs_1_15_port, A_shifted(14) => 
                           positive_inputs_1_14_port, A_shifted(13) => 
                           positive_inputs_1_13_port, A_shifted(12) => 
                           positive_inputs_1_12_port, A_shifted(11) => 
                           positive_inputs_1_11_port, A_shifted(10) => 
                           positive_inputs_1_10_port, A_shifted(9) => 
                           positive_inputs_1_9_port, A_shifted(8) => 
                           positive_inputs_1_8_port, A_shifted(7) => 
                           positive_inputs_1_7_port, A_shifted(6) => 
                           positive_inputs_1_6_port, A_shifted(5) => 
                           positive_inputs_1_5_port, A_shifted(4) => 
                           positive_inputs_1_4_port, A_shifted(3) => 
                           positive_inputs_1_3_port, A_shifted(2) => 
                           positive_inputs_1_2_port, A_shifted(1) => 
                           positive_inputs_1_1_port, A_shifted(0) => n1, 
                           A_neg_shifted(15) => negative_inputs_1_15_port, 
                           A_neg_shifted(14) => negative_inputs_1_14_port, 
                           A_neg_shifted(13) => negative_inputs_1_13_port, 
                           A_neg_shifted(12) => negative_inputs_1_12_port, 
                           A_neg_shifted(11) => negative_inputs_1_11_port, 
                           A_neg_shifted(10) => negative_inputs_1_10_port, 
                           A_neg_shifted(9) => negative_inputs_1_9_port, 
                           A_neg_shifted(8) => negative_inputs_1_8_port, 
                           A_neg_shifted(7) => negative_inputs_1_7_port, 
                           A_neg_shifted(6) => negative_inputs_1_6_port, 
                           A_neg_shifted(5) => negative_inputs_1_5_port, 
                           A_neg_shifted(4) => negative_inputs_1_4_port, 
                           A_neg_shifted(3) => negative_inputs_1_3_port, 
                           A_neg_shifted(2) => negative_inputs_1_2_port, 
                           A_neg_shifted(1) => negative_inputs_1_1_port, 
                           A_neg_shifted(0) => n1, Sel(2) => sel_0_2_port, 
                           Sel(1) => sel_0_1_port, Sel(0) => sel_0_0_port, 
                           Y(15) => MuxOutputs_0_15_port, Y(14) => 
                           MuxOutputs_0_14_port, Y(13) => MuxOutputs_0_13_port,
                           Y(12) => MuxOutputs_0_12_port, Y(11) => 
                           MuxOutputs_0_11_port, Y(10) => MuxOutputs_0_10_port,
                           Y(9) => MuxOutputs_0_9_port, Y(8) => 
                           MuxOutputs_0_8_port, Y(7) => MuxOutputs_0_7_port, 
                           Y(6) => MuxOutputs_0_6_port, Y(5) => 
                           MuxOutputs_0_5_port, Y(4) => MuxOutputs_0_4_port, 
                           Y(3) => MuxOutputs_0_3_port, Y(2) => 
                           MuxOutputs_0_2_port, Y(1) => MuxOutputs_0_1_port, 
                           Y(0) => MuxOutputs_0_0_port);
   encoderI_1 : encoder_3 port map( pieceofB(2) => B(3), pieceofB(1) => B(2), 
                           pieceofB(0) => B(1), sel(2) => sel_1_2_port, sel(1) 
                           => sel_1_1_port, sel(0) => sel_1_0_port);
   MUXI_1 : MUX51_MuxNbit16_3 port map( zeroSignal(15) => X_Logic0_port, 
                           zeroSignal(14) => X_Logic0_port, zeroSignal(13) => 
                           X_Logic0_port, zeroSignal(12) => X_Logic0_port, 
                           zeroSignal(11) => X_Logic0_port, zeroSignal(10) => 
                           X_Logic0_port, zeroSignal(9) => X_Logic0_port, 
                           zeroSignal(8) => X_Logic0_port, zeroSignal(7) => 
                           X_Logic0_port, zeroSignal(6) => X_Logic0_port, 
                           zeroSignal(5) => X_Logic0_port, zeroSignal(4) => 
                           X_Logic0_port, zeroSignal(3) => X_Logic0_port, 
                           zeroSignal(2) => X_Logic0_port, zeroSignal(1) => 
                           X_Logic0_port, zeroSignal(0) => X_Logic0_port, 
                           A_signal(15) => positive_inputs_2_15_port, 
                           A_signal(14) => positive_inputs_2_14_port, 
                           A_signal(13) => positive_inputs_2_13_port, 
                           A_signal(12) => positive_inputs_2_12_port, 
                           A_signal(11) => positive_inputs_2_11_port, 
                           A_signal(10) => positive_inputs_2_10_port, 
                           A_signal(9) => positive_inputs_2_9_port, A_signal(8)
                           => positive_inputs_2_8_port, A_signal(7) => 
                           positive_inputs_2_7_port, A_signal(6) => 
                           positive_inputs_2_6_port, A_signal(5) => 
                           positive_inputs_2_5_port, A_signal(4) => 
                           positive_inputs_2_4_port, A_signal(3) => 
                           positive_inputs_2_3_port, A_signal(2) => 
                           positive_inputs_2_2_port, A_signal(1) => 
                           positive_inputs_2_1_port, A_signal(0) => n1, 
                           A_neg(15) => negative_inputs_2_15_port, A_neg(14) =>
                           negative_inputs_2_14_port, A_neg(13) => 
                           negative_inputs_2_13_port, A_neg(12) => 
                           negative_inputs_2_12_port, A_neg(11) => 
                           negative_inputs_2_11_port, A_neg(10) => 
                           negative_inputs_2_10_port, A_neg(9) => 
                           negative_inputs_2_9_port, A_neg(8) => 
                           negative_inputs_2_8_port, A_neg(7) => 
                           negative_inputs_2_7_port, A_neg(6) => 
                           negative_inputs_2_6_port, A_neg(5) => 
                           negative_inputs_2_5_port, A_neg(4) => 
                           negative_inputs_2_4_port, A_neg(3) => 
                           negative_inputs_2_3_port, A_neg(2) => 
                           negative_inputs_2_2_port, A_neg(1) => 
                           negative_inputs_2_1_port, A_neg(0) => n1, 
                           A_shifted(15) => positive_inputs_3_15_port, 
                           A_shifted(14) => positive_inputs_3_14_port, 
                           A_shifted(13) => positive_inputs_3_13_port, 
                           A_shifted(12) => positive_inputs_3_12_port, 
                           A_shifted(11) => positive_inputs_3_11_port, 
                           A_shifted(10) => positive_inputs_3_10_port, 
                           A_shifted(9) => positive_inputs_3_9_port, 
                           A_shifted(8) => positive_inputs_3_8_port, 
                           A_shifted(7) => positive_inputs_3_7_port, 
                           A_shifted(6) => positive_inputs_3_6_port, 
                           A_shifted(5) => positive_inputs_3_5_port, 
                           A_shifted(4) => positive_inputs_3_4_port, 
                           A_shifted(3) => positive_inputs_3_3_port, 
                           A_shifted(2) => positive_inputs_3_2_port, 
                           A_shifted(1) => positive_inputs_3_1_port, 
                           A_shifted(0) => n1, A_neg_shifted(15) => 
                           negative_inputs_3_15_port, A_neg_shifted(14) => 
                           negative_inputs_3_14_port, A_neg_shifted(13) => 
                           negative_inputs_3_13_port, A_neg_shifted(12) => 
                           negative_inputs_3_12_port, A_neg_shifted(11) => 
                           negative_inputs_3_11_port, A_neg_shifted(10) => 
                           negative_inputs_3_10_port, A_neg_shifted(9) => 
                           negative_inputs_3_9_port, A_neg_shifted(8) => 
                           negative_inputs_3_8_port, A_neg_shifted(7) => 
                           negative_inputs_3_7_port, A_neg_shifted(6) => 
                           negative_inputs_3_6_port, A_neg_shifted(5) => 
                           negative_inputs_3_5_port, A_neg_shifted(4) => 
                           negative_inputs_3_4_port, A_neg_shifted(3) => 
                           negative_inputs_3_3_port, A_neg_shifted(2) => 
                           negative_inputs_3_2_port, A_neg_shifted(1) => 
                           negative_inputs_3_1_port, A_neg_shifted(0) => n1, 
                           Sel(2) => sel_1_2_port, Sel(1) => sel_1_1_port, 
                           Sel(0) => sel_1_0_port, Y(15) => 
                           MuxOutputs_1_15_port, Y(14) => MuxOutputs_1_14_port,
                           Y(13) => MuxOutputs_1_13_port, Y(12) => 
                           MuxOutputs_1_12_port, Y(11) => MuxOutputs_1_11_port,
                           Y(10) => MuxOutputs_1_10_port, Y(9) => 
                           MuxOutputs_1_9_port, Y(8) => MuxOutputs_1_8_port, 
                           Y(7) => MuxOutputs_1_7_port, Y(6) => 
                           MuxOutputs_1_6_port, Y(5) => MuxOutputs_1_5_port, 
                           Y(4) => MuxOutputs_1_4_port, Y(3) => 
                           MuxOutputs_1_3_port, Y(2) => MuxOutputs_1_2_port, 
                           Y(1) => MuxOutputs_1_1_port, Y(0) => 
                           MuxOutputs_1_0_port);
   encoderI_2 : encoder_2 port map( pieceofB(2) => B(5), pieceofB(1) => B(4), 
                           pieceofB(0) => B(3), sel(2) => sel_2_2_port, sel(1) 
                           => sel_2_1_port, sel(0) => sel_2_0_port);
   MUXI_2 : MUX51_MuxNbit16_2 port map( zeroSignal(15) => X_Logic0_port, 
                           zeroSignal(14) => X_Logic0_port, zeroSignal(13) => 
                           X_Logic0_port, zeroSignal(12) => X_Logic0_port, 
                           zeroSignal(11) => X_Logic0_port, zeroSignal(10) => 
                           X_Logic0_port, zeroSignal(9) => X_Logic0_port, 
                           zeroSignal(8) => X_Logic0_port, zeroSignal(7) => 
                           X_Logic0_port, zeroSignal(6) => X_Logic0_port, 
                           zeroSignal(5) => X_Logic0_port, zeroSignal(4) => 
                           X_Logic0_port, zeroSignal(3) => X_Logic0_port, 
                           zeroSignal(2) => X_Logic0_port, zeroSignal(1) => 
                           X_Logic0_port, zeroSignal(0) => X_Logic0_port, 
                           A_signal(15) => positive_inputs_4_15_port, 
                           A_signal(14) => positive_inputs_4_14_port, 
                           A_signal(13) => positive_inputs_4_13_port, 
                           A_signal(12) => positive_inputs_4_12_port, 
                           A_signal(11) => positive_inputs_4_11_port, 
                           A_signal(10) => positive_inputs_4_10_port, 
                           A_signal(9) => positive_inputs_4_9_port, A_signal(8)
                           => positive_inputs_4_8_port, A_signal(7) => 
                           positive_inputs_4_7_port, A_signal(6) => 
                           positive_inputs_4_6_port, A_signal(5) => 
                           positive_inputs_4_5_port, A_signal(4) => 
                           positive_inputs_4_4_port, A_signal(3) => 
                           positive_inputs_4_3_port, A_signal(2) => 
                           positive_inputs_4_2_port, A_signal(1) => 
                           positive_inputs_4_1_port, A_signal(0) => n1, 
                           A_neg(15) => negative_inputs_4_15_port, A_neg(14) =>
                           negative_inputs_4_14_port, A_neg(13) => 
                           negative_inputs_4_13_port, A_neg(12) => 
                           negative_inputs_4_12_port, A_neg(11) => 
                           negative_inputs_4_11_port, A_neg(10) => 
                           negative_inputs_4_10_port, A_neg(9) => 
                           negative_inputs_4_9_port, A_neg(8) => 
                           negative_inputs_4_8_port, A_neg(7) => 
                           negative_inputs_4_7_port, A_neg(6) => 
                           negative_inputs_4_6_port, A_neg(5) => 
                           negative_inputs_4_5_port, A_neg(4) => 
                           negative_inputs_4_4_port, A_neg(3) => 
                           negative_inputs_4_3_port, A_neg(2) => 
                           negative_inputs_4_2_port, A_neg(1) => 
                           negative_inputs_4_1_port, A_neg(0) => n1, 
                           A_shifted(15) => positive_inputs_5_15_port, 
                           A_shifted(14) => positive_inputs_5_14_port, 
                           A_shifted(13) => positive_inputs_5_13_port, 
                           A_shifted(12) => positive_inputs_5_12_port, 
                           A_shifted(11) => positive_inputs_5_11_port, 
                           A_shifted(10) => positive_inputs_5_10_port, 
                           A_shifted(9) => positive_inputs_5_9_port, 
                           A_shifted(8) => positive_inputs_5_8_port, 
                           A_shifted(7) => positive_inputs_5_7_port, 
                           A_shifted(6) => positive_inputs_5_6_port, 
                           A_shifted(5) => positive_inputs_5_5_port, 
                           A_shifted(4) => positive_inputs_5_4_port, 
                           A_shifted(3) => positive_inputs_5_3_port, 
                           A_shifted(2) => positive_inputs_5_2_port, 
                           A_shifted(1) => positive_inputs_5_1_port, 
                           A_shifted(0) => n1, A_neg_shifted(15) => 
                           negative_inputs_5_15_port, A_neg_shifted(14) => 
                           negative_inputs_5_14_port, A_neg_shifted(13) => 
                           negative_inputs_5_13_port, A_neg_shifted(12) => 
                           negative_inputs_5_12_port, A_neg_shifted(11) => 
                           negative_inputs_5_11_port, A_neg_shifted(10) => 
                           negative_inputs_5_10_port, A_neg_shifted(9) => 
                           negative_inputs_5_9_port, A_neg_shifted(8) => 
                           negative_inputs_5_8_port, A_neg_shifted(7) => 
                           negative_inputs_5_7_port, A_neg_shifted(6) => 
                           negative_inputs_5_6_port, A_neg_shifted(5) => 
                           negative_inputs_5_5_port, A_neg_shifted(4) => 
                           negative_inputs_5_4_port, A_neg_shifted(3) => 
                           negative_inputs_5_3_port, A_neg_shifted(2) => 
                           negative_inputs_5_2_port, A_neg_shifted(1) => 
                           negative_inputs_5_1_port, A_neg_shifted(0) => n1, 
                           Sel(2) => sel_2_2_port, Sel(1) => sel_2_1_port, 
                           Sel(0) => sel_2_0_port, Y(15) => 
                           MuxOutputs_2_15_port, Y(14) => MuxOutputs_2_14_port,
                           Y(13) => MuxOutputs_2_13_port, Y(12) => 
                           MuxOutputs_2_12_port, Y(11) => MuxOutputs_2_11_port,
                           Y(10) => MuxOutputs_2_10_port, Y(9) => 
                           MuxOutputs_2_9_port, Y(8) => MuxOutputs_2_8_port, 
                           Y(7) => MuxOutputs_2_7_port, Y(6) => 
                           MuxOutputs_2_6_port, Y(5) => MuxOutputs_2_5_port, 
                           Y(4) => MuxOutputs_2_4_port, Y(3) => 
                           MuxOutputs_2_3_port, Y(2) => MuxOutputs_2_2_port, 
                           Y(1) => MuxOutputs_2_1_port, Y(0) => 
                           MuxOutputs_2_0_port);
   encoderI_3 : encoder_1 port map( pieceofB(2) => B(7), pieceofB(1) => B(6), 
                           pieceofB(0) => B(5), sel(2) => sel_3_2_port, sel(1) 
                           => sel_3_1_port, sel(0) => sel_3_0_port);
   MUXI_3 : MUX51_MuxNbit16_1 port map( zeroSignal(15) => X_Logic0_port, 
                           zeroSignal(14) => X_Logic0_port, zeroSignal(13) => 
                           X_Logic0_port, zeroSignal(12) => X_Logic0_port, 
                           zeroSignal(11) => X_Logic0_port, zeroSignal(10) => 
                           X_Logic0_port, zeroSignal(9) => X_Logic0_port, 
                           zeroSignal(8) => X_Logic0_port, zeroSignal(7) => 
                           X_Logic0_port, zeroSignal(6) => X_Logic0_port, 
                           zeroSignal(5) => X_Logic0_port, zeroSignal(4) => 
                           X_Logic0_port, zeroSignal(3) => X_Logic0_port, 
                           zeroSignal(2) => X_Logic0_port, zeroSignal(1) => 
                           X_Logic0_port, zeroSignal(0) => X_Logic0_port, 
                           A_signal(15) => positive_inputs_6_15_port, 
                           A_signal(14) => positive_inputs_6_14_port, 
                           A_signal(13) => positive_inputs_6_13_port, 
                           A_signal(12) => positive_inputs_6_12_port, 
                           A_signal(11) => positive_inputs_6_11_port, 
                           A_signal(10) => positive_inputs_6_10_port, 
                           A_signal(9) => positive_inputs_6_9_port, A_signal(8)
                           => positive_inputs_6_8_port, A_signal(7) => 
                           positive_inputs_6_7_port, A_signal(6) => 
                           positive_inputs_6_6_port, A_signal(5) => 
                           positive_inputs_6_5_port, A_signal(4) => 
                           positive_inputs_6_4_port, A_signal(3) => 
                           positive_inputs_6_3_port, A_signal(2) => 
                           positive_inputs_6_2_port, A_signal(1) => 
                           positive_inputs_6_1_port, A_signal(0) => n1, 
                           A_neg(15) => negative_inputs_6_15_port, A_neg(14) =>
                           negative_inputs_6_14_port, A_neg(13) => 
                           negative_inputs_6_13_port, A_neg(12) => 
                           negative_inputs_6_12_port, A_neg(11) => 
                           negative_inputs_6_11_port, A_neg(10) => 
                           negative_inputs_6_10_port, A_neg(9) => 
                           negative_inputs_6_9_port, A_neg(8) => 
                           negative_inputs_6_8_port, A_neg(7) => 
                           negative_inputs_6_7_port, A_neg(6) => 
                           negative_inputs_6_6_port, A_neg(5) => 
                           negative_inputs_6_5_port, A_neg(4) => 
                           negative_inputs_6_4_port, A_neg(3) => 
                           negative_inputs_6_3_port, A_neg(2) => 
                           negative_inputs_6_2_port, A_neg(1) => 
                           negative_inputs_6_1_port, A_neg(0) => n1, 
                           A_shifted(15) => positive_inputs_7_15_port, 
                           A_shifted(14) => positive_inputs_7_14_port, 
                           A_shifted(13) => positive_inputs_7_13_port, 
                           A_shifted(12) => positive_inputs_7_12_port, 
                           A_shifted(11) => positive_inputs_7_11_port, 
                           A_shifted(10) => positive_inputs_7_10_port, 
                           A_shifted(9) => positive_inputs_7_9_port, 
                           A_shifted(8) => positive_inputs_7_8_port, 
                           A_shifted(7) => positive_inputs_7_7_port, 
                           A_shifted(6) => positive_inputs_7_6_port, 
                           A_shifted(5) => positive_inputs_7_5_port, 
                           A_shifted(4) => positive_inputs_7_4_port, 
                           A_shifted(3) => positive_inputs_7_3_port, 
                           A_shifted(2) => positive_inputs_7_2_port, 
                           A_shifted(1) => positive_inputs_7_1_port, 
                           A_shifted(0) => n1, A_neg_shifted(15) => 
                           negative_inputs_7_15_port, A_neg_shifted(14) => 
                           negative_inputs_7_14_port, A_neg_shifted(13) => 
                           negative_inputs_7_13_port, A_neg_shifted(12) => 
                           negative_inputs_7_12_port, A_neg_shifted(11) => 
                           negative_inputs_7_11_port, A_neg_shifted(10) => 
                           negative_inputs_7_10_port, A_neg_shifted(9) => 
                           negative_inputs_7_9_port, A_neg_shifted(8) => 
                           negative_inputs_7_8_port, A_neg_shifted(7) => 
                           negative_inputs_7_7_port, A_neg_shifted(6) => 
                           negative_inputs_7_6_port, A_neg_shifted(5) => 
                           negative_inputs_7_5_port, A_neg_shifted(4) => 
                           negative_inputs_7_4_port, A_neg_shifted(3) => 
                           negative_inputs_7_3_port, A_neg_shifted(2) => 
                           negative_inputs_7_2_port, A_neg_shifted(1) => 
                           negative_inputs_7_1_port, A_neg_shifted(0) => n1, 
                           Sel(2) => sel_3_2_port, Sel(1) => sel_3_1_port, 
                           Sel(0) => sel_3_0_port, Y(15) => 
                           MuxOutputs_3_15_port, Y(14) => MuxOutputs_3_14_port,
                           Y(13) => MuxOutputs_3_13_port, Y(12) => 
                           MuxOutputs_3_12_port, Y(11) => MuxOutputs_3_11_port,
                           Y(10) => MuxOutputs_3_10_port, Y(9) => 
                           MuxOutputs_3_9_port, Y(8) => MuxOutputs_3_8_port, 
                           Y(7) => MuxOutputs_3_7_port, Y(6) => 
                           MuxOutputs_3_6_port, Y(5) => MuxOutputs_3_5_port, 
                           Y(4) => MuxOutputs_3_4_port, Y(3) => 
                           MuxOutputs_3_3_port, Y(2) => MuxOutputs_3_2_port, 
                           Y(1) => MuxOutputs_3_1_port, Y(0) => 
                           MuxOutputs_3_0_port);
   SUM0 : RCA_NbitRca16_3 port map( A(15) => MuxOutputs_0_15_port, A(14) => 
                           MuxOutputs_0_14_port, A(13) => MuxOutputs_0_13_port,
                           A(12) => MuxOutputs_0_12_port, A(11) => 
                           MuxOutputs_0_11_port, A(10) => MuxOutputs_0_10_port,
                           A(9) => MuxOutputs_0_9_port, A(8) => 
                           MuxOutputs_0_8_port, A(7) => MuxOutputs_0_7_port, 
                           A(6) => MuxOutputs_0_6_port, A(5) => 
                           MuxOutputs_0_5_port, A(4) => MuxOutputs_0_4_port, 
                           A(3) => MuxOutputs_0_3_port, A(2) => 
                           MuxOutputs_0_2_port, A(1) => MuxOutputs_0_1_port, 
                           A(0) => MuxOutputs_0_0_port, B(15) => 
                           MuxOutputs_1_15_port, B(14) => MuxOutputs_1_14_port,
                           B(13) => MuxOutputs_1_13_port, B(12) => 
                           MuxOutputs_1_12_port, B(11) => MuxOutputs_1_11_port,
                           B(10) => MuxOutputs_1_10_port, B(9) => 
                           MuxOutputs_1_9_port, B(8) => MuxOutputs_1_8_port, 
                           B(7) => MuxOutputs_1_7_port, B(6) => 
                           MuxOutputs_1_6_port, B(5) => MuxOutputs_1_5_port, 
                           B(4) => MuxOutputs_1_4_port, B(3) => 
                           MuxOutputs_1_3_port, B(2) => MuxOutputs_1_2_port, 
                           B(1) => MuxOutputs_1_1_port, B(0) => 
                           MuxOutputs_1_0_port, Ci => X_Logic0_port, S(15) => 
                           SumOutputs_0_15_port, S(14) => SumOutputs_0_14_port,
                           S(13) => SumOutputs_0_13_port, S(12) => 
                           SumOutputs_0_12_port, S(11) => SumOutputs_0_11_port,
                           S(10) => SumOutputs_0_10_port, S(9) => 
                           SumOutputs_0_9_port, S(8) => SumOutputs_0_8_port, 
                           S(7) => SumOutputs_0_7_port, S(6) => 
                           SumOutputs_0_6_port, S(5) => SumOutputs_0_5_port, 
                           S(4) => SumOutputs_0_4_port, S(3) => 
                           SumOutputs_0_3_port, S(2) => SumOutputs_0_2_port, 
                           S(1) => SumOutputs_0_1_port, S(0) => 
                           SumOutputs_0_0_port, Co => n_1017);
   SUMI_1 : RCA_NbitRca16_2 port map( A(15) => MuxOutputs_2_15_port, A(14) => 
                           MuxOutputs_2_14_port, A(13) => MuxOutputs_2_13_port,
                           A(12) => MuxOutputs_2_12_port, A(11) => 
                           MuxOutputs_2_11_port, A(10) => MuxOutputs_2_10_port,
                           A(9) => MuxOutputs_2_9_port, A(8) => 
                           MuxOutputs_2_8_port, A(7) => MuxOutputs_2_7_port, 
                           A(6) => MuxOutputs_2_6_port, A(5) => 
                           MuxOutputs_2_5_port, A(4) => MuxOutputs_2_4_port, 
                           A(3) => MuxOutputs_2_3_port, A(2) => 
                           MuxOutputs_2_2_port, A(1) => MuxOutputs_2_1_port, 
                           A(0) => MuxOutputs_2_0_port, B(15) => 
                           SumOutputs_0_15_port, B(14) => SumOutputs_0_14_port,
                           B(13) => SumOutputs_0_13_port, B(12) => 
                           SumOutputs_0_12_port, B(11) => SumOutputs_0_11_port,
                           B(10) => SumOutputs_0_10_port, B(9) => 
                           SumOutputs_0_9_port, B(8) => SumOutputs_0_8_port, 
                           B(7) => SumOutputs_0_7_port, B(6) => 
                           SumOutputs_0_6_port, B(5) => SumOutputs_0_5_port, 
                           B(4) => SumOutputs_0_4_port, B(3) => 
                           SumOutputs_0_3_port, B(2) => SumOutputs_0_2_port, 
                           B(1) => SumOutputs_0_1_port, B(0) => 
                           SumOutputs_0_0_port, Ci => X_Logic0_port, S(15) => 
                           SumOutputs_1_15_port, S(14) => SumOutputs_1_14_port,
                           S(13) => SumOutputs_1_13_port, S(12) => 
                           SumOutputs_1_12_port, S(11) => SumOutputs_1_11_port,
                           S(10) => SumOutputs_1_10_port, S(9) => 
                           SumOutputs_1_9_port, S(8) => SumOutputs_1_8_port, 
                           S(7) => SumOutputs_1_7_port, S(6) => 
                           SumOutputs_1_6_port, S(5) => SumOutputs_1_5_port, 
                           S(4) => SumOutputs_1_4_port, S(3) => 
                           SumOutputs_1_3_port, S(2) => SumOutputs_1_2_port, 
                           S(1) => SumOutputs_1_1_port, S(0) => 
                           SumOutputs_1_0_port, Co => n_1018);
   SUMI_2 : RCA_NbitRca16_1 port map( A(15) => MuxOutputs_3_15_port, A(14) => 
                           MuxOutputs_3_14_port, A(13) => MuxOutputs_3_13_port,
                           A(12) => MuxOutputs_3_12_port, A(11) => 
                           MuxOutputs_3_11_port, A(10) => MuxOutputs_3_10_port,
                           A(9) => MuxOutputs_3_9_port, A(8) => 
                           MuxOutputs_3_8_port, A(7) => MuxOutputs_3_7_port, 
                           A(6) => MuxOutputs_3_6_port, A(5) => 
                           MuxOutputs_3_5_port, A(4) => MuxOutputs_3_4_port, 
                           A(3) => MuxOutputs_3_3_port, A(2) => 
                           MuxOutputs_3_2_port, A(1) => MuxOutputs_3_1_port, 
                           A(0) => MuxOutputs_3_0_port, B(15) => 
                           SumOutputs_1_15_port, B(14) => SumOutputs_1_14_port,
                           B(13) => SumOutputs_1_13_port, B(12) => 
                           SumOutputs_1_12_port, B(11) => SumOutputs_1_11_port,
                           B(10) => SumOutputs_1_10_port, B(9) => 
                           SumOutputs_1_9_port, B(8) => SumOutputs_1_8_port, 
                           B(7) => SumOutputs_1_7_port, B(6) => 
                           SumOutputs_1_6_port, B(5) => SumOutputs_1_5_port, 
                           B(4) => SumOutputs_1_4_port, B(3) => 
                           SumOutputs_1_3_port, B(2) => SumOutputs_1_2_port, 
                           B(1) => SumOutputs_1_1_port, B(0) => 
                           SumOutputs_1_0_port, Ci => X_Logic0_port, S(15) => 
                           P(15), S(14) => P(14), S(13) => P(13), S(12) => 
                           P(12), S(11) => P(11), S(10) => P(10), S(9) => P(9),
                           S(8) => P(8), S(7) => P(7), S(6) => P(6), S(5) => 
                           P(5), S(4) => P(4), S(3) => P(3), S(2) => P(2), S(1)
                           => P(1), S(0) => P(0), Co => n_1019);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   n1 <= '0';

end SYN_STRUCTURAL;
