
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_p4_adder is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_p4_adder;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Carryselect_NBIT4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end Carryselect_NBIT4_7;

architecture SYN_BEHAVIORAL of Carryselect_NBIT4_7 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22 : std_logic;

begin
   
   U2 : MUX2_X1 port map( A => n1, B => n2, S => Ci, Z => S(3));
   U3 : XOR2_X1 port map( A => n3, B => n4, Z => n2);
   U4 : AOI22_X1 port map( A1 => n5, A2 => n6, B1 => B(2), B2 => A(2), ZN => n4
                           );
   U5 : XOR2_X1 port map( A => n3, B => n7, Z => n1);
   U6 : AOI22_X1 port map( A1 => n8, A2 => n6, B1 => B(2), B2 => A(2), ZN => n7
                           );
   U7 : OR2_X1 port map( A1 => B(2), A2 => A(2), ZN => n6);
   U8 : XNOR2_X1 port map( A => B(3), B => A(3), ZN => n3);
   U9 : MUX2_X1 port map( A => n9, B => n10, S => Ci, Z => S(2));
   U10 : XOR2_X1 port map( A => n5, B => n11, Z => n10);
   U11 : INV_X1 port map( A => n12, ZN => n5);
   U12 : OAI22_X1 port map( A1 => B(1), A2 => A(1), B1 => n13, B2 => n14, ZN =>
                           n12);
   U13 : XOR2_X1 port map( A => n8, B => n11, Z => n9);
   U14 : XOR2_X1 port map( A => A(2), B => B(2), Z => n11);
   U15 : INV_X1 port map( A => n15, ZN => n8);
   U16 : OAI22_X1 port map( A1 => B(1), A2 => A(1), B1 => n16, B2 => n13, ZN =>
                           n15);
   U17 : AND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n13);
   U18 : MUX2_X1 port map( A => n17, B => n18, S => Ci, Z => S(1));
   U19 : XOR2_X1 port map( A => n14, B => n19, Z => n18);
   U20 : XOR2_X1 port map( A => n16, B => n19, Z => n17);
   U21 : XOR2_X1 port map( A => A(1), B => B(1), Z => n19);
   U22 : INV_X1 port map( A => n20, ZN => n16);
   U23 : MUX2_X1 port map( A => n21, B => n22, S => Ci, Z => S(0));
   U24 : NAND2_X1 port map( A1 => n20, A2 => n14, ZN => n22);
   U25 : OR2_X1 port map( A1 => A(0), A2 => B(0), ZN => n14);
   U26 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n20);
   U27 : XOR2_X1 port map( A => B(0), B => A(0), Z => n21);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Carryselect_NBIT4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end Carryselect_NBIT4_6;

architecture SYN_BEHAVIORAL of Carryselect_NBIT4_6 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22 : std_logic;

begin
   
   U2 : MUX2_X1 port map( A => n1, B => n2, S => Ci, Z => S(3));
   U3 : XOR2_X1 port map( A => n3, B => n4, Z => n2);
   U4 : AOI22_X1 port map( A1 => n5, A2 => n6, B1 => B(2), B2 => A(2), ZN => n4
                           );
   U5 : XOR2_X1 port map( A => n3, B => n7, Z => n1);
   U6 : AOI22_X1 port map( A1 => n8, A2 => n6, B1 => B(2), B2 => A(2), ZN => n7
                           );
   U7 : OR2_X1 port map( A1 => B(2), A2 => A(2), ZN => n6);
   U8 : XNOR2_X1 port map( A => B(3), B => A(3), ZN => n3);
   U9 : MUX2_X1 port map( A => n9, B => n10, S => Ci, Z => S(2));
   U10 : XOR2_X1 port map( A => n5, B => n11, Z => n10);
   U11 : INV_X1 port map( A => n12, ZN => n5);
   U12 : OAI22_X1 port map( A1 => B(1), A2 => A(1), B1 => n13, B2 => n14, ZN =>
                           n12);
   U13 : XOR2_X1 port map( A => n8, B => n11, Z => n9);
   U14 : XOR2_X1 port map( A => A(2), B => B(2), Z => n11);
   U15 : INV_X1 port map( A => n15, ZN => n8);
   U16 : OAI22_X1 port map( A1 => B(1), A2 => A(1), B1 => n16, B2 => n13, ZN =>
                           n15);
   U17 : AND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n13);
   U18 : MUX2_X1 port map( A => n17, B => n18, S => Ci, Z => S(1));
   U19 : XOR2_X1 port map( A => n14, B => n19, Z => n18);
   U20 : XOR2_X1 port map( A => n16, B => n19, Z => n17);
   U21 : XOR2_X1 port map( A => A(1), B => B(1), Z => n19);
   U22 : INV_X1 port map( A => n20, ZN => n16);
   U23 : MUX2_X1 port map( A => n21, B => n22, S => Ci, Z => S(0));
   U24 : NAND2_X1 port map( A1 => n20, A2 => n14, ZN => n22);
   U25 : OR2_X1 port map( A1 => A(0), A2 => B(0), ZN => n14);
   U26 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n20);
   U27 : XOR2_X1 port map( A => B(0), B => A(0), Z => n21);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Carryselect_NBIT4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end Carryselect_NBIT4_5;

architecture SYN_BEHAVIORAL of Carryselect_NBIT4_5 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22 : std_logic;

begin
   
   U2 : MUX2_X1 port map( A => n1, B => n2, S => Ci, Z => S(3));
   U3 : XOR2_X1 port map( A => n3, B => n4, Z => n2);
   U4 : AOI22_X1 port map( A1 => n5, A2 => n6, B1 => B(2), B2 => A(2), ZN => n4
                           );
   U5 : XOR2_X1 port map( A => n3, B => n7, Z => n1);
   U6 : AOI22_X1 port map( A1 => n8, A2 => n6, B1 => B(2), B2 => A(2), ZN => n7
                           );
   U7 : OR2_X1 port map( A1 => B(2), A2 => A(2), ZN => n6);
   U8 : XNOR2_X1 port map( A => B(3), B => A(3), ZN => n3);
   U9 : MUX2_X1 port map( A => n9, B => n10, S => Ci, Z => S(2));
   U10 : XOR2_X1 port map( A => n5, B => n11, Z => n10);
   U11 : INV_X1 port map( A => n12, ZN => n5);
   U12 : OAI22_X1 port map( A1 => B(1), A2 => A(1), B1 => n13, B2 => n14, ZN =>
                           n12);
   U13 : XOR2_X1 port map( A => n8, B => n11, Z => n9);
   U14 : XOR2_X1 port map( A => A(2), B => B(2), Z => n11);
   U15 : INV_X1 port map( A => n15, ZN => n8);
   U16 : OAI22_X1 port map( A1 => B(1), A2 => A(1), B1 => n16, B2 => n13, ZN =>
                           n15);
   U17 : AND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n13);
   U18 : MUX2_X1 port map( A => n17, B => n18, S => Ci, Z => S(1));
   U19 : XOR2_X1 port map( A => n14, B => n19, Z => n18);
   U20 : XOR2_X1 port map( A => n16, B => n19, Z => n17);
   U21 : XOR2_X1 port map( A => A(1), B => B(1), Z => n19);
   U22 : INV_X1 port map( A => n20, ZN => n16);
   U23 : MUX2_X1 port map( A => n21, B => n22, S => Ci, Z => S(0));
   U24 : NAND2_X1 port map( A1 => n20, A2 => n14, ZN => n22);
   U25 : OR2_X1 port map( A1 => A(0), A2 => B(0), ZN => n14);
   U26 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n20);
   U27 : XOR2_X1 port map( A => B(0), B => A(0), Z => n21);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Carryselect_NBIT4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end Carryselect_NBIT4_4;

architecture SYN_BEHAVIORAL of Carryselect_NBIT4_4 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22 : std_logic;

