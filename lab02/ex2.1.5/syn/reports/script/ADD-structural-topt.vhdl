
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_p4_adder is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_p4_adder;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Carryselect_NBIT4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end Carryselect_NBIT4_6;

architecture SYN_BEHAVIORAL of Carryselect_NBIT4_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
      n38, n39, n40, n41, n42, n43, n44, n45, n46 : std_logic;

begin
   
   U22 : XOR2_X1 port map( A => n40, B => n39, Z => n41);
   U23 : XOR2_X1 port map( A => n36, B => n39, Z => n42);
   U24 : XOR2_X1 port map( A => B(3), B => A(3), Z => n39);
   U25 : XOR2_X1 port map( A => n32, B => n37, Z => n33);
   U26 : XOR2_X1 port map( A => n32, B => n35, Z => n34);
   U27 : XOR2_X1 port map( A => n30, B => n26, Z => n27);
   U28 : XOR2_X1 port map( A => A(1), B => B(1), Z => n26);
   U2 : AOI22_X1 port map( A1 => n44, A2 => n46, B1 => n31, B2 => n30, ZN => 
                           n37);
   U3 : AOI22_X1 port map( A1 => n44, A2 => n46, B1 => n29, B2 => n31, ZN => 
                           n35);
   U4 : INV_X1 port map( A => n29, ZN => n45);
   U5 : XNOR2_X1 port map( A => n45, B => n26, ZN => n28);
   U6 : XNOR2_X1 port map( A => A(0), B => B(0), ZN => n25);
   U7 : NOR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n30);
   U8 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n29);
   U9 : INV_X1 port map( A => A(1), ZN => n46);
   U10 : OAI22_X1 port map( A1 => B(2), A2 => A(2), B1 => n38, B2 => n37, ZN =>
                           n40);
   U11 : OAI22_X1 port map( A1 => B(2), A2 => A(2), B1 => n35, B2 => n38, ZN =>
                           n36);
   U12 : AND2_X1 port map( A1 => B(2), A2 => A(2), ZN => n38);
   U13 : XNOR2_X1 port map( A => A(2), B => B(2), ZN => n32);
   U14 : INV_X1 port map( A => B(1), ZN => n44);
   U15 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n31);
   U16 : OAI22_X1 port map( A1 => Ci, A2 => n28, B1 => n43, B2 => n27, ZN => 
                           S(1));
   U17 : OAI21_X1 port map( B1 => Ci, B2 => n25, A => n24, ZN => S(0));
   U18 : OAI22_X1 port map( A1 => Ci, A2 => n42, B1 => n41, B2 => n43, ZN => 
                           S(3));
   U19 : OAI22_X1 port map( A1 => Ci, A2 => n34, B1 => n33, B2 => n43, ZN => 
                           S(2));
   U20 : OAI21_X1 port map( B1 => n30, B2 => n45, A => Ci, ZN => n24);
   U21 : INV_X1 port map( A => Ci, ZN => n43);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Carryselect_NBIT4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end Carryselect_NBIT4_5;

architecture SYN_BEHAVIORAL of Carryselect_NBIT4_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
      n38, n39, n40, n41, n42, n43, n44, n45, n46 : std_logic;

begin
   
   U22 : XOR2_X1 port map( A => n40, B => n39, Z => n41);
   U23 : XOR2_X1 port map( A => n36, B => n39, Z => n42);
   U24 : XOR2_X1 port map( A => B(3), B => A(3), Z => n39);
   U25 : XOR2_X1 port map( A => n32, B => n37, Z => n33);
   U26 : XOR2_X1 port map( A => n32, B => n35, Z => n34);
   U27 : XOR2_X1 port map( A => n30, B => n26, Z => n27);
   U28 : XOR2_X1 port map( A => A(1), B => B(1), Z => n26);
   U2 : INV_X1 port map( A => Ci, ZN => n43);
   U3 : INV_X1 port map( A => B(1), ZN => n44);
   U4 : AOI22_X1 port map( A1 => n44, A2 => n46, B1 => n31, B2 => n30, ZN => 
                           n37);
   U5 : AOI22_X1 port map( A1 => n44, A2 => n46, B1 => n29, B2 => n31, ZN => 
                           n35);
   U6 : INV_X1 port map( A => n29, ZN => n45);
   U7 : OAI22_X1 port map( A1 => Ci, A2 => n34, B1 => n33, B2 => n43, ZN => 
                           S(2));
   U8 : XNOR2_X1 port map( A => A(2), B => B(2), ZN => n32);
   U9 : OAI22_X1 port map( A1 => Ci, A2 => n42, B1 => n41, B2 => n43, ZN => 
                           S(3));
   U10 : OAI22_X1 port map( A1 => Ci, A2 => n28, B1 => n43, B2 => n27, ZN => 
                           S(1));
   U11 : XNOR2_X1 port map( A => n45, B => n26, ZN => n28);
   U12 : OAI21_X1 port map( B1 => Ci, B2 => n25, A => n24, ZN => S(0));
   U13 : XNOR2_X1 port map( A => A(0), B => B(0), ZN => n25);
   U14 : OAI21_X1 port map( B1 => n30, B2 => n45, A => Ci, ZN => n24);
   U15 : NOR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n30);
   U16 : OAI22_X1 port map( A1 => B(2), A2 => A(2), B1 => n38, B2 => n37, ZN =>
                           n40);
   U17 : OAI22_X1 port map( A1 => B(2), A2 => A(2), B1 => n35, B2 => n38, ZN =>
                           n36);
   U18 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n31);
   U19 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n29);
   U20 : AND2_X1 port map( A1 => B(2), A2 => A(2), ZN => n38);
   U21 : INV_X1 port map( A => A(1), ZN => n46);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Carryselect_NBIT4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end Carryselect_NBIT4_4;

architecture SYN_BEHAVIORAL of Carryselect_NBIT4_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
      n38, n39, n40, n41, n42, n43, n44, n45, n46 : std_logic;

