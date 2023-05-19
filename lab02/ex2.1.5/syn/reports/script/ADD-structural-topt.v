/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Mon Apr 17 19:57:43 2023
/////////////////////////////////////////////////////////////


module PGNetwork ( a, b, cin, g, p );
  input [31:0] a;
  input [31:0] b;
  output [31:0] g;
  output [31:0] p;
  input cin;


  XOR2_X1 U33 ( .A(b[9]), .B(a[9]), .Z(p[9]) );
  XOR2_X1 U34 ( .A(b[8]), .B(a[8]), .Z(p[8]) );
  XOR2_X1 U35 ( .A(b[7]), .B(a[7]), .Z(p[7]) );
  XOR2_X1 U36 ( .A(b[6]), .B(a[6]), .Z(p[6]) );
  XOR2_X1 U37 ( .A(b[5]), .B(a[5]), .Z(p[5]) );
  XOR2_X1 U38 ( .A(b[4]), .B(a[4]), .Z(p[4]) );
  XOR2_X1 U39 ( .A(b[3]), .B(a[3]), .Z(p[3]) );
  XOR2_X1 U40 ( .A(b[31]), .B(a[31]), .Z(p[31]) );
  XOR2_X1 U41 ( .A(b[30]), .B(a[30]), .Z(p[30]) );
  XOR2_X1 U42 ( .A(b[2]), .B(a[2]), .Z(p[2]) );
  XOR2_X1 U43 ( .A(b[29]), .B(a[29]), .Z(p[29]) );
  XOR2_X1 U44 ( .A(b[28]), .B(a[28]), .Z(p[28]) );
  XOR2_X1 U45 ( .A(b[27]), .B(a[27]), .Z(p[27]) );
  XOR2_X1 U46 ( .A(b[26]), .B(a[26]), .Z(p[26]) );
  XOR2_X1 U47 ( .A(b[25]), .B(a[25]), .Z(p[25]) );
  XOR2_X1 U48 ( .A(b[24]), .B(a[24]), .Z(p[24]) );
  XOR2_X1 U49 ( .A(b[23]), .B(a[23]), .Z(p[23]) );
  XOR2_X1 U50 ( .A(b[22]), .B(a[22]), .Z(p[22]) );
  XOR2_X1 U51 ( .A(b[21]), .B(a[21]), .Z(p[21]) );
  XOR2_X1 U52 ( .A(b[20]), .B(a[20]), .Z(p[20]) );
  XOR2_X1 U53 ( .A(b[1]), .B(a[1]), .Z(p[1]) );
  XOR2_X1 U54 ( .A(b[19]), .B(a[19]), .Z(p[19]) );
  XOR2_X1 U55 ( .A(b[18]), .B(a[18]), .Z(p[18]) );
  XOR2_X1 U56 ( .A(b[17]), .B(a[17]), .Z(p[17]) );
  XOR2_X1 U57 ( .A(b[16]), .B(a[16]), .Z(p[16]) );
  XOR2_X1 U58 ( .A(b[15]), .B(a[15]), .Z(p[15]) );
  XOR2_X1 U59 ( .A(b[14]), .B(a[14]), .Z(p[14]) );
  XOR2_X1 U60 ( .A(b[13]), .B(a[13]), .Z(p[13]) );
  XOR2_X1 U61 ( .A(b[12]), .B(a[12]), .Z(p[12]) );
  XOR2_X1 U62 ( .A(b[11]), .B(a[11]), .Z(p[11]) );
  XOR2_X1 U63 ( .A(b[10]), .B(a[10]), .Z(p[10]) );
  XOR2_X1 U64 ( .A(b[0]), .B(a[0]), .Z(p[0]) );
  AND2_X1 U1 ( .A1(b[14]), .A2(a[14]), .ZN(g[14]) );
  AND2_X1 U2 ( .A1(b[16]), .A2(a[16]), .ZN(g[16]) );
  AND2_X1 U3 ( .A1(b[13]), .A2(a[13]), .ZN(g[13]) );
  AND2_X1 U4 ( .A1(b[12]), .A2(a[12]), .ZN(g[12]) );
  AND2_X1 U5 ( .A1(b[19]), .A2(a[19]), .ZN(g[19]) );
  AND2_X1 U6 ( .A1(b[22]), .A2(a[22]), .ZN(g[22]) );
  AND2_X1 U7 ( .A1(b[21]), .A2(a[21]), .ZN(g[21]) );
  AND2_X1 U8 ( .A1(b[20]), .A2(a[20]), .ZN(g[20]) );
  AND2_X1 U9 ( .A1(b[25]), .A2(a[25]), .ZN(g[25]) );
  AND2_X1 U10 ( .A1(b[24]), .A2(a[24]), .ZN(g[24]) );
  AND2_X1 U11 ( .A1(b[28]), .A2(a[28]), .ZN(g[28]) );
  AND2_X1 U12 ( .A1(b[29]), .A2(a[29]), .ZN(g[29]) );
  AND2_X1 U13 ( .A1(b[27]), .A2(a[27]), .ZN(g[27]) );
  AND2_X1 U14 ( .A1(b[26]), .A2(a[26]), .ZN(g[26]) );
  AND2_X1 U15 ( .A1(b[30]), .A2(a[30]), .ZN(g[30]) );
  AND2_X1 U16 ( .A1(b[31]), .A2(a[31]), .ZN(g[31]) );
  AND2_X1 U17 ( .A1(b[18]), .A2(a[18]), .ZN(g[18]) );
  AND2_X1 U18 ( .A1(b[8]), .A2(a[8]), .ZN(g[8]) );
  AND2_X1 U19 ( .A1(b[15]), .A2(a[15]), .ZN(g[15]) );
  AND2_X1 U20 ( .A1(b[23]), .A2(a[23]), .ZN(g[23]) );
  AND2_X1 U21 ( .A1(b[11]), .A2(a[11]), .ZN(g[11]) );
  AND2_X1 U22 ( .A1(b[10]), .A2(a[10]), .ZN(g[10]) );
  AND2_X1 U23 ( .A1(b[4]), .A2(a[4]), .ZN(g[4]) );
  AND2_X1 U24 ( .A1(b[6]), .A2(a[6]), .ZN(g[6]) );
  AND2_X1 U25 ( .A1(b[7]), .A2(a[7]), .ZN(g[7]) );
  AND2_X1 U26 ( .A1(b[17]), .A2(a[17]), .ZN(g[17]) );
  AND2_X1 U27 ( .A1(b[3]), .A2(a[3]), .ZN(g[3]) );
  AND2_X1 U28 ( .A1(b[9]), .A2(a[9]), .ZN(g[9]) );
  AND2_X1 U29 ( .A1(b[0]), .A2(a[0]), .ZN(g[0]) );
  AND2_X1 U30 ( .A1(b[2]), .A2(a[2]), .ZN(g[2]) );
  AND2_X1 U31 ( .A1(b[5]), .A2(a[5]), .ZN(g[5]) );
  AND2_X1 U32 ( .A1(b[1]), .A2(a[1]), .ZN(g[1]) );
endmodule


module G_0 ( P_ik, G_ik, Gk_1j, G_ij );
  input P_ik, G_ik, Gk_1j;
  output G_ij;
  wire   n2;

  AOI21_X1 U1 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n2) );
  INV_X1 U2 ( .A(n2), .ZN(G_ij) );
endmodule


module Pg_0 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n2;

  AND2_X1 U1 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
  AOI21_X1 U2 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n2) );
  INV_X1 U3 ( .A(n2), .ZN(G_ij) );
