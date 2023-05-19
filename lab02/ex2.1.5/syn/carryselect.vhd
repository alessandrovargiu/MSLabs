library ieee; 
use ieee.std_logic_1164.all; 
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use WORK.constants.all; -- libreria WORK user-defined

entity Carryselect is 
	generic (NBIT: integer := NBit;
                 DRCAS : 	Time := 0 ns;
	         DRCAC : 	Time := 0 ns
                 );
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(NBIT-1 downto 0);
		Co:	Out	std_logic);
end Carryselect; 

architecture STRUCTURAL of Carryselect is

  signal STMP0 : std_logic_vector(NBIT-1 downto 0);
  signal STMP1 : std_logic_vector(NBIT-1 downto 0);
  signal CTMP0 : std_logic_vector(NBIT downto 0);
  signal CTMP1 : std_logic_vector(NBIT downto 0);

  component FA 
  generic (DFAS : 	Time := 0 ns;
           DFAC : 	Time := 0 ns);
  Port ( A:	In	std_logic;
	 B:	In	std_logic;
	 Ci:	In	std_logic;
	 S:	Out	std_logic;
	 Co:	Out	std_logic);
  end component; 
  component MUX21_GENERIC is
        Generic (NBIT: integer := NBit;
                 DELAY_MUX: Time:= tp_mux);
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1 downto 0);
		SEL:	In	std_logic;
		Y:	Out	std_logic_vector(NBIT-1 downto 0));
end component;

begin

    CTMP0(0) <= '0';
    CTMP1(0) <= '1';
  
    --S <= STMP;
    --Co <= CTMP(NBIT);
    --attenzione carry out, credo sia giusto diciamo non contarlo per questo tipo di richiesta.
    ADDER1: for I in 1 to NBIT generate			--instantiate full adder components
              FAI : FA 
	            generic map (DFAS => DRCAS, DFAC => DRCAC) 
	            Port Map (A(I-1), B(I-1), CTMP0(I-1), STMP0(I-1), CTMP0(I)); 
            end generate;
  
    ADDER2: for I in 1 to NBIT generate			--instantiate full adder components
             FAI : FA 
	           generic map (DFAS => DRCAS, DFAC => DRCAC) 
	           Port Map (A(I-1), B(I-1), CTMP1(I-1), STMP1(I-1), CTMP1(I)); 
            end generate;
 
     Mux1: Mux21_generic
        --generic map ();
        Port Map (STMP0,STMP1,Ci,S);

end STRUCTURAL;


architecture BEHAVIORAL of Carryselect is 
begin
  PROCESS(A,B,Ci)
    variable AN,BN,SN1,SN0: unsigned (NBIT downto 0);	--unsigned conversion to use + operator
  BEGIN
    AN := unsigned('0'& A);							--one bit padding
    BN := unsigned('0'& B);
    SN0 := AN + BN + "00";	
    SN1 := AN + BN + "01";
	if Ci='1' then					
           S <= std_logic_vector(SN1(NBIT-1 downto 0)) after DRCAS;
 	   --Co <= SN1(NBIT) after DRCAC;
	else 
	   S  <= std_logic_vector(SN0(NBIT-1 downto 0)) after DRCAS;
	   --Co <= SN0(NBIT) after DRCAC;
	end if;
    end PROCESS;
 
end BEHAVIORAL;

configuration CFG_Carryselect_STRUCTURAL of Carryselect is
  for STRUCTURAL 
    for ADDER1
      for all : FA
        use configuration WORK.CFG_FA_BEHAVIORAL;
      end for;
    end for;
  end for;
end CFG_Carryselect_STRUCTURAL;

configuration CFG_Carryselect_BEHAVIORAL of Carryselect is
  for BEHAVIORAL 
  end for;
end CFG_Carryselect_BEHAVIORAL;