begin
   
   U2 : MUX2_X1 port map( A => n1, B => n2, S => Ci, Z => S(3));
   U3 : XOR2_X1 port map( A => n3, B => n4, Z => n2);
   U4 : AOI22_X1 port map( A1 => n5, A2 => n6, B1 => B(2), B2 => A(2), ZN => n4
                           );
   U5 : XOR2_X1 port map( A => n3, B => n7, Z => n1);
   U6 : AOI22_X1 port map( A1 => n8, A2 => n6, B1 => B(2), B2 => A(2), ZN => n7
                           );
   U7 : OR2_X1 port map( A1 => B(2), A2 => A(2), ZN => n6);
   U8 : XNOR2_X1 port map( A => B(3), B => A(3), ZN => n3);
   U9 : MUX2_X1 port map( A => n9, B => n10, S => Ci, Z => S(2));
   U10 : XOR2_X1 port map( A => n5, B => n11, Z => n10);
   U11 : INV_X1 port map( A => n12, ZN => n5);
   U12 : OAI22_X1 port map( A1 => B(1), A2 => A(1), B1 => n13, B2 => n14, ZN =>
                           n12);
   U13 : XOR2_X1 port map( A => n8, B => n11, Z => n9);
   U14 : XOR2_X1 port map( A => A(2), B => B(2), Z => n11);
   U15 : INV_X1 port map( A => n15, ZN => n8);
   U16 : OAI22_X1 port map( A1 => B(1), A2 => A(1), B1 => n16, B2 => n13, ZN =>
                           n15);
   U17 : AND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n13);
   U18 : MUX2_X1 port map( A => n17, B => n18, S => Ci, Z => S(1));
   U19 : XOR2_X1 port map( A => n14, B => n19, Z => n18);
   U20 : XOR2_X1 port map( A => n16, B => n19, Z => n17);
   U21 : XOR2_X1 port map( A => A(1), B => B(1), Z => n19);
   U22 : INV_X1 port map( A => n20, ZN => n16);
   U23 : MUX2_X1 port map( A => n21, B => n22, S => Ci, Z => S(0));
   U24 : NAND2_X1 port map( A1 => n20, A2 => n14, ZN => n22);
   U25 : OR2_X1 port map( A1 => A(0), A2 => B(0), ZN => n14);
   U26 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n20);
   U27 : XOR2_X1 port map( A => B(0), B => A(0), Z => n21);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Carryselect_NBIT4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end Carryselect_NBIT4_3;

architecture SYN_BEHAVIORAL of Carryselect_NBIT4_3 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22 : std_logic;

begin
   
   U2 : MUX2_X1 port map( A => n1, B => n2, S => Ci, Z => S(3));
   U3 : XOR2_X1 port map( A => n3, B => n4, Z => n2);
   U4 : AOI22_X1 port map( A1 => n5, A2 => n6, B1 => B(2), B2 => A(2), ZN => n4
                           );
   U5 : XOR2_X1 port map( A => n3, B => n7, Z => n1);
   U6 : AOI22_X1 port map( A1 => n8, A2 => n6, B1 => B(2), B2 => A(2), ZN => n7
                           );
   U7 : OR2_X1 port map( A1 => B(2), A2 => A(2), ZN => n6);
   U8 : XNOR2_X1 port map( A => B(3), B => A(3), ZN => n3);
   U9 : MUX2_X1 port map( A => n9, B => n10, S => Ci, Z => S(2));
   U10 : XOR2_X1 port map( A => n5, B => n11, Z => n10);
   U11 : INV_X1 port map( A => n12, ZN => n5);
   U12 : OAI22_X1 port map( A1 => B(1), A2 => A(1), B1 => n13, B2 => n14, ZN =>
                           n12);
   U13 : XOR2_X1 port map( A => n8, B => n11, Z => n9);
   U14 : XOR2_X1 port map( A => A(2), B => B(2), Z => n11);
   U15 : INV_X1 port map( A => n15, ZN => n8);
   U16 : OAI22_X1 port map( A1 => B(1), A2 => A(1), B1 => n16, B2 => n13, ZN =>
                           n15);
   U17 : AND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n13);
   U18 : MUX2_X1 port map( A => n17, B => n18, S => Ci, Z => S(1));
   U19 : XOR2_X1 port map( A => n14, B => n19, Z => n18);
   U20 : XOR2_X1 port map( A => n16, B => n19, Z => n17);
   U21 : XOR2_X1 port map( A => A(1), B => B(1), Z => n19);
   U22 : INV_X1 port map( A => n20, ZN => n16);
   U23 : MUX2_X1 port map( A => n21, B => n22, S => Ci, Z => S(0));
   U24 : NAND2_X1 port map( A1 => n20, A2 => n14, ZN => n22);
   U25 : OR2_X1 port map( A1 => A(0), A2 => B(0), ZN => n14);
   U26 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n20);
   U27 : XOR2_X1 port map( A => B(0), B => A(0), Z => n21);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Carryselect_NBIT4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end Carryselect_NBIT4_2;

architecture SYN_BEHAVIORAL of Carryselect_NBIT4_2 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22 : std_logic;

begin
   
   U2 : MUX2_X1 port map( A => n1, B => n2, S => Ci, Z => S(3));
   U3 : XOR2_X1 port map( A => n3, B => n4, Z => n2);
   U4 : AOI22_X1 port map( A1 => n5, A2 => n6, B1 => B(2), B2 => A(2), ZN => n4
                           );
   U5 : XOR2_X1 port map( A => n3, B => n7, Z => n1);
   U6 : AOI22_X1 port map( A1 => n8, A2 => n6, B1 => B(2), B2 => A(2), ZN => n7
                           );
   U7 : OR2_X1 port map( A1 => B(2), A2 => A(2), ZN => n6);
   U8 : XNOR2_X1 port map( A => B(3), B => A(3), ZN => n3);
   U9 : MUX2_X1 port map( A => n9, B => n10, S => Ci, Z => S(2));
   U10 : XOR2_X1 port map( A => n5, B => n11, Z => n10);
   U11 : INV_X1 port map( A => n12, ZN => n5);
   U12 : OAI22_X1 port map( A1 => B(1), A2 => A(1), B1 => n13, B2 => n14, ZN =>
                           n12);
   U13 : XOR2_X1 port map( A => n8, B => n11, Z => n9);
   U14 : XOR2_X1 port map( A => A(2), B => B(2), Z => n11);
   U15 : INV_X1 port map( A => n15, ZN => n8);
   U16 : OAI22_X1 port map( A1 => B(1), A2 => A(1), B1 => n16, B2 => n13, ZN =>
                           n15);
   U17 : AND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n13);
   U18 : MUX2_X1 port map( A => n17, B => n18, S => Ci, Z => S(1));
   U19 : XOR2_X1 port map( A => n14, B => n19, Z => n18);
   U20 : XOR2_X1 port map( A => n16, B => n19, Z => n17);
   U21 : XOR2_X1 port map( A => A(1), B => B(1), Z => n19);
   U22 : INV_X1 port map( A => n20, ZN => n16);
   U23 : MUX2_X1 port map( A => n21, B => n22, S => Ci, Z => S(0));
   U24 : NAND2_X1 port map( A1 => n20, A2 => n14, ZN => n22);
   U25 : OR2_X1 port map( A1 => A(0), A2 => B(0), ZN => n14);
   U26 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n20);
   U27 : XOR2_X1 port map( A => B(0), B => A(0), Z => n21);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Carryselect_NBIT4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end Carryselect_NBIT4_1;

architecture SYN_BEHAVIORAL of Carryselect_NBIT4_1 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22 : std_logic;