endmodule


module Pg_26 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n2;

  INV_X1 U1 ( .A(n2), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n2) );
  AND2_X1 U3 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
endmodule


module G_8 ( P_ik, G_ik, Gk_1j, G_ij );
  input P_ik, G_ik, Gk_1j;
  output G_ij;
  wire   n2;

  INV_X1 U1 ( .A(n2), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(Gk_1j), .B2(P_ik), .A(G_ik), .ZN(n2) );
endmodule


module G_1 ( P_ik, G_ik, Gk_1j, G_ij );
  input P_ik, G_ik, Gk_1j;
  output G_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
endmodule


module G_2 ( P_ik, G_ik, Gk_1j, G_ij );
  input P_ik, G_ik, Gk_1j;
  output G_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(Gk_1j), .B2(P_ik), .A(G_ik), .ZN(n3) );
endmodule


module G_3 ( P_ik, G_ik, Gk_1j, G_ij );
  input P_ik, G_ik, Gk_1j;
  output G_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(Gk_1j), .B2(P_ik), .A(G_ik), .ZN(n3) );
endmodule


module G_4 ( P_ik, G_ik, Gk_1j, G_ij );
  input P_ik, G_ik, Gk_1j;
  output G_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(Gk_1j), .B2(P_ik), .A(G_ik), .ZN(n3) );
endmodule


module G_5 ( P_ik, G_ik, Gk_1j, G_ij );
  input P_ik, G_ik, Gk_1j;
  output G_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(Gk_1j), .B2(P_ik), .A(G_ik), .ZN(n3) );
endmodule


module G_6 ( P_ik, G_ik, Gk_1j, G_ij );
  input P_ik, G_ik, Gk_1j;
  output G_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
endmodule


module G_7 ( P_ik, G_ik, Gk_1j, G_ij );
  input P_ik, G_ik, Gk_1j;
  output G_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
endmodule


module Pg_1 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  AND2_X1 U1 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
  INV_X1 U2 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U3 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
endmodule


module Pg_2 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  AND2_X1 U1 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
  INV_X1 U2 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U3 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
endmodule


module Pg_3 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
  AND2_X1 U3 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
endmodule


module Pg_4 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  AND2_X1 U1 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
  INV_X1 U2 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U3 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
endmodule


module Pg_5 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  AND2_X1 U1 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
  AOI21_X1 U2 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
  INV_X1 U3 ( .A(n3), .ZN(G_ij) );
endmodule


module Pg_6 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  AOI21_X1 U1 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
  INV_X1 U2 ( .A(n3), .ZN(G_ij) );
  AND2_X1 U3 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
endmodule


module Pg_7 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(Gk_1j), .B2(P_ik), .A(G_ik), .ZN(n3) );
  AND2_X1 U3 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
endmodule


module Pg_8 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  AOI21_X1 U1 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
  AND2_X1 U2 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
  INV_X1 U3 ( .A(n3), .ZN(G_ij) );
endmodule


module Pg_9 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  AOI21_X1 U1 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
  AND2_X1 U2 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
  INV_X1 U3 ( .A(n3), .ZN(G_ij) );
endmodule


module Pg_10 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  AND2_X1 U1 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
  INV_X1 U2 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U3 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
endmodule


module Pg_11 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  AND2_X1 U1 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
  INV_X1 U2 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U3 ( .B1(Gk_1j), .B2(P_ik), .A(G_ik), .ZN(n3) );
endmodule


module Pg_12 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  AND2_X1 U1 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
  INV_X1 U2 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U3 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
endmodule


module Pg_13 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
  AND2_X1 U3 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
endmodule


module Pg_14 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
  AND2_X1 U3 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
endmodule


module Pg_15 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
  AND2_X1 U3 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
endmodule


module Pg_16 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3, n4;

  CLKBUF_X1 U1 ( .A(P_ik), .Z(n3) );
  INV_X1 U2 ( .A(n4), .ZN(G_ij) );
  AOI21_X1 U3 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n4) );
  AND2_X1 U4 ( .A1(Pk_1j), .A2(n3), .ZN(P_ij) );
endmodule


module Pg_17 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
  AND2_X1 U3 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
endmodule


module Pg_18 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
  AND2_X1 U3 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
endmodule


module Pg_19 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
  AND2_X1 U3 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
endmodule


module Pg_20 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
  AND2_X1 U3 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
endmodule


module Pg_21 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_ik), .A2(Pk_1j), .ZN(P_ij) );
endmodule


module Pg_22 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
  AND2_X1 U3 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
endmodule


module Pg_23 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
  AND2_X1 U3 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
endmodule


module Pg_24 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AND2_X1 U2 ( .A1(P_ik), .A2(Pk_1j), .ZN(P_ij) );
  AOI21_X1 U3 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
endmodule


module Pg_25 ( P_ik, G_ik, Gk_1j, Pk_1j, G_ij, P_ij );
  input P_ik, G_ik, Gk_1j, Pk_1j;
  output G_ij, P_ij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_ij) );
  AOI21_X1 U2 ( .B1(P_ik), .B2(Gk_1j), .A(G_ik), .ZN(n3) );
  AND2_X1 U3 ( .A1(Pk_1j), .A2(P_ik), .ZN(P_ij) );
endmodule


