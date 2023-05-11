library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes.all;
--USE ieee.numeric_std.ALL;

entity CU_UP1 is
	generic(
			MICROCODE_MEM_SIZE :     integer := 19;  -- Microcode Memory Size
    		FUNC_SIZE          :     integer := 11;  -- Func Field Size for R-Type Ops
    		OP_CODE_SIZE       :     integer := 6;  -- Op Code Size
			CW_SIZE : integer := 13;				-- output signals of CU
			ALU_SIZE : Integer := 2    --2 bits for 4 operations 0 1 2 3
			); 
	port(-- FIRST PIPE STAGE OUTPUTS
              EN1    : out std_logic;               -- enables the register file and the pipeline registers
              RF1    : out std_logic;               -- enables the read port 1 of the register file
              RF2    : out std_logic;               -- enables the read port 2 of the register file
              WF1    : out std_logic;               -- enables the write port of the register file
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
              -- INPUTS
              OPCODE : in  std_logic_vector(OP_CODE_SIZE - 1 downto 0);
              FUNC   : in  std_logic_vector(FUNC_SIZE - 1 downto 0);              
              Clk : in std_logic;
              Rst : in std_logic);                  -- Active Low
end CU_UP1;

architecture behavioral of CU1 is
type mem_array is array (integer range 0 to MICROCODE_MEM_SIZE - 1) of std_logic_vector(CW_SIZE - 1 downto 0);
  signal cw_mem : mem_array := ("1110000000000", --ADD RTYPE control signal related to first stage
								"0000100100000",
								"0000000000101",
								"1111101011000", -- sub rtype
								"1111101101000", -- and rtype
								"1111101111000", -- or rtype
								"1011111001000", -- addi1 itype
								"0000000000000", -- nop
								"1011111011000", -- subi1 itype
								"1011111101000", -- andi1 itype
								"1011111111000", -- ori1 itype
								"1101100001000", -- addi2 itype
								"1101100011000", -- subi2 itype
								"1101100101000", -- andi2 itype
								"1101100111000", -- ori2 itype
								"1101100001000", -- MOV itype , non sicuro sia giusto
								"1011111000000", -- S_REG1 itype
								"1101100000000", -- S_REG2 itype
								"1110100001010", -- S_MEM itype
								"1111111001101", -- L_MEM itype
								"1111100001101"  --LMEM_ itype
								);-- to be completed (enlarged and filled)

