library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard logic
use WORK.constants.all; -- libreria WORK user-defined

entity MUX21_GENERIC is
        Generic (NBIT: integer := NBit;
                 DELAY_MUX: Time:= tp_mux);
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1 downto 0);
		SEL:	In	std_logic;
		Y:	Out	std_logic_vector(NBIT-1 downto 0));
end MUX21_GENERIC;


architecture BEHAVIORAL_1 of MUX21_GENERIC is

begin
    Mi: for i in 0 to NBIT-1 GENERATE				--for generate statement to implement bitwise operation
	  Y(i) <= (A(i) and SEL) or (B(i) and not(SEL)); 
	end generate Mi;
end BEHAVIORAL_1;


architecture BEHAVIORAL_2 of MUX21_GENERIC is

begin
	Y <= A when SEL='1' else B;

end BEHAVIORAL_2;
architecture BEHAVIORAL_3 of MUX21_GENERIC is

begin
	pmux: process(A,B,SEL)
	begin
		if SEL='1' then
			Y <= A;
		else
			Y <= B;
		end if;

	end process;

end BEHAVIORAL_3;



architecture STRUCTURAL of MUX21_GENERIC is

	signal Y1: std_logic_vector(NBIT-1 downto 0);	--output of first AND gate
	signal Y2: std_logic_vector(NBIT-1 downto 0);	--output of second AND gate
	signal SB: std_logic;							--output of inverter
	signal output_data: std_logic_vector(NBIT-1 downto 0);  --output of last AND gate

	component ND2
	
	Port (	A:	In	std_logic;
		B:	In	std_logic;
		Y:	Out	std_logic);
	end component;
       	component IV
	
	Port (	A:	In	std_logic;
		Y:	Out	std_logic);
	end component;

begin

	UIV : IV Port Map (SEL, SB);

	UND1 :
	for i in 0 to NBIT-1 generate
	  bit_and: ND2 Port Map (A(i), SEL, Y1(i));
	end generate;

	UND2 : 
	for i in 0 to NBIT-1 generate
	  bit_and2: ND2 Port Map (B(i), SB, Y2(i));
	end generate;

	UND3 : 
	for i in 0 to NBIT-1 generate
	  bit_and3: ND2 Port Map (Y1(i), Y2(i), output_data(i));
	end generate;

	Y <= output_data;

end STRUCTURAL;


configuration CFG_MUX21_BEHAVIORAL_2 of MUX21_GENERIC is
	for BEHAVIORAL_2
	end for;
end CFG_MUX21_BEHAVIORAL_2;

configuration CFG_MUX21_BEHAVIORAL_1 of MUX21_GENERIC is
	for BEHAVIORAL_1
	end for;
end CFG_MUX21_BEHAVIORAL_1;

configuration CFG_MUX21_BEHAVIORAL_3 of MUX21_GENERIC is
	for BEHAVIORAL_3
	end for;
end CFG_MUX21_BEHAVIORAL_3;

configuration CFG_MUX21_STRUCTURAL of MUX21_GENERIC is
	for STRUCTURAL
		for all : IV
			use configuration WORK.CFG_IV_BEHAVIORAL;
		end for;
		for all : ND2
			use configuration WORK.CFG_ND2_ARCH2;
		end for;
	end for;
end CFG_MUX21_STRUCTURAL;