module sparseTree_NBIT32_NBIT_PER_BLOCK4 ( A, B, cin, cout );
  input [31:0] A;
  input [31:0] B;
  output [8:0] cout;
  input cin;
  wire   cin, n7, n8, n9, \Sig2[4][31] , \Sig2[4][27] , \Sig2[4][23] ,
         \Sig2[3][31] , \Sig2[3][27] , \Sig2[3][19] , \Sig2[3][15] ,
         \Sig2[3][11] , \Sig2[2][31] , \Sig2[2][23] , \Sig2[2][15] ,
         \Sig2[2][7] , \Sig2[1][31] , \Sig2[1][29] , \Sig2[1][27] ,
         \Sig2[1][25] , \Sig2[1][23] , \Sig2[1][21] , \Sig2[1][19] ,
         \Sig2[1][17] , \Sig2[1][15] , \Sig2[1][13] , \Sig2[1][11] ,
         \Sig2[1][9] , \Sig2[1][7] , \Sig2[1][5] , \Sig2[1][3] , \Sig2[1][1] ,
         \Sig2[0][31] , \Sig2[0][30] , \Sig2[0][29] , \Sig2[0][28] ,
         \Sig2[0][27] , \Sig2[0][26] , \Sig2[0][25] , \Sig2[0][24] ,
         \Sig2[0][23] , \Sig2[0][22] , \Sig2[0][21] , \Sig2[0][20] ,
         \Sig2[0][19] , \Sig2[0][18] , \Sig2[0][17] , \Sig2[0][16] ,
         \Sig2[0][15] , \Sig2[0][14] , \Sig2[0][13] , \Sig2[0][12] ,
         \Sig2[0][11] , \Sig2[0][10] , \Sig2[0][9] , \Sig2[0][8] ,
         \Sig2[0][7] , \Sig2[0][6] , \Sig2[0][5] , \Sig2[0][4] , \Sig2[0][3] ,
         \Sig2[0][2] , \Sig2[0][1] , \Sig2[0][0] , \Sig1[4][31] ,
         \Sig1[4][27] , \Sig1[4][23] , \Sig1[3][31] , \Sig1[3][27] ,
         \Sig1[3][19] , \Sig1[3][15] , \Sig1[3][11] , \Sig1[2][31] ,
         \Sig1[2][23] , \Sig1[2][15] , \Sig1[2][7] , \Sig1[1][31] ,
         \Sig1[1][29] , \Sig1[1][27] , \Sig1[1][25] , \Sig1[1][23] ,
         \Sig1[1][21] , \Sig1[1][19] , \Sig1[1][17] , \Sig1[1][15] ,
         \Sig1[1][13] , \Sig1[1][11] , \Sig1[1][9] , \Sig1[1][7] ,
         \Sig1[1][5] , \Sig1[1][3] , \Sig1[0][31] , \Sig1[0][30] ,
         \Sig1[0][29] , \Sig1[0][28] , \Sig1[0][27] , \Sig1[0][26] ,
         \Sig1[0][25] , \Sig1[0][24] , \Sig1[0][23] , \Sig1[0][22] ,
         \Sig1[0][21] , \Sig1[0][20] , \Sig1[0][19] , \Sig1[0][18] ,
         \Sig1[0][17] , \Sig1[0][16] , \Sig1[0][15] , \Sig1[0][14] ,
         \Sig1[0][13] , \Sig1[0][12] , \Sig1[0][11] , \Sig1[0][10] ,
         \Sig1[0][9] , \Sig1[0][8] , \Sig1[0][7] , \Sig1[0][6] , \Sig1[0][5] ,
         \Sig1[0][4] , \Sig1[0][3] , \Sig1[0][2] , \Sig1[0][1] , n1, n2, n3;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign cout[0] = cin;

  PGNetwork m_pgNetwork ( .a(A), .b(B), .cin(cin), .g({\Sig2[0][31] , 
        \Sig2[0][30] , \Sig2[0][29] , \Sig2[0][28] , \Sig2[0][27] , 
        \Sig2[0][26] , \Sig2[0][25] , \Sig2[0][24] , \Sig2[0][23] , 
        \Sig2[0][22] , \Sig2[0][21] , \Sig2[0][20] , \Sig2[0][19] , 
        \Sig2[0][18] , \Sig2[0][17] , \Sig2[0][16] , \Sig2[0][15] , 
        \Sig2[0][14] , \Sig2[0][13] , \Sig2[0][12] , \Sig2[0][11] , 
        \Sig2[0][10] , \Sig2[0][9] , \Sig2[0][8] , \Sig2[0][7] , \Sig2[0][6] , 
        \Sig2[0][5] , \Sig2[0][4] , \Sig2[0][3] , \Sig2[0][2] , \Sig2[0][1] , 
        \Sig2[0][0] }), .p({\Sig1[0][31] , \Sig1[0][30] , \Sig1[0][29] , 
        \Sig1[0][28] , \Sig1[0][27] , \Sig1[0][26] , \Sig1[0][25] , 
        \Sig1[0][24] , \Sig1[0][23] , \Sig1[0][22] , \Sig1[0][21] , 
        \Sig1[0][20] , \Sig1[0][19] , \Sig1[0][18] , \Sig1[0][17] , 
        \Sig1[0][16] , \Sig1[0][15] , \Sig1[0][14] , \Sig1[0][13] , 
        \Sig1[0][12] , \Sig1[0][11] , \Sig1[0][10] , \Sig1[0][9] , 
        \Sig1[0][8] , \Sig1[0][7] , \Sig1[0][6] , \Sig1[0][5] , \Sig1[0][4] , 
        \Sig1[0][3] , \Sig1[0][2] , \Sig1[0][1] , SYNOPSYS_UNCONNECTED__0}) );
  G_0 m_blockG_1_1 ( .P_ik(\Sig1[0][1] ), .G_ik(\Sig2[0][1] ), .Gk_1j(
        \Sig2[0][0] ), .G_ij(\Sig2[1][1] ) );
  Pg_0 m_blockPG_1_3 ( .P_ik(\Sig1[0][3] ), .G_ik(\Sig2[0][3] ), .Gk_1j(
        \Sig2[0][2] ), .Pk_1j(\Sig1[0][2] ), .G_ij(\Sig2[1][3] ), .P_ij(
        \Sig1[1][3] ) );
  Pg_26 m_blockPG_1_5 ( .P_ik(\Sig1[0][5] ), .G_ik(\Sig2[0][5] ), .Gk_1j(
        \Sig2[0][4] ), .Pk_1j(\Sig1[0][4] ), .G_ij(\Sig2[1][5] ), .P_ij(
        \Sig1[1][5] ) );
  Pg_25 m_blockPG_1_7 ( .P_ik(\Sig1[0][7] ), .G_ik(\Sig2[0][7] ), .Gk_1j(
        \Sig2[0][6] ), .Pk_1j(\Sig1[0][6] ), .G_ij(\Sig2[1][7] ), .P_ij(
        \Sig1[1][7] ) );
  Pg_24 m_blockPG_1_9 ( .P_ik(\Sig1[0][9] ), .G_ik(\Sig2[0][9] ), .Gk_1j(
        \Sig2[0][8] ), .Pk_1j(\Sig1[0][8] ), .G_ij(\Sig2[1][9] ), .P_ij(
        \Sig1[1][9] ) );
  Pg_23 m_blockPG_1_11 ( .P_ik(\Sig1[0][11] ), .G_ik(\Sig2[0][11] ), .Gk_1j(
        \Sig2[0][10] ), .Pk_1j(\Sig1[0][10] ), .G_ij(\Sig2[1][11] ), .P_ij(
        \Sig1[1][11] ) );
  Pg_22 m_blockPG_1_13 ( .P_ik(\Sig1[0][13] ), .G_ik(\Sig2[0][13] ), .Gk_1j(
        \Sig2[0][12] ), .Pk_1j(\Sig1[0][12] ), .G_ij(\Sig2[1][13] ), .P_ij(
        \Sig1[1][13] ) );
  Pg_21 m_blockPG_1_15 ( .P_ik(\Sig1[0][15] ), .G_ik(\Sig2[0][15] ), .Gk_1j(
        \Sig2[0][14] ), .Pk_1j(\Sig1[0][14] ), .G_ij(\Sig2[1][15] ), .P_ij(
        \Sig1[1][15] ) );
  Pg_20 m_blockPG_1_17 ( .P_ik(\Sig1[0][17] ), .G_ik(\Sig2[0][17] ), .Gk_1j(
        \Sig2[0][16] ), .Pk_1j(\Sig1[0][16] ), .G_ij(\Sig2[1][17] ), .P_ij(
        \Sig1[1][17] ) );
  Pg_19 m_blockPG_1_19 ( .P_ik(\Sig1[0][19] ), .G_ik(\Sig2[0][19] ), .Gk_1j(
        \Sig2[0][18] ), .Pk_1j(\Sig1[0][18] ), .G_ij(\Sig2[1][19] ), .P_ij(
        \Sig1[1][19] ) );
  Pg_18 m_blockPG_1_21 ( .P_ik(\Sig1[0][21] ), .G_ik(\Sig2[0][21] ), .Gk_1j(
        \Sig2[0][20] ), .Pk_1j(\Sig1[0][20] ), .G_ij(\Sig2[1][21] ), .P_ij(
        \Sig1[1][21] ) );
  Pg_17 m_blockPG_1_23 ( .P_ik(\Sig1[0][23] ), .G_ik(\Sig2[0][23] ), .Gk_1j(
        \Sig2[0][22] ), .Pk_1j(\Sig1[0][22] ), .G_ij(\Sig2[1][23] ), .P_ij(
        \Sig1[1][23] ) );
  Pg_16 m_blockPG_1_25 ( .P_ik(\Sig1[0][25] ), .G_ik(\Sig2[0][25] ), .Gk_1j(
        \Sig2[0][24] ), .Pk_1j(\Sig1[0][24] ), .G_ij(\Sig2[1][25] ), .P_ij(
        \Sig1[1][25] ) );
  Pg_15 m_blockPG_1_27 ( .P_ik(\Sig1[0][27] ), .G_ik(\Sig2[0][27] ), .Gk_1j(
        \Sig2[0][26] ), .Pk_1j(\Sig1[0][26] ), .G_ij(\Sig2[1][27] ), .P_ij(
        \Sig1[1][27] ) );
  Pg_14 m_blockPG_1_29 ( .P_ik(\Sig1[0][29] ), .G_ik(\Sig2[0][29] ), .Gk_1j(
        \Sig2[0][28] ), .Pk_1j(\Sig1[0][28] ), .G_ij(\Sig2[1][29] ), .P_ij(
        \Sig1[1][29] ) );
  Pg_13 m_blockPG_1_31 ( .P_ik(\Sig1[0][31] ), .G_ik(\Sig2[0][31] ), .Gk_1j(
        \Sig2[0][30] ), .Pk_1j(\Sig1[0][30] ), .G_ij(\Sig2[1][31] ), .P_ij(
        \Sig1[1][31] ) );
  G_8 m_blockG_2_3 ( .P_ik(\Sig1[1][3] ), .G_ik(\Sig2[1][3] ), .Gk_1j(
        \Sig2[1][1] ), .G_ij(n9) );
  Pg_12 m_blockPG_2_7 ( .P_ik(\Sig1[1][7] ), .G_ik(\Sig2[1][7] ), .Gk_1j(
        \Sig2[1][5] ), .Pk_1j(\Sig1[1][5] ), .G_ij(\Sig2[2][7] ), .P_ij(
        \Sig1[2][7] ) );
  Pg_11 m_blockPG_2_11 ( .P_ik(\Sig1[1][11] ), .G_ik(\Sig2[1][11] ), .Gk_1j(
        \Sig2[1][9] ), .Pk_1j(\Sig1[1][9] ), .G_ij(\Sig2[3][11] ), .P_ij(
        \Sig1[3][11] ) );
  Pg_10 m_blockPG_2_15 ( .P_ik(\Sig1[1][15] ), .G_ik(\Sig2[1][15] ), .Gk_1j(
        \Sig2[1][13] ), .Pk_1j(\Sig1[1][13] ), .G_ij(\Sig2[2][15] ), .P_ij(
        \Sig1[2][15] ) );
  Pg_9 m_blockPG_2_19 ( .P_ik(\Sig1[1][19] ), .G_ik(\Sig2[1][19] ), .Gk_1j(
        \Sig2[1][17] ), .Pk_1j(\Sig1[1][17] ), .G_ij(\Sig2[3][19] ), .P_ij(
        \Sig1[3][19] ) );
  Pg_8 m_blockPG_2_23 ( .P_ik(\Sig1[1][23] ), .G_ik(\Sig2[1][23] ), .Gk_1j(
        \Sig2[1][21] ), .Pk_1j(\Sig1[1][21] ), .G_ij(\Sig2[2][23] ), .P_ij(
        \Sig1[2][23] ) );
  Pg_7 m_blockPG_2_27 ( .P_ik(\Sig1[1][27] ), .G_ik(\Sig2[1][27] ), .Gk_1j(
        \Sig2[1][25] ), .Pk_1j(\Sig1[1][25] ), .G_ij(\Sig2[3][27] ), .P_ij(
        \Sig1[3][27] ) );
  Pg_6 m_blockPG_2_31 ( .P_ik(\Sig1[1][31] ), .G_ik(\Sig2[1][31] ), .Gk_1j(
        \Sig2[1][29] ), .Pk_1j(\Sig1[1][29] ), .G_ij(\Sig2[2][31] ), .P_ij(
        \Sig1[2][31] ) );
  G_7 m1_blockG_3_7 ( .P_ik(\Sig1[2][7] ), .G_ik(\Sig2[2][7] ), .Gk_1j(n9), 
        .G_ij(n8) );
  Pg_5 m1_blockPG_3_15 ( .P_ik(\Sig1[2][15] ), .G_ik(\Sig2[2][15] ), .Gk_1j(
        \Sig2[3][11] ), .Pk_1j(\Sig1[3][11] ), .G_ij(\Sig2[3][15] ), .P_ij(
        \Sig1[3][15] ) );
  Pg_4 m1_blockPG_3_23 ( .P_ik(\Sig1[2][23] ), .G_ik(\Sig2[2][23] ), .Gk_1j(
        \Sig2[3][19] ), .Pk_1j(\Sig1[3][19] ), .G_ij(\Sig2[4][23] ), .P_ij(
        \Sig1[4][23] ) );
  Pg_3 m1_blockPG_3_31 ( .P_ik(\Sig1[2][31] ), .G_ik(\Sig2[2][31] ), .Gk_1j(
        \Sig2[3][27] ), .Pk_1j(\Sig1[3][27] ), .G_ij(\Sig2[3][31] ), .P_ij(
        \Sig1[3][31] ) );
  G_6 m1_blockG_4_11 ( .P_ik(\Sig1[3][11] ), .G_ik(n2), .Gk_1j(n8), .G_ij(
        cout[3]) );
  G_5 m1_blockG_4_15 ( .P_ik(\Sig1[3][15] ), .G_ik(\Sig2[3][15] ), .Gk_1j(n8), 
        .G_ij(n7) );
  Pg_2 m1_blockPG_4_27 ( .P_ik(\Sig1[3][27] ), .G_ik(\Sig2[3][27] ), .Gk_1j(
        \Sig2[4][23] ), .Pk_1j(\Sig1[4][23] ), .G_ij(\Sig2[4][27] ), .P_ij(
        \Sig1[4][27] ) );
  Pg_1 m1_blockPG_4_31 ( .P_ik(\Sig1[3][31] ), .G_ik(\Sig2[3][31] ), .Gk_1j(n1), .Pk_1j(\Sig1[4][23] ), .G_ij(\Sig2[4][31] ), .P_ij(\Sig1[4][31] ) );
  G_4 m1_blockG_5_19 ( .P_ik(\Sig1[3][19] ), .G_ik(\Sig2[3][19] ), .Gk_1j(n7), 
        .G_ij(cout[5]) );
  G_3 m1_blockG_5_23 ( .P_ik(\Sig1[4][23] ), .G_ik(n1), .Gk_1j(n7), .G_ij(
        cout[6]) );
  G_2 m1_blockG_5_27 ( .P_ik(\Sig1[4][27] ), .G_ik(\Sig2[4][27] ), .Gk_1j(n7), 
        .G_ij(cout[7]) );
  G_1 m1_blockG_5_31 ( .P_ik(\Sig1[4][31] ), .G_ik(\Sig2[4][31] ), .Gk_1j(
        cout[4]), .G_ij(cout[8]) );
  INV_X2 U1 ( .A(n3), .ZN(cout[4]) );
  CLKBUF_X1 U2 ( .A(\Sig2[4][23] ), .Z(n1) );
  CLKBUF_X1 U3 ( .A(\Sig2[3][11] ), .Z(n2) );
  INV_X1 U4 ( .A(n7), .ZN(n3) );
  CLKBUF_X1 U5 ( .A(n8), .Z(cout[2]) );
  CLKBUF_X1 U6 ( .A(n9), .Z(cout[1]) );