begin
   
   U2 : MUX2_X1 port map( A => n1, B => n2, S => Ci, Z => S(3));
   U3 : XOR2_X1 port map( A => n3, B => n4, Z => n2);
   U4 : AOI22_X1 port map( A1 => n5, A2 => n6, B1 => B(2), B2 => A(2), ZN => n4
                           );
   U5 : XOR2_X1 port map( A => n3, B => n7, Z => n1);
   U6 : AOI22_X1 port map( A1 => n8, A2 => n6, B1 => B(2), B2 => A(2), ZN => n7
                           );
   U7 : OR2_X1 port map( A1 => B(2), A2 => A(2), ZN => n6);
   U8 : XNOR2_X1 port map( A => B(3), B => A(3), ZN => n3);
   U9 : MUX2_X1 port map( A => n9, B => n10, S => Ci, Z => S(2));
   U10 : XOR2_X1 port map( A => n5, B => n11, Z => n10);
   U11 : INV_X1 port map( A => n12, ZN => n5);
   U12 : OAI22_X1 port map( A1 => B(1), A2 => A(1), B1 => n13, B2 => n14, ZN =>
                           n12);
   U13 : XOR2_X1 port map( A => n8, B => n11, Z => n9);
   U14 : XOR2_X1 port map( A => A(2), B => B(2), Z => n11);
   U15 : INV_X1 port map( A => n15, ZN => n8);
   U16 : OAI22_X1 port map( A1 => B(1), A2 => A(1), B1 => n16, B2 => n13, ZN =>
                           n15);
   U17 : AND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n13);
   U18 : MUX2_X1 port map( A => n17, B => n18, S => Ci, Z => S(1));
   U19 : XOR2_X1 port map( A => n14, B => n19, Z => n18);
   U20 : XOR2_X1 port map( A => n16, B => n19, Z => n17);
   U21 : XOR2_X1 port map( A => A(1), B => B(1), Z => n19);
   U22 : INV_X1 port map( A => n20, ZN => n16);
   U23 : MUX2_X1 port map( A => n21, B => n22, S => Ci, Z => S(0));
   U24 : NAND2_X1 port map( A1 => n20, A2 => n14, ZN => n22);
   U25 : OR2_X1 port map( A1 => A(0), A2 => B(0), ZN => n14);
   U26 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n20);
   U27 : XOR2_X1 port map( A => B(0), B => A(0), Z => n21);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_26 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_26;

architecture SYN_behavioral of Pg_26 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_25 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_25;

architecture SYN_behavioral of Pg_25 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_24 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_24;

architecture SYN_behavioral of Pg_24 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_23 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_23;

architecture SYN_behavioral of Pg_23 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_22 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_22;

architecture SYN_behavioral of Pg_22 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_21 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_21;

architecture SYN_behavioral of Pg_21 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_20 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_20;

architecture SYN_behavioral of Pg_20 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_19 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_19;

architecture SYN_behavioral of Pg_19 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_18 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_18;

architecture SYN_behavioral of Pg_18 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_17 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_17;

architecture SYN_behavioral of Pg_17 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_16 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_16;

architecture SYN_behavioral of Pg_16 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_15 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_15;

architecture SYN_behavioral of Pg_15 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_14 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_14;

architecture SYN_behavioral of Pg_14 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_13 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_13;

architecture SYN_behavioral of Pg_13 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_12 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_12;

architecture SYN_behavioral of Pg_12 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_11 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_11;

architecture SYN_behavioral of Pg_11 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_10 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_10;

architecture SYN_behavioral of Pg_10 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_9 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_9;

architecture SYN_behavioral of Pg_9 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_8 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_8;

architecture SYN_behavioral of Pg_8 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_7 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_7;

architecture SYN_behavioral of Pg_7 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_6 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_6;

architecture SYN_behavioral of Pg_6 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_5 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_5;

architecture SYN_behavioral of Pg_5 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_4 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_4;

architecture SYN_behavioral of Pg_4 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_3 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_3;

architecture SYN_behavioral of Pg_3 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_2 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_2;

architecture SYN_behavioral of Pg_2 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_1 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_1;

architecture SYN_behavioral of Pg_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity G_8 is

   port( P_ik, G_ik, Gk_1j : in std_logic;  G_ij : out std_logic);

end G_8;

architecture SYN_behavioral of G_8 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity G_7 is

   port( P_ik, G_ik, Gk_1j : in std_logic;  G_ij : out std_logic);

end G_7;

architecture SYN_behavioral of G_7 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity G_6 is

   port( P_ik, G_ik, Gk_1j : in std_logic;  G_ij : out std_logic);

end G_6;

architecture SYN_behavioral of G_6 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity G_5 is

   port( P_ik, G_ik, Gk_1j : in std_logic;  G_ij : out std_logic);

end G_5;

architecture SYN_behavioral of G_5 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity G_4 is

   port( P_ik, G_ik, Gk_1j : in std_logic;  G_ij : out std_logic);

end G_4;

architecture SYN_behavioral of G_4 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity G_3 is

   port( P_ik, G_ik, Gk_1j : in std_logic;  G_ij : out std_logic);

end G_3;

architecture SYN_behavioral of G_3 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity G_2 is

   port( P_ik, G_ik, Gk_1j : in std_logic;  G_ij : out std_logic);

end G_2;

architecture SYN_behavioral of G_2 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity G_1 is

   port( P_ik, G_ik, Gk_1j : in std_logic;  G_ij : out std_logic);

end G_1;

architecture SYN_behavioral of G_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Carryselect_NBIT4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end Carryselect_NBIT4_0;

architecture SYN_BEHAVIORAL of Carryselect_NBIT4_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22 : std_logic;

begin
   
   U2 : MUX2_X1 port map( A => n1, B => n2, S => Ci, Z => S(3));
   U3 : XOR2_X1 port map( A => n3, B => n4, Z => n2);
   U4 : AOI22_X1 port map( A1 => n5, A2 => n6, B1 => B(2), B2 => A(2), ZN => n4
                           );
   U5 : XOR2_X1 port map( A => n3, B => n7, Z => n1);
   U6 : AOI22_X1 port map( A1 => n8, A2 => n6, B1 => B(2), B2 => A(2), ZN => n7
                           );
   U7 : OR2_X1 port map( A1 => B(2), A2 => A(2), ZN => n6);
   U8 : XNOR2_X1 port map( A => B(3), B => A(3), ZN => n3);
   U9 : MUX2_X1 port map( A => n9, B => n10, S => Ci, Z => S(2));
   U10 : XOR2_X1 port map( A => n5, B => n11, Z => n10);
   U11 : INV_X1 port map( A => n12, ZN => n5);
   U12 : OAI22_X1 port map( A1 => B(1), A2 => A(1), B1 => n13, B2 => n14, ZN =>
                           n12);
   U13 : XOR2_X1 port map( A => n8, B => n11, Z => n9);
   U14 : XOR2_X1 port map( A => A(2), B => B(2), Z => n11);
   U15 : INV_X1 port map( A => n15, ZN => n8);
   U16 : OAI22_X1 port map( A1 => B(1), A2 => A(1), B1 => n16, B2 => n13, ZN =>
                           n15);
   U17 : AND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n13);
   U18 : MUX2_X1 port map( A => n17, B => n18, S => Ci, Z => S(1));
   U19 : XOR2_X1 port map( A => n14, B => n19, Z => n18);
   U20 : XOR2_X1 port map( A => n16, B => n19, Z => n17);
   U21 : XOR2_X1 port map( A => A(1), B => B(1), Z => n19);
   U22 : INV_X1 port map( A => n20, ZN => n16);
   U23 : MUX2_X1 port map( A => n21, B => n22, S => Ci, Z => S(0));
   U24 : NAND2_X1 port map( A1 => n20, A2 => n14, ZN => n22);
   U25 : OR2_X1 port map( A1 => A(0), A2 => B(0), ZN => n14);
   U26 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n20);
   U27 : XOR2_X1 port map( A => B(0), B => A(0), Z => n21);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_0 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_0;

architecture SYN_behavioral of Pg_0 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n1, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity G_0 is

   port( P_ik, G_ik, Gk_1j : in std_logic;  G_ij : out std_logic);

end G_0;

architecture SYN_behavioral of G_0 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity PgNetwork_NBit32 is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  P, G :
         out std_logic_vector (31 downto 0));

end PgNetwork_NBit32;

