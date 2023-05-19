library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use WORK.constants.all; -- libreria WORK user-defined
entity sum_generator is 
	generic (NBIT_PER_BLOCK: integer := 4;
		 NBLOCKS: integer := 8);
	Port (	A: in std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
			B: in std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
			Ci: in std_logic_vector(NBLOCKS-1 downto 0);
			S: out std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0));
end sum_generator; 

Architecture structural of sum_generator IS
 component Carryselect 
	generic (NBIT: integer := 4;
             DRCAS : Time := 0 ns;
	         DRCAC : Time := 0 ns
            );
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
			B:	In	std_logic_vector(NBIT-1 downto 0);
			Ci:	In	std_logic;
			S:	Out	std_logic_vector(NBIT-1 downto 0);
			Co:	Out	std_logic
 		 );
 end Component; 
Begin
  SG: for i IN 0 TO NBLOCKS-1 generate   
      CA1: Carryselect PORT MAP (A((i*NBIT_PER_BLOCK+3) downto (i*NBIT_PER_BLOCK)), B((i*NBIT_PER_BLOCK+3) downto (i*NBIT_PER_BLOCK)), Ci(i), S((i*NBIT_PER_BLOCK+3) downto (i*NBIT_PER_BLOCK)));
      end generate;

end structural;

configuration CFG_sum_generator_STRUCTURAL of sum_generator is
  for STRUCTURAL 
    for SG
      for all : carryselect
        use configuration WORK.CFG_carryselect_BEHAVIORAL;
      end for;
    end for;
  end for;
end CFG_sum_generator_STRUCTURAL;
