library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity RCA is 
	generic (NbitRca: integer );
	--generic (DRCAS : 	Time := 0 ns;
	--         DRCAC : 	Time := 0 ns);
	Port (	A:	In	std_logic_vector(NbitRca-1 downto 0);
			B:	In	std_logic_vector(NbitRca-1 downto 0);
			Ci:	In	std_logic;
			S:	Out	std_logic_vector(NbitRca-1 downto 0);
			Co:	Out	std_logic);
end RCA; 

architecture STRUCTURAL of RCA is --structural definition which makes use of the smaller component called full adder

  signal STMP : std_logic_vector(NbitRca-1 downto 0);
  signal CTMP : std_logic_vector(NbitRca downto 0);

  component FA 
  	--generic (DFAS : 	Time := 0 ns;
    --	     DFAC : 	Time := 0 ns);

  	Port ( A:	In	std_logic;
		   B:	In	std_logic;
	 	   Ci:	In	std_logic;
	 	   S:	Out	std_logic;
	 	   Co:	Out	std_logic);
  end component; 

begin

  CTMP(0) <= Ci;
  S <= STMP;
  Co <= CTMP(NbitRca);
  
  ADDER1: for I in 1 to NbitRca generate
    FAI : FA 
	  --generic map (DFAS => DRCAS, DFAC => DRCAC) 
	  Port Map (A(I-1), B(I-1), CTMP(I-1), STMP(I-1), CTMP(I)); 
  end generate;

end STRUCTURAL;


--architecture BEHAVIORAL of RCA is -- second way of descriping the RCA, this time in a behavioral fashion

--begin

--    Process(A,B, Ci)
--	Variable A7, B7, S7: std_logic_vector(32 downto 0);

--	Begin
--		A7 := '0' & A; --concatinates a '0' bit to the A std_logic_vector
--		B7 := '0' & B; --concatinates an additional bit equal to '0' to the B 
					   --logicalvector
--		S7 := A7 + B7 + Ci;
--		S <= S7(31 downto 0) after DRCAS;
--		Co<= S7(32) after DRCAC;
--	End Process;


  --S <= (A + B) after DRCAS; (this line was here from the start)

--end BEHAVIORAL;

--configuration CFG_RCA_STRUCTURAL of RCA is
--for STRUCTURAL 
--    for ADDER1
--      for all : FA
--        use configuration WORK.CFG_FA_BEHAVIORAL;
--      end for;
--    end for;
--  end for;
--end CFG_RCA_STRUCTURAL;

--configuration CFG_RCA_BEHAVIORAL of RCA is
--  for BEHAVIORAL 
--  end for;
--end CFG_RCA_BEHAVIORAL;
