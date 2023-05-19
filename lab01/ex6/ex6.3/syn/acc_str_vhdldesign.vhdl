
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_acc is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_acc;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity RCA_generic_NBIT32_DW01_add_0 is

   port( A, B : in std_logic_vector (32 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (32 downto 0);  CO : out std_logic);

end RCA_generic_NBIT32_DW01_add_0;

architecture SYN_rpl of RCA_generic_NBIT32_DW01_add_0 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_31_port, carry_30_port, carry_29_port, carry_28_port, 
      carry_27_port, carry_26_port, carry_25_port, carry_24_port, carry_23_port
      , carry_22_port, carry_21_port, carry_20_port, carry_19_port, 
      carry_18_port, carry_17_port, carry_16_port, carry_15_port, carry_14_port
      , carry_13_port, carry_12_port, carry_11_port, carry_10_port, 
      carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, carry_1_port : std_logic;

begin
   
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           SUM(32), S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B(14), CI => carry_14_port, CO => 
                           carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B(13), CI => carry_13_port, CO => 
                           carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B(12), CI => carry_12_port, CO => 
                           carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B(10), CI => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => carry_1_port, CO => 
                           carry_2_port, S => SUM(1));
   U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => CI, CO => carry_1_port, S
                           => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_95 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_95;

architecture SYN_ARCH2 of ND2_95 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_94 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_94;

architecture SYN_ARCH2 of ND2_94 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_93 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_93;

architecture SYN_ARCH2 of ND2_93 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_92 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_92;

architecture SYN_ARCH2 of ND2_92 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_91 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_91;

architecture SYN_ARCH2 of ND2_91 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_90 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_90;

architecture SYN_ARCH2 of ND2_90 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_89 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_89;

architecture SYN_ARCH2 of ND2_89 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_88 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_88;

architecture SYN_ARCH2 of ND2_88 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_87 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_87;

architecture SYN_ARCH2 of ND2_87 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_86 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_86;

architecture SYN_ARCH2 of ND2_86 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_85 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_85;

architecture SYN_ARCH2 of ND2_85 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_84 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_84;

architecture SYN_ARCH2 of ND2_84 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_83 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_83;

architecture SYN_ARCH2 of ND2_83 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_82 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_82;

architecture SYN_ARCH2 of ND2_82 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_81 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_81;

architecture SYN_ARCH2 of ND2_81 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_80 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_80;

architecture SYN_ARCH2 of ND2_80 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_79 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_79;

architecture SYN_ARCH2 of ND2_79 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_78 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_78;

architecture SYN_ARCH2 of ND2_78 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_77 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_77;

architecture SYN_ARCH2 of ND2_77 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_76 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_76;

architecture SYN_ARCH2 of ND2_76 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_75 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_75;

architecture SYN_ARCH2 of ND2_75 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_74 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_74;

architecture SYN_ARCH2 of ND2_74 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_73 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_73;

architecture SYN_ARCH2 of ND2_73 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_72 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_72;

architecture SYN_ARCH2 of ND2_72 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_71 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_71;

architecture SYN_ARCH2 of ND2_71 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_70 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_70;

architecture SYN_ARCH2 of ND2_70 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_69 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_69;

architecture SYN_ARCH2 of ND2_69 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_68 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_68;

architecture SYN_ARCH2 of ND2_68 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_67 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_67;

architecture SYN_ARCH2 of ND2_67 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_66 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_66;

architecture SYN_ARCH2 of ND2_66 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_65 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_65;

architecture SYN_ARCH2 of ND2_65 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_64 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_64;

architecture SYN_ARCH2 of ND2_64 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_63 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_63;

architecture SYN_ARCH2 of ND2_63 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_62 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_62;

architecture SYN_ARCH2 of ND2_62 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_61 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_61;

architecture SYN_ARCH2 of ND2_61 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_60 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_60;

architecture SYN_ARCH2 of ND2_60 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_59 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_59;

architecture SYN_ARCH2 of ND2_59 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_58 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_58;

architecture SYN_ARCH2 of ND2_58 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_57 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_57;

architecture SYN_ARCH2 of ND2_57 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_56 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_56;

architecture SYN_ARCH2 of ND2_56 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_55 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_55;

architecture SYN_ARCH2 of ND2_55 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_54 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_54;

architecture SYN_ARCH2 of ND2_54 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_53 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_53;

architecture SYN_ARCH2 of ND2_53 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_52 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_52;

architecture SYN_ARCH2 of ND2_52 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_51 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_51;

architecture SYN_ARCH2 of ND2_51 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_50 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_50;

architecture SYN_ARCH2 of ND2_50 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_49 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_49;

architecture SYN_ARCH2 of ND2_49 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_48 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_48;

architecture SYN_ARCH2 of ND2_48 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_47 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_47;

architecture SYN_ARCH2 of ND2_47 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_46 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_46;

architecture SYN_ARCH2 of ND2_46 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_45 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_45;

architecture SYN_ARCH2 of ND2_45 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_44 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_44;

architecture SYN_ARCH2 of ND2_44 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_43 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_43;

architecture SYN_ARCH2 of ND2_43 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_42 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_42;

architecture SYN_ARCH2 of ND2_42 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_41 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_41;

architecture SYN_ARCH2 of ND2_41 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_40 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_40;

architecture SYN_ARCH2 of ND2_40 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_39 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_39;

architecture SYN_ARCH2 of ND2_39 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_38 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_38;

architecture SYN_ARCH2 of ND2_38 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_37 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_37;

architecture SYN_ARCH2 of ND2_37 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_36 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_36;

architecture SYN_ARCH2 of ND2_36 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_35 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_35;