begin
   
   U22 : XOR2_X1 port map( A => n40, B => n39, Z => n41);
   U23 : XOR2_X1 port map( A => n36, B => n39, Z => n42);
   U24 : XOR2_X1 port map( A => B(3), B => A(3), Z => n39);
   U25 : XOR2_X1 port map( A => n32, B => n37, Z => n33);
   U26 : XOR2_X1 port map( A => n32, B => n35, Z => n34);
   U27 : XOR2_X1 port map( A => n30, B => n26, Z => n27);
   U28 : XOR2_X1 port map( A => A(1), B => B(1), Z => n26);
   U2 : AOI22_X1 port map( A1 => n44, A2 => n46, B1 => n31, B2 => n30, ZN => 
                           n37);
   U3 : AOI22_X1 port map( A1 => n44, A2 => n46, B1 => n29, B2 => n31, ZN => 
                           n35);
   U4 : INV_X1 port map( A => n29, ZN => n45);
   U5 : XNOR2_X1 port map( A => n45, B => n26, ZN => n28);
   U6 : XNOR2_X1 port map( A => A(0), B => B(0), ZN => n25);
   U7 : NOR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n30);
   U8 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n29);
   U9 : INV_X1 port map( A => A(1), ZN => n46);
   U10 : OAI22_X1 port map( A1 => B(2), A2 => A(2), B1 => n38, B2 => n37, ZN =>
                           n40);
   U11 : OAI22_X1 port map( A1 => B(2), A2 => A(2), B1 => n35, B2 => n38, ZN =>
                           n36);
   U12 : AND2_X1 port map( A1 => B(2), A2 => A(2), ZN => n38);
   U13 : XNOR2_X1 port map( A => A(2), B => B(2), ZN => n32);
   U14 : INV_X1 port map( A => B(1), ZN => n44);
   U15 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n31);
   U16 : OAI22_X1 port map( A1 => Ci, A2 => n28, B1 => n43, B2 => n27, ZN => 
                           S(1));
   U17 : OAI21_X1 port map( B1 => Ci, B2 => n25, A => n24, ZN => S(0));
   U18 : OAI22_X1 port map( A1 => Ci, A2 => n42, B1 => n41, B2 => n43, ZN => 
                           S(3));
   U19 : OAI22_X1 port map( A1 => Ci, A2 => n34, B1 => n33, B2 => n43, ZN => 
                           S(2));
   U20 : OAI21_X1 port map( B1 => n30, B2 => n45, A => Ci, ZN => n24);
   U21 : INV_X1 port map( A => Ci, ZN => n43);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Carryselect_NBIT4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end Carryselect_NBIT4_3;

architecture SYN_BEHAVIORAL of Carryselect_NBIT4_3 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
      n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49 : std_logic;

begin
   
   U22 : XOR2_X1 port map( A => n43, B => n42, Z => n44);
   U23 : XOR2_X1 port map( A => n39, B => n42, Z => n45);
   U24 : XOR2_X1 port map( A => B(3), B => A(3), Z => n42);
   U25 : XOR2_X1 port map( A => n35, B => n40, Z => n36);
   U26 : XOR2_X1 port map( A => n35, B => n38, Z => n37);
   U27 : XOR2_X1 port map( A => n33, B => n29, Z => n30);
   U28 : XOR2_X1 port map( A => A(1), B => B(1), Z => n29);
   U2 : CLKBUF_X1 port map( A => Ci, Z => n24);
   U3 : CLKBUF_X1 port map( A => Ci, Z => n25);
   U4 : BUF_X1 port map( A => Ci, Z => n26);
   U5 : INV_X1 port map( A => B(1), ZN => n47);
   U6 : AOI22_X1 port map( A1 => n47, A2 => n49, B1 => n34, B2 => n33, ZN => 
                           n40);
   U7 : AOI22_X1 port map( A1 => n47, A2 => n49, B1 => n32, B2 => n34, ZN => 
                           n38);
   U8 : INV_X1 port map( A => n32, ZN => n48);
   U9 : XNOR2_X1 port map( A => A(2), B => B(2), ZN => n35);
   U10 : XNOR2_X1 port map( A => n48, B => n29, ZN => n31);
   U11 : XNOR2_X1 port map( A => A(0), B => B(0), ZN => n28);
   U12 : NOR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n33);
   U13 : OAI22_X1 port map( A1 => B(2), A2 => A(2), B1 => n41, B2 => n40, ZN =>
                           n43);
   U14 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n34);
   U15 : OAI22_X1 port map( A1 => B(2), A2 => A(2), B1 => n38, B2 => n41, ZN =>
                           n39);
   U16 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n32);
   U17 : AND2_X1 port map( A1 => B(2), A2 => A(2), ZN => n41);
   U18 : INV_X1 port map( A => A(1), ZN => n49);
   U19 : INV_X1 port map( A => Ci, ZN => n46);
   U20 : OAI22_X1 port map( A1 => n24, A2 => n45, B1 => n44, B2 => n46, ZN => 
                           S(3));
   U21 : OAI22_X1 port map( A1 => n25, A2 => n37, B1 => n36, B2 => n46, ZN => 
                           S(2));
   U29 : OAI22_X1 port map( A1 => n26, A2 => n31, B1 => n46, B2 => n30, ZN => 
                           S(1));
   U30 : OAI21_X1 port map( B1 => n26, B2 => n28, A => n27, ZN => S(0));
   U31 : OAI21_X1 port map( B1 => n33, B2 => n48, A => Ci, ZN => n27);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Carryselect_NBIT4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end Carryselect_NBIT4_2;

architecture SYN_BEHAVIORAL of Carryselect_NBIT4_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
      n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48 : std_logic;

