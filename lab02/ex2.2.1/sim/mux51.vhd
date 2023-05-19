library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard logic
--use WORK.constants.all; -- libreria WORK user-defined

entity MUX51 is
	Generic ( MuxNbit:	integer);
	Port (	zeroSignal:		In	std_logic_vector(MuxNbit-1 downto 0);
			A_signal:		In	std_logic_vector(MuxNbit-1 downto 0);
			A_neg:			In	std_logic_vector(MuxNbit-1 downto 0);
			A_shifted:		In	std_logic_vector(MuxNbit-1 downto 0);
			A_neg_shifted:	In	std_logic_vector(MuxNbit-1 downto 0);
			Sel:			In	std_logic_vector(2 downto 0);
			Y:				Out	std_logic_vector(MuxNbit-1 downto 0));
end MUX51;


--architecture BEHAVIORAL_1 of MUX21 is

--begin
--	Y <=   ( A and S ) or ( B and not(S) ) ; -- processo implicito

--end BEHAVIORAL_1;


architecture BEHAVIORAL_2 of MUX51 is

begin

process(Sel, zeroSignal, A_signal, A_neg, A_shifted, A_neg_shifted)

begin

case (Sel) is

	when "000" =>	Y <= zerosignal;
	when "001" =>	Y <= A_signal;
	when "010" =>	Y <= A_neg;
	when "011" =>	Y <= A_shifted;
	when "100" =>	Y <= A_neg_shifted;
	--when "101" =>	Y <= A_neg;
	--when "110" =>	Y <= A_neg;
	--when "111" =>	Y <= zerosignal;
	when others =>	Y <= zerosignal;

end case;

end process;

end BEHAVIORAL_2;


--architecture BEHAVIORAL_3 of MUX21 is

--begin
--	pmux: process(A,B,S)
--	begin
--		if S='1' then
--			Y <= A;
--		else
--			Y <= B;
--		end if;

--	end process;

--end BEHAVIORAL_3;

--architecture STRUCTURAL of MUX21 is

--	signal Y1: std_logic;
--	signal Y2: std_logic;
--	signal SB: std_logic;

--	component ND2
	
--	Port (	A:	In	std_logic;
--			B:	In	std_logic;
--			Y:	Out	std_logic);
--	end component;
	
--	component IV
	
--	Port (	A:	In	std_logic;
--			Y:	Out	std_logic);
--	end component;

--begin

--	UIV : IV
--	Port Map ( S, SB);

--	UND1 : ND2
--	Port Map ( A, S, Y1);

--	UND2 : ND2
--	Port Map ( B, SB, Y2);

--	UND3 : ND2
--	Port Map ( Y1, Y2, Y);


--end STRUCTURAL;


--configuration CFG_MUX21_BEHAVIORAL_1 of MUX21 is
--	for BEHAVIORAL_1
--	end for;
--end CFG_MUX21_BEHAVIORAL_1;

--configuration CFG_MUX21_BEHAVIORAL_2 of MUX21 is
--	for BEHAVIORAL_2
--	end for;
--end CFG_MUX21_BEHAVIORAL_2;

--configuration CFG_MUX21_BEHAVIORAL_3 of MUX21 is
--	for BEHAVIORAL_3
--	end for;
--end CFG_MUX21_BEHAVIORAL_3;

--configuration CFG_MUX21_STRUCTURAL of MUX21 is
--	for STRUCTURAL
--		for all : IV
--			use configuration WORK.CFG_IV_BEHAVIORAL;
--		end for;
--		for all : ND2
--			use configuration WORK.CFG_ND2_ARCH2;
--		end for;
--	end for;
--end CFG_MUX21_STRUCTURAL;
