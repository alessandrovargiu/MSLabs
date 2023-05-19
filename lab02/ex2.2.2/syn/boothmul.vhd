library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--Some Remarks:

--The code implements a generic multiplier performing multiplication between signed operands.
--The comments with a "*" labels must be uncommented if a multiplication between unsigned operands is desired.

--The synthesis of the design has been performed with the standard implementation (the one which interprets A and B as signed operands)

entity BOOTHMUL is
  generic(Nbit : integer := 32);
  port( A : in  std_logic_vector(Nbit-1 downto 0);
        B : in  std_logic_vector(Nbit-1 downto 0);
        P : out std_logic_vector(2*Nbit-1 downto 0)); 
end BOOTHMUL;

architecture STRUCTURAL of BOOTHMUL is

----------------------------------------------------------------------------------------------------------------------------------------------------

  --in this array of signals defined below, there are all the possible negative shifted versions of A and all possible positive shifted versions of A.
  type SignalVector4Inputs is array (Nbit downto 0) of std_logic_vector(2*Nbit-1 downto 0);
  signal negative_inputs : SignalVector4Inputs := (others => (others => '0'));
  signal positive_inputs : SignalVector4Inputs := (others => (others => '0'));

  signal A_complement : std_logic_vector(2*Nbit-1 downto 0);

  --indeces 1, 0, -1 of the first group of B
  signal initialB : std_logic_vector(2 downto 0);

  --array of adders cout
  signal Co_vector : std_logic_vector(Nbit/2-1 downto 0);

  --we define an amount of selection signals for the muxes, which contain the ouput of the encoder
  type SignalVectorEncoderOut is array (Nbit/2-1 downto 0) of std_logic_vector(2 downto 0);
  signal sel : SignalVectorEncoderOut := (others => (others => '0'));

  --we define an amount of Nbit/2 MuxOutputs signals
  type SignalVectorMuxOut is array (Nbit/2-1 downto 0) of std_logic_vector(2*Nbit-1 downto 0);
  signal MuxOutputs : SignalVectorMuxOut := (others => (others => '0'));

  --this Co bit is the bit that comes up after making the addition Acomplement + 1 to obtain -A
  signal Co_i : std_logic;

  --the Nbit/2 output signals from the Sum are stored all together in this array of signals defined below 
  type SignalVectorSumOut is array (Nbit/2-1 downto 0) of std_logic_vector(2*Nbit-1 downto 0);
  signal SumOutputs : SignalVectorSumOut := (others => (others => '0'));

  --these 2 below signals are needed if it is wished to perform the multilplication between unsigned operands

  --P1 is the final result when the MSB of B is not '1'
  
	--* signal P1 : std_logic_vector(2*Nbit-1 downto 0);

  --P2 is the final result when the MSB of B is '1'

  	--* signal P2 : std_logic_vector(2*Nbit-1 downto 0);

-----------------------------------------------------------------------------------------------------------------------------------
  component mux51
    generic (MuxNbit : integer);
    port (zeroSignal    : in  std_logic_vector(MuxNbit-1 downto 0);
          A_signal      : in  std_logic_vector(MuxNbit-1 downto 0);
          A_neg         : in  std_logic_vector(MuxNbit-1 downto 0);
          A_shifted     : in  std_logic_vector(MuxNbit-1 downto 0);
          A_neg_shifted : in  std_logic_vector(MuxNbit-1 downto 0);
          Sel           : in  std_logic_vector(2 downto 0);
          Y             : out std_logic_vector(MuxNbit-1 downto 0));
  end component;

	--needed to produce the correct selection signal of the mux
  component encoder
    port (pieceofB  : in  std_logic_vector(2 downto 0);
          sel : out std_logic_vector(2 downto 0));

  end component;

	--small component needed to form the complement of A
  component IV
    port (A : in  std_logic;
          Y : out std_logic);
  end component;

	--used to create all the shifted versions of A 
  component leftshifter
    generic (NbitShifter : integer);
    port (shift_in : in  std_logic_vector(NbitShifter-1 downto 0);
          shift_out : out std_logic_vector(NbitShifter-1 downto 0));
  end component;

	--the summations are done with a ripple carry adder component
  component rca
    generic (NbitRca : integer);
    port (A  : in  std_logic_vector(NbitRca-1 downto 0);
          B  : in  std_logic_vector(NbitRca-1 downto 0);
          Ci : in  std_logic;
          S  : out std_logic_vector(NbitRca-1 downto 0);
          Co : out std_logic);
  end component;

begin

--putting signal A in the least significant half of the Nbit*2 sized signal

  Alonger : for i in 0 to 2*Nbit-1 generate
    LSBsOfA : if i < Nbit generate
      LSBs : positive_inputs(0)(i) <= A(i);
    end generate LSBsOfA;

    MSBsOfA : if i > Nbit-1 generate
--if the multiplication is wished to be the standard one (operands interpreted as signed) please uncomment the below line.

      MSBs : positive_inputs(0)(i) <= A(Nbit-1); 