architecture SYN_ARCH2 of ND2_35 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_34 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_34;

architecture SYN_ARCH2 of ND2_34 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_33 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_33;

architecture SYN_ARCH2 of ND2_33 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_32 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_32;

architecture SYN_ARCH2 of ND2_32 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_31 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_31;

architecture SYN_ARCH2 of ND2_31 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_30 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_30;

architecture SYN_ARCH2 of ND2_30 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_29 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_29;

architecture SYN_ARCH2 of ND2_29 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_28 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_28;

architecture SYN_ARCH2 of ND2_28 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_27 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_27;

architecture SYN_ARCH2 of ND2_27 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_26 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_26;

architecture SYN_ARCH2 of ND2_26 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_25 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_25;

architecture SYN_ARCH2 of ND2_25 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_24 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_24;

architecture SYN_ARCH2 of ND2_24 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_23 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_23;

architecture SYN_ARCH2 of ND2_23 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_22 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_22;

architecture SYN_ARCH2 of ND2_22 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_21 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_21;

architecture SYN_ARCH2 of ND2_21 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_20 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_20;

architecture SYN_ARCH2 of ND2_20 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_19 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_19;

architecture SYN_ARCH2 of ND2_19 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_18 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_18;

architecture SYN_ARCH2 of ND2_18 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_17 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_17;

architecture SYN_ARCH2 of ND2_17 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_16 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_16;

architecture SYN_ARCH2 of ND2_16 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_15 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_15;

architecture SYN_ARCH2 of ND2_15 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_14 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_14;

architecture SYN_ARCH2 of ND2_14 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_13 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_13;

architecture SYN_ARCH2 of ND2_13 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_12 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_12;

architecture SYN_ARCH2 of ND2_12 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_11 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_11;

architecture SYN_ARCH2 of ND2_11 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_10 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_10;

architecture SYN_ARCH2 of ND2_10 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_9 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_9;

architecture SYN_ARCH2 of ND2_9 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_8 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_8;

architecture SYN_ARCH2 of ND2_8 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_7 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_7;

architecture SYN_ARCH2 of ND2_7 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_6 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_6;

architecture SYN_ARCH2 of ND2_6 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_5 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_5;

architecture SYN_ARCH2 of ND2_5 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_4 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_4;

architecture SYN_ARCH2 of ND2_4 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_3 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_3;

architecture SYN_ARCH2 of ND2_3 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_2 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_2;

architecture SYN_ARCH2 of ND2_2 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_1 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_1;

architecture SYN_ARCH2 of ND2_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity ND2_0 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_0;

architecture SYN_ARCH2 of ND2_0 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity IV is

   port( A : in std_logic;  Y : out std_logic);

end IV;

architecture SYN_BEHAVIORAL of IV is

   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X2 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity FDSYNCH_NBIT32 is

   port( D : in std_logic_vector (31 downto 0);  CK, RESET : in std_logic;  Q :
         out std_logic_vector (31 downto 0));

end FDSYNCH_NBIT32;

architecture SYN_PIPPO of FDSYNCH_NBIT32 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, 
      N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32
      , N33, N34, n1, n_1003, n_1004, n_1005, n_1006, n_1007, n_1008, n_1009, 
      n_1010, n_1011, n_1012, n_1013, n_1014, n_1015, n_1016, n_1017, n_1018, 
      n_1019, n_1020, n_1021, n_1022, n_1023, n_1024, n_1025, n_1026, n_1027, 
      n_1028, n_1029, n_1030, n_1031, n_1032, n_1033, n_1034 : std_logic;