begin
   
   U22 : XOR2_X1 port map( A => n42, B => n41, Z => n43);
   U23 : XOR2_X1 port map( A => n38, B => n41, Z => n44);
   U24 : XOR2_X1 port map( A => B(3), B => A(3), Z => n41);
   U25 : XOR2_X1 port map( A => n34, B => n39, Z => n35);
   U26 : XOR2_X1 port map( A => n34, B => n37, Z => n36);
   U27 : XOR2_X1 port map( A => n32, B => n28, Z => n29);
   U28 : XOR2_X1 port map( A => A(1), B => B(1), Z => n28);
   U2 : BUF_X1 port map( A => Ci, Z => n24);
   U3 : CLKBUF_X1 port map( A => Ci, Z => n25);
   U4 : AOI22_X1 port map( A1 => n46, A2 => n48, B1 => n33, B2 => n32, ZN => 
                           n39);
   U5 : AOI22_X1 port map( A1 => n46, A2 => n48, B1 => n31, B2 => n33, ZN => 
                           n37);
   U6 : INV_X1 port map( A => B(1), ZN => n46);
   U7 : INV_X1 port map( A => n31, ZN => n47);
   U8 : XNOR2_X1 port map( A => A(2), B => B(2), ZN => n34);
   U9 : XNOR2_X1 port map( A => n47, B => n28, ZN => n30);
   U10 : XNOR2_X1 port map( A => A(0), B => B(0), ZN => n27);
   U11 : NOR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n32);
   U12 : OAI22_X1 port map( A1 => B(2), A2 => A(2), B1 => n40, B2 => n39, ZN =>
                           n42);
   U13 : OAI22_X1 port map( A1 => B(2), A2 => A(2), B1 => n37, B2 => n40, ZN =>
                           n38);
   U14 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n31);
   U15 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n33);
   U16 : AND2_X1 port map( A1 => B(2), A2 => A(2), ZN => n40);
   U17 : INV_X1 port map( A => A(1), ZN => n48);
   U18 : OAI22_X1 port map( A1 => n25, A2 => n30, B1 => n45, B2 => n29, ZN => 
                           S(1));
   U19 : OAI21_X1 port map( B1 => n24, B2 => n27, A => n26, ZN => S(0));
   U20 : OAI22_X1 port map( A1 => n24, A2 => n44, B1 => n43, B2 => n45, ZN => 
                           S(3));
   U21 : OAI22_X1 port map( A1 => n24, A2 => n36, B1 => n35, B2 => n45, ZN => 
                           S(2));
   U29 : OAI21_X1 port map( B1 => n32, B2 => n47, A => Ci, ZN => n26);
   U30 : INV_X1 port map( A => Ci, ZN => n45);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Carryselect_NBIT4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end Carryselect_NBIT4_1;

architecture SYN_BEHAVIORAL of Carryselect_NBIT4_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
      n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48 : std_logic;

begin
   
   U22 : XOR2_X1 port map( A => n42, B => n41, Z => n43);
   U23 : XOR2_X1 port map( A => n38, B => n41, Z => n44);
   U24 : XOR2_X1 port map( A => B(3), B => A(3), Z => n41);
   U25 : XOR2_X1 port map( A => n34, B => n39, Z => n35);
   U26 : XOR2_X1 port map( A => n34, B => n37, Z => n36);
   U27 : XOR2_X1 port map( A => n32, B => n28, Z => n29);
   U28 : XOR2_X1 port map( A => A(1), B => B(1), Z => n28);
   U2 : CLKBUF_X1 port map( A => Ci, Z => n25);
   U3 : CLKBUF_X1 port map( A => Ci, Z => n24);
   U4 : AOI22_X1 port map( A1 => n46, A2 => n48, B1 => n33, B2 => n32, ZN => 
                           n39);
   U5 : AOI22_X1 port map( A1 => n46, A2 => n48, B1 => n31, B2 => n33, ZN => 
                           n37);
   U6 : INV_X1 port map( A => B(1), ZN => n46);
   U7 : INV_X1 port map( A => n31, ZN => n47);
   U8 : XNOR2_X1 port map( A => A(2), B => B(2), ZN => n34);
   U9 : XNOR2_X1 port map( A => n47, B => n28, ZN => n30);
   U10 : XNOR2_X1 port map( A => A(0), B => B(0), ZN => n27);
   U11 : NOR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n32);
   U12 : OAI22_X1 port map( A1 => B(2), A2 => A(2), B1 => n40, B2 => n39, ZN =>
                           n42);
   U13 : OAI22_X1 port map( A1 => B(2), A2 => A(2), B1 => n37, B2 => n40, ZN =>
                           n38);
   U14 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n31);
   U15 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n33);
   U16 : AND2_X1 port map( A1 => B(2), A2 => A(2), ZN => n40);
   U17 : INV_X1 port map( A => A(1), ZN => n48);
   U18 : OAI22_X1 port map( A1 => n25, A2 => n30, B1 => n45, B2 => n29, ZN => 
                           S(1));
   U19 : OAI21_X1 port map( B1 => n25, B2 => n27, A => n26, ZN => S(0));
   U20 : OAI22_X1 port map( A1 => n24, A2 => n44, B1 => n43, B2 => n45, ZN => 
                           S(3));
   U21 : OAI22_X1 port map( A1 => n24, A2 => n36, B1 => n35, B2 => n45, ZN => 
                           S(2));
   U29 : OAI21_X1 port map( B1 => n32, B2 => n47, A => Ci, ZN => n26);
   U30 : INV_X1 port map( A => Ci, ZN => n45);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_25 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_25;

architecture SYN_behavioral of Pg_25 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);

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
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AND2_X1 port map( A1 => P_ik, A2 => Pk_1j, ZN => P_ij);
   U3 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_23 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_23;

architecture SYN_behavioral of Pg_23 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_22 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_22;

architecture SYN_behavioral of Pg_22 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_21 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_21;

architecture SYN_behavioral of Pg_21 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);
   U3 : AND2_X1 port map( A1 => P_ik, A2 => Pk_1j, ZN => P_ij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_20 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_20;

architecture SYN_behavioral of Pg_20 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_19 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_19;

architecture SYN_behavioral of Pg_19 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_18 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_18;

architecture SYN_behavioral of Pg_18 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_17 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_17;

architecture SYN_behavioral of Pg_17 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_16 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_16;

architecture SYN_behavioral of Pg_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => P_ik, Z => n3);
   U2 : INV_X1 port map( A => n4, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n4);
   U4 : AND2_X1 port map( A1 => Pk_1j, A2 => n3, ZN => P_ij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_15 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_15;

architecture SYN_behavioral of Pg_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_14 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_14;

architecture SYN_behavioral of Pg_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_13 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_13;

architecture SYN_behavioral of Pg_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);

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
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n3, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);

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
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n3, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n3);

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
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n3, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_9 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_9;

architecture SYN_behavioral of Pg_9 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);
   U2 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U3 : INV_X1 port map( A => n3, ZN => G_ij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_8 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_8;

architecture SYN_behavioral of Pg_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);
   U2 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U3 : INV_X1 port map( A => n3, ZN => G_ij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_7 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_7;

architecture SYN_behavioral of Pg_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_6 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_6;

architecture SYN_behavioral of Pg_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => G_ij);
   U3 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_5 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_5;

