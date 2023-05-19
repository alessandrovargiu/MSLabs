library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;
Entity acc is 
   Generic (NBIT: integer := numBit);
   port (
      A          : in  std_logic_vector(NBIT - 1 downto 0);
      B          : in  std_logic_vector(NBIT - 1 downto 0);
      CLK        : in  std_logic;
      RST_n      : in  std_logic;
      ACCUMULATE : in  std_logic;
      --- ACC_EN_n   : in  std_logic;  -- optional use of the enable
      Y          : out std_logic_vector(NBIT - 1 downto 0));
end acc;
Architecture Structural of ACC is 
      signal Out1:std_logic_vector(NBIT-1 downto 0);
      signal Out2:std_logic_vector(NBit-1 downto 0);
      signal Out3:std_logic_vector(NBit-1 downto 0);
      signal Co: std_logic;
      
        component  MUX21_GENERIC is
        Generic (NBIT: integer := numBit;
                 DELAY_MUX: Time:= tp_mux);
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1 downto 0);
		SEL:	In	std_logic;
		Y:	Out	std_logic_vector(NBIT-1 downto 0));
	end component;
        component FDSYNCH is
        Generic (NBIT: integer:= numBit);
	Port (	D:	In	std_logic_vector(NBIT-1 downto 0);
		CK:	In	std_logic;
		RESET:	In	std_logic;
		Q:	Out	std_logic_vector(NBIT-1 downto 0));
	end component;
        component RCA_generic is 
	generic (NBIT: integer := numBit;
                 DRCAS : 	Time := 0 ns;
	         DRCAC : 	Time := 0 ns
                 );
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(NBIT-1 downto 0);
		Co:	Out	std_logic);
	end component;

BEGIN

   	MUX1: mux21_generic 
   	Port Map(B,Out3,ACCUMULATE,Out1);  
   	
	RCA1: RCA_generic
   	Port Map(A,Out1,'0',Out2,Co);
 
   	FD1: FDSYNCH
   	Port Map(Out2,clk,rst_n,Out3);
   
	Y<=Out3;

end Structural;

architecture Behavioral of ACC is
      signal Out1:std_logic_vector(NBIT-1 downto 0);	--mux output
      signal Out2:std_logic_vector(NBit-1 downto 0);	--rca output
      signal Out3:std_logic_vector(NBit-1 downto 0);	--register output (feedback input to the mux)
     -- signal Co: std_logic;
begin

	mux: process(B,out3,Accumulate)
	begin 
	  if accumulate = '1' then						--active low (accumulator function when accumulate = '0')
	    out1 <= B;									
	  else
	    out1 <= out3;
	  end if;
	end process;
	
	rca: process(A,out1)
	begin
	  out2 <= A + out1; 	
	end process;

	Reg: process(out2, clk)							--synchronous reset
	begin
          if(rising_edge(clk)) then
            if Rst_n = '1' then
              out3 <= out2;	
              Y <= out2;
            else
              out3 <= (others => '0');
              Y <= (others => '0');
            end if;
          end if;
	end process;

end Behavioral;

configuration CFG_ACC_STRUCTURAL of ACC is
  for STRUCTURAL
    --for MUX1
	for all : mux21_generic
	  use configuration WORK.CFG_MUX21_STRUCTURAL;
	end for;
    --end for;
    --for rca1
	for all : rca_generic
	  use configuration WORK.CFG_RCA_generic_STRUCTURAL;
	end for;
    --end for;
    --for FD1
	for all : fdsynch
	  use configuration WORK.CFG_FDSYNCH_PIPPO;
	end for;
  end for;
end CFG_ACC_STRUCTURAL;

configuration CFG_ACC_BEHAVIORAL of ACC is
  for BEHAVIORAL
  end for;
end CFG_ACC_BEHAVIORAL;