begin
   
   Q_reg_31_inst : DFF_X1 port map( D => N34, CK => CK, Q => Q(31), QN => 
                           n_1003);
   Q_reg_30_inst : DFF_X1 port map( D => N33, CK => CK, Q => Q(30), QN => 
                           n_1004);
   Q_reg_29_inst : DFF_X1 port map( D => N32, CK => CK, Q => Q(29), QN => 
                           n_1005);
   Q_reg_28_inst : DFF_X1 port map( D => N31, CK => CK, Q => Q(28), QN => 
                           n_1006);
   Q_reg_27_inst : DFF_X1 port map( D => N30, CK => CK, Q => Q(27), QN => 
                           n_1007);
   Q_reg_26_inst : DFF_X1 port map( D => N29, CK => CK, Q => Q(26), QN => 
                           n_1008);
   Q_reg_25_inst : DFF_X1 port map( D => N28, CK => CK, Q => Q(25), QN => 
                           n_1009);
   Q_reg_24_inst : DFF_X1 port map( D => N27, CK => CK, Q => Q(24), QN => 
                           n_1010);
   Q_reg_23_inst : DFF_X1 port map( D => N26, CK => CK, Q => Q(23), QN => 
                           n_1011);
   Q_reg_22_inst : DFF_X1 port map( D => N25, CK => CK, Q => Q(22), QN => 
                           n_1012);
   Q_reg_21_inst : DFF_X1 port map( D => N24, CK => CK, Q => Q(21), QN => 
                           n_1013);
   Q_reg_20_inst : DFF_X1 port map( D => N23, CK => CK, Q => Q(20), QN => 
                           n_1014);
   Q_reg_19_inst : DFF_X1 port map( D => N22, CK => CK, Q => Q(19), QN => 
                           n_1015);
   Q_reg_18_inst : DFF_X1 port map( D => N21, CK => CK, Q => Q(18), QN => 
                           n_1016);
   Q_reg_17_inst : DFF_X1 port map( D => N20, CK => CK, Q => Q(17), QN => 
                           n_1017);
   Q_reg_16_inst : DFF_X1 port map( D => N19, CK => CK, Q => Q(16), QN => 
                           n_1018);
   Q_reg_15_inst : DFF_X1 port map( D => N18, CK => CK, Q => Q(15), QN => 
                           n_1019);
   Q_reg_14_inst : DFF_X1 port map( D => N17, CK => CK, Q => Q(14), QN => 
                           n_1020);
   Q_reg_13_inst : DFF_X1 port map( D => N16, CK => CK, Q => Q(13), QN => 
                           n_1021);
   Q_reg_12_inst : DFF_X1 port map( D => N15, CK => CK, Q => Q(12), QN => 
                           n_1022);
   Q_reg_11_inst : DFF_X1 port map( D => N14, CK => CK, Q => Q(11), QN => 
                           n_1023);
   Q_reg_10_inst : DFF_X1 port map( D => N13, CK => CK, Q => Q(10), QN => 
                           n_1024);
   Q_reg_9_inst : DFF_X1 port map( D => N12, CK => CK, Q => Q(9), QN => n_1025)
                           ;
   Q_reg_8_inst : DFF_X1 port map( D => N11, CK => CK, Q => Q(8), QN => n_1026)
                           ;
   Q_reg_7_inst : DFF_X1 port map( D => N10, CK => CK, Q => Q(7), QN => n_1027)
                           ;
   Q_reg_6_inst : DFF_X1 port map( D => N9, CK => CK, Q => Q(6), QN => n_1028);
   Q_reg_5_inst : DFF_X1 port map( D => N8, CK => CK, Q => Q(5), QN => n_1029);
   Q_reg_4_inst : DFF_X1 port map( D => N7, CK => CK, Q => Q(4), QN => n_1030);
   Q_reg_3_inst : DFF_X1 port map( D => N6, CK => CK, Q => Q(3), QN => n_1031);
   Q_reg_2_inst : DFF_X1 port map( D => N5, CK => CK, Q => Q(2), QN => n_1032);
   Q_reg_1_inst : DFF_X1 port map( D => N4, CK => CK, Q => Q(1), QN => n_1033);
   Q_reg_0_inst : DFF_X1 port map( D => N3, CK => CK, Q => Q(0), QN => n_1034);
   U3 : AND2_X1 port map( A1 => D(6), A2 => n1, ZN => N9);
   U4 : AND2_X1 port map( A1 => D(5), A2 => n1, ZN => N8);
   U5 : AND2_X1 port map( A1 => D(4), A2 => n1, ZN => N7);
   U6 : AND2_X1 port map( A1 => D(3), A2 => n1, ZN => N6);
   U7 : AND2_X1 port map( A1 => D(2), A2 => n1, ZN => N5);
   U8 : AND2_X1 port map( A1 => D(1), A2 => n1, ZN => N4);
   U9 : AND2_X1 port map( A1 => D(31), A2 => n1, ZN => N34);
   U10 : AND2_X1 port map( A1 => D(30), A2 => n1, ZN => N33);
   U11 : AND2_X1 port map( A1 => D(29), A2 => n1, ZN => N32);
   U12 : AND2_X1 port map( A1 => D(28), A2 => n1, ZN => N31);
   U13 : AND2_X1 port map( A1 => D(27), A2 => n1, ZN => N30);
   U14 : AND2_X1 port map( A1 => D(0), A2 => n1, ZN => N3);
   U15 : AND2_X1 port map( A1 => D(26), A2 => n1, ZN => N29);
   U16 : AND2_X1 port map( A1 => D(25), A2 => n1, ZN => N28);
   U17 : AND2_X1 port map( A1 => D(24), A2 => n1, ZN => N27);
   U18 : AND2_X1 port map( A1 => D(23), A2 => n1, ZN => N26);
   U19 : AND2_X1 port map( A1 => D(22), A2 => n1, ZN => N25);
   U20 : AND2_X1 port map( A1 => D(21), A2 => n1, ZN => N24);
   U21 : AND2_X1 port map( A1 => D(20), A2 => n1, ZN => N23);
   U22 : AND2_X1 port map( A1 => D(19), A2 => n1, ZN => N22);
   U23 : AND2_X1 port map( A1 => D(18), A2 => n1, ZN => N21);
   U24 : AND2_X1 port map( A1 => D(17), A2 => n1, ZN => N20);
   U25 : AND2_X1 port map( A1 => D(16), A2 => n1, ZN => N19);
   U26 : AND2_X1 port map( A1 => D(15), A2 => n1, ZN => N18);
   U27 : AND2_X1 port map( A1 => D(14), A2 => n1, ZN => N17);
   U28 : AND2_X1 port map( A1 => D(13), A2 => n1, ZN => N16);
   U29 : AND2_X1 port map( A1 => D(12), A2 => n1, ZN => N15);
   U30 : AND2_X1 port map( A1 => D(11), A2 => n1, ZN => N14);
   U31 : AND2_X1 port map( A1 => D(10), A2 => n1, ZN => N13);
   U32 : AND2_X1 port map( A1 => D(9), A2 => n1, ZN => N12);
   U33 : AND2_X1 port map( A1 => D(8), A2 => n1, ZN => N11);
   U34 : AND2_X1 port map( A1 => D(7), A2 => n1, ZN => N10);
   U35 : INV_X1 port map( A => RESET, ZN => n1);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity RCA_generic_NBIT32 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (31 downto 0);  Co : out std_logic);

end RCA_generic_NBIT32;