endmodule


module Carryselect_NBIT4_0 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   n1, n2, n3, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  XOR2_X1 U22 ( .A(n7), .B(n8), .Z(n6) );
  XOR2_X1 U23 ( .A(n11), .B(n8), .Z(n5) );
  XOR2_X1 U24 ( .A(B[3]), .B(A[3]), .Z(n8) );
  XOR2_X1 U25 ( .A(n15), .B(n10), .Z(n14) );
  XOR2_X1 U26 ( .A(n15), .B(n12), .Z(n13) );
  XOR2_X1 U27 ( .A(n17), .B(n21), .Z(n20) );
  XOR2_X1 U28 ( .A(A[1]), .B(B[1]), .Z(n21) );
  AOI22_X1 U2 ( .A1(n3), .A2(n1), .B1(n18), .B2(n16), .ZN(n12) );
  AOI22_X1 U3 ( .A1(n3), .A2(n1), .B1(n16), .B2(n17), .ZN(n10) );
  INV_X1 U4 ( .A(Ci), .ZN(n24) );
  OAI22_X1 U5 ( .A1(Ci), .A2(n19), .B1(n24), .B2(n20), .ZN(S[1]) );
  XNOR2_X1 U6 ( .A(n2), .B(n21), .ZN(n19) );
  OAI22_X1 U7 ( .A1(Ci), .A2(n13), .B1(n14), .B2(n24), .ZN(S[2]) );
  OAI22_X1 U8 ( .A1(Ci), .A2(n5), .B1(n6), .B2(n24), .ZN(S[3]) );
  INV_X1 U9 ( .A(A[1]), .ZN(n1) );
  XNOR2_X1 U10 ( .A(A[0]), .B(B[0]), .ZN(n22) );
  NAND2_X1 U11 ( .A1(B[0]), .A2(A[0]), .ZN(n18) );
  OAI22_X1 U12 ( .A1(B[2]), .A2(A[2]), .B1(n9), .B2(n10), .ZN(n7) );
  OAI22_X1 U13 ( .A1(B[2]), .A2(A[2]), .B1(n12), .B2(n9), .ZN(n11) );
  XNOR2_X1 U14 ( .A(A[2]), .B(B[2]), .ZN(n15) );
  AND2_X1 U15 ( .A1(B[2]), .A2(A[2]), .ZN(n9) );
  INV_X1 U16 ( .A(B[1]), .ZN(n3) );
  NAND2_X1 U17 ( .A1(B[1]), .A2(A[1]), .ZN(n16) );
  OR2_X1 U18 ( .A1(n17), .A2(n2), .ZN(n25) );
  NAND2_X1 U19 ( .A1(n25), .A2(Ci), .ZN(n23) );
  NOR2_X1 U20 ( .A1(B[0]), .A2(A[0]), .ZN(n17) );
  INV_X1 U21 ( .A(n18), .ZN(n2) );
  OAI21_X1 U29 ( .B1(Ci), .B2(n22), .A(n23), .ZN(S[0]) );
