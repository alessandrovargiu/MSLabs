library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes.all;
use work.microcode_mem_pckg.all;				--microcode memory array

--USE ieee.numeric_std.ALL;

entity CU_UP1 is
	generic(
    INSTRUCTIONS_EXECUTION_CYCLES : integer := 3;  -- Instructions Execution
                                                   -- Clock Cycles
    MICROCODE_MEM_SIZE            : integer := 195;  -- Microcode Memory Size 
    --RELOC_MEM_SIZE                : integer := 64;  -- Microcode Relocation      
                                                   -- Memory Size
    OP_CODE_SIZE : integer := 6;        -- Op Code Size
    ALU_OPC_SIZE : integer := 2;        -- ALU Op Code Word Size
    IR_SIZE      : integer := 32;       -- Instruction Register Size
    FUNC_SIZE    : integer := 11;       -- Func Field Size for R-Type Ops
    CW_SIZE      : integer := 13        -- Control Word Size
			); 
	port(-- FIRST PIPE STAGE OUTPUTS
              EN1    : out std_logic;               -- enables the register file and the pipeline registers
              RF1    : out std_logic;               -- enables the read port 1 of the register file
              RF2    : out std_logic;               -- enables the read port 2 of the register file
              -- SECOND PIPE STAGE OUTPUTS
              EN2    : out std_logic;               -- enables the pipe registers
              S1     : out std_logic;               -- input selection of the first multiplexer
              S2     : out std_logic;               -- input selection of the second multiplexer
              ALU1   : out std_logic;               -- alu control bit
              ALU2   : out std_logic;               -- alu control bit
              -- THIRD PIPE STAGE OUTPUTS
              EN3    : out std_logic;               -- enables the memory and the pipeline registers
              RM     : out std_logic;               -- enables the read-out of the memory
              WM     : out std_logic;               -- enables the write-in of the memory
              S3     : out std_logic;               -- input selection of the multiplexer
              WF1    : out std_logic;               -- enables the write port of the register file
              -- INPUTS
              OPCODE : in  std_logic_vector(OP_CODE_SIZE - 1 downto 0);
              FUNC   : in  std_logic_vector(FUNC_SIZE - 1 downto 0);              
              Clk : in std_logic;
              Rst : in std_logic);                  -- Active Low
				
end CU_UP1;

architecture behavioral of CU_UP1 is

  signal cw : std_logic_vector(CW_SIZE - 1 downto 0);

  signal uPC : integer range 0 to 194; --maximum memory address is decimal value 194 ( 00000000011 000010 )
  signal ICount : integer range 0 to INSTRUCTIONS_EXECUTION_CYCLES;
  signal start: integer range 0 to 1;
  
begin

	EN1 	<= cw(CW_SIZE-1);
	RF1 	<= cw(CW_SIZE-2);
	RF2 	<= cw(CW_SIZE-3);

	EN2 	<= cw(CW_SIZE-4);
	S1  	<= cw(CW_SIZE-5);
	S2  	<= cw(CW_SIZE-6);
	ALU1	<= cw(CW_SIZE-7);
	ALU2	<= cw(CW_SIZE-8);

	EN3 	<= cw(CW_SIZE-9);
	RM  	<= cw(CW_SIZE-10);
	WM  	<= cw(CW_SIZE-11);
	S3  	<= cw(CW_SIZE-12);
	WF1 	<= cw(CW_SIZE-13);

	cw <= microcode(uPC); --cw is the current control word.
	cw_Debug <= cw;

	BaseAddress_Proc: process(OpCode,func)
	begin
		if (OpCode = "000000") then 	-- Rtype instruction, func field composes the msbs of the address. 
			uPC <= conv_integer(func & OpCode);
		else					
			uPC <= conv_integer("00000000000" & OpCode) ;
		end if;
	end process BaseAddress_Proc;
	
	
  uPC_Proc: process (Clk, Rst)
  begin  
	if Rst = '0' then                   -- asynchronous reset (active low)
      uPC <= 179;                     --in the 179th entry of the microcode, the control word stored is 00000000000
	    ICount <= 0;
  elsif Clk'event and Clk = '1' then          -- rising clock edge
		If(ICount < INSTRUCTIONS_EXECUTION_CYCLES) then
	        uPC <= uPC + 1;
	        ICount <= ICount + 1;
          If(Icount = INSTRUCTIONS_EXECUTION_CYCLES-1) then
            ICount <= 0;
    end if;
  end if;
end process uPC_Proc;

end behavioral;