architecture SYN_behavioral of Pg_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);
   U3 : INV_X1 port map( A => n3, ZN => G_ij);

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
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n3, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_3 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_3;

architecture SYN_behavioral of Pg_3 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);

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
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n3, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);

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
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : INV_X1 port map( A => n3, ZN => G_ij);
   U3 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);

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
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);

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
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);

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
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n3);

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
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n3);

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
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n3);

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
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n3);

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
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n3);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Carryselect_NBIT4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end Carryselect_NBIT4_7;

architecture SYN_BEHAVIORAL of Carryselect_NBIT4_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22, n23 : std_logic;

begin
   
   U22 : XOR2_X1 port map( A => n7, B => n8, Z => n6);
   U23 : XOR2_X1 port map( A => n11, B => n8, Z => n5);
   U24 : XOR2_X1 port map( A => B(3), B => A(3), Z => n8);
   U25 : XOR2_X1 port map( A => n15, B => n10, Z => n14);
   U26 : XOR2_X1 port map( A => n15, B => n12, Z => n13);
   U27 : XOR2_X1 port map( A => n17, B => n21, Z => n20);
   U28 : XOR2_X1 port map( A => A(1), B => B(1), Z => n21);
   U2 : AOI22_X1 port map( A1 => n3, A2 => n1, B1 => n18, B2 => n16, ZN => n12)
                           ;
   U3 : AOI22_X1 port map( A1 => n3, A2 => n1, B1 => n16, B2 => n17, ZN => n10)
                           ;
   U4 : INV_X1 port map( A => n18, ZN => n2);
   U5 : XNOR2_X1 port map( A => n2, B => n21, ZN => n19);
   U6 : INV_X1 port map( A => A(1), ZN => n1);
   U7 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n18);
   U8 : NOR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n17);
   U9 : XNOR2_X1 port map( A => A(0), B => B(0), ZN => n22);
   U10 : OAI22_X1 port map( A1 => B(2), A2 => A(2), B1 => n9, B2 => n10, ZN => 
                           n7);
   U11 : OAI22_X1 port map( A1 => B(2), A2 => A(2), B1 => n12, B2 => n9, ZN => 
                           n11);
   U12 : AND2_X1 port map( A1 => B(2), A2 => A(2), ZN => n9);
   U13 : XNOR2_X1 port map( A => A(2), B => B(2), ZN => n15);
   U14 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n16);
   U15 : INV_X1 port map( A => B(1), ZN => n3);
   U16 : OAI22_X1 port map( A1 => Ci, A2 => n19, B1 => n4, B2 => n20, ZN => 
                           S(1));
   U17 : OAI21_X1 port map( B1 => Ci, B2 => n22, A => n23, ZN => S(0));
   U18 : OAI22_X1 port map( A1 => Ci, A2 => n5, B1 => n6, B2 => n4, ZN => S(3))
                           ;
   U19 : OAI22_X1 port map( A1 => Ci, A2 => n13, B1 => n14, B2 => n4, ZN => 
                           S(2));
   U20 : OAI21_X1 port map( B1 => n17, B2 => n2, A => Ci, ZN => n23);
   U21 : INV_X1 port map( A => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Carryselect_NBIT4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end Carryselect_NBIT4_0;

architecture SYN_BEHAVIORAL of Carryselect_NBIT4_0 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, 
      n17, n18, n19, n20, n21, n22, n23, n24, n25 : std_logic;

begin
   
   U22 : XOR2_X1 port map( A => n7, B => n8, Z => n6);
   U23 : XOR2_X1 port map( A => n11, B => n8, Z => n5);
   U24 : XOR2_X1 port map( A => B(3), B => A(3), Z => n8);
   U25 : XOR2_X1 port map( A => n15, B => n10, Z => n14);
   U26 : XOR2_X1 port map( A => n15, B => n12, Z => n13);
   U27 : XOR2_X1 port map( A => n17, B => n21, Z => n20);
   U28 : XOR2_X1 port map( A => A(1), B => B(1), Z => n21);
   U2 : AOI22_X1 port map( A1 => n3, A2 => n1, B1 => n18, B2 => n16, ZN => n12)
                           ;
   U3 : AOI22_X1 port map( A1 => n3, A2 => n1, B1 => n16, B2 => n17, ZN => n10)
                           ;
   U4 : INV_X1 port map( A => Ci, ZN => n24);
   U5 : OAI22_X1 port map( A1 => Ci, A2 => n19, B1 => n24, B2 => n20, ZN => 
                           S(1));
   U6 : XNOR2_X1 port map( A => n2, B => n21, ZN => n19);
   U7 : OAI22_X1 port map( A1 => Ci, A2 => n13, B1 => n14, B2 => n24, ZN => 
                           S(2));
   U8 : OAI22_X1 port map( A1 => Ci, A2 => n5, B1 => n6, B2 => n24, ZN => S(3))
                           ;
   U9 : INV_X1 port map( A => A(1), ZN => n1);
   U10 : XNOR2_X1 port map( A => A(0), B => B(0), ZN => n22);
   U11 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n18);
   U12 : OAI22_X1 port map( A1 => B(2), A2 => A(2), B1 => n9, B2 => n10, ZN => 
                           n7);
   U13 : OAI22_X1 port map( A1 => B(2), A2 => A(2), B1 => n12, B2 => n9, ZN => 
                           n11);
   U14 : XNOR2_X1 port map( A => A(2), B => B(2), ZN => n15);
   U15 : AND2_X1 port map( A1 => B(2), A2 => A(2), ZN => n9);
   U16 : INV_X1 port map( A => B(1), ZN => n3);
   U17 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n16);
   U18 : OR2_X1 port map( A1 => n17, A2 => n2, ZN => n25);
   U19 : NAND2_X1 port map( A1 => n25, A2 => Ci, ZN => n23);
   U20 : NOR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n17);
   U21 : INV_X1 port map( A => n18, ZN => n2);
   U29 : OAI21_X1 port map( B1 => Ci, B2 => n22, A => n23, ZN => S(0));

end SYN_BEHAVIORAL;

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
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => Gk_1j, B2 => P_ik, A => G_ik, ZN => n2);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_26 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_26;

