
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_MUX21_GENERIC_NBIT16 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_MUX21_GENERIC_NBIT16;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC_NBIT16.all;

entity MUX21_GENERIC_NBIT16 is

   port( A, B : in std_logic_vector (15 downto 0);  SEL : in std_logic;  Y : 
         out std_logic_vector (15 downto 0));

end MUX21_GENERIC_NBIT16;

architecture SYN_BEHAVIORAL_2 of MUX21_GENERIC_NBIT16 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U34 : MUX2_X1 port map( A => B(9), B => A(9), S => SEL, Z => Y(9));
   U35 : MUX2_X1 port map( A => B(8), B => A(8), S => SEL, Z => Y(8));
   U36 : MUX2_X1 port map( A => B(7), B => A(7), S => SEL, Z => Y(7));
   U37 : MUX2_X1 port map( A => B(6), B => A(6), S => SEL, Z => Y(6));
   U38 : MUX2_X1 port map( A => B(5), B => A(5), S => SEL, Z => Y(5));
   U39 : MUX2_X1 port map( A => B(4), B => A(4), S => SEL, Z => Y(4));
   U40 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));
   U41 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U42 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));
   U43 : MUX2_X1 port map( A => B(15), B => A(15), S => SEL, Z => Y(15));
   U44 : MUX2_X1 port map( A => B(14), B => A(14), S => SEL, Z => Y(14));
   U45 : MUX2_X1 port map( A => B(13), B => A(13), S => SEL, Z => Y(13));
   U46 : MUX2_X1 port map( A => B(12), B => A(12), S => SEL, Z => Y(12));
   U47 : MUX2_X1 port map( A => B(11), B => A(11), S => SEL, Z => Y(11));
   U48 : MUX2_X1 port map( A => B(10), B => A(10), S => SEL, Z => Y(10));
   U49 : MUX2_X1 port map( A => B(0), B => A(0), S => SEL, Z => Y(0));

end SYN_BEHAVIORAL_2;
