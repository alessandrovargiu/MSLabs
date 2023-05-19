
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_SIPISOALU is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_SIPISOALU;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SIPISOALU.all;

entity sipisoAluControl is

   port( clk, rst, strobeA, strobeB : in std_logic;  shiftA, loadB, loadC, 
         shiftC, startC : out std_logic);

end sipisoAluControl;

architecture SYN_FSM_OPC of sipisoAluControl is

   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal loadB_port, loadC_port, NEXT_STATE_4_port, NEXT_STATE_3_port, 
      NEXT_STATE_2_port, NEXT_STATE_1_port, NEXT_STATE_0_port, n1, n7, n8, n9, 
      n10, n2, n3, n4, n5, n6, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20
      , n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, 
      n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49
      , n_1000, n_1001 : std_logic;

begin
   loadB <= loadB_port;
   loadC <= loadC_port;
   startC <= loadC_port;
   
   CURRENT_STATE_reg_0_inst : DFFR_X1 port map( D => NEXT_STATE_0_port, CK => 
                           clk, RN => n1, Q => n_1000, QN => n10);
   CURRENT_STATE_reg_3_inst : DFFR_X1 port map( D => NEXT_STATE_3_port, CK => 
                           clk, RN => n1, Q => n4, QN => n7);
   CURRENT_STATE_reg_1_inst : DFFR_X1 port map( D => NEXT_STATE_1_port, CK => 
                           clk, RN => n1, Q => n3, QN => n9);
   CURRENT_STATE_reg_2_inst : DFFR_X1 port map( D => NEXT_STATE_2_port, CK => 
                           clk, RN => n1, Q => n_1001, QN => n8);
   CURRENT_STATE_reg_4_inst : DFFR_X1 port map( D => NEXT_STATE_4_port, CK => 
                           clk, RN => n1, Q => n2, QN => n49);
   U3 : OAI21_X1 port map( B1 => n9, B2 => n5, A => n6, ZN => shiftC);
   U4 : INV_X1 port map( A => n11, ZN => n5);
   U5 : NOR2_X1 port map( A1 => n12, A2 => n13, ZN => shiftA);
   U6 : INV_X1 port map( A => rst, ZN => n1);
   U7 : AND2_X1 port map( A1 => n11, A2 => n14, ZN => NEXT_STATE_4_port);
   U8 : OAI211_X1 port map( C1 => n15, C2 => n16, A => n17, B => n18, ZN => 
                           NEXT_STATE_3_port);
   U9 : OAI21_X1 port map( B1 => n19, B2 => n3, A => n20, ZN => n17);
   U10 : AOI21_X1 port map( B1 => n12, B2 => n21, A => loadB_port, ZN => n16);
   U11 : OAI211_X1 port map( C1 => n22, C2 => n23, A => n24, B => n25, ZN => 
                           NEXT_STATE_2_port);
   U12 : NAND3_X1 port map( A1 => n14, A2 => n26, A3 => n20, ZN => n24);
   U13 : AOI21_X1 port map( B1 => n27, B2 => n14, A => n28, ZN => n23);
   U14 : INV_X1 port map( A => n29, ZN => n28);
   U15 : NOR2_X1 port map( A1 => n10, A2 => n9, ZN => n14);
   U16 : INV_X1 port map( A => n30, ZN => n22);
   U17 : OAI211_X1 port map( C1 => n29, C2 => n26, A => n31, B => n25, ZN => 
                           NEXT_STATE_1_port);
   U18 : INV_X1 port map( A => n32, ZN => n25);
   U19 : OAI21_X1 port map( B1 => n33, B2 => n26, A => n18, ZN => n32);
   U20 : AOI21_X1 port map( B1 => n11, B2 => n34, A => loadC_port, ZN => n18);
   U21 : AND2_X1 port map( A1 => n19, A2 => n11, ZN => loadC_port);
   U22 : OAI21_X1 port map( B1 => n34, B2 => n19, A => n35, ZN => n31);
   U23 : INV_X1 port map( A => n36, ZN => n35);
   U24 : AOI22_X1 port map( A1 => n26, A2 => n20, B1 => n30, B2 => n27, ZN => 
                           n36);
   U25 : INV_X1 port map( A => n15, ZN => n26);
   U26 : OAI211_X1 port map( C1 => n33, C2 => n30, A => n37, B => n38, ZN => 
                           NEXT_STATE_0_port);
   U27 : AOI22_X1 port map( A1 => n27, A2 => n39, B1 => n34, B2 => n21, ZN => 
                           n38);
   U28 : OR2_X1 port map( A1 => n20, A2 => n11, ZN => n21);
   U29 : INV_X1 port map( A => n40, ZN => n34);
   U30 : NAND2_X1 port map( A1 => n30, A2 => n40, ZN => n39);
   U31 : NAND2_X1 port map( A1 => n10, A2 => n3, ZN => n40);
   U32 : MUX2_X1 port map( A => n29, B => n41, S => n15, Z => n37);
   U33 : NOR2_X1 port map( A1 => n42, A2 => strobeA, ZN => n15);
   U34 : NOR2_X1 port map( A1 => n20, A2 => n43, ZN => n41);
   U35 : AOI221_X1 port map( B1 => n19, B2 => n44, C1 => n10, C2 => loadB_port,
                           A => n45, ZN => n29);
   U36 : INV_X1 port map( A => n46, ZN => n45);
   U37 : OAI21_X1 port map( B1 => n44, B2 => n11, A => n12, ZN => n46);
   U38 : NOR3_X1 port map( A1 => n7, A2 => n8, A3 => n2, ZN => n11);
   U39 : INV_X1 port map( A => n47, ZN => loadB_port);
   U40 : NOR2_X1 port map( A1 => n3, A2 => n10, ZN => n19);
   U41 : NAND2_X1 port map( A1 => strobeA, A2 => n42, ZN => n30);
   U42 : INV_X1 port map( A => strobeB, ZN => n42);
   U43 : INV_X1 port map( A => n43, ZN => n33);
   U44 : OAI211_X1 port map( C1 => n10, C2 => n47, A => n6, B => n48, ZN => n43
                           );
   U45 : AOI22_X1 port map( A1 => n27, A2 => n12, B1 => n20, B2 => n12, ZN => 
                           n48);
   U46 : NOR2_X1 port map( A1 => n13, A2 => n7, ZN => n20);
   U47 : NOR2_X1 port map( A1 => n13, A2 => n4, ZN => n27);
   U48 : NAND2_X1 port map( A1 => n8, A2 => n49, ZN => n13);
   U49 : NAND4_X1 port map( A1 => n8, A2 => n7, A3 => n12, A4 => n2, ZN => n6);
   U50 : AND2_X1 port map( A1 => n10, A2 => n9, ZN => n12);
   U51 : NAND2_X1 port map( A1 => n44, A2 => n3, ZN => n47);
   U52 : NOR3_X1 port map( A1 => n2, A2 => n8, A3 => n4, ZN => n44);

