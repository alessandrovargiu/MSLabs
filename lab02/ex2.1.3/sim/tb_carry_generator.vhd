library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;

entity TB_CARRY_GENERATOR is 
end TB_CARRY_GENERATOR; 

architecture TEST of TB_CARRY_GENERATOR is
	
  
	component sparseTree is
		generic (
			NBIT :	integer := NBIT;
			NBIT_PER_BLOCK: integer := 4  );
		port (
			A :		in	std_logic_vector(NBIT-1 downto 0);
			B :		in	std_logic_vector(NBIT-1 downto 0);
			Cin :	in	std_logic;
			Cout :	out	std_logic_vector((NBIT/NBIT_PER_BLOCK) downto 0));
	end component;
 
  constant Nbit_PER_BLOCK: integer := 4;
  signal A, B : std_logic_vector(NBIT-1 downto 0);
  signal Ci: std_logic;
  signal Cout: std_logic_vector((NBIT/Nbit_PER_BLOCK) downto 0);
 
begin

	  ST : sparseTree
	   --generic map (DRCAS => 0.02 ns, DRCAC => 0.02 ns) 
	   generic map(NBIT, NbIT_PER_BLOCK)
	 
	   port map (A, B, Ci, Cout);
  	   
	   test: process
	   begin
	     A <= "11111111111111111111111111111111";
  	     B <= "00000000000000000000000000000001";
  	     Ci <= '0';

	     wait for 10 ns;

	     A <= "00000000000000000000000000001110";
	     B <= "00000000000000000000000000001111";
	     Ci <= '1';
	     wait for 10 ns;
		
	     A <= "00000000000000000000100010001001";
	     B <= "00000000000000000000100010001001";
	     Ci <= '1';
	     wait for 10 ns;

	     --check that all carry bits are generated correctly
	     A <= "10001000100010001000100010001001";	
	     B <= "10001000100010001000100010001001";
	     Ci <= '0';
	     wait;
	     end process;
end TEST;

configuration CARRYGENERATOR_TEST of TB_CARRY_GENERATOR is
  for TEST
    --for all: sparseTree2
     -- use entity WORK.cfg_sparseTree2;
    --end for;
  end for;
end carryGENERATOR_TEST;