endmodule


module Carryselect_NBIT4_7 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  XOR2_X1 U22 ( .A(n7), .B(n8), .Z(n6) );
  XOR2_X1 U23 ( .A(n11), .B(n8), .Z(n5) );
  XOR2_X1 U24 ( .A(B[3]), .B(A[3]), .Z(n8) );
  XOR2_X1 U25 ( .A(n15), .B(n10), .Z(n14) );
  XOR2_X1 U26 ( .A(n15), .B(n12), .Z(n13) );
  XOR2_X1 U27 ( .A(n17), .B(n21), .Z(n20) );
  XOR2_X1 U28 ( .A(A[1]), .B(B[1]), .Z(n21) );
  AOI22_X1 U2 ( .A1(n3), .A2(n1), .B1(n18), .B2(n16), .ZN(n12) );
  AOI22_X1 U3 ( .A1(n3), .A2(n1), .B1(n16), .B2(n17), .ZN(n10) );
  INV_X1 U4 ( .A(n18), .ZN(n2) );
  XNOR2_X1 U5 ( .A(n2), .B(n21), .ZN(n19) );
  INV_X1 U6 ( .A(A[1]), .ZN(n1) );
  NAND2_X1 U7 ( .A1(B[0]), .A2(A[0]), .ZN(n18) );
  NOR2_X1 U8 ( .A1(B[0]), .A2(A[0]), .ZN(n17) );
  XNOR2_X1 U9 ( .A(A[0]), .B(B[0]), .ZN(n22) );
  OAI22_X1 U10 ( .A1(B[2]), .A2(A[2]), .B1(n9), .B2(n10), .ZN(n7) );
  OAI22_X1 U11 ( .A1(B[2]), .A2(A[2]), .B1(n12), .B2(n9), .ZN(n11) );
  AND2_X1 U12 ( .A1(B[2]), .A2(A[2]), .ZN(n9) );
  XNOR2_X1 U13 ( .A(A[2]), .B(B[2]), .ZN(n15) );
  NAND2_X1 U14 ( .A1(B[1]), .A2(A[1]), .ZN(n16) );
  INV_X1 U15 ( .A(B[1]), .ZN(n3) );
  OAI22_X1 U16 ( .A1(Ci), .A2(n19), .B1(n4), .B2(n20), .ZN(S[1]) );
  OAI21_X1 U17 ( .B1(Ci), .B2(n22), .A(n23), .ZN(S[0]) );
  OAI22_X1 U18 ( .A1(Ci), .A2(n5), .B1(n6), .B2(n4), .ZN(S[3]) );
  OAI22_X1 U19 ( .A1(Ci), .A2(n13), .B1(n14), .B2(n4), .ZN(S[2]) );
  OAI21_X1 U20 ( .B1(n17), .B2(n2), .A(Ci), .ZN(n23) );
  INV_X1 U21 ( .A(Ci), .ZN(n4) );
endmodule


