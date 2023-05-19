library ieee;
use ieee.numeric_std.all;
use ieee.math_real.all;
package CONSTANTS is
	  constant IVDELAY : time := 0.1 ns;
	  constant NDDELAY : time := 0.2 ns;
	  constant NDDELAYRISE : time := 0.6 ns;
	  constant NDDELAYFALL : time := 0.4 ns;
	  constant NRDELAY : time := 0.2 ns;
	  constant DRCAS : time := 1 ns;
	  constant DRCAC : time := 2 ns;
	  constant NBit : integer := 32;	
	  constant TP_MUX : time := 0.5 ns;
	  constant M : integer := 4;
	  constant N : integer := 4; 
	  constant F : integer := 3;
	  constant Addr_bits : integer := 5;
	  constant bit_F : integer := integer(log2(real(F)));
	  constant bit_N: integer := integer(log2(real(N)));
	  constant IN_LOC : integer := 2*N;
	  constant bit_inloc: integer := integer(log2(real(IN_LOC)));
	  constant in_loc_out : integer := 3*N;	

end CONSTANTS;
