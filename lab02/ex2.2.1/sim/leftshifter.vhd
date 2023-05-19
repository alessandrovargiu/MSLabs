library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity leftshifter is
	generic ( NbitShifter : integer );
	Port (	shift_in:		In	std_logic_vector(NbitShifter-1 downto 0);
			shift_out:		Out	std_logic_vector(NbitShifter-1 downto 0));

end leftshifter;

architecture behavioral of leftshifter is

begin

ShiftingBits: for i in NbitShifter-1 downto 0 generate

	LSB: if i = 0 generate 
		LSB_i: shift_out(0) <= '0' ;-- a 0 is added in the LSB of the output signal
		end generate LSB;

	OtherBits: if i>0 generate
		MSBs: shift_out(i) <= shift_in(i-1);
		end generate OtherBits;

	end generate ShiftingBits;

end behavioral ;