module Carryselect_NBIT4_1 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48;

  XOR2_X1 U22 ( .A(n42), .B(n41), .Z(n43) );
  XOR2_X1 U23 ( .A(n38), .B(n41), .Z(n44) );
  XOR2_X1 U24 ( .A(B[3]), .B(A[3]), .Z(n41) );
  XOR2_X1 U25 ( .A(n34), .B(n39), .Z(n35) );
  XOR2_X1 U26 ( .A(n34), .B(n37), .Z(n36) );
  XOR2_X1 U27 ( .A(n32), .B(n28), .Z(n29) );
  XOR2_X1 U28 ( .A(A[1]), .B(B[1]), .Z(n28) );
  CLKBUF_X1 U2 ( .A(Ci), .Z(n25) );
  CLKBUF_X1 U3 ( .A(Ci), .Z(n24) );
  AOI22_X1 U4 ( .A1(n46), .A2(n48), .B1(n33), .B2(n32), .ZN(n39) );
  AOI22_X1 U5 ( .A1(n46), .A2(n48), .B1(n31), .B2(n33), .ZN(n37) );
  INV_X1 U6 ( .A(B[1]), .ZN(n46) );
  INV_X1 U7 ( .A(n31), .ZN(n47) );
  XNOR2_X1 U8 ( .A(A[2]), .B(B[2]), .ZN(n34) );
  XNOR2_X1 U9 ( .A(n47), .B(n28), .ZN(n30) );
  XNOR2_X1 U10 ( .A(A[0]), .B(B[0]), .ZN(n27) );
  NOR2_X1 U11 ( .A1(B[0]), .A2(A[0]), .ZN(n32) );
  OAI22_X1 U12 ( .A1(B[2]), .A2(A[2]), .B1(n40), .B2(n39), .ZN(n42) );
  OAI22_X1 U13 ( .A1(B[2]), .A2(A[2]), .B1(n37), .B2(n40), .ZN(n38) );
  NAND2_X1 U14 ( .A1(B[0]), .A2(A[0]), .ZN(n31) );
  NAND2_X1 U15 ( .A1(B[1]), .A2(A[1]), .ZN(n33) );
  AND2_X1 U16 ( .A1(B[2]), .A2(A[2]), .ZN(n40) );
  INV_X1 U17 ( .A(A[1]), .ZN(n48) );
  OAI22_X1 U18 ( .A1(n25), .A2(n30), .B1(n45), .B2(n29), .ZN(S[1]) );
  OAI21_X1 U19 ( .B1(n25), .B2(n27), .A(n26), .ZN(S[0]) );
  OAI22_X1 U20 ( .A1(n24), .A2(n44), .B1(n43), .B2(n45), .ZN(S[3]) );
  OAI22_X1 U21 ( .A1(n24), .A2(n36), .B1(n35), .B2(n45), .ZN(S[2]) );
  OAI21_X1 U29 ( .B1(n32), .B2(n47), .A(Ci), .ZN(n26) );
  INV_X1 U30 ( .A(Ci), .ZN(n45) );
endmodule


module Carryselect_NBIT4_2 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48;

  XOR2_X1 U22 ( .A(n42), .B(n41), .Z(n43) );
  XOR2_X1 U23 ( .A(n38), .B(n41), .Z(n44) );
  XOR2_X1 U24 ( .A(B[3]), .B(A[3]), .Z(n41) );
  XOR2_X1 U25 ( .A(n34), .B(n39), .Z(n35) );
  XOR2_X1 U26 ( .A(n34), .B(n37), .Z(n36) );
  XOR2_X1 U27 ( .A(n32), .B(n28), .Z(n29) );
  XOR2_X1 U28 ( .A(A[1]), .B(B[1]), .Z(n28) );
  BUF_X1 U2 ( .A(Ci), .Z(n24) );
  CLKBUF_X1 U3 ( .A(Ci), .Z(n25) );
  AOI22_X1 U4 ( .A1(n46), .A2(n48), .B1(n33), .B2(n32), .ZN(n39) );
  AOI22_X1 U5 ( .A1(n46), .A2(n48), .B1(n31), .B2(n33), .ZN(n37) );
  INV_X1 U6 ( .A(B[1]), .ZN(n46) );
  INV_X1 U7 ( .A(n31), .ZN(n47) );
  XNOR2_X1 U8 ( .A(A[2]), .B(B[2]), .ZN(n34) );
  XNOR2_X1 U9 ( .A(n47), .B(n28), .ZN(n30) );
  XNOR2_X1 U10 ( .A(A[0]), .B(B[0]), .ZN(n27) );
  NOR2_X1 U11 ( .A1(B[0]), .A2(A[0]), .ZN(n32) );
  OAI22_X1 U12 ( .A1(B[2]), .A2(A[2]), .B1(n40), .B2(n39), .ZN(n42) );
  OAI22_X1 U13 ( .A1(B[2]), .A2(A[2]), .B1(n37), .B2(n40), .ZN(n38) );
  NAND2_X1 U14 ( .A1(B[0]), .A2(A[0]), .ZN(n31) );
  NAND2_X1 U15 ( .A1(B[1]), .A2(A[1]), .ZN(n33) );
  AND2_X1 U16 ( .A1(B[2]), .A2(A[2]), .ZN(n40) );
  INV_X1 U17 ( .A(A[1]), .ZN(n48) );
  OAI22_X1 U18 ( .A1(n25), .A2(n30), .B1(n45), .B2(n29), .ZN(S[1]) );
  OAI21_X1 U19 ( .B1(n24), .B2(n27), .A(n26), .ZN(S[0]) );
  OAI22_X1 U20 ( .A1(n24), .A2(n44), .B1(n43), .B2(n45), .ZN(S[3]) );
  OAI22_X1 U21 ( .A1(n24), .A2(n36), .B1(n35), .B2(n45), .ZN(S[2]) );
  OAI21_X1 U29 ( .B1(n32), .B2(n47), .A(Ci), .ZN(n26) );
  INV_X1 U30 ( .A(Ci), .ZN(n45) );
endmodule


module Carryselect_NBIT4_3 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49;

  XOR2_X1 U22 ( .A(n43), .B(n42), .Z(n44) );
  XOR2_X1 U23 ( .A(n39), .B(n42), .Z(n45) );
  XOR2_X1 U24 ( .A(B[3]), .B(A[3]), .Z(n42) );
  XOR2_X1 U25 ( .A(n35), .B(n40), .Z(n36) );
  XOR2_X1 U26 ( .A(n35), .B(n38), .Z(n37) );
  XOR2_X1 U27 ( .A(n33), .B(n29), .Z(n30) );
  XOR2_X1 U28 ( .A(A[1]), .B(B[1]), .Z(n29) );
  CLKBUF_X1 U2 ( .A(Ci), .Z(n24) );
  CLKBUF_X1 U3 ( .A(Ci), .Z(n25) );
  BUF_X1 U4 ( .A(Ci), .Z(n26) );
  INV_X1 U5 ( .A(B[1]), .ZN(n47) );
  AOI22_X1 U6 ( .A1(n47), .A2(n49), .B1(n34), .B2(n33), .ZN(n40) );
  AOI22_X1 U7 ( .A1(n47), .A2(n49), .B1(n32), .B2(n34), .ZN(n38) );
  INV_X1 U8 ( .A(n32), .ZN(n48) );
  XNOR2_X1 U9 ( .A(A[2]), .B(B[2]), .ZN(n35) );
  XNOR2_X1 U10 ( .A(n48), .B(n29), .ZN(n31) );
  XNOR2_X1 U11 ( .A(A[0]), .B(B[0]), .ZN(n28) );
  NOR2_X1 U12 ( .A1(B[0]), .A2(A[0]), .ZN(n33) );
  OAI22_X1 U13 ( .A1(B[2]), .A2(A[2]), .B1(n41), .B2(n40), .ZN(n43) );
  NAND2_X1 U14 ( .A1(B[1]), .A2(A[1]), .ZN(n34) );
  OAI22_X1 U15 ( .A1(B[2]), .A2(A[2]), .B1(n38), .B2(n41), .ZN(n39) );
  NAND2_X1 U16 ( .A1(B[0]), .A2(A[0]), .ZN(n32) );
  AND2_X1 U17 ( .A1(B[2]), .A2(A[2]), .ZN(n41) );
  INV_X1 U18 ( .A(A[1]), .ZN(n49) );
  INV_X1 U19 ( .A(Ci), .ZN(n46) );
  OAI22_X1 U20 ( .A1(n24), .A2(n45), .B1(n44), .B2(n46), .ZN(S[3]) );
  OAI22_X1 U21 ( .A1(n25), .A2(n37), .B1(n36), .B2(n46), .ZN(S[2]) );
  OAI22_X1 U29 ( .A1(n26), .A2(n31), .B1(n46), .B2(n30), .ZN(S[1]) );
  OAI21_X1 U30 ( .B1(n26), .B2(n28), .A(n27), .ZN(S[0]) );
  OAI21_X1 U31 ( .B1(n33), .B2(n48), .A(Ci), .ZN(n27) );
