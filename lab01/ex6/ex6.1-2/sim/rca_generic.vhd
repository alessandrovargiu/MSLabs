library ieee; 
use ieee.std_logic_1164.all; 
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use WORK.constants.all; -- libreria WORK user-defined
entity RCA_generic is 
	generic (NBIT: integer := numBit;
                 DRCAS : 	Time := 0 ns;
	         DRCAC : 	Time := 0 ns
                 );
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(NBIT-1 downto 0);
		Co:	Out	std_logic);
end RCA_generic; 

architecture STRUCTURAL of RCA_generic is

  signal STMP : std_logic_vector(NBIT-1 downto 0);
  signal CTMP : std_logic_vector(NBIT downto 0);

  component FA 
  generic (DFAS : 	Time := 0 ns;
           DFAC : 	Time := 0 ns);
  Port ( A:	In	std_logic;
	 B:	In	std_logic;
	 Ci:	In	std_logic;
	 S:	Out	std_logic;
	 Co:	Out	std_logic);
  end component; 

begin

  CTMP(0) <= Ci;
  S <= STMP;
  Co <= CTMP(NBIT);
  
  ADDER1: for I in 1 to NBIT generate
    FAI : FA 
	  generic map (DFAS => DRCAS, DFAC => DRCAC) 
	  Port Map (A(I-1), B(I-1), CTMP(I-1), STMP(I-1), CTMP(I)); 
  end generate;
  

end STRUCTURAL;


architecture BEHAVIORAL of RCA_generic is 
begin
  PROCESS(A,B,Ci)
    --variable AN,BN,SN: std_logic_vector (NBIT downto 0);
    variable AN,BN,SN: unsigned (NBIT downto 0);
  BEGIN
    AN := unsigned('0'& A);
    BN := unsigned('0'& B);
    SN := AN + BN + ('0'&Ci);
    S  <= std_logic_vector(SN(NBIT-1 downto 0))after DRCAS;
    Co <= SN(NBIT) after DRCAC;
    end PROCESS;
 
end BEHAVIORAL;

configuration CFG_RCA_generic_STRUCTURAL of RCA_generic is
  for STRUCTURAL 
    for ADDER1
      for all : FA
        use configuration WORK.CFG_FA_BEHAVIORAL;
      end for;
    end for;
  end for;
end CFG_RCA_generic_STRUCTURAL;

configuration CFG_RCA_generic_BEHAVIORAL of RCA_generic is
  for BEHAVIORAL 
  end for;
end CFG_RCA_generic_BEHAVIORAL;
