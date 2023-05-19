
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

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal NEXT_STATE_4_port, NEXT_STATE_3_port, NEXT_STATE_2_port, 
      NEXT_STATE_1_port, NEXT_STATE_0_port, n7, n9, n49, loadC_port, n2, n3, n4
      , n6, n8, n10, n11, n12, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25
      , n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, 
      n40, n41, n42, n43, n44, n45, n46, n47, n48, n50, n51, loadB_port, n52, 
      n53, n54, n_1000 : std_logic;

begin
   loadB <= loadB_port;
   loadC <= loadC_port;
   startC <= loadC_port;
   
   CURRENT_STATE_reg_3_inst : DFFR_X1 port map( D => NEXT_STATE_3_port, CK => 
                           clk, RN => n16, Q => n52, QN => n7);
   CURRENT_STATE_reg_1_inst : DFFR_X1 port map( D => NEXT_STATE_1_port, CK => 
                           clk, RN => n16, Q => n53, QN => n9);
   CURRENT_STATE_reg_2_inst : DFFR_X1 port map( D => NEXT_STATE_2_port, CK => 
                           clk, RN => n16, Q => n51, QN => n54);
   CURRENT_STATE_reg_4_inst : DFFR_X1 port map( D => NEXT_STATE_4_port, CK => 
                           clk, RN => n16, Q => n_1000, QN => n49);
   U53 : NAND3_X1 port map( A1 => n35, A2 => n53, A3 => n50, ZN => n34);
   U54 : NAND3_X1 port map( A1 => n49, A2 => n52, A3 => n51, ZN => n25);
   U55 : NAND3_X1 port map( A1 => n51, A2 => n49, A3 => n7, ZN => n47);
   CURRENT_STATE_reg_0_inst : DFFR_X1 port map( D => NEXT_STATE_0_port, CK => 
                           clk, RN => n16, Q => n50, QN => n8);
   U3 : INV_X1 port map( A => n24, ZN => loadC_port);
   U4 : NAND2_X1 port map( A1 => n2, A2 => n12, ZN => n24);
   U5 : INV_X1 port map( A => n30, ZN => n11);
   U6 : OAI211_X1 port map( C1 => n30, C2 => n18, A => n32, B => n43, ZN => 
                           NEXT_STATE_0_port);
   U7 : AOI221_X1 port map( B1 => n18, B2 => n37, C1 => n31, C2 => n44, A => 
                           n45, ZN => n43);
   U8 : AOI21_X1 port map( B1 => n46, B2 => n40, A => n36, ZN => n45);
   U9 : INV_X1 port map( A => n20, ZN => shiftC);
   U10 : AOI21_X1 port map( B1 => n53, B2 => n12, A => n21, ZN => n20);
   U11 : NAND2_X1 port map( A1 => n23, A2 => n52, ZN => n30);
   U12 : NAND2_X1 port map( A1 => n40, A2 => n30, ZN => n44);
   U13 : AOI22_X1 port map( A1 => n3, A2 => n41, B1 => n12, B2 => n31, ZN => 
                           n32);
   U14 : INV_X1 port map( A => n46, ZN => n3);
   U15 : INV_X1 port map( A => n25, ZN => n12);
   U16 : NAND4_X1 port map( A1 => n32, A2 => n38, A3 => n39, A4 => n24, ZN => 
                           NEXT_STATE_1_port);
   U17 : OAI21_X1 port map( B1 => n31, B2 => n2, A => n35, ZN => n39);
   U18 : NAND2_X1 port map( A1 => n41, A2 => n37, ZN => n38);
   U19 : INV_X1 port map( A => n42, ZN => n2);
   U20 : NAND4_X1 port map( A1 => n26, A2 => n27, A3 => n28, A4 => n24, ZN => 
                           NEXT_STATE_3_port);
   U21 : NAND2_X1 port map( A1 => n31, A2 => n12, ZN => n26);
   U22 : OAI21_X1 port map( B1 => n2, B2 => n53, A => n11, ZN => n27);
   U23 : OAI21_X1 port map( B1 => n29, B2 => loadB_port, A => n18, ZN => n28);
   U24 : AND2_X1 port map( A1 => n22, A2 => n23, ZN => shiftA);
   U25 : OAI22_X1 port map( A1 => n17, A2 => n40, B1 => n41, B2 => n30, ZN => 
                           n35);
   U26 : INV_X1 port map( A => n36, ZN => n17);
   U27 : AOI21_X1 port map( B1 => n30, B2 => n25, A => n22, ZN => n29);
   U28 : INV_X1 port map( A => n41, ZN => n18);
   U29 : NOR4_X1 port map( A1 => n52, A2 => n22, A3 => n49, A4 => n51, ZN => 
                           n21);
   U30 : AOI221_X1 port map( B1 => n44, B2 => n4, C1 => n50, C2 => loadB_port, 
                           A => n21, ZN => n46);
   U31 : INV_X1 port map( A => n22, ZN => n4);
   U32 : NAND2_X1 port map( A1 => n9, A2 => n8, ZN => n22);
   U33 : AND2_X1 port map( A1 => n49, A2 => n54, ZN => n23);
   U34 : NOR2_X1 port map( A1 => n47, A2 => n9, ZN => loadB_port);
   U35 : OAI221_X1 port map( B1 => n50, B2 => n10, C1 => n47, C2 => n42, A => 
                           n6, ZN => n37);
   U36 : INV_X1 port map( A => n48, ZN => n6);
   U37 : INV_X1 port map( A => loadB_port, ZN => n10);
   U38 : AOI21_X1 port map( B1 => n47, B2 => n25, A => n22, ZN => n48);
   U39 : NAND4_X1 port map( A1 => n32, A2 => n33, A3 => n34, A4 => n24, ZN => 
                           NEXT_STATE_2_port);
   U40 : NAND2_X1 port map( A1 => n36, A2 => n37, ZN => n33);
   U41 : NAND2_X1 port map( A1 => n23, A2 => n7, ZN => n40);
   U42 : NAND2_X1 port map( A1 => n50, A2 => n9, ZN => n42);
   U43 : NOR2_X1 port map( A1 => n50, A2 => n9, ZN => n31);
   U44 : NOR3_X1 port map( A1 => n8, A2 => n9, A3 => n25, ZN => 
                           NEXT_STATE_4_port);
   U45 : NOR2_X1 port map( A1 => n19, A2 => strobeA, ZN => n41);
   U46 : NAND2_X1 port map( A1 => strobeA, A2 => n19, ZN => n36);
   U47 : INV_X1 port map( A => rst, ZN => n16);
   U48 : INV_X1 port map( A => strobeB, ZN => n19);