endmodule


module Carryselect_NBIT4_4 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46;

  XOR2_X1 U22 ( .A(n40), .B(n39), .Z(n41) );
  XOR2_X1 U23 ( .A(n36), .B(n39), .Z(n42) );
  XOR2_X1 U24 ( .A(B[3]), .B(A[3]), .Z(n39) );
  XOR2_X1 U25 ( .A(n32), .B(n37), .Z(n33) );
  XOR2_X1 U26 ( .A(n32), .B(n35), .Z(n34) );
  XOR2_X1 U27 ( .A(n30), .B(n26), .Z(n27) );
  XOR2_X1 U28 ( .A(A[1]), .B(B[1]), .Z(n26) );
  AOI22_X1 U2 ( .A1(n44), .A2(n46), .B1(n31), .B2(n30), .ZN(n37) );
  AOI22_X1 U3 ( .A1(n44), .A2(n46), .B1(n29), .B2(n31), .ZN(n35) );
  INV_X1 U4 ( .A(n29), .ZN(n45) );
  XNOR2_X1 U5 ( .A(n45), .B(n26), .ZN(n28) );
  XNOR2_X1 U6 ( .A(A[0]), .B(B[0]), .ZN(n25) );
  NOR2_X1 U7 ( .A1(B[0]), .A2(A[0]), .ZN(n30) );
  NAND2_X1 U8 ( .A1(B[0]), .A2(A[0]), .ZN(n29) );
  INV_X1 U9 ( .A(A[1]), .ZN(n46) );
  OAI22_X1 U10 ( .A1(B[2]), .A2(A[2]), .B1(n38), .B2(n37), .ZN(n40) );
  OAI22_X1 U11 ( .A1(B[2]), .A2(A[2]), .B1(n35), .B2(n38), .ZN(n36) );
  AND2_X1 U12 ( .A1(B[2]), .A2(A[2]), .ZN(n38) );
  XNOR2_X1 U13 ( .A(A[2]), .B(B[2]), .ZN(n32) );
  INV_X1 U14 ( .A(B[1]), .ZN(n44) );
  NAND2_X1 U15 ( .A1(B[1]), .A2(A[1]), .ZN(n31) );
  OAI22_X1 U16 ( .A1(Ci), .A2(n28), .B1(n43), .B2(n27), .ZN(S[1]) );
  OAI21_X1 U17 ( .B1(Ci), .B2(n25), .A(n24), .ZN(S[0]) );
  OAI22_X1 U18 ( .A1(Ci), .A2(n42), .B1(n41), .B2(n43), .ZN(S[3]) );
  OAI22_X1 U19 ( .A1(Ci), .A2(n34), .B1(n33), .B2(n43), .ZN(S[2]) );
  OAI21_X1 U20 ( .B1(n30), .B2(n45), .A(Ci), .ZN(n24) );
  INV_X1 U21 ( .A(Ci), .ZN(n43) );
endmodule


module Carryselect_NBIT4_5 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46;

  XOR2_X1 U22 ( .A(n40), .B(n39), .Z(n41) );
  XOR2_X1 U23 ( .A(n36), .B(n39), .Z(n42) );
  XOR2_X1 U24 ( .A(B[3]), .B(A[3]), .Z(n39) );
  XOR2_X1 U25 ( .A(n32), .B(n37), .Z(n33) );
  XOR2_X1 U26 ( .A(n32), .B(n35), .Z(n34) );
  XOR2_X1 U27 ( .A(n30), .B(n26), .Z(n27) );
  XOR2_X1 U28 ( .A(A[1]), .B(B[1]), .Z(n26) );
  INV_X1 U2 ( .A(Ci), .ZN(n43) );
  INV_X1 U3 ( .A(B[1]), .ZN(n44) );
  AOI22_X1 U4 ( .A1(n44), .A2(n46), .B1(n31), .B2(n30), .ZN(n37) );
  AOI22_X1 U5 ( .A1(n44), .A2(n46), .B1(n29), .B2(n31), .ZN(n35) );
  INV_X1 U6 ( .A(n29), .ZN(n45) );
  OAI22_X1 U7 ( .A1(Ci), .A2(n34), .B1(n33), .B2(n43), .ZN(S[2]) );
  XNOR2_X1 U8 ( .A(A[2]), .B(B[2]), .ZN(n32) );
  OAI22_X1 U9 ( .A1(Ci), .A2(n42), .B1(n41), .B2(n43), .ZN(S[3]) );
  OAI22_X1 U10 ( .A1(Ci), .A2(n28), .B1(n43), .B2(n27), .ZN(S[1]) );
  XNOR2_X1 U11 ( .A(n45), .B(n26), .ZN(n28) );
  OAI21_X1 U12 ( .B1(Ci), .B2(n25), .A(n24), .ZN(S[0]) );
  XNOR2_X1 U13 ( .A(A[0]), .B(B[0]), .ZN(n25) );
  OAI21_X1 U14 ( .B1(n30), .B2(n45), .A(Ci), .ZN(n24) );
  NOR2_X1 U15 ( .A1(B[0]), .A2(A[0]), .ZN(n30) );
  OAI22_X1 U16 ( .A1(B[2]), .A2(A[2]), .B1(n38), .B2(n37), .ZN(n40) );
  OAI22_X1 U17 ( .A1(B[2]), .A2(A[2]), .B1(n35), .B2(n38), .ZN(n36) );
  NAND2_X1 U18 ( .A1(B[1]), .A2(A[1]), .ZN(n31) );
  NAND2_X1 U19 ( .A1(B[0]), .A2(A[0]), .ZN(n29) );
  AND2_X1 U20 ( .A1(B[2]), .A2(A[2]), .ZN(n38) );
  INV_X1 U21 ( .A(A[1]), .ZN(n46) );
endmodule


module Carryselect_NBIT4_6 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46;

  XOR2_X1 U22 ( .A(n40), .B(n39), .Z(n41) );
  XOR2_X1 U23 ( .A(n36), .B(n39), .Z(n42) );
  XOR2_X1 U24 ( .A(B[3]), .B(A[3]), .Z(n39) );
  XOR2_X1 U25 ( .A(n32), .B(n37), .Z(n33) );
  XOR2_X1 U26 ( .A(n32), .B(n35), .Z(n34) );
  XOR2_X1 U27 ( .A(n30), .B(n26), .Z(n27) );
  XOR2_X1 U28 ( .A(A[1]), .B(B[1]), .Z(n26) );
  AOI22_X1 U2 ( .A1(n44), .A2(n46), .B1(n31), .B2(n30), .ZN(n37) );
  AOI22_X1 U3 ( .A1(n44), .A2(n46), .B1(n29), .B2(n31), .ZN(n35) );
  INV_X1 U4 ( .A(n29), .ZN(n45) );
  XNOR2_X1 U5 ( .A(n45), .B(n26), .ZN(n28) );
  XNOR2_X1 U6 ( .A(A[0]), .B(B[0]), .ZN(n25) );
  NOR2_X1 U7 ( .A1(B[0]), .A2(A[0]), .ZN(n30) );
  NAND2_X1 U8 ( .A1(B[0]), .A2(A[0]), .ZN(n29) );
  INV_X1 U9 ( .A(A[1]), .ZN(n46) );
  OAI22_X1 U10 ( .A1(B[2]), .A2(A[2]), .B1(n38), .B2(n37), .ZN(n40) );
  OAI22_X1 U11 ( .A1(B[2]), .A2(A[2]), .B1(n35), .B2(n38), .ZN(n36) );
  AND2_X1 U12 ( .A1(B[2]), .A2(A[2]), .ZN(n38) );
  XNOR2_X1 U13 ( .A(A[2]), .B(B[2]), .ZN(n32) );
  INV_X1 U14 ( .A(B[1]), .ZN(n44) );
  NAND2_X1 U15 ( .A1(B[1]), .A2(A[1]), .ZN(n31) );
  OAI22_X1 U16 ( .A1(Ci), .A2(n28), .B1(n43), .B2(n27), .ZN(S[1]) );
  OAI21_X1 U17 ( .B1(Ci), .B2(n25), .A(n24), .ZN(S[0]) );
  OAI22_X1 U18 ( .A1(Ci), .A2(n42), .B1(n41), .B2(n43), .ZN(S[3]) );
  OAI22_X1 U19 ( .A1(Ci), .A2(n34), .B1(n33), .B2(n43), .ZN(S[2]) );
  OAI21_X1 U20 ( .B1(n30), .B2(n45), .A(Ci), .ZN(n24) );
  INV_X1 U21 ( .A(Ci), .ZN(n43) );