architecture SYN_behavioral of PgNetwork_NBit32 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => B(9), B => A(9), Z => P(9));
   U2 : XOR2_X1 port map( A => B(8), B => A(8), Z => P(8));
   U3 : XOR2_X1 port map( A => B(7), B => A(7), Z => P(7));
   U4 : XOR2_X1 port map( A => B(6), B => A(6), Z => P(6));
   U5 : XOR2_X1 port map( A => B(5), B => A(5), Z => P(5));
   U6 : XOR2_X1 port map( A => B(4), B => A(4), Z => P(4));
   U7 : XOR2_X1 port map( A => B(3), B => A(3), Z => P(3));
   U8 : XOR2_X1 port map( A => B(31), B => A(31), Z => P(31));
   U9 : XOR2_X1 port map( A => B(30), B => A(30), Z => P(30));
   U10 : XOR2_X1 port map( A => B(2), B => A(2), Z => P(2));
   U11 : XOR2_X1 port map( A => B(29), B => A(29), Z => P(29));
   U12 : XOR2_X1 port map( A => B(28), B => A(28), Z => P(28));
   U13 : XOR2_X1 port map( A => B(27), B => A(27), Z => P(27));
   U14 : XOR2_X1 port map( A => B(26), B => A(26), Z => P(26));
   U15 : XOR2_X1 port map( A => B(25), B => A(25), Z => P(25));
   U16 : XOR2_X1 port map( A => B(24), B => A(24), Z => P(24));
   U17 : XOR2_X1 port map( A => B(23), B => A(23), Z => P(23));
   U18 : XOR2_X1 port map( A => B(22), B => A(22), Z => P(22));
   U19 : XOR2_X1 port map( A => B(21), B => A(21), Z => P(21));
   U20 : XOR2_X1 port map( A => B(20), B => A(20), Z => P(20));
   U21 : XOR2_X1 port map( A => B(1), B => A(1), Z => P(1));
   U22 : XOR2_X1 port map( A => B(19), B => A(19), Z => P(19));
   U23 : XOR2_X1 port map( A => B(18), B => A(18), Z => P(18));
   U24 : XOR2_X1 port map( A => B(17), B => A(17), Z => P(17));
   U25 : XOR2_X1 port map( A => B(16), B => A(16), Z => P(16));
   U26 : XOR2_X1 port map( A => B(15), B => A(15), Z => P(15));
   U27 : XOR2_X1 port map( A => B(14), B => A(14), Z => P(14));
   U28 : XOR2_X1 port map( A => B(13), B => A(13), Z => P(13));
   U29 : XOR2_X1 port map( A => B(12), B => A(12), Z => P(12));
   U30 : XOR2_X1 port map( A => B(11), B => A(11), Z => P(11));
   U31 : XOR2_X1 port map( A => B(10), B => A(10), Z => P(10));
   U32 : XNOR2_X1 port map( A => n1, B => A(0), ZN => P(0));
   U33 : AND2_X1 port map( A1 => B(9), A2 => A(9), ZN => G(9));
   U34 : AND2_X1 port map( A1 => B(8), A2 => A(8), ZN => G(8));
   U35 : AND2_X1 port map( A1 => B(7), A2 => A(7), ZN => G(7));
   U36 : AND2_X1 port map( A1 => B(6), A2 => A(6), ZN => G(6));
   U37 : AND2_X1 port map( A1 => B(5), A2 => A(5), ZN => G(5));
   U38 : AND2_X1 port map( A1 => B(4), A2 => A(4), ZN => G(4));
   U39 : AND2_X1 port map( A1 => B(3), A2 => A(3), ZN => G(3));
   U40 : AND2_X1 port map( A1 => B(31), A2 => A(31), ZN => G(31));
   U41 : AND2_X1 port map( A1 => B(30), A2 => A(30), ZN => G(30));
   U42 : AND2_X1 port map( A1 => B(2), A2 => A(2), ZN => G(2));
   U43 : AND2_X1 port map( A1 => B(29), A2 => A(29), ZN => G(29));
   U44 : AND2_X1 port map( A1 => B(28), A2 => A(28), ZN => G(28));
   U45 : AND2_X1 port map( A1 => B(27), A2 => A(27), ZN => G(27));
   U46 : AND2_X1 port map( A1 => B(26), A2 => A(26), ZN => G(26));
   U47 : AND2_X1 port map( A1 => B(25), A2 => A(25), ZN => G(25));
   U48 : AND2_X1 port map( A1 => B(24), A2 => A(24), ZN => G(24));
   U49 : AND2_X1 port map( A1 => B(23), A2 => A(23), ZN => G(23));
   U50 : AND2_X1 port map( A1 => B(22), A2 => A(22), ZN => G(22));
   U51 : AND2_X1 port map( A1 => B(21), A2 => A(21), ZN => G(21));
   U52 : AND2_X1 port map( A1 => B(20), A2 => A(20), ZN => G(20));
   U53 : AND2_X1 port map( A1 => B(1), A2 => A(1), ZN => G(1));
   U54 : AND2_X1 port map( A1 => B(19), A2 => A(19), ZN => G(19));
   U55 : AND2_X1 port map( A1 => B(18), A2 => A(18), ZN => G(18));
   U56 : AND2_X1 port map( A1 => B(17), A2 => A(17), ZN => G(17));
   U57 : AND2_X1 port map( A1 => B(16), A2 => A(16), ZN => G(16));
   U58 : AND2_X1 port map( A1 => B(15), A2 => A(15), ZN => G(15));
   U59 : AND2_X1 port map( A1 => B(14), A2 => A(14), ZN => G(14));
   U60 : AND2_X1 port map( A1 => B(13), A2 => A(13), ZN => G(13));
   U61 : AND2_X1 port map( A1 => B(12), A2 => A(12), ZN => G(12));
   U62 : AND2_X1 port map( A1 => B(11), A2 => A(11), ZN => G(11));
   U63 : AND2_X1 port map( A1 => B(10), A2 => A(10), ZN => G(10));
   U64 : OAI21_X1 port map( B1 => n1, B2 => n2, A => n3, ZN => G(0));
   U65 : OAI21_X1 port map( B1 => A(0), B2 => B(0), A => Cin, ZN => n3);
   U66 : INV_X1 port map( A => A(0), ZN => n2);
   U67 : INV_X1 port map( A => B(0), ZN => n1);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity sum_generator_NBIT_PER_BLOCK4_NBLOCKS8 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector (7
         downto 0);  S : out std_logic_vector (31 downto 0));

end sum_generator_NBIT_PER_BLOCK4_NBLOCKS8;

architecture SYN_structural of sum_generator_NBIT_PER_BLOCK4_NBLOCKS8 is

   component Carryselect_NBIT4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component Carryselect_NBIT4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component Carryselect_NBIT4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component Carryselect_NBIT4_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component Carryselect_NBIT4_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component Carryselect_NBIT4_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component Carryselect_NBIT4_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component Carryselect_NBIT4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal n_1008, n_1009, n_1010, n_1011, n_1012, n_1013, n_1014, n_1015 : 
      std_logic;