end SYN_FSM_OPC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SIPISOALU.all;

entity SIPISOALU is

   port( CLK, RESET, STARTA, A, LOADB : in std_logic;  B : in std_logic_vector 
         (3 downto 0);  STARTC, C : out std_logic);

end SIPISOALU;

architecture SYN_A of SIPISOALU is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component sipisoAluControl
      port( clk, rst, strobeA, strobeB : in std_logic;  shiftA, loadB, loadC, 
            shiftC, startC : out std_logic);
   end component;
   
   signal EA, LDB, LDC, SHIFTC, n26, n37, n38, n39, n40, n41, n42, n43, n44, 
      n45, n46, n48, n76, n77, n78, n79, n80, n81, n83, n84, n85, n86, n87, n88
      , n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102
      , n103, n104, n105, n106, n107, n109, n110, n112, n114, n115, n_1001, 
      n_1002, n_1003, n_1004, n_1005, n_1006, n_1007, n_1008 : std_logic;

begin
   
   control : sipisoAluControl port map( clk => CLK, rst => RESET, strobeA => 
                           STARTA, strobeB => LOADB, shiftA => EA, loadB => LDB
                           , loadC => LDC, shiftC => SHIFTC, startC => STARTC);
   SIPO_reg_1_inst : DFFR_X1 port map( D => n46, CK => CLK, RN => n86, Q => 
                           n_1001, QN => n109);
   SIPO_reg_2_inst : DFFR_X1 port map( D => n45, CK => CLK, RN => n86, Q => 
                           n_1002, QN => n106);
   PIPO_reg_3_inst : DFFR_X1 port map( D => n44, CK => CLK, RN => n86, Q => 
                           n_1003, QN => n107);
   PIPO_reg_2_inst : DFFR_X1 port map( D => n43, CK => CLK, RN => n86, Q => 
                           n_1004, QN => n110);
   PIPO_reg_1_inst : DFFR_X1 port map( D => n42, CK => CLK, RN => n86, Q => 
                           n_1005, QN => n112);
   PIPO_reg_0_inst : DFFR_X1 port map( D => n41, CK => CLK, RN => n86, Q => 
                           n115, QN => n114);
   PISO_reg_0_inst : DFFR_X1 port map( D => n37, CK => CLK, RN => n86, Q => C, 
                           QN => n26);
   U75 : XOR2_X1 port map( A => n106, B => n107, Z => n95);
   U76 : XOR2_X1 port map( A => n96, B => n100, Z => n98);
   U77 : XOR2_X1 port map( A => n109, B => n110, Z => n100);
   SIPO_reg_0_inst : DFFR_X1 port map( D => n48, CK => CLK, RN => n86, Q => n76
                           , QN => n80);
   PISO_reg_3_inst : DFFR_X1 port map( D => n40, CK => CLK, RN => n86, Q => 
                           n_1006, QN => n83);
   PISO_reg_1_inst : DFFR_X1 port map( D => n38, CK => CLK, RN => n86, Q => 
                           n_1007, QN => n85);
   PISO_reg_2_inst : DFFR_X1 port map( D => n39, CK => CLK, RN => n86, Q => 
                           n_1008, QN => n84);
   U78 : INV_X1 port map( A => LDC, ZN => n77);
   U79 : NAND2_X1 port map( A1 => n92, A2 => n77, ZN => n99);
   U80 : INV_X1 port map( A => EA, ZN => n78);
   U81 : OR2_X1 port map( A1 => LDC, A2 => SHIFTC, ZN => n92);
   U82 : INV_X1 port map( A => n101, ZN => n81);
   U83 : OAI22_X1 port map( A1 => EA, A2 => n80, B1 => n87, B2 => n78, ZN => 
                           n48);
   U84 : OAI222_X1 port map( A1 => n77, A2 => n98, B1 => n83, B2 => n99, C1 => 
                           n92, C2 => n84, ZN => n39);
   U85 : OAI221_X1 port map( B1 => n99, B2 => n85, C1 => n26, C2 => n92, A => 
                           n105, ZN => n37);
   U86 : OAI211_X1 port map( C1 => A, C2 => n115, A => n81, B => LDC, ZN => 
                           n105);
   U87 : OAI222_X1 port map( A1 => n77, A2 => n103, B1 => n99, B2 => n84, C1 =>
                           n92, C2 => n85, ZN => n38);
   U88 : XNOR2_X1 port map( A => n81, B => n104, ZN => n103);
   U89 : XNOR2_X1 port map( A => n112, B => n80, ZN => n104);
   U90 : NOR2_X1 port map( A1 => n87, A2 => n114, ZN => n101);
   U91 : OAI22_X1 port map( A1 => n92, A2 => n83, B1 => n93, B2 => n77, ZN => 
                           n40);
   U92 : XNOR2_X1 port map( A => n94, B => n95, ZN => n93);
   U93 : AOI21_X1 port map( B1 => n96, B2 => n110, A => n79, ZN => n94);
   U94 : AOI21_X1 port map( B1 => n76, B2 => n101, A => n102, ZN => n96);
   U95 : AOI21_X1 port map( B1 => n81, B2 => n80, A => n112, ZN => n102);
   U96 : INV_X1 port map( A => n97, ZN => n79);
   U97 : OAI21_X1 port map( B1 => n96, B2 => n110, A => n109, ZN => n97);
   U98 : OAI21_X1 port map( B1 => n114, B2 => LDB, A => n91, ZN => n41);
   U99 : NAND2_X1 port map( A1 => B(0), A2 => LDB, ZN => n91);
   U100 : OAI21_X1 port map( B1 => n112, B2 => LDB, A => n90, ZN => n42);
   U101 : NAND2_X1 port map( A1 => B(1), A2 => LDB, ZN => n90);
   U102 : OAI21_X1 port map( B1 => n110, B2 => LDB, A => n89, ZN => n43);
   U103 : NAND2_X1 port map( A1 => B(2), A2 => LDB, ZN => n89);
   U104 : OAI21_X1 port map( B1 => n107, B2 => LDB, A => n88, ZN => n44);
   U105 : NAND2_X1 port map( A1 => LDB, A2 => B(3), ZN => n88);
   U106 : OAI22_X1 port map( A1 => n109, A2 => n78, B1 => n106, B2 => EA, ZN =>
                           n45);
   U107 : OAI22_X1 port map( A1 => n78, A2 => n80, B1 => n109, B2 => EA, ZN => 
                           n46);
   U108 : INV_X1 port map( A => RESET, ZN => n86);
   U109 : INV_X1 port map( A => A, ZN => n87);

end SYN_A;