endmodule


module sum_generator_NBIT_PER_BLOCK4_NBLOCKS8 ( A, B, Ci, S );
  input [31:0] A;
  input [31:0] B;
  input [7:0] Ci;
  output [31:0] S;
  wire   n1;

  Carryselect_NBIT4_0 CA1_0 ( .A(A[3:0]), .B(B[3:0]), .Ci(n1), .S(S[3:0]) );
  Carryselect_NBIT4_7 CA1_1 ( .A(A[7:4]), .B(B[7:4]), .Ci(Ci[1]), .S(S[7:4])
         );
  Carryselect_NBIT4_6 CA1_2 ( .A(A[11:8]), .B(B[11:8]), .Ci(Ci[2]), .S(S[11:8]) );
  Carryselect_NBIT4_5 CA1_3 ( .A(A[15:12]), .B(B[15:12]), .Ci(Ci[3]), .S(
        S[15:12]) );
  Carryselect_NBIT4_4 CA1_4 ( .A(A[19:16]), .B(B[19:16]), .Ci(Ci[4]), .S(
        S[19:16]) );
  Carryselect_NBIT4_3 CA1_5 ( .A(A[23:20]), .B(B[23:20]), .Ci(Ci[5]), .S(
        S[23:20]) );
  Carryselect_NBIT4_2 CA1_6 ( .A(A[27:24]), .B(B[27:24]), .Ci(Ci[6]), .S(
        S[27:24]) );
  Carryselect_NBIT4_1 CA1_7 ( .A(A[31:28]), .B(B[31:28]), .Ci(Ci[7]), .S(
        S[31:28]) );
  CLKBUF_X1 U1 ( .A(Ci[0]), .Z(n1) );
endmodule


module p4_adder ( A, B, Cin, S, Cout );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6;
  wire   [31:0] bxor;
  wire   [7:0] carries;

  sparseTree_NBIT32_NBIT_PER_BLOCK4 carrygen ( .A(A), .B(bxor), .cin(n4), 
        .cout({Cout, carries}) );
  sum_generator_NBIT_PER_BLOCK4_NBLOCKS8 carrysel ( .A(A), .B({bxor[31:16], n3, 
        bxor[14], n5, bxor[12:6], n1, bxor[4:3], n6, bxor[1:0]}), .Ci(carries), 
        .S(S) );
  XOR2_X1 U33 ( .A(Cin), .B(B[9]), .Z(bxor[9]) );
  XOR2_X1 U34 ( .A(Cin), .B(B[8]), .Z(bxor[8]) );
  XOR2_X1 U35 ( .A(Cin), .B(B[7]), .Z(bxor[7]) );
  XOR2_X1 U36 ( .A(Cin), .B(B[6]), .Z(bxor[6]) );
  XOR2_X1 U37 ( .A(Cin), .B(B[5]), .Z(bxor[5]) );
  XOR2_X1 U38 ( .A(Cin), .B(B[4]), .Z(bxor[4]) );
  XOR2_X1 U39 ( .A(Cin), .B(B[3]), .Z(bxor[3]) );
  XOR2_X1 U40 ( .A(n4), .B(B[31]), .Z(bxor[31]) );
  XOR2_X1 U41 ( .A(n4), .B(B[30]), .Z(bxor[30]) );
  XOR2_X1 U42 ( .A(n2), .B(B[2]), .Z(bxor[2]) );
  XOR2_X1 U43 ( .A(n4), .B(B[29]), .Z(bxor[29]) );
  XOR2_X1 U44 ( .A(n4), .B(B[28]), .Z(bxor[28]) );
  XOR2_X1 U45 ( .A(n4), .B(B[27]), .Z(bxor[27]) );
  XOR2_X1 U46 ( .A(n4), .B(B[26]), .Z(bxor[26]) );
  XOR2_X1 U47 ( .A(n4), .B(B[25]), .Z(bxor[25]) );
  XOR2_X1 U48 ( .A(n4), .B(B[24]), .Z(bxor[24]) );
  XOR2_X1 U49 ( .A(Cin), .B(B[23]), .Z(bxor[23]) );
  XOR2_X1 U50 ( .A(Cin), .B(B[22]), .Z(bxor[22]) );
  XOR2_X1 U51 ( .A(Cin), .B(B[21]), .Z(bxor[21]) );
  XOR2_X1 U52 ( .A(n2), .B(B[20]), .Z(bxor[20]) );
  XOR2_X1 U53 ( .A(Cin), .B(B[1]), .Z(bxor[1]) );
  XOR2_X1 U54 ( .A(Cin), .B(B[19]), .Z(bxor[19]) );
  XOR2_X1 U55 ( .A(Cin), .B(B[18]), .Z(bxor[18]) );
  XOR2_X1 U56 ( .A(Cin), .B(B[17]), .Z(bxor[17]) );
  XOR2_X1 U57 ( .A(n2), .B(B[16]), .Z(bxor[16]) );
  XOR2_X1 U58 ( .A(Cin), .B(B[15]), .Z(bxor[15]) );
  XOR2_X1 U59 ( .A(Cin), .B(B[14]), .Z(bxor[14]) );
  XOR2_X1 U60 ( .A(Cin), .B(B[13]), .Z(bxor[13]) );
  XOR2_X1 U61 ( .A(Cin), .B(B[12]), .Z(bxor[12]) );
  XOR2_X1 U62 ( .A(Cin), .B(B[11]), .Z(bxor[11]) );
  XOR2_X1 U63 ( .A(Cin), .B(B[10]), .Z(bxor[10]) );
  XOR2_X1 U64 ( .A(Cin), .B(B[0]), .Z(bxor[0]) );
  CLKBUF_X1 U65 ( .A(bxor[5]), .Z(n1) );
  BUF_X1 U66 ( .A(Cin), .Z(n2) );
  CLKBUF_X1 U67 ( .A(bxor[15]), .Z(n3) );
  BUF_X2 U68 ( .A(Cin), .Z(n4) );
  CLKBUF_X1 U69 ( .A(bxor[13]), .Z(n5) );
  CLKBUF_X1 U70 ( .A(bxor[2]), .Z(n6) );
endmodule