architecture SYN_behavioral of Pg_26 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => G_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n2);
   U3 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity Pg_0 is

   port( P_ik, G_ik, Gk_1j, Pk_1j : in std_logic;  G_ij, P_ij : out std_logic);

end Pg_0;

architecture SYN_behavioral of Pg_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => P_ik, ZN => P_ij);
   U2 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n2);
   U3 : INV_X1 port map( A => n2, ZN => G_ij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity G_0 is

   port( P_ik, G_ik, Gk_1j : in std_logic;  G_ij : out std_logic);

end G_0;

architecture SYN_behavioral of G_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_ik, B2 => Gk_1j, A => G_ik, ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => G_ij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity PGNetwork is

   port( a, b : in std_logic_vector (31 downto 0);  cin : in std_logic;  g, p :
         out std_logic_vector (31 downto 0));

end PGNetwork;

architecture SYN_BEHAVIORAL of PGNetwork is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U33 : XOR2_X1 port map( A => b(9), B => a(9), Z => p(9));
   U34 : XOR2_X1 port map( A => b(8), B => a(8), Z => p(8));
   U35 : XOR2_X1 port map( A => b(7), B => a(7), Z => p(7));
   U36 : XOR2_X1 port map( A => b(6), B => a(6), Z => p(6));
   U37 : XOR2_X1 port map( A => b(5), B => a(5), Z => p(5));
   U38 : XOR2_X1 port map( A => b(4), B => a(4), Z => p(4));
   U39 : XOR2_X1 port map( A => b(3), B => a(3), Z => p(3));
   U40 : XOR2_X1 port map( A => b(31), B => a(31), Z => p(31));
   U41 : XOR2_X1 port map( A => b(30), B => a(30), Z => p(30));
   U42 : XOR2_X1 port map( A => b(2), B => a(2), Z => p(2));
   U43 : XOR2_X1 port map( A => b(29), B => a(29), Z => p(29));
   U44 : XOR2_X1 port map( A => b(28), B => a(28), Z => p(28));
   U45 : XOR2_X1 port map( A => b(27), B => a(27), Z => p(27));
   U46 : XOR2_X1 port map( A => b(26), B => a(26), Z => p(26));
   U47 : XOR2_X1 port map( A => b(25), B => a(25), Z => p(25));
   U48 : XOR2_X1 port map( A => b(24), B => a(24), Z => p(24));
   U49 : XOR2_X1 port map( A => b(23), B => a(23), Z => p(23));
   U50 : XOR2_X1 port map( A => b(22), B => a(22), Z => p(22));
   U51 : XOR2_X1 port map( A => b(21), B => a(21), Z => p(21));
   U52 : XOR2_X1 port map( A => b(20), B => a(20), Z => p(20));
   U53 : XOR2_X1 port map( A => b(1), B => a(1), Z => p(1));
   U54 : XOR2_X1 port map( A => b(19), B => a(19), Z => p(19));
   U55 : XOR2_X1 port map( A => b(18), B => a(18), Z => p(18));
   U56 : XOR2_X1 port map( A => b(17), B => a(17), Z => p(17));
   U57 : XOR2_X1 port map( A => b(16), B => a(16), Z => p(16));
   U58 : XOR2_X1 port map( A => b(15), B => a(15), Z => p(15));
   U59 : XOR2_X1 port map( A => b(14), B => a(14), Z => p(14));
   U60 : XOR2_X1 port map( A => b(13), B => a(13), Z => p(13));
   U61 : XOR2_X1 port map( A => b(12), B => a(12), Z => p(12));
   U62 : XOR2_X1 port map( A => b(11), B => a(11), Z => p(11));
   U63 : XOR2_X1 port map( A => b(10), B => a(10), Z => p(10));
   U64 : XOR2_X1 port map( A => b(0), B => a(0), Z => p(0));
   U1 : AND2_X1 port map( A1 => b(14), A2 => a(14), ZN => g(14));
   U2 : AND2_X1 port map( A1 => b(16), A2 => a(16), ZN => g(16));
   U3 : AND2_X1 port map( A1 => b(13), A2 => a(13), ZN => g(13));
   U4 : AND2_X1 port map( A1 => b(12), A2 => a(12), ZN => g(12));
   U5 : AND2_X1 port map( A1 => b(19), A2 => a(19), ZN => g(19));
   U6 : AND2_X1 port map( A1 => b(22), A2 => a(22), ZN => g(22));
   U7 : AND2_X1 port map( A1 => b(21), A2 => a(21), ZN => g(21));
   U8 : AND2_X1 port map( A1 => b(20), A2 => a(20), ZN => g(20));
   U9 : AND2_X1 port map( A1 => b(25), A2 => a(25), ZN => g(25));
   U10 : AND2_X1 port map( A1 => b(24), A2 => a(24), ZN => g(24));
   U11 : AND2_X1 port map( A1 => b(28), A2 => a(28), ZN => g(28));
   U12 : AND2_X1 port map( A1 => b(29), A2 => a(29), ZN => g(29));
   U13 : AND2_X1 port map( A1 => b(27), A2 => a(27), ZN => g(27));
   U14 : AND2_X1 port map( A1 => b(26), A2 => a(26), ZN => g(26));
   U15 : AND2_X1 port map( A1 => b(30), A2 => a(30), ZN => g(30));
   U16 : AND2_X1 port map( A1 => b(31), A2 => a(31), ZN => g(31));
   U17 : AND2_X1 port map( A1 => b(18), A2 => a(18), ZN => g(18));
   U18 : AND2_X1 port map( A1 => b(8), A2 => a(8), ZN => g(8));
   U19 : AND2_X1 port map( A1 => b(15), A2 => a(15), ZN => g(15));
   U20 : AND2_X1 port map( A1 => b(23), A2 => a(23), ZN => g(23));
   U21 : AND2_X1 port map( A1 => b(11), A2 => a(11), ZN => g(11));
   U22 : AND2_X1 port map( A1 => b(10), A2 => a(10), ZN => g(10));
   U23 : AND2_X1 port map( A1 => b(4), A2 => a(4), ZN => g(4));
   U24 : AND2_X1 port map( A1 => b(6), A2 => a(6), ZN => g(6));
   U25 : AND2_X1 port map( A1 => b(7), A2 => a(7), ZN => g(7));
   U26 : AND2_X1 port map( A1 => b(17), A2 => a(17), ZN => g(17));
   U27 : AND2_X1 port map( A1 => b(3), A2 => a(3), ZN => g(3));
   U28 : AND2_X1 port map( A1 => b(9), A2 => a(9), ZN => g(9));
   U29 : AND2_X1 port map( A1 => b(0), A2 => a(0), ZN => g(0));
   U30 : AND2_X1 port map( A1 => b(2), A2 => a(2), ZN => g(2));
   U31 : AND2_X1 port map( A1 => b(5), A2 => a(5), ZN => g(5));
   U32 : AND2_X1 port map( A1 => b(1), A2 => a(1), ZN => g(1));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity sum_generator_NBIT_PER_BLOCK4_NBLOCKS8 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector (7
         downto 0);  S : out std_logic_vector (31 downto 0));

