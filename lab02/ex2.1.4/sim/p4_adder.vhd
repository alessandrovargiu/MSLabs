library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity p4_adder is
  generic (NBIT:integer;
           NBIT_PER_BLOCK: integer);
  port(A : in std_logic_vector(NBIT-1 downto 0);
       B : in std_logic_vector(NBIT-1 downto 0);
       Cin : in	std_logic;
       S : out std_logic_vector(NBIT-1 downto 0);
       Cout : out std_logic);
  end p4_adder;

architecture structural of p4_adder is

  component sparseTree      --carrygenerator
    generic (NBIT: integer;
             NBIT_PER_BLOCK: integer);
    port ( A : in std_logic_vector(NBIT-1 downto 0);
	   B : in std_logic_vector(NBIT-1 downto 0);
	   Cin : in std_logic;
	   Cout : out std_logic_vector((NBIT/NBIT_PER_BLOCK) downto 0));
    end component;

  component sum_generator 
    generic (NBIT_PER_BLOCK:integer;
             NBLOCKS: integer);
    port( A: in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
	  	  B: in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
	  	  Ci:in	std_logic_vector(NBLOCKS-1 downto 0);
	  	  S: out std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0)
	    );
end component;
	signal bxor: std_logic_vector (NBIT-1 downto 0);
    signal carries: std_logic_vector((NBIT/NBIT_PER_BLOCK) downto 0 );
begin
	--support for subtraction    
	XORLOOP: for i in 0 to Nbit-1 generate
               bxor(i) <= b(i) xor Cin;
           end generate;
	
	carrygen: sparseTree
	generic map(NBIT => NBIT, NBIT_PER_BLOCK => NBIT_PER_BLOCK)
           port map (a => a,b => bxor , cin => cin, cout => carries);
	
	carrysel: sum_generator
          generic map (NBIT_PER_BLOCK => NBIT_PER_BLOCK, NBLOCKS => (NBIT/NBIT_PER_BLOCK))
   	  port map (A => A, B => bxor, Ci => carries((NBIT/NBIT_PER_BLOCK)-1 downto 0), S => S);

	cout <= carries(NBIT/NBIT_PER_BLOCK);  

end structural;

configuration cfg_p4_adder of p4_adder is
  for structural
  end for;
end configuration;





