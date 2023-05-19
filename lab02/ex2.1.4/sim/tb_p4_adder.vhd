library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity TB_P4_ADDER is
end TB_P4_ADDER;

architecture TEST of TB_P4_ADDER is
	
	-- P4 component declaration
	component P4_ADDER is
		generic (
			NBIT :	integer := 32;
			NBIT_PER_BLOCK: integer := 4);
		port (
		  	A : in std_logic_vector(NBIT-1 downto 0);
			B : in std_logic_vector(NBIT-1 downto 0);
			Cin : in std_logic;
			S : out	std_logic_vector(NBIT-1 downto 0);
			Cout : out std_logic
		     );
	end component;
	
	signal A, B: std_logic_vector(NBIT-1 downto 0);
	signal Cin: std_logic;
	signal Sum: std_logic_vector(NBIT-1 downto 0);
	signal Cout: std_logic; 
begin
	-- P4 instantiation
	P4_add: p4_adder
		generic map(NBIT => Nbit)
		port map(A=>A, B=>B, Cin=>Cin, S=>Sum, Cout=>Cout);
	
	test: process
	begin
	
		A <= "11111111111111111111111111111111";		--overflow case
  	        B <= "00000000000000000000000000000001";
  	        Cin <= '0';

	        wait for 5 ns;

		-- A <= "00000000000000000000000000001110";			--see if first block's carry is high
	        -- B <= "00000000000000000000000000001111";
	        -- Cin <= '1';
	        -- wait for 10 ns;
	
	     	A <= "00010010000100000100100010001001";		
	     	B <= "00010000000010000000100010001001";
	     	Cin <= '1';
	     	wait for 5 ns;

	     	A <= "00000000000000000000000000000000";		
	     	B <= "00010000000010000000100010001001";
	     	Cin <= '1';
		wait for 5 ns;	

		A <= "10001000100010001000100010001001";		
	     	B <= "10001000100010001000100010001001";
	     	Cin <= '0';
		wait;
	end process;

end TEST;