end sum_generator_NBIT_PER_BLOCK4_NBLOCKS8;

architecture SYN_structural of sum_generator_NBIT_PER_BLOCK4_NBLOCKS8 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
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
   
   signal n1, n_1008, n_1009, n_1010, n_1011, n_1012, n_1013, n_1014, n_1015 : 
      std_logic;

begin
   
   CA1_0 : Carryselect_NBIT4_0 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => n1, S(3) => S(3), S(2) 
                           => S(2), S(1) => S(1), S(0) => S(0), Co => n_1008);
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
   U1 : CLKBUF_X1 port map( A => Ci(0), Z => n1);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity sparseTree_NBIT32_NBIT_PER_BLOCK4 is

   port( A, B : in std_logic_vector (31 downto 0);  cin : in std_logic;  cout :
         out std_logic_vector (8 downto 0));

end sparseTree_NBIT32_NBIT_PER_BLOCK4;

architecture SYN_structural of sparseTree_NBIT32_NBIT_PER_BLOCK4 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
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
   
   component PGNetwork
      port( a, b : in std_logic_vector (31 downto 0);  cin : in std_logic;  g, 
            p : out std_logic_vector (31 downto 0));
   end component;
   
   signal cout_8_port, cout_7_port, cout_6_port, cout_5_port, n7, cout_3_port, 
      n8, n9, Sig2_4_31_port, Sig2_4_27_port, Sig2_4_23_port, Sig2_3_31_port, 
      Sig2_3_27_port, Sig2_3_19_port, Sig2_3_15_port, Sig2_3_11_port, 
      Sig2_2_31_port, Sig2_2_23_port, Sig2_2_15_port, Sig2_2_7_port, 
      Sig2_1_31_port, Sig2_1_29_port, Sig2_1_27_port, Sig2_1_25_port, 
      Sig2_1_23_port, Sig2_1_21_port, Sig2_1_19_port, Sig2_1_17_port, 
      Sig2_1_15_port, Sig2_1_13_port, Sig2_1_11_port, Sig2_1_9_port, 
      Sig2_1_7_port, Sig2_1_5_port, Sig2_1_3_port, Sig2_1_1_port, 
      Sig2_0_31_port, Sig2_0_30_port, Sig2_0_29_port, Sig2_0_28_port, 
      Sig2_0_27_port, Sig2_0_26_port, Sig2_0_25_port, Sig2_0_24_port, 
      Sig2_0_23_port, Sig2_0_22_port, Sig2_0_21_port, Sig2_0_20_port, 
      Sig2_0_19_port, Sig2_0_18_port, Sig2_0_17_port, Sig2_0_16_port, 
      Sig2_0_15_port, Sig2_0_14_port, Sig2_0_13_port, Sig2_0_12_port, 
      Sig2_0_11_port, Sig2_0_10_port, Sig2_0_9_port, Sig2_0_8_port, 
      Sig2_0_7_port, Sig2_0_6_port, Sig2_0_5_port, Sig2_0_4_port, Sig2_0_3_port
      , Sig2_0_2_port, Sig2_0_1_port, Sig2_0_0_port, Sig1_4_31_port, 
      Sig1_4_27_port, Sig1_4_23_port, Sig1_3_31_port, Sig1_3_27_port, 
      Sig1_3_19_port, Sig1_3_15_port, Sig1_3_11_port, Sig1_2_31_port, 
      Sig1_2_23_port, Sig1_2_15_port, Sig1_2_7_port, Sig1_1_31_port, 
      Sig1_1_29_port, Sig1_1_27_port, Sig1_1_25_port, Sig1_1_23_port, 
      Sig1_1_21_port, Sig1_1_19_port, Sig1_1_17_port, Sig1_1_15_port, 
      Sig1_1_13_port, Sig1_1_11_port, Sig1_1_9_port, Sig1_1_7_port, 
      Sig1_1_5_port, Sig1_1_3_port, Sig1_0_31_port, Sig1_0_30_port, 
      Sig1_0_29_port, Sig1_0_28_port, Sig1_0_27_port, Sig1_0_26_port, 
      Sig1_0_25_port, Sig1_0_24_port, Sig1_0_23_port, Sig1_0_22_port, 
      Sig1_0_21_port, Sig1_0_20_port, Sig1_0_19_port, Sig1_0_18_port, 
      Sig1_0_17_port, Sig1_0_16_port, Sig1_0_15_port, Sig1_0_14_port, 
      Sig1_0_13_port, Sig1_0_12_port, Sig1_0_11_port, Sig1_0_10_port, 
      Sig1_0_9_port, Sig1_0_8_port, Sig1_0_7_port, Sig1_0_6_port, Sig1_0_5_port
      , Sig1_0_4_port, Sig1_0_3_port, Sig1_0_2_port, Sig1_0_1_port, n1, n2, n3,
      cout_4_port, cout_2_port, cout_1_port, n_1016 : std_logic;