begin
   
   CA1_0 : Carryselect_NBIT4_0 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => Ci(0), S(3) => S(3), 
                           S(2) => S(2), S(1) => S(1), S(0) => S(0), Co => 
                           n_1008);
   CA1_1 : Carryselect_NBIT4_7 port map( A(3) => A(7), A(2) => A(6), A(1) => 
                           A(5), A(0) => A(4), B(3) => B(7), B(2) => B(6), B(1)
                           => B(5), B(0) => B(4), Ci => Ci(1), S(3) => S(7), 
                           S(2) => S(6), S(1) => S(5), S(0) => S(4), Co => 
                           n_1009);
   CA1_2 : Carryselect_NBIT4_6 port map( A(3) => A(11), A(2) => A(10), A(1) => 
                           A(9), A(0) => A(8), B(3) => B(11), B(2) => B(10), 
                           B(1) => B(9), B(0) => B(8), Ci => Ci(2), S(3) => 
                           S(11), S(2) => S(10), S(1) => S(9), S(0) => S(8), Co
                           => n_1010);
   CA1_3 : Carryselect_NBIT4_5 port map( A(3) => A(15), A(2) => A(14), A(1) => 
                           A(13), A(0) => A(12), B(3) => B(15), B(2) => B(14), 
                           B(1) => B(13), B(0) => B(12), Ci => Ci(3), S(3) => 
                           S(15), S(2) => S(14), S(1) => S(13), S(0) => S(12), 
                           Co => n_1011);
   CA1_4 : Carryselect_NBIT4_4 port map( A(3) => A(19), A(2) => A(18), A(1) => 
                           A(17), A(0) => A(16), B(3) => B(19), B(2) => B(18), 
                           B(1) => B(17), B(0) => B(16), Ci => Ci(4), S(3) => 
                           S(19), S(2) => S(18), S(1) => S(17), S(0) => S(16), 
                           Co => n_1012);
   CA1_5 : Carryselect_NBIT4_3 port map( A(3) => A(23), A(2) => A(22), A(1) => 
                           A(21), A(0) => A(20), B(3) => B(23), B(2) => B(22), 
                           B(1) => B(21), B(0) => B(20), Ci => Ci(5), S(3) => 
                           S(23), S(2) => S(22), S(1) => S(21), S(0) => S(20), 
                           Co => n_1013);
   CA1_6 : Carryselect_NBIT4_2 port map( A(3) => A(27), A(2) => A(26), A(1) => 
                           A(25), A(0) => A(24), B(3) => B(27), B(2) => B(26), 
                           B(1) => B(25), B(0) => B(24), Ci => Ci(6), S(3) => 
                           S(27), S(2) => S(26), S(1) => S(25), S(0) => S(24), 
                           Co => n_1014);
   CA1_7 : Carryselect_NBIT4_1 port map( A(3) => A(31), A(2) => A(30), A(1) => 
                           A(29), A(0) => A(28), B(3) => B(31), B(2) => B(30), 
                           B(1) => B(29), B(0) => B(28), Ci => Ci(7), S(3) => 
                           S(31), S(2) => S(30), S(1) => S(29), S(0) => S(28), 
                           Co => n_1015);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity sparseTree_NBIT32_NBIT_PER_BLOCK4 is

   port( A, B : in std_logic_vector (31 downto 0);  cin : in std_logic;  cout :
         out std_logic_vector (8 downto 0));

end sparseTree_NBIT32_NBIT_PER_BLOCK4;

architecture SYN_structural of sparseTree_NBIT32_NBIT_PER_BLOCK4 is

   component G_1
      port( P_ik, G_ik, Gk_1j : in std_logic;  G_ij : out std_logic);
   end component;
   
   component G_2
      port( P_ik, G_ik, Gk_1j : in std_logic;  G_ij : out std_logic);
   end component;
   
   component G_3
      port( P_ik, G_ik, Gk_1j : in std_logic;  G_ij : out std_logic);
   end component;
   
   component G_4
      port( P_ik, G_ik, Gk_1j : in std_logic;  G_ij : out std_logic);
   end component;
   
   component Pg_1
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_2
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component G_5
      port( P_ik, G_ik, Gk_1j : in std_logic;  G_ij : out std_logic);
   end component;
   
   component G_6
      port( P_ik, G_ik, Gk_1j : in std_logic;  G_ij : out std_logic);
   end component;
   
   component Pg_3
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_4
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_5
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component G_7
      port( P_ik, G_ik, Gk_1j : in std_logic;  G_ij : out std_logic);
   end component;
   
   component Pg_6
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_7
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_8
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_9
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_10
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_11
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_12
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component G_8
      port( P_ik, G_ik, Gk_1j : in std_logic;  G_ij : out std_logic);
   end component;
   
   component Pg_13
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_14
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_15
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_16
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_17
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_18
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_19
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_20
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_21
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_22
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_23
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_24
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_25
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_26
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component Pg_0
      port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out 
            std_logic);
   end component;
   
   component G_0
      port( P_ik, G_ik, Gk_1j : in std_logic;  G_ij : out std_logic);
   end component;
   
   component PgNetwork_NBit32
      port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  P, 
            G : out std_logic_vector (31 downto 0));
   end component;
   
   signal cout_8_port, cout_7_port, cout_6_port, cout_5_port, cout_4_port, 
      cout_3_port, cout_2_port, cout_1_port, Sig2_4_31_port, Sig2_4_27_port, 
      Sig2_4_23_port, Sig2_3_31_port, Sig2_3_27_port, Sig2_3_19_port, 
      Sig2_3_15_port, Sig2_3_11_port, Sig2_2_31_port, Sig2_2_23_port, 
      Sig2_2_15_port, Sig2_2_7_port, Sig2_1_31_port, Sig2_1_29_port, 
      Sig2_1_27_port, Sig2_1_25_port, Sig2_1_23_port, Sig2_1_21_port, 
      Sig2_1_19_port, Sig2_1_17_port, Sig2_1_15_port, Sig2_1_13_port, 
      Sig2_1_11_port, Sig2_1_9_port, Sig2_1_7_port, Sig2_1_5_port, 
      Sig2_1_3_port, Sig2_1_1_port, Sig2_0_31_port, Sig2_0_30_port, 
      Sig2_0_29_port, Sig2_0_28_port, Sig2_0_27_port, Sig2_0_26_port, 
      Sig2_0_25_port, Sig2_0_24_port, Sig2_0_23_port, Sig2_0_22_port, 
      Sig2_0_21_port, Sig2_0_20_port, Sig2_0_19_port, Sig2_0_18_port, 
      Sig2_0_17_port, Sig2_0_16_port, Sig2_0_15_port, Sig2_0_14_port, 
      Sig2_0_13_port, Sig2_0_12_port, Sig2_0_11_port, Sig2_0_10_port, 
      Sig2_0_9_port, Sig2_0_8_port, Sig2_0_7_port, Sig2_0_6_port, Sig2_0_5_port
      , Sig2_0_4_port, Sig2_0_3_port, Sig2_0_2_port, Sig2_0_1_port, 
      Sig2_0_0_port, Sig1_4_31_port, Sig1_4_27_port, Sig1_4_23_port, 
      Sig1_3_31_port, Sig1_3_27_port, Sig1_3_19_port, Sig1_3_15_port, 
      Sig1_3_11_port, Sig1_2_31_port, Sig1_2_23_port, Sig1_2_15_port, 
      Sig1_2_7_port, Sig1_1_31_port, Sig1_1_29_port, Sig1_1_27_port, 
      Sig1_1_25_port, Sig1_1_23_port, Sig1_1_21_port, Sig1_1_19_port, 
      Sig1_1_17_port, Sig1_1_15_port, Sig1_1_13_port, Sig1_1_11_port, 
      Sig1_1_9_port, Sig1_1_7_port, Sig1_1_5_port, Sig1_1_3_port, 
      Sig1_0_31_port, Sig1_0_30_port, Sig1_0_29_port, Sig1_0_28_port, 
      Sig1_0_27_port, Sig1_0_26_port, Sig1_0_25_port, Sig1_0_24_port, 
      Sig1_0_23_port, Sig1_0_22_port, Sig1_0_21_port, Sig1_0_20_port, 
      Sig1_0_19_port, Sig1_0_18_port, Sig1_0_17_port, Sig1_0_16_port, 
      Sig1_0_15_port, Sig1_0_14_port, Sig1_0_13_port, Sig1_0_12_port, 
      Sig1_0_11_port, Sig1_0_10_port, Sig1_0_9_port, Sig1_0_8_port, 
      Sig1_0_7_port, Sig1_0_6_port, Sig1_0_5_port, Sig1_0_4_port, Sig1_0_3_port
      , Sig1_0_2_port, Sig1_0_1_port, n_1016 : std_logic;