architecture SYN_BEHAVIORAL of RCA_generic_NBIT32 is

   component RCA_generic_NBIT32_DW01_add_0
      port( A, B : in std_logic_vector (32 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (32 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1035 : std_logic;

begin
   
   n1 <= '0';
   add_1_root_add_55_2 : RCA_generic_NBIT32_DW01_add_0 port map( A(32) => n1, 
                           A(31) => A(31), A(30) => A(30), A(29) => A(29), 
                           A(28) => A(28), A(27) => A(27), A(26) => A(26), 
                           A(25) => A(25), A(24) => A(24), A(23) => A(23), 
                           A(22) => A(22), A(21) => A(21), A(20) => A(20), 
                           A(19) => A(19), A(18) => A(18), A(17) => A(17), 
                           A(16) => A(16), A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(32) => n1, B(31) => B(31), B(30) => B(30), B(29) 
                           => B(29), B(28) => B(28), B(27) => B(27), B(26) => 
                           B(26), B(25) => B(25), B(24) => B(24), B(23) => 
                           B(23), B(22) => B(22), B(21) => B(21), B(20) => 
                           B(20), B(19) => B(19), B(18) => B(18), B(17) => 
                           B(17), B(16) => B(16), B(15) => B(15), B(14) => 
                           B(14), B(13) => B(13), B(12) => B(12), B(11) => 
                           B(11), B(10) => B(10), B(9) => B(9), B(8) => B(8), 
                           B(7) => B(7), B(6) => B(6), B(5) => B(5), B(4) => 
                           B(4), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), CI => Ci, SUM(32) => Co, SUM(31) => S(31), 
                           SUM(30) => S(30), SUM(29) => S(29), SUM(28) => S(28)
                           , SUM(27) => S(27), SUM(26) => S(26), SUM(25) => 
                           S(25), SUM(24) => S(24), SUM(23) => S(23), SUM(22) 
                           => S(22), SUM(21) => S(21), SUM(20) => S(20), 
                           SUM(19) => S(19), SUM(18) => S(18), SUM(17) => S(17)
                           , SUM(16) => S(16), SUM(15) => S(15), SUM(14) => 
                           S(14), SUM(13) => S(13), SUM(12) => S(12), SUM(11) 
                           => S(11), SUM(10) => S(10), SUM(9) => S(9), SUM(8) 
                           => S(8), SUM(7) => S(7), SUM(6) => S(6), SUM(5) => 
                           S(5), SUM(4) => S(4), SUM(3) => S(3), SUM(2) => S(2)
                           , SUM(1) => S(1), SUM(0) => S(0), CO => n_1035);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity MUX21_GENERIC_NBIT32 is

   port( A, B : in std_logic_vector (31 downto 0);  SEL : in std_logic;  Y : 
         out std_logic_vector (31 downto 0));

end MUX21_GENERIC_NBIT32;

architecture SYN_STRUCTURAL of MUX21_GENERIC_NBIT32 is

   component ND2_1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_3
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_4
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_5
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_6
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_7
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_8
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_9
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_10
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_11
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_12
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_13
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_14
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_15
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_16
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_17
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_18
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_19
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_20
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_21
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_22
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_23
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_24
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_25
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_26
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_27
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_28
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_29
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_30
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_31
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_32
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_33
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_34
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_35
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_36
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_37
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_38
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_39
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_40
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_41
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_42
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_43
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_44
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_45
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_46
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_47
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_48
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_49
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_50
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_51
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_52
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_53
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_54
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_55
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_56
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_57
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_58
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_59
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_60
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_61
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_62
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_63
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_64
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_65
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_66
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_67
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_68
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_69
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_70
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_71
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_72
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_73
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_74
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_75
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_76
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_77
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_78
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_79
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_80
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_81
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_82
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_83
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_84
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_85
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_86
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_87
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_88
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_89
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_90
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_91
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_92
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_93
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_94
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_95
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_0
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1_31_port, Y1_30_port, Y1_29_port, Y1_28_port, Y1_27_port, 
      Y1_26_port, Y1_25_port, Y1_24_port, Y1_23_port, Y1_22_port, Y1_21_port, 
      Y1_20_port, Y1_19_port, Y1_18_port, Y1_17_port, Y1_16_port, Y1_15_port, 
      Y1_14_port, Y1_13_port, Y1_12_port, Y1_11_port, Y1_10_port, Y1_9_port, 
      Y1_8_port, Y1_7_port, Y1_6_port, Y1_5_port, Y1_4_port, Y1_3_port, 
      Y1_2_port, Y1_1_port, Y1_0_port, Y2_31_port, Y2_30_port, Y2_29_port, 
      Y2_28_port, Y2_27_port, Y2_26_port, Y2_25_port, Y2_24_port, Y2_23_port, 
      Y2_22_port, Y2_21_port, Y2_20_port, Y2_19_port, Y2_18_port, Y2_17_port, 
      Y2_16_port, Y2_15_port, Y2_14_port, Y2_13_port, Y2_12_port, Y2_11_port, 
      Y2_10_port, Y2_9_port, Y2_8_port, Y2_7_port, Y2_6_port, Y2_5_port, 
      Y2_4_port, Y2_3_port, Y2_2_port, Y2_1_port, Y2_0_port : std_logic;

begin
   
   UIV : IV port map( A => SEL, Y => SB);
   bit_and_0 : ND2_0 port map( A => A(0), B => SEL, Y => Y1_0_port);
   bit_and_1 : ND2_95 port map( A => A(1), B => SEL, Y => Y1_1_port);
   bit_and_2 : ND2_94 port map( A => A(2), B => SEL, Y => Y1_2_port);
   bit_and_3 : ND2_93 port map( A => A(3), B => SEL, Y => Y1_3_port);
   bit_and_4 : ND2_92 port map( A => A(4), B => SEL, Y => Y1_4_port);
   bit_and_5 : ND2_91 port map( A => A(5), B => SEL, Y => Y1_5_port);
   bit_and_6 : ND2_90 port map( A => A(6), B => SEL, Y => Y1_6_port);
   bit_and_7 : ND2_89 port map( A => A(7), B => SEL, Y => Y1_7_port);
   bit_and_8 : ND2_88 port map( A => A(8), B => SEL, Y => Y1_8_port);
   bit_and_9 : ND2_87 port map( A => A(9), B => SEL, Y => Y1_9_port);
   bit_and_10 : ND2_86 port map( A => A(10), B => SEL, Y => Y1_10_port);
   bit_and_11 : ND2_85 port map( A => A(11), B => SEL, Y => Y1_11_port);
   bit_and_12 : ND2_84 port map( A => A(12), B => SEL, Y => Y1_12_port);
   bit_and_13 : ND2_83 port map( A => A(13), B => SEL, Y => Y1_13_port);
   bit_and_14 : ND2_82 port map( A => A(14), B => SEL, Y => Y1_14_port);
   bit_and_15 : ND2_81 port map( A => A(15), B => SEL, Y => Y1_15_port);
   bit_and_16 : ND2_80 port map( A => A(16), B => SEL, Y => Y1_16_port);
   bit_and_17 : ND2_79 port map( A => A(17), B => SEL, Y => Y1_17_port);
   bit_and_18 : ND2_78 port map( A => A(18), B => SEL, Y => Y1_18_port);
   bit_and_19 : ND2_77 port map( A => A(19), B => SEL, Y => Y1_19_port);
   bit_and_20 : ND2_76 port map( A => A(20), B => SEL, Y => Y1_20_port);
   bit_and_21 : ND2_75 port map( A => A(21), B => SEL, Y => Y1_21_port);
   bit_and_22 : ND2_74 port map( A => A(22), B => SEL, Y => Y1_22_port);
   bit_and_23 : ND2_73 port map( A => A(23), B => SEL, Y => Y1_23_port);
   bit_and_24 : ND2_72 port map( A => A(24), B => SEL, Y => Y1_24_port);
   bit_and_25 : ND2_71 port map( A => A(25), B => SEL, Y => Y1_25_port);
   bit_and_26 : ND2_70 port map( A => A(26), B => SEL, Y => Y1_26_port);
   bit_and_27 : ND2_69 port map( A => A(27), B => SEL, Y => Y1_27_port);
   bit_and_28 : ND2_68 port map( A => A(28), B => SEL, Y => Y1_28_port);
   bit_and_29 : ND2_67 port map( A => A(29), B => SEL, Y => Y1_29_port);
   bit_and_30 : ND2_66 port map( A => A(30), B => SEL, Y => Y1_30_port);
   bit_and_31 : ND2_65 port map( A => A(31), B => SEL, Y => Y1_31_port);
   bit_and2_0 : ND2_64 port map( A => B(0), B => SB, Y => Y2_0_port);
   bit_and2_1 : ND2_63 port map( A => B(1), B => SB, Y => Y2_1_port);
   bit_and2_2 : ND2_62 port map( A => B(2), B => SB, Y => Y2_2_port);
   bit_and2_3 : ND2_61 port map( A => B(3), B => SB, Y => Y2_3_port);
   bit_and2_4 : ND2_60 port map( A => B(4), B => SB, Y => Y2_4_port);
   bit_and2_5 : ND2_59 port map( A => B(5), B => SB, Y => Y2_5_port);
   bit_and2_6 : ND2_58 port map( A => B(6), B => SB, Y => Y2_6_port);
   bit_and2_7 : ND2_57 port map( A => B(7), B => SB, Y => Y2_7_port);
   bit_and2_8 : ND2_56 port map( A => B(8), B => SB, Y => Y2_8_port);
   bit_and2_9 : ND2_55 port map( A => B(9), B => SB, Y => Y2_9_port);
   bit_and2_10 : ND2_54 port map( A => B(10), B => SB, Y => Y2_10_port);
   bit_and2_11 : ND2_53 port map( A => B(11), B => SB, Y => Y2_11_port);
   bit_and2_12 : ND2_52 port map( A => B(12), B => SB, Y => Y2_12_port);
   bit_and2_13 : ND2_51 port map( A => B(13), B => SB, Y => Y2_13_port);
   bit_and2_14 : ND2_50 port map( A => B(14), B => SB, Y => Y2_14_port);
   bit_and2_15 : ND2_49 port map( A => B(15), B => SB, Y => Y2_15_port);
   bit_and2_16 : ND2_48 port map( A => B(16), B => SB, Y => Y2_16_port);
   bit_and2_17 : ND2_47 port map( A => B(17), B => SB, Y => Y2_17_port);
   bit_and2_18 : ND2_46 port map( A => B(18), B => SB, Y => Y2_18_port);
   bit_and2_19 : ND2_45 port map( A => B(19), B => SB, Y => Y2_19_port);
   bit_and2_20 : ND2_44 port map( A => B(20), B => SB, Y => Y2_20_port);
   bit_and2_21 : ND2_43 port map( A => B(21), B => SB, Y => Y2_21_port);
   bit_and2_22 : ND2_42 port map( A => B(22), B => SB, Y => Y2_22_port);
   bit_and2_23 : ND2_41 port map( A => B(23), B => SB, Y => Y2_23_port);
   bit_and2_24 : ND2_40 port map( A => B(24), B => SB, Y => Y2_24_port);
   bit_and2_25 : ND2_39 port map( A => B(25), B => SB, Y => Y2_25_port);
   bit_and2_26 : ND2_38 port map( A => B(26), B => SB, Y => Y2_26_port);
   bit_and2_27 : ND2_37 port map( A => B(27), B => SB, Y => Y2_27_port);
   bit_and2_28 : ND2_36 port map( A => B(28), B => SB, Y => Y2_28_port);
   bit_and2_29 : ND2_35 port map( A => B(29), B => SB, Y => Y2_29_port);
   bit_and2_30 : ND2_34 port map( A => B(30), B => SB, Y => Y2_30_port);
   bit_and2_31 : ND2_33 port map( A => B(31), B => SB, Y => Y2_31_port);
   bit_and3_0 : ND2_32 port map( A => Y1_0_port, B => Y2_0_port, Y => Y(0));
   bit_and3_1 : ND2_31 port map( A => Y1_1_port, B => Y2_1_port, Y => Y(1));
   bit_and3_2 : ND2_30 port map( A => Y1_2_port, B => Y2_2_port, Y => Y(2));
   bit_and3_3 : ND2_29 port map( A => Y1_3_port, B => Y2_3_port, Y => Y(3));
   bit_and3_4 : ND2_28 port map( A => Y1_4_port, B => Y2_4_port, Y => Y(4));
   bit_and3_5 : ND2_27 port map( A => Y1_5_port, B => Y2_5_port, Y => Y(5));
   bit_and3_6 : ND2_26 port map( A => Y1_6_port, B => Y2_6_port, Y => Y(6));
   bit_and3_7 : ND2_25 port map( A => Y1_7_port, B => Y2_7_port, Y => Y(7));
   bit_and3_8 : ND2_24 port map( A => Y1_8_port, B => Y2_8_port, Y => Y(8));
   bit_and3_9 : ND2_23 port map( A => Y1_9_port, B => Y2_9_port, Y => Y(9));
   bit_and3_10 : ND2_22 port map( A => Y1_10_port, B => Y2_10_port, Y => Y(10))
                           ;
   bit_and3_11 : ND2_21 port map( A => Y1_11_port, B => Y2_11_port, Y => Y(11))
                           ;
   bit_and3_12 : ND2_20 port map( A => Y1_12_port, B => Y2_12_port, Y => Y(12))
                           ;
   bit_and3_13 : ND2_19 port map( A => Y1_13_port, B => Y2_13_port, Y => Y(13))
                           ;
   bit_and3_14 : ND2_18 port map( A => Y1_14_port, B => Y2_14_port, Y => Y(14))
                           ;
   bit_and3_15 : ND2_17 port map( A => Y1_15_port, B => Y2_15_port, Y => Y(15))
                           ;
   bit_and3_16 : ND2_16 port map( A => Y1_16_port, B => Y2_16_port, Y => Y(16))
                           ;
   bit_and3_17 : ND2_15 port map( A => Y1_17_port, B => Y2_17_port, Y => Y(17))
                           ;
   bit_and3_18 : ND2_14 port map( A => Y1_18_port, B => Y2_18_port, Y => Y(18))
                           ;
   bit_and3_19 : ND2_13 port map( A => Y1_19_port, B => Y2_19_port, Y => Y(19))
                           ;
   bit_and3_20 : ND2_12 port map( A => Y1_20_port, B => Y2_20_port, Y => Y(20))
                           ;
   bit_and3_21 : ND2_11 port map( A => Y1_21_port, B => Y2_21_port, Y => Y(21))
                           ;
   bit_and3_22 : ND2_10 port map( A => Y1_22_port, B => Y2_22_port, Y => Y(22))
                           ;
   bit_and3_23 : ND2_9 port map( A => Y1_23_port, B => Y2_23_port, Y => Y(23));
   bit_and3_24 : ND2_8 port map( A => Y1_24_port, B => Y2_24_port, Y => Y(24));
   bit_and3_25 : ND2_7 port map( A => Y1_25_port, B => Y2_25_port, Y => Y(25));
   bit_and3_26 : ND2_6 port map( A => Y1_26_port, B => Y2_26_port, Y => Y(26));
   bit_and3_27 : ND2_5 port map( A => Y1_27_port, B => Y2_27_port, Y => Y(27));
   bit_and3_28 : ND2_4 port map( A => Y1_28_port, B => Y2_28_port, Y => Y(28));
   bit_and3_29 : ND2_3 port map( A => Y1_29_port, B => Y2_29_port, Y => Y(29));
   bit_and3_30 : ND2_2 port map( A => Y1_30_port, B => Y2_30_port, Y => Y(30));
   bit_and3_31 : ND2_1 port map( A => Y1_31_port, B => Y2_31_port, Y => Y(31));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc.all;

entity acc is

   port( A, B : in std_logic_vector (31 downto 0);  CLK, RST_n, ACCUMULATE : in
         std_logic;  Y : out std_logic_vector (31 downto 0));

end acc;

architecture SYN_Structural of acc is

   component FDSYNCH_NBIT32
      port( D : in std_logic_vector (31 downto 0);  CK, RESET : in std_logic;  
            Q : out std_logic_vector (31 downto 0));
   end component;
   
   component RCA_generic_NBIT32
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (31 downto 0);  Co : out std_logic);
   end component;
   
   component MUX21_GENERIC_NBIT32
      port( A, B : in std_logic_vector (31 downto 0);  SEL : in std_logic;  Y :
            out std_logic_vector (31 downto 0));
   end component;
   
   signal X_Logic0_port, Y_31_port, Y_30_port, Y_29_port, Y_28_port, Y_27_port,
      Y_26_port, Y_25_port, Y_24_port, Y_23_port, Y_22_port, Y_21_port, 
      Y_20_port, Y_19_port, Y_18_port, Y_17_port, Y_16_port, Y_15_port, 
      Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, Y_9_port, Y_8_port
      , Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port, 
      Y_0_port, Out1_31_port, Out1_30_port, Out1_29_port, Out1_28_port, 
      Out1_27_port, Out1_26_port, Out1_25_port, Out1_24_port, Out1_23_port, 
      Out1_22_port, Out1_21_port, Out1_20_port, Out1_19_port, Out1_18_port, 
      Out1_17_port, Out1_16_port, Out1_15_port, Out1_14_port, Out1_13_port, 
      Out1_12_port, Out1_11_port, Out1_10_port, Out1_9_port, Out1_8_port, 
      Out1_7_port, Out1_6_port, Out1_5_port, Out1_4_port, Out1_3_port, 
      Out1_2_port, Out1_1_port, Out1_0_port, Out2_31_port, Out2_30_port, 
      Out2_29_port, Out2_28_port, Out2_27_port, Out2_26_port, Out2_25_port, 
      Out2_24_port, Out2_23_port, Out2_22_port, Out2_21_port, Out2_20_port, 
      Out2_19_port, Out2_18_port, Out2_17_port, Out2_16_port, Out2_15_port, 
      Out2_14_port, Out2_13_port, Out2_12_port, Out2_11_port, Out2_10_port, 
      Out2_9_port, Out2_8_port, Out2_7_port, Out2_6_port, Out2_5_port, 
      Out2_4_port, Out2_3_port, Out2_2_port, Out2_1_port, Out2_0_port, n_1036 :
      std_logic;

begin
   Y <= ( Y_31_port, Y_30_port, Y_29_port, Y_28_port, Y_27_port, Y_26_port, 
      Y_25_port, Y_24_port, Y_23_port, Y_22_port, Y_21_port, Y_20_port, 
      Y_19_port, Y_18_port, Y_17_port, Y_16_port, Y_15_port, Y_14_port, 
      Y_13_port, Y_12_port, Y_11_port, Y_10_port, Y_9_port, Y_8_port, Y_7_port,
      Y_6_port, Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port, Y_0_port );
   
   X_Logic0_port <= '0';
   MUX1 : MUX21_GENERIC_NBIT32 port map( A(31) => B(31), A(30) => B(30), A(29) 
                           => B(29), A(28) => B(28), A(27) => B(27), A(26) => 
                           B(26), A(25) => B(25), A(24) => B(24), A(23) => 
                           B(23), A(22) => B(22), A(21) => B(21), A(20) => 
                           B(20), A(19) => B(19), A(18) => B(18), A(17) => 
                           B(17), A(16) => B(16), A(15) => B(15), A(14) => 
                           B(14), A(13) => B(13), A(12) => B(12), A(11) => 
                           B(11), A(10) => B(10), A(9) => B(9), A(8) => B(8), 
                           A(7) => B(7), A(6) => B(6), A(5) => B(5), A(4) => 
                           B(4), A(3) => B(3), A(2) => B(2), A(1) => B(1), A(0)
                           => B(0), B(31) => Y_31_port, B(30) => Y_30_port, 
                           B(29) => Y_29_port, B(28) => Y_28_port, B(27) => 
                           Y_27_port, B(26) => Y_26_port, B(25) => Y_25_port, 
                           B(24) => Y_24_port, B(23) => Y_23_port, B(22) => 
                           Y_22_port, B(21) => Y_21_port, B(20) => Y_20_port, 
                           B(19) => Y_19_port, B(18) => Y_18_port, B(17) => 
                           Y_17_port, B(16) => Y_16_port, B(15) => Y_15_port, 
                           B(14) => Y_14_port, B(13) => Y_13_port, B(12) => 
                           Y_12_port, B(11) => Y_11_port, B(10) => Y_10_port, 
                           B(9) => Y_9_port, B(8) => Y_8_port, B(7) => Y_7_port
                           , B(6) => Y_6_port, B(5) => Y_5_port, B(4) => 
                           Y_4_port, B(3) => Y_3_port, B(2) => Y_2_port, B(1) 
                           => Y_1_port, B(0) => Y_0_port, SEL => ACCUMULATE, 
                           Y(31) => Out1_31_port, Y(30) => Out1_30_port, Y(29) 
                           => Out1_29_port, Y(28) => Out1_28_port, Y(27) => 
                           Out1_27_port, Y(26) => Out1_26_port, Y(25) => 
                           Out1_25_port, Y(24) => Out1_24_port, Y(23) => 
                           Out1_23_port, Y(22) => Out1_22_port, Y(21) => 
                           Out1_21_port, Y(20) => Out1_20_port, Y(19) => 
                           Out1_19_port, Y(18) => Out1_18_port, Y(17) => 
                           Out1_17_port, Y(16) => Out1_16_port, Y(15) => 
                           Out1_15_port, Y(14) => Out1_14_port, Y(13) => 
                           Out1_13_port, Y(12) => Out1_12_port, Y(11) => 
                           Out1_11_port, Y(10) => Out1_10_port, Y(9) => 
                           Out1_9_port, Y(8) => Out1_8_port, Y(7) => 
                           Out1_7_port, Y(6) => Out1_6_port, Y(5) => 
                           Out1_5_port, Y(4) => Out1_4_port, Y(3) => 
                           Out1_3_port, Y(2) => Out1_2_port, Y(1) => 
                           Out1_1_port, Y(0) => Out1_0_port);
   RCA1 : RCA_generic_NBIT32 port map( A(31) => A(31), A(30) => A(30), A(29) =>
                           A(29), A(28) => A(28), A(27) => A(27), A(26) => 
                           A(26), A(25) => A(25), A(24) => A(24), A(23) => 
                           A(23), A(22) => A(22), A(21) => A(21), A(20) => 
                           A(20), A(19) => A(19), A(18) => A(18), A(17) => 
                           A(17), A(16) => A(16), A(15) => A(15), A(14) => 
                           A(14), A(13) => A(13), A(12) => A(12), A(11) => 
                           A(11), A(10) => A(10), A(9) => A(9), A(8) => A(8), 
                           A(7) => A(7), A(6) => A(6), A(5) => A(5), A(4) => 
                           A(4), A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(31) => Out1_31_port, B(30) => 
                           Out1_30_port, B(29) => Out1_29_port, B(28) => 
                           Out1_28_port, B(27) => Out1_27_port, B(26) => 
                           Out1_26_port, B(25) => Out1_25_port, B(24) => 
                           Out1_24_port, B(23) => Out1_23_port, B(22) => 
                           Out1_22_port, B(21) => Out1_21_port, B(20) => 
                           Out1_20_port, B(19) => Out1_19_port, B(18) => 
                           Out1_18_port, B(17) => Out1_17_port, B(16) => 
                           Out1_16_port, B(15) => Out1_15_port, B(14) => 
                           Out1_14_port, B(13) => Out1_13_port, B(12) => 
                           Out1_12_port, B(11) => Out1_11_port, B(10) => 
                           Out1_10_port, B(9) => Out1_9_port, B(8) => 
                           Out1_8_port, B(7) => Out1_7_port, B(6) => 
                           Out1_6_port, B(5) => Out1_5_port, B(4) => 
                           Out1_4_port, B(3) => Out1_3_port, B(2) => 
                           Out1_2_port, B(1) => Out1_1_port, B(0) => 
                           Out1_0_port, Ci => X_Logic0_port, S(31) => 
                           Out2_31_port, S(30) => Out2_30_port, S(29) => 
                           Out2_29_port, S(28) => Out2_28_port, S(27) => 
                           Out2_27_port, S(26) => Out2_26_port, S(25) => 
                           Out2_25_port, S(24) => Out2_24_port, S(23) => 
                           Out2_23_port, S(22) => Out2_22_port, S(21) => 
                           Out2_21_port, S(20) => Out2_20_port, S(19) => 
                           Out2_19_port, S(18) => Out2_18_port, S(17) => 
                           Out2_17_port, S(16) => Out2_16_port, S(15) => 
                           Out2_15_port, S(14) => Out2_14_port, S(13) => 
                           Out2_13_port, S(12) => Out2_12_port, S(11) => 
                           Out2_11_port, S(10) => Out2_10_port, S(9) => 
                           Out2_9_port, S(8) => Out2_8_port, S(7) => 
                           Out2_7_port, S(6) => Out2_6_port, S(5) => 
                           Out2_5_port, S(4) => Out2_4_port, S(3) => 
                           Out2_3_port, S(2) => Out2_2_port, S(1) => 
                           Out2_1_port, S(0) => Out2_0_port, Co => n_1036);
   FD1 : FDSYNCH_NBIT32 port map( D(31) => Out2_31_port, D(30) => Out2_30_port,
                           D(29) => Out2_29_port, D(28) => Out2_28_port, D(27) 
                           => Out2_27_port, D(26) => Out2_26_port, D(25) => 
                           Out2_25_port, D(24) => Out2_24_port, D(23) => 
                           Out2_23_port, D(22) => Out2_22_port, D(21) => 
                           Out2_21_port, D(20) => Out2_20_port, D(19) => 
                           Out2_19_port, D(18) => Out2_18_port, D(17) => 
                           Out2_17_port, D(16) => Out2_16_port, D(15) => 
                           Out2_15_port, D(14) => Out2_14_port, D(13) => 
                           Out2_13_port, D(12) => Out2_12_port, D(11) => 
                           Out2_11_port, D(10) => Out2_10_port, D(9) => 
                           Out2_9_port, D(8) => Out2_8_port, D(7) => 
                           Out2_7_port, D(6) => Out2_6_port, D(5) => 
                           Out2_5_port, D(4) => Out2_4_port, D(3) => 
                           Out2_3_port, D(2) => Out2_2_port, D(1) => 
                           Out2_1_port, D(0) => Out2_0_port, CK => CLK, RESET 
                           => RST_n, Q(31) => Y_31_port, Q(30) => Y_30_port, 
                           Q(29) => Y_29_port, Q(28) => Y_28_port, Q(27) => 
                           Y_27_port, Q(26) => Y_26_port, Q(25) => Y_25_port, 
                           Q(24) => Y_24_port, Q(23) => Y_23_port, Q(22) => 
                           Y_22_port, Q(21) => Y_21_port, Q(20) => Y_20_port, 
                           Q(19) => Y_19_port, Q(18) => Y_18_port, Q(17) => 
                           Y_17_port, Q(16) => Y_16_port, Q(15) => Y_15_port, 
                           Q(14) => Y_14_port, Q(13) => Y_13_port, Q(12) => 
                           Y_12_port, Q(11) => Y_11_port, Q(10) => Y_10_port, 
                           Q(9) => Y_9_port, Q(8) => Y_8_port, Q(7) => Y_7_port
                           , Q(6) => Y_6_port, Q(5) => Y_5_port, Q(4) => 
                           Y_4_port, Q(3) => Y_3_port, Q(2) => Y_2_port, Q(1) 
                           => Y_1_port, Q(0) => Y_0_port);

end SYN_Structural;