begin
   cout <= ( cout_8_port, cout_7_port, cout_6_port, cout_5_port, cout_4_port, 
      cout_3_port, cout_2_port, cout_1_port, cin );
   
   m_pgNetwork : PGNetwork port map( a(31) => A(31), a(30) => A(30), a(29) => 
                           A(29), a(28) => A(28), a(27) => A(27), a(26) => 
                           A(26), a(25) => A(25), a(24) => A(24), a(23) => 
                           A(23), a(22) => A(22), a(21) => A(21), a(20) => 
                           A(20), a(19) => A(19), a(18) => A(18), a(17) => 
                           A(17), a(16) => A(16), a(15) => A(15), a(14) => 
                           A(14), a(13) => A(13), a(12) => A(12), a(11) => 
                           A(11), a(10) => A(10), a(9) => A(9), a(8) => A(8), 
                           a(7) => A(7), a(6) => A(6), a(5) => A(5), a(4) => 
                           A(4), a(3) => A(3), a(2) => A(2), a(1) => A(1), a(0)
                           => A(0), b(31) => B(31), b(30) => B(30), b(29) => 
                           B(29), b(28) => B(28), b(27) => B(27), b(26) => 
                           B(26), b(25) => B(25), b(24) => B(24), b(23) => 
                           B(23), b(22) => B(22), b(21) => B(21), b(20) => 
                           B(20), b(19) => B(19), b(18) => B(18), b(17) => 
                           B(17), b(16) => B(16), b(15) => B(15), b(14) => 
                           B(14), b(13) => B(13), b(12) => B(12), b(11) => 
                           B(11), b(10) => B(10), b(9) => B(9), b(8) => B(8), 
                           b(7) => B(7), b(6) => B(6), b(5) => B(5), b(4) => 
                           B(4), b(3) => B(3), b(2) => B(2), b(1) => B(1), b(0)
                           => B(0), cin => cin, g(31) => Sig2_0_31_port, g(30) 
                           => Sig2_0_30_port, g(29) => Sig2_0_29_port, g(28) =>
                           Sig2_0_28_port, g(27) => Sig2_0_27_port, g(26) => 
                           Sig2_0_26_port, g(25) => Sig2_0_25_port, g(24) => 
                           Sig2_0_24_port, g(23) => Sig2_0_23_port, g(22) => 
                           Sig2_0_22_port, g(21) => Sig2_0_21_port, g(20) => 
                           Sig2_0_20_port, g(19) => Sig2_0_19_port, g(18) => 
                           Sig2_0_18_port, g(17) => Sig2_0_17_port, g(16) => 
                           Sig2_0_16_port, g(15) => Sig2_0_15_port, g(14) => 
                           Sig2_0_14_port, g(13) => Sig2_0_13_port, g(12) => 
                           Sig2_0_12_port, g(11) => Sig2_0_11_port, g(10) => 
                           Sig2_0_10_port, g(9) => Sig2_0_9_port, g(8) => 
                           Sig2_0_8_port, g(7) => Sig2_0_7_port, g(6) => 
                           Sig2_0_6_port, g(5) => Sig2_0_5_port, g(4) => 
                           Sig2_0_4_port, g(3) => Sig2_0_3_port, g(2) => 
                           Sig2_0_2_port, g(1) => Sig2_0_1_port, g(0) => 
                           Sig2_0_0_port, p(31) => Sig1_0_31_port, p(30) => 
                           Sig1_0_30_port, p(29) => Sig1_0_29_port, p(28) => 
                           Sig1_0_28_port, p(27) => Sig1_0_27_port, p(26) => 
                           Sig1_0_26_port, p(25) => Sig1_0_25_port, p(24) => 
                           Sig1_0_24_port, p(23) => Sig1_0_23_port, p(22) => 
                           Sig1_0_22_port, p(21) => Sig1_0_21_port, p(20) => 
                           Sig1_0_20_port, p(19) => Sig1_0_19_port, p(18) => 
                           Sig1_0_18_port, p(17) => Sig1_0_17_port, p(16) => 
                           Sig1_0_16_port, p(15) => Sig1_0_15_port, p(14) => 
                           Sig1_0_14_port, p(13) => Sig1_0_13_port, p(12) => 
                           Sig1_0_12_port, p(11) => Sig1_0_11_port, p(10) => 
                           Sig1_0_10_port, p(9) => Sig1_0_9_port, p(8) => 
                           Sig1_0_8_port, p(7) => Sig1_0_7_port, p(6) => 
                           Sig1_0_6_port, p(5) => Sig1_0_5_port, p(4) => 
                           Sig1_0_4_port, p(3) => Sig1_0_3_port, p(2) => 
                           Sig1_0_2_port, p(1) => Sig1_0_1_port, p(0) => n_1016
                           );
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
                           Gk_1j => Sig2_1_1_port, G_ij => n9);
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
                           Gk_1j => n9, G_ij => n8);
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
   m1_blockG_4_11 : G_6 port map( P_ik => Sig1_3_11_port, G_ik => n2, Gk_1j => 
                           n8, G_ij => cout_3_port);
   m1_blockG_4_15 : G_5 port map( P_ik => Sig1_3_15_port, G_ik => 
                           Sig2_3_15_port, Gk_1j => n8, G_ij => n7);
   m1_blockPG_4_27 : Pg_2 port map( P_ik => Sig1_3_27_port, G_ik => 
                           Sig2_3_27_port, Gk_1j => Sig2_4_23_port, Pk_1j => 
                           Sig1_4_23_port, G_ij => Sig2_4_27_port, P_ij => 
                           Sig1_4_27_port);
   m1_blockPG_4_31 : Pg_1 port map( P_ik => Sig1_3_31_port, G_ik => 
                           Sig2_3_31_port, Gk_1j => n1, Pk_1j => Sig1_4_23_port
                           , G_ij => Sig2_4_31_port, P_ij => Sig1_4_31_port);
   m1_blockG_5_19 : G_4 port map( P_ik => Sig1_3_19_port, G_ik => 
                           Sig2_3_19_port, Gk_1j => n7, G_ij => cout_5_port);
   m1_blockG_5_23 : G_3 port map( P_ik => Sig1_4_23_port, G_ik => n1, Gk_1j => 
                           n7, G_ij => cout_6_port);
   m1_blockG_5_27 : G_2 port map( P_ik => Sig1_4_27_port, G_ik => 
                           Sig2_4_27_port, Gk_1j => n7, G_ij => cout_7_port);
   m1_blockG_5_31 : G_1 port map( P_ik => Sig1_4_31_port, G_ik => 
                           Sig2_4_31_port, Gk_1j => cout_4_port, G_ij => 
                           cout_8_port);
   U1 : INV_X2 port map( A => n3, ZN => cout_4_port);
   U2 : CLKBUF_X1 port map( A => Sig2_4_23_port, Z => n1);
   U3 : CLKBUF_X1 port map( A => Sig2_3_11_port, Z => n2);
   U4 : INV_X1 port map( A => n7, ZN => n3);
   U5 : CLKBUF_X1 port map( A => n8, Z => cout_2_port);
   U6 : CLKBUF_X1 port map( A => n9, Z => cout_1_port);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity p4_adder is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  S : 
         out std_logic_vector (31 downto 0);  Cout : out std_logic);