begin
   cout <= ( cout_8_port, cout_7_port, cout_6_port, cout_5_port, cout_4_port, 
      cout_3_port, cout_2_port, cout_1_port, cin );
   
   m_pgNetwork : PgNetwork_NBit32 port map( A(31) => A(31), A(30) => A(30), 
                           A(29) => A(29), A(28) => A(28), A(27) => A(27), 
                           A(26) => A(26), A(25) => A(25), A(24) => A(24), 
                           A(23) => A(23), A(22) => A(22), A(21) => A(21), 
                           A(20) => A(20), A(19) => A(19), A(18) => A(18), 
                           A(17) => A(17), A(16) => A(16), A(15) => A(15), 
                           A(14) => A(14), A(13) => A(13), A(12) => A(12), 
                           A(11) => A(11), A(10) => A(10), A(9) => A(9), A(8) 
                           => A(8), A(7) => A(7), A(6) => A(6), A(5) => A(5), 
                           A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(31) => B(31), B(30) => B(30), 
                           B(29) => B(29), B(28) => B(28), B(27) => B(27), 
                           B(26) => B(26), B(25) => B(25), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Cin => cin, P(31) => 
                           Sig1_0_31_port, P(30) => Sig1_0_30_port, P(29) => 
                           Sig1_0_29_port, P(28) => Sig1_0_28_port, P(27) => 
                           Sig1_0_27_port, P(26) => Sig1_0_26_port, P(25) => 
                           Sig1_0_25_port, P(24) => Sig1_0_24_port, P(23) => 
                           Sig1_0_23_port, P(22) => Sig1_0_22_port, P(21) => 
                           Sig1_0_21_port, P(20) => Sig1_0_20_port, P(19) => 
                           Sig1_0_19_port, P(18) => Sig1_0_18_port, P(17) => 
                           Sig1_0_17_port, P(16) => Sig1_0_16_port, P(15) => 
                           Sig1_0_15_port, P(14) => Sig1_0_14_port, P(13) => 
                           Sig1_0_13_port, P(12) => Sig1_0_12_port, P(11) => 
                           Sig1_0_11_port, P(10) => Sig1_0_10_port, P(9) => 
                           Sig1_0_9_port, P(8) => Sig1_0_8_port, P(7) => 
                           Sig1_0_7_port, P(6) => Sig1_0_6_port, P(5) => 
                           Sig1_0_5_port, P(4) => Sig1_0_4_port, P(3) => 
                           Sig1_0_3_port, P(2) => Sig1_0_2_port, P(1) => 
                           Sig1_0_1_port, P(0) => n_1016, G(31) => 
                           Sig2_0_31_port, G(30) => Sig2_0_30_port, G(29) => 
                           Sig2_0_29_port, G(28) => Sig2_0_28_port, G(27) => 
                           Sig2_0_27_port, G(26) => Sig2_0_26_port, G(25) => 
                           Sig2_0_25_port, G(24) => Sig2_0_24_port, G(23) => 
                           Sig2_0_23_port, G(22) => Sig2_0_22_port, G(21) => 
                           Sig2_0_21_port, G(20) => Sig2_0_20_port, G(19) => 
                           Sig2_0_19_port, G(18) => Sig2_0_18_port, G(17) => 
                           Sig2_0_17_port, G(16) => Sig2_0_16_port, G(15) => 
                           Sig2_0_15_port, G(14) => Sig2_0_14_port, G(13) => 
                           Sig2_0_13_port, G(12) => Sig2_0_12_port, G(11) => 
                           Sig2_0_11_port, G(10) => Sig2_0_10_port, G(9) => 
                           Sig2_0_9_port, G(8) => Sig2_0_8_port, G(7) => 
                           Sig2_0_7_port, G(6) => Sig2_0_6_port, G(5) => 
                           Sig2_0_5_port, G(4) => Sig2_0_4_port, G(3) => 
                           Sig2_0_3_port, G(2) => Sig2_0_2_port, G(1) => 
                           Sig2_0_1_port, G(0) => Sig2_0_0_port);
   m_blockG_1_1 : G_0 port map( P_ik => Sig1_0_1_port, G_ik => Sig2_0_1_port, 
                           Gk_1j => Sig2_0_0_port, G_ij => Sig2_1_1_port);
   m_blockPG_1_3 : Pg_0 port map( P_ik => Sig1_0_3_port, G_ik => Sig2_0_3_port,
                           Gk_1j => Sig2_0_2_port, Pk_1j => Sig1_0_2_port, G_ij
                           => Sig2_1_3_port, P_ij => Sig1_1_3_port);
   m_blockPG_1_5 : Pg_26 port map( P_ik => Sig1_0_5_port, G_ik => Sig2_0_5_port
                           , Gk_1j => Sig2_0_4_port, Pk_1j => Sig1_0_4_port, 
                           G_ij => Sig2_1_5_port, P_ij => Sig1_1_5_port);
   m_blockPG_1_7 : Pg_25 port map( P_ik => Sig1_0_7_port, G_ik => Sig2_0_7_port
                           , Gk_1j => Sig2_0_6_port, Pk_1j => Sig1_0_6_port, 
                           G_ij => Sig2_1_7_port, P_ij => Sig1_1_7_port);
   m_blockPG_1_9 : Pg_24 port map( P_ik => Sig1_0_9_port, G_ik => Sig2_0_9_port
                           , Gk_1j => Sig2_0_8_port, Pk_1j => Sig1_0_8_port, 
                           G_ij => Sig2_1_9_port, P_ij => Sig1_1_9_port);
   m_blockPG_1_11 : Pg_23 port map( P_ik => Sig1_0_11_port, G_ik => 
                           Sig2_0_11_port, Gk_1j => Sig2_0_10_port, Pk_1j => 
                           Sig1_0_10_port, G_ij => Sig2_1_11_port, P_ij => 
                           Sig1_1_11_port);
   m_blockPG_1_13 : Pg_22 port map( P_ik => Sig1_0_13_port, G_ik => 
                           Sig2_0_13_port, Gk_1j => Sig2_0_12_port, Pk_1j => 
                           Sig1_0_12_port, G_ij => Sig2_1_13_port, P_ij => 
                           Sig1_1_13_port);
   m_blockPG_1_15 : Pg_21 port map( P_ik => Sig1_0_15_port, G_ik => 
                           Sig2_0_15_port, Gk_1j => Sig2_0_14_port, Pk_1j => 
                           Sig1_0_14_port, G_ij => Sig2_1_15_port, P_ij => 
                           Sig1_1_15_port);
   m_blockPG_1_17 : Pg_20 port map( P_ik => Sig1_0_17_port, G_ik => 
                           Sig2_0_17_port, Gk_1j => Sig2_0_16_port, Pk_1j => 
                           Sig1_0_16_port, G_ij => Sig2_1_17_port, P_ij => 
                           Sig1_1_17_port);
   m_blockPG_1_19 : Pg_19 port map( P_ik => Sig1_0_19_port, G_ik => 
                           Sig2_0_19_port, Gk_1j => Sig2_0_18_port, Pk_1j => 
                           Sig1_0_18_port, G_ij => Sig2_1_19_port, P_ij => 
                           Sig1_1_19_port);
   m_blockPG_1_21 : Pg_18 port map( P_ik => Sig1_0_21_port, G_ik => 
                           Sig2_0_21_port, Gk_1j => Sig2_0_20_port, Pk_1j => 
                           Sig1_0_20_port, G_ij => Sig2_1_21_port, P_ij => 
                           Sig1_1_21_port);
   m_blockPG_1_23 : Pg_17 port map( P_ik => Sig1_0_23_port, G_ik => 
                           Sig2_0_23_port, Gk_1j => Sig2_0_22_port, Pk_1j => 
                           Sig1_0_22_port, G_ij => Sig2_1_23_port, P_ij => 
                           Sig1_1_23_port);
   m_blockPG_1_25 : Pg_16 port map( P_ik => Sig1_0_25_port, G_ik => 
                           Sig2_0_25_port, Gk_1j => Sig2_0_24_port, Pk_1j => 
                           Sig1_0_24_port, G_ij => Sig2_1_25_port, P_ij => 
                           Sig1_1_25_port);
   m_blockPG_1_27 : Pg_15 port map( P_ik => Sig1_0_27_port, G_ik => 
                           Sig2_0_27_port, Gk_1j => Sig2_0_26_port, Pk_1j => 
                           Sig1_0_26_port, G_ij => Sig2_1_27_port, P_ij => 
                           Sig1_1_27_port);
   m_blockPG_1_29 : Pg_14 port map( P_ik => Sig1_0_29_port, G_ik => 
                           Sig2_0_29_port, Gk_1j => Sig2_0_28_port, Pk_1j => 
                           Sig1_0_28_port, G_ij => Sig2_1_29_port, P_ij => 
                           Sig1_1_29_port);
   m_blockPG_1_31 : Pg_13 port map( P_ik => Sig1_0_31_port, G_ik => 
                           Sig2_0_31_port, Gk_1j => Sig2_0_30_port, Pk_1j => 
                           Sig1_0_30_port, G_ij => Sig2_1_31_port, P_ij => 
                           Sig1_1_31_port);
   m_blockG_2_3 : G_8 port map( P_ik => Sig1_1_3_port, G_ik => Sig2_1_3_port, 
                           Gk_1j => Sig2_1_1_port, G_ij => cout_1_port);
   m_blockPG_2_7 : Pg_12 port map( P_ik => Sig1_1_7_port, G_ik => Sig2_1_7_port
                           , Gk_1j => Sig2_1_5_port, Pk_1j => Sig1_1_5_port, 
                           G_ij => Sig2_2_7_port, P_ij => Sig1_2_7_port);
   m_blockPG_2_11 : Pg_11 port map( P_ik => Sig1_1_11_port, G_ik => 
                           Sig2_1_11_port, Gk_1j => Sig2_1_9_port, Pk_1j => 
                           Sig1_1_9_port, G_ij => Sig2_3_11_port, P_ij => 
                           Sig1_3_11_port);
   m_blockPG_2_15 : Pg_10 port map( P_ik => Sig1_1_15_port, G_ik => 
                           Sig2_1_15_port, Gk_1j => Sig2_1_13_port, Pk_1j => 
                           Sig1_1_13_port, G_ij => Sig2_2_15_port, P_ij => 
                           Sig1_2_15_port);
   m_blockPG_2_19 : Pg_9 port map( P_ik => Sig1_1_19_port, G_ik => 
                           Sig2_1_19_port, Gk_1j => Sig2_1_17_port, Pk_1j => 
                           Sig1_1_17_port, G_ij => Sig2_3_19_port, P_ij => 
                           Sig1_3_19_port);
   m_blockPG_2_23 : Pg_8 port map( P_ik => Sig1_1_23_port, G_ik => 
                           Sig2_1_23_port, Gk_1j => Sig2_1_21_port, Pk_1j => 
                           Sig1_1_21_port, G_ij => Sig2_2_23_port, P_ij => 
                           Sig1_2_23_port);
   m_blockPG_2_27 : Pg_7 port map( P_ik => Sig1_1_27_port, G_ik => 
                           Sig2_1_27_port, Gk_1j => Sig2_1_25_port, Pk_1j => 
                           Sig1_1_25_port, G_ij => Sig2_3_27_port, P_ij => 
                           Sig1_3_27_port);
   m_blockPG_2_31 : Pg_6 port map( P_ik => Sig1_1_31_port, G_ik => 
                           Sig2_1_31_port, Gk_1j => Sig2_1_29_port, Pk_1j => 
                           Sig1_1_29_port, G_ij => Sig2_2_31_port, P_ij => 
                           Sig1_2_31_port);
   m1_blockG_3_7 : G_7 port map( P_ik => Sig1_2_7_port, G_ik => Sig2_2_7_port, 
                           Gk_1j => cout_1_port, G_ij => cout_2_port);
   m1_blockPG_3_15 : Pg_5 port map( P_ik => Sig1_2_15_port, G_ik => 
                           Sig2_2_15_port, Gk_1j => Sig2_3_11_port, Pk_1j => 
                           Sig1_3_11_port, G_ij => Sig2_3_15_port, P_ij => 
                           Sig1_3_15_port);
   m1_blockPG_3_23 : Pg_4 port map( P_ik => Sig1_2_23_port, G_ik => 
                           Sig2_2_23_port, Gk_1j => Sig2_3_19_port, Pk_1j => 
                           Sig1_3_19_port, G_ij => Sig2_4_23_port, P_ij => 
                           Sig1_4_23_port);
   m1_blockPG_3_31 : Pg_3 port map( P_ik => Sig1_2_31_port, G_ik => 
                           Sig2_2_31_port, Gk_1j => Sig2_3_27_port, Pk_1j => 
                           Sig1_3_27_port, G_ij => Sig2_3_31_port, P_ij => 
                           Sig1_3_31_port);
   m1_blockG_4_11 : G_6 port map( P_ik => Sig1_3_11_port, G_ik => 
                           Sig2_3_11_port, Gk_1j => cout_2_port, G_ij => 
                           cout_3_port);
   m1_blockG_4_15 : G_5 port map( P_ik => Sig1_3_15_port, G_ik => 
                           Sig2_3_15_port, Gk_1j => cout_2_port, G_ij => 
                           cout_4_port);
   m1_blockPG_4_27 : Pg_2 port map( P_ik => Sig1_3_27_port, G_ik => 
                           Sig2_3_27_port, Gk_1j => Sig2_4_23_port, Pk_1j => 
                           Sig1_4_23_port, G_ij => Sig2_4_27_port, P_ij => 
                           Sig1_4_27_port);
   m1_blockPG_4_31 : Pg_1 port map( P_ik => Sig1_3_31_port, G_ik => 
                           Sig2_3_31_port, Gk_1j => Sig2_4_23_port, Pk_1j => 
                           Sig1_4_23_port, G_ij => Sig2_4_31_port, P_ij => 
                           Sig1_4_31_port);
   m1_blockG_5_19 : G_4 port map( P_ik => Sig1_3_19_port, G_ik => 
                           Sig2_3_19_port, Gk_1j => cout_4_port, G_ij => 
                           cout_5_port);
   m1_blockG_5_23 : G_3 port map( P_ik => Sig1_4_23_port, G_ik => 
                           Sig2_4_23_port, Gk_1j => cout_4_port, G_ij => 
                           cout_6_port);
   m1_blockG_5_27 : G_2 port map( P_ik => Sig1_4_27_port, G_ik => 
                           Sig2_4_27_port, Gk_1j => cout_4_port, G_ij => 
                           cout_7_port);
   m1_blockG_5_31 : G_1 port map( P_ik => Sig1_4_31_port, G_ik => 
                           Sig2_4_31_port, Gk_1j => cout_4_port, G_ij => 
                           cout_8_port);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity p4_adder is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  S : 
         out std_logic_vector (31 downto 0);  Cout : out std_logic);