--if the multiplication is wished to be done between unsigned operands, please uncomment the below line

	  --* MSBs : positive_inputs(0)(i) <= '0'; 
    end generate MSBsOfA;
    
  end generate Alonger;

  AComplement : for i in 0 to 2*Nbit-1 generate
    inverterI : iv
      port map(positive_inputs(0)(i), A_complement(i));
  end generate Acomplement;

  -- add +1 to the complemented signal (2's complement)
  FinilizingNegativeSignal : rca
    generic map(2*Nbit)
    port map (A_complement, (others => '0'), '1', negative_inputs(0), Co_i);

--for-generate statement to form the rest of the shifted input from the primary signal "postive_inputs(0)"
--the range goes to Nbit because there are Nbit amount of positive shifted signals that we need to create

  ShifterPos : for i in 1 to Nbit generate  -- positive_inputs(Nbit) will contain the signal to add if the MSB of B is 1
    shifted_pos : leftshifter
      generic map (2*Nbit)
      port map (positive_inputs(i-1), positive_inputs(i));

  end generate ShifterPos;

--now below I do a for-generate statement to form the rest of the shifted input from the primary signal "negative_inputs(0)"
--the range goes to Nbit because there are Nbit amount of negative shifted signals that we need to create
  ShifterNeg : for i in 1 to Nbit-1 generate
    shifted_neg : leftshifter
      generic map (2*Nbit)
      port map (negative_inputs(i-1), negative_inputs(i));

  end generate ShifterNeg;

  --below, i am forming the signal which is fed to the selection of the MUX at the first iteration of the Booth Algorithm.
  --In fact, the extra concatenated '0' is the bit stored in index -1 of the B signal

  initialB <= B(1 downto 0) & '0';  -- we are adding the '-1' index of the B signal

  --initalBtest<= initialB ; --DEBUGLINE

--below is the section which generates the muxes

-- for example, if we have the 4bit operands we will have generation of 2 muxes
  Muxlabel : for i in 0 to Nbit/2-1 generate 
    
    first3bits : if i = 0 generate

      encoder0 : encoder
        port map(initialB, sel(0));

      MUX0 : Mux51
        generic map (2*Nbit)
        port map((others => '0'),
                  positive_inputs(2*i),
                  negative_inputs(2*i),
                  positive_inputs(2*i+1),
                  negative_inputs(2*i+1),
                  sel(0),
                  MuxOutputs(0));
    end generate first3bits;

    otherbits : if i > 0 generate
      
      encoderI : encoder
        port map( B(((3*i)-i+1) downto (((3*i)-i+1) -2)), sel(i));

      MUXI : Mux51
        generic map(2*Nbit)
        port map((others => '0'),
                  positive_inputs(2*i),
                  negative_inputs(2*i),
                  positive_inputs(2*i+1),
                  negative_inputs(2*i+1),
                  sel(i),
                  MuxOutputs(i));
    --internalB2<= B( ((3*i)-i+1) downto ( (3*i)-i+1-2) ) ; (DEBUGLINE)
    end generate otherbits;
    
  end generate Muxlabel;

  --MuxOutputsTest1     <= MuxOutputs(0); --DEBUGLINE
  --MuxOutputsTest2     <= MuxOutputs(1); --DEBUGLINE

--below we have the section generating the adders

--we always generate this SUM0 block. It is always present for the 8 bit Mul, 16 bit mul and 32 bit mul, 

--Doesnt take a previous sum output but takes as input the 2 mux outputs

  SUM0 : rca
    generic map (2*Nbit)
    port map(MuxOutputs(0),
                MuxOutputs(1),
                '0',
                SumOutputs(0),  
                Co_vector(0)); 

-- there are Nbit/2 - 1 - 1 additional other adders that must be generated along with the SUM0 adder.

-- if Nbit of the operands is 4--->	 "SUM0" Adder + 0 additional adders are generated
-- if Nbit of the operands is 8--->	 "SUM0" Adder + 2 additional adders are generated
-- if Nbit of the operands is 16---> "SUM0" Adder + 6 additional adders are generated

  Sumlabel : for i in 1 to (Nbit/2-1-1) generate 

    SUMI : rca
      generic map (2*Nbit)
      port map(MuxOutputs(i+1),
                SumOutputs(i-1),
                '0',
                SumOutputs(i),
                Co_vector(i));
  end generate Sumlabel;

  P <= SumOutputs(Nbit/2-2);  --(comment this line if  you want the multiplication to be done between unsigned operands)

  --* P1 <= SumOutputs(Nbit/2-2);

------------------------------------------------------------------------------------------------------------------------------------------------------
--the group did additional analysis if the B and A operands are whished to be interpreted as an unsigned numbers. (i.e. "1000" is 8 instead of -8)

--In this case, the comments containg an additional "*" must be uncommented in this VHDL file.

--P1 is the result that should be displayed if the MSB of B is 0

  --On the other hand, if the MSB is '1', an additional shifted version of A is summed to the P1 signal.

  --for example: If we have an 8bit mul and the B operand has '1' as MSB (for example is "1000" ), then the P1 produced (which stores a negative number in   this case) is summed to 16A to give the correct product which is then stored in P2.

  --for example: If we have an 16bit mul and the B operand has '1' as MSB (for example is "10000000" ), then the P1 produced (which stores a negative     number in this case) is summed to 256A to give the correct result which is then stored in P2 signal
------------------------------------------------------------------------------------------------------------------------------------------------------

  --* SUMLAST: rca
  --* generic map(2*Nbit)
  --* port map (  P1,
      --*        positive_inputs(Nbit), 
      --*        '0', 
      --*        P2,
      --*        Co_i );

  --thanks to this below process. We are able to analyze the MSB of the B operand, and based on it, we know which signal stores the correct result of the    P1 or P2 multiplication 

  --* process( B, A, P1, P2 )

  --* begin

  --* if B(Nbit-1) = '0' then
  	--* P <= P1;
  --* else
  	--* P <= P2;

  --* end if;

  --* end process;

end structural;