end p4_adder;

architecture SYN_structural of p4_adder is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
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
      carries_0_port, n1, n2, n3, n4, n5, n6 : std_logic;

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
                           bxor_0_port, cin => n4, cout(8) => Cout, cout(7) => 
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
                           bxor_17_port, B(16) => bxor_16_port, B(15) => n3, 
                           B(14) => bxor_14_port, B(13) => n5, B(12) => 
                           bxor_12_port, B(11) => bxor_11_port, B(10) => 
                           bxor_10_port, B(9) => bxor_9_port, B(8) => 
                           bxor_8_port, B(7) => bxor_7_port, B(6) => 
                           bxor_6_port, B(5) => n1, B(4) => bxor_4_port, B(3) 
                           => bxor_3_port, B(2) => n6, B(1) => bxor_1_port, 
                           B(0) => bxor_0_port, Ci(7) => carries_7_port, Ci(6) 
                           => carries_6_port, Ci(5) => carries_5_port, Ci(4) =>
                           carries_4_port, Ci(3) => carries_3_port, Ci(2) => 
                           carries_2_port, Ci(1) => carries_1_port, Ci(0) => 
                           carries_0_port, S(31) => S(31), S(30) => S(30), 
                           S(29) => S(29), S(28) => S(28), S(27) => S(27), 
                           S(26) => S(26), S(25) => S(25), S(24) => S(24), 
                           S(23) => S(23), S(22) => S(22), S(21) => S(21), 
                           S(20) => S(20), S(19) => S(19), S(18) => S(18), 
                           S(17) => S(17), S(16) => S(16), S(15) => S(15), 
                           S(14) => S(14), S(13) => S(13), S(12) => S(12), 
                           S(11) => S(11), S(10) => S(10), S(9) => S(9), S(8) 
                           => S(8), S(7) => S(7), S(6) => S(6), S(5) => S(5), 
                           S(4) => S(4), S(3) => S(3), S(2) => S(2), S(1) => 
                           S(1), S(0) => S(0));
   U33 : XOR2_X1 port map( A => Cin, B => B(9), Z => bxor_9_port);
   U34 : XOR2_X1 port map( A => Cin, B => B(8), Z => bxor_8_port);
   U35 : XOR2_X1 port map( A => Cin, B => B(7), Z => bxor_7_port);
   U36 : XOR2_X1 port map( A => Cin, B => B(6), Z => bxor_6_port);
   U37 : XOR2_X1 port map( A => Cin, B => B(5), Z => bxor_5_port);
   U38 : XOR2_X1 port map( A => Cin, B => B(4), Z => bxor_4_port);
   U39 : XOR2_X1 port map( A => Cin, B => B(3), Z => bxor_3_port);
   U40 : XOR2_X1 port map( A => n4, B => B(31), Z => bxor_31_port);
   U41 : XOR2_X1 port map( A => n4, B => B(30), Z => bxor_30_port);
   U42 : XOR2_X1 port map( A => n2, B => B(2), Z => bxor_2_port);
   U43 : XOR2_X1 port map( A => n4, B => B(29), Z => bxor_29_port);
   U44 : XOR2_X1 port map( A => n4, B => B(28), Z => bxor_28_port);
   U45 : XOR2_X1 port map( A => n4, B => B(27), Z => bxor_27_port);
   U46 : XOR2_X1 port map( A => n4, B => B(26), Z => bxor_26_port);
   U47 : XOR2_X1 port map( A => n4, B => B(25), Z => bxor_25_port);
   U48 : XOR2_X1 port map( A => n4, B => B(24), Z => bxor_24_port);
   U49 : XOR2_X1 port map( A => Cin, B => B(23), Z => bxor_23_port);
   U50 : XOR2_X1 port map( A => Cin, B => B(22), Z => bxor_22_port);
   U51 : XOR2_X1 port map( A => Cin, B => B(21), Z => bxor_21_port);
   U52 : XOR2_X1 port map( A => n2, B => B(20), Z => bxor_20_port);
   U53 : XOR2_X1 port map( A => Cin, B => B(1), Z => bxor_1_port);
   U54 : XOR2_X1 port map( A => Cin, B => B(19), Z => bxor_19_port);
   U55 : XOR2_X1 port map( A => Cin, B => B(18), Z => bxor_18_port);
   U56 : XOR2_X1 port map( A => Cin, B => B(17), Z => bxor_17_port);
   U57 : XOR2_X1 port map( A => n2, B => B(16), Z => bxor_16_port);
   U58 : XOR2_X1 port map( A => Cin, B => B(15), Z => bxor_15_port);
   U59 : XOR2_X1 port map( A => Cin, B => B(14), Z => bxor_14_port);
   U60 : XOR2_X1 port map( A => Cin, B => B(13), Z => bxor_13_port);
   U61 : XOR2_X1 port map( A => Cin, B => B(12), Z => bxor_12_port);
   U62 : XOR2_X1 port map( A => Cin, B => B(11), Z => bxor_11_port);
   U63 : XOR2_X1 port map( A => Cin, B => B(10), Z => bxor_10_port);
   U64 : XOR2_X1 port map( A => Cin, B => B(0), Z => bxor_0_port);
   U65 : CLKBUF_X1 port map( A => bxor_5_port, Z => n1);
   U66 : BUF_X1 port map( A => Cin, Z => n2);
   U67 : CLKBUF_X1 port map( A => bxor_15_port, Z => n3);
   U68 : BUF_X2 port map( A => Cin, Z => n4);
   U69 : CLKBUF_X1 port map( A => bxor_13_port, Z => n5);
   U70 : CLKBUF_X1 port map( A => bxor_2_port, Z => n6);

end SYN_structural;