end p4_adder;

architecture SYN_structural of p4_adder is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component sum_generator_NBIT_PER_BLOCK4_NBLOCKS8
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector
            (7 downto 0);  S : out std_logic_vector (31 downto 0));
   end component;
   
   component sparseTree_NBIT32_NBIT_PER_BLOCK4
      port( A, B : in std_logic_vector (31 downto 0);  cin : in std_logic;  
            cout : out std_logic_vector (8 downto 0));
   end component;
   
   signal bxor_31_port, bxor_30_port, bxor_29_port, bxor_28_port, bxor_27_port,
      bxor_26_port, bxor_25_port, bxor_24_port, bxor_23_port, bxor_22_port, 
      bxor_21_port, bxor_20_port, bxor_19_port, bxor_18_port, bxor_17_port, 
      bxor_16_port, bxor_15_port, bxor_14_port, bxor_13_port, bxor_12_port, 
      bxor_11_port, bxor_10_port, bxor_9_port, bxor_8_port, bxor_7_port, 
      bxor_6_port, bxor_5_port, bxor_4_port, bxor_3_port, bxor_2_port, 
      bxor_1_port, bxor_0_port, carries_7_port, carries_6_port, carries_5_port,
      carries_4_port, carries_3_port, carries_2_port, carries_1_port, 
      carries_0_port : std_logic;

