library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--use WORK.constants.all;

entity MULTIPLIER_tb is
end MULTIPLIER_tb;


architecture TEST of MULTIPLIER_tb is


  constant numBit : integer := 4;    -- :=8  --:=16   
	-- Reminder: numBit is the number of bits of an operand

  --  input	 
  signal A_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');
  signal B_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');

  -- output
  signal Y_mp_i : std_logic_vector(2*numBit-1 downto 0);

-- MUL component declaration
--
--
--section added by me below:
	component BOOTHMUL  
		Generic( Nbit:	integer	:= 4 );
		Port( A:				in	std_logic_vector(Nbit-1 downto 0);
			  B:				in	std_logic_vector(Nbit-1 downto 0);			 
			  P:				out	std_logic_vector(2*Nbit-1 downto 0) ); 
	end component;

begin

-- MUL instantiation
MuTest:	BOOTHMUL 
		generic map ( numBit )
		port map (A_mp_i, B_mp_i, Y_mp_i);

  test: process
  begin

    -- cycle for operand A
    NumROW : for i in 0 to 2**(NumBit)-1 loop

        -- cycle for operand B
    	NumCOL : for i in 0 to 2**(NumBit)-1 loop
	    wait for 10 ns;
	    B_mp_i <= B_mp_i + '1';
	end loop NumCOL ;
        
	A_mp_i <= A_mp_i + '1'; 	
    end loop NumROW ;

    wait;          
  end process test;


end TEST;
