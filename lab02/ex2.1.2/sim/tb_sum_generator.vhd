library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.constants.all; -- libreria WORK user-defined
entity TBSUM_GENERATOR is 
end TBSUM_GENERATOR; 

architecture TEST of TBSUM_GENERATOR is
	component SUM_GENERATOR is
		generic (
			NBIT_PER_BLOCK: integer := 4;
			NBLOCKS:	integer := 8);
		port (
			A:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
			B:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
			Ci:	in	std_logic_vector(NBLOCKS-1 downto 0);
			S:	out	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0));
	end component;

  constant NBIT_PER_BLOCK: integer := 4;
  constant NBLOCKS:	integer := 8;
  signal A, B, S : std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
  signal Ci: std_logic_vector(NBLOCKS-1 downto 0);

begin
 SG1 : Sum_Generator
	   --generic map (DRCAS => 0.02 ns, DRCAC => 0.02 ns) 
	   port map (A, B, Ci, S);
  
  test: process
  begin
  	A <= "11111111111111111111111111111111";
  	B <= "00000000000000000000000000000001";
  	Ci <= "11111110";

  	wait for 10 ns;

  	A <= "00000000000010001000001111110101";
  	B <= "00000000000010001000000000000001";
  	Ci <= "00110000";
	wait for 10 ns;
	
	A <= "00001000100010001000100010001001";
  	B <= "00001000100010001000100010001001";
  	Ci <= "11111111";
	wait;
	end process;
end TEST;

configuration SUM_GENERATORTEST of TBSUM_GENERATOR is
  for TEST
    for all: SUM_GENERATOR
      use entity WORK.SUM_GENERATOR(STRUCTURAL);
    end for;
  end for;
end SUM_GENERATORTEST;