begin
   
   carrygen : sparseTree_NBIT32_NBIT_PER_BLOCK4 port map( A(31) => A(31), A(30)
                           => A(30), A(29) => A(29), A(28) => A(28), A(27) => 
                           A(27), A(26) => A(26), A(25) => A(25), A(24) => 
                           A(24), A(23) => A(23), A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), B(31) => bxor_31_port, B(30) 
                           => bxor_30_port, B(29) => bxor_29_port, B(28) => 
                           bxor_28_port, B(27) => bxor_27_port, B(26) => 
                           bxor_26_port, B(25) => bxor_25_port, B(24) => 
                           bxor_24_port, B(23) => bxor_23_port, B(22) => 
                           bxor_22_port, B(21) => bxor_21_port, B(20) => 
                           bxor_20_port, B(19) => bxor_19_port, B(18) => 
                           bxor_18_port, B(17) => bxor_17_port, B(16) => 
                           bxor_16_port, B(15) => bxor_15_port, B(14) => 
                           bxor_14_port, B(13) => bxor_13_port, B(12) => 
                           bxor_12_port, B(11) => bxor_11_port, B(10) => 
                           bxor_10_port, B(9) => bxor_9_port, B(8) => 
                           bxor_8_port, B(7) => bxor_7_port, B(6) => 
                           bxor_6_port, B(5) => bxor_5_port, B(4) => 
                           bxor_4_port, B(3) => bxor_3_port, B(2) => 
                           bxor_2_port, B(1) => bxor_1_port, B(0) => 
                           bxor_0_port, cin => Cin, cout(8) => Cout, cout(7) =>
                           carries_7_port, cout(6) => carries_6_port, cout(5) 
                           => carries_5_port, cout(4) => carries_4_port, 
                           cout(3) => carries_3_port, cout(2) => carries_2_port
                           , cout(1) => carries_1_port, cout(0) => 
                           carries_0_port);
   carrysel : sum_generator_NBIT_PER_BLOCK4_NBLOCKS8 port map( A(31) => A(31), 
                           A(30) => A(30), A(29) => A(29), A(28) => A(28), 
                           A(27) => A(27), A(26) => A(26), A(25) => A(25), 
                           A(24) => A(24), A(23) => A(23), A(22) => A(22), 
                           A(21) => A(21), A(20) => A(20), A(19) => A(19), 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(31) => 
                           bxor_31_port, B(30) => bxor_30_port, B(29) => 
                           bxor_29_port, B(28) => bxor_28_port, B(27) => 
                           bxor_27_port, B(26) => bxor_26_port, B(25) => 
                           bxor_25_port, B(24) => bxor_24_port, B(23) => 
                           bxor_23_port, B(22) => bxor_22_port, B(21) => 
                           bxor_21_port, B(20) => bxor_20_port, B(19) => 
                           bxor_19_port, B(18) => bxor_18_port, B(17) => 
                           bxor_17_port, B(16) => bxor_16_port, B(15) => 
                           bxor_15_port, B(14) => bxor_14_port, B(13) => 
                           bxor_13_port, B(12) => bxor_12_port, B(11) => 
                           bxor_11_port, B(10) => bxor_10_port, B(9) => 
                           bxor_9_port, B(8) => bxor_8_port, B(7) => 
                           bxor_7_port, B(6) => bxor_6_port, B(5) => 
                           bxor_5_port, B(4) => bxor_4_port, B(3) => 
                           bxor_3_port, B(2) => bxor_2_port, B(1) => 
                           bxor_1_port, B(0) => bxor_0_port, Ci(7) => 
                           carries_7_port, Ci(6) => carries_6_port, Ci(5) => 
                           carries_5_port, Ci(4) => carries_4_port, Ci(3) => 
                           carries_3_port, Ci(2) => carries_2_port, Ci(1) => 
                           carries_1_port, Ci(0) => carries_0_port, S(31) => 
                           S(31), S(30) => S(30), S(29) => S(29), S(28) => 
                           S(28), S(27) => S(27), S(26) => S(26), S(25) => 
                           S(25), S(24) => S(24), S(23) => S(23), S(22) => 
                           S(22), S(21) => S(21), S(20) => S(20), S(19) => 
                           S(19), S(18) => S(18), S(17) => S(17), S(16) => 
                           S(16), S(15) => S(15), S(14) => S(14), S(13) => 
                           S(13), S(12) => S(12), S(11) => S(11), S(10) => 
                           S(10), S(9) => S(9), S(8) => S(8), S(7) => S(7), 
                           S(6) => S(6), S(5) => S(5), S(4) => S(4), S(3) => 
                           S(3), S(2) => S(2), S(1) => S(1), S(0) => S(0));
   U33 : XOR2_X1 port map( A => Cin, B => B(9), Z => bxor_9_port);
   U34 : XOR2_X1 port map( A => Cin, B => B(8), Z => bxor_8_port);
   U35 : XOR2_X1 port map( A => Cin, B => B(7), Z => bxor_7_port);
   U36 : XOR2_X1 port map( A => Cin, B => B(6), Z => bxor_6_port);
   U37 : XOR2_X1 port map( A => Cin, B => B(5), Z => bxor_5_port);
   U38 : XOR2_X1 port map( A => Cin, B => B(4), Z => bxor_4_port);
   U39 : XOR2_X1 port map( A => Cin, B => B(3), Z => bxor_3_port);
   U40 : XOR2_X1 port map( A => Cin, B => B(31), Z => bxor_31_port);
   U41 : XOR2_X1 port map( A => Cin, B => B(30), Z => bxor_30_port);
   U42 : XOR2_X1 port map( A => Cin, B => B(2), Z => bxor_2_port);
   U43 : XOR2_X1 port map( A => Cin, B => B(29), Z => bxor_29_port);
   U44 : XOR2_X1 port map( A => Cin, B => B(28), Z => bxor_28_port);
   U45 : XOR2_X1 port map( A => Cin, B => B(27), Z => bxor_27_port);
   U46 : XOR2_X1 port map( A => Cin, B => B(26), Z => bxor_26_port);
   U47 : XOR2_X1 port map( A => Cin, B => B(25), Z => bxor_25_port);
   U48 : XOR2_X1 port map( A => Cin, B => B(24), Z => bxor_24_port);
   U49 : XOR2_X1 port map( A => Cin, B => B(23), Z => bxor_23_port);
   U50 : XOR2_X1 port map( A => Cin, B => B(22), Z => bxor_22_port);
   U51 : XOR2_X1 port map( A => Cin, B => B(21), Z => bxor_21_port);
   U52 : XOR2_X1 port map( A => Cin, B => B(20), Z => bxor_20_port);
   U53 : XOR2_X1 port map( A => Cin, B => B(1), Z => bxor_1_port);
   U54 : XOR2_X1 port map( A => Cin, B => B(19), Z => bxor_19_port);
   U55 : XOR2_X1 port map( A => Cin, B => B(18), Z => bxor_18_port);
   U56 : XOR2_X1 port map( A => Cin, B => B(17), Z => bxor_17_port);
   U57 : XOR2_X1 port map( A => Cin, B => B(16), Z => bxor_16_port);
   U58 : XOR2_X1 port map( A => Cin, B => B(15), Z => bxor_15_port);
   U59 : XOR2_X1 port map( A => Cin, B => B(14), Z => bxor_14_port);
   U60 : XOR2_X1 port map( A => Cin, B => B(13), Z => bxor_13_port);
   U61 : XOR2_X1 port map( A => Cin, B => B(12), Z => bxor_12_port);
   U62 : XOR2_X1 port map( A => Cin, B => B(11), Z => bxor_11_port);
   U63 : XOR2_X1 port map( A => Cin, B => B(10), Z => bxor_10_port);
   U64 : XOR2_X1 port map( A => Cin, B => B(0), Z => bxor_0_port);

end SYN_structural;