end SYN_FSM_OPC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SIPISOALU.all;

entity SIPISOALU is

   port( CLK, RESET, STARTA, A, LOADB : in std_logic;  B : in std_logic_vector 
         (3 downto 0);  STARTC, C : out std_logic);

end SIPISOALU;

architecture SYN_A of SIPISOALU is

   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component sipisoAluControl
      port( clk, rst, strobeA, strobeB : in std_logic;  shiftA, loadB, loadC, 
            shiftC, startC : out std_logic);
   end component;
   
   signal EA, LDB, LDC, SHIFTC, n26, n37, n38, n39, n40, n41, n42, n43, n44, 
      n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59
      , n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, 
      n74, n75, n76, n_1002, n_1003, n_1004, n_1005, n_1006, n_1007, n_1008, 
      n_1009, n_1010 : std_logic;

begin
   
   control : sipisoAluControl port map( clk => CLK, rst => RESET, strobeA => 
                           STARTA, strobeB => LOADB, shiftA => EA, loadB => LDB
                           , loadC => LDC, shiftC => SHIFTC, startC => STARTC);
   SIPO_reg_0_inst : DFFR_X1 port map( D => n48, CK => CLK, RN => n47, Q => n76
                           , QN => n50);
   SIPO_reg_1_inst : DFFR_X1 port map( D => n46, CK => CLK, RN => n47, Q => n75
                           , QN => n_1002);
   SIPO_reg_2_inst : DFFR_X1 port map( D => n45, CK => CLK, RN => n47, Q => n74
                           , QN => n_1003);
   PIPO_reg_3_inst : DFFR_X1 port map( D => n44, CK => CLK, RN => n47, Q => n73
                           , QN => n_1004);
   PIPO_reg_2_inst : DFFR_X1 port map( D => n43, CK => CLK, RN => n47, Q => n72
                           , QN => n_1005);
   PIPO_reg_1_inst : DFFR_X1 port map( D => n42, CK => CLK, RN => n47, Q => n71
                           , QN => n_1006);
   PIPO_reg_0_inst : DFFR_X1 port map( D => n41, CK => CLK, RN => n47, Q => n70
                           , QN => n_1007);
   PISO_reg_3_inst : DFFR_X1 port map( D => n40, CK => CLK, RN => n47, Q => 
                           n_1008, QN => n51);
   PISO_reg_2_inst : DFFR_X1 port map( D => n39, CK => CLK, RN => n47, Q => 
                           n_1009, QN => n49);
   PISO_reg_1_inst : DFFR_X1 port map( D => n38, CK => CLK, RN => n47, Q => 
                           n_1010, QN => n52);
   PISO_reg_0_inst : DFFR_X1 port map( D => n37, CK => CLK, RN => n47, Q => C, 
                           QN => n26);
   U38 : MUX2_X1 port map( A => n76, B => A, S => EA, Z => n48);
   U39 : INV_X1 port map( A => RESET, ZN => n47);
   U40 : MUX2_X1 port map( A => n75, B => n76, S => EA, Z => n46);
   U41 : MUX2_X1 port map( A => n74, B => n75, S => EA, Z => n45);
   U42 : MUX2_X1 port map( A => n73, B => B(3), S => LDB, Z => n44);
   U43 : MUX2_X1 port map( A => n72, B => B(2), S => LDB, Z => n43);
   U44 : MUX2_X1 port map( A => n71, B => B(1), S => LDB, Z => n42);
   U45 : MUX2_X1 port map( A => n70, B => B(0), S => LDB, Z => n41);
   U46 : OAI22_X1 port map( A1 => n53, A2 => n51, B1 => n54, B2 => n55, ZN => 
                           n40);
   U47 : XOR2_X1 port map( A => n56, B => n57, Z => n55);
   U48 : XOR2_X1 port map( A => n73, B => n74, Z => n57);
   U49 : AOI21_X1 port map( B1 => n58, B2 => n75, A => n59, ZN => n56);
   U50 : INV_X1 port map( A => n60, ZN => n59);
   U51 : OAI21_X1 port map( B1 => n75, B2 => n58, A => n72, ZN => n60);
   U52 : OAI222_X1 port map( A1 => n61, A2 => n54, B1 => n51, B2 => n62, C1 => 
                           n53, C2 => n49, ZN => n39);
   U53 : XNOR2_X1 port map( A => n58, B => n63, ZN => n61);
   U54 : XOR2_X1 port map( A => n72, B => n75, Z => n63);
   U55 : AOI21_X1 port map( B1 => n50, B2 => n64, A => n65, ZN => n58);
   U56 : AOI21_X1 port map( B1 => n76, B2 => n66, A => n71, ZN => n65);
   U57 : OAI222_X1 port map( A1 => n67, A2 => n54, B1 => n62, B2 => n49, C1 => 
                           n53, C2 => n52, ZN => n38);
   U58 : XNOR2_X1 port map( A => n66, B => n68, ZN => n67);
   U59 : XNOR2_X1 port map( A => n71, B => n50, ZN => n68);
   U60 : INV_X1 port map( A => n64, ZN => n66);
   U61 : NAND2_X1 port map( A1 => n70, A2 => A, ZN => n64);
   U62 : OAI222_X1 port map( A1 => n62, A2 => n52, B1 => n69, B2 => n54, C1 => 
                           n26, C2 => n53, ZN => n37);
   U63 : XNOR2_X1 port map( A => A, B => n70, ZN => n69);
   U64 : NAND2_X1 port map( A1 => n53, A2 => n54, ZN => n62);
   U65 : INV_X1 port map( A => LDC, ZN => n54);
   U66 : OR2_X1 port map( A1 => LDC, A2 => SHIFTC, ZN => n53);

end SYN_A;
