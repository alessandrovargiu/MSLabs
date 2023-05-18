library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes.all;
--USE ieee.numeric_std.ALL;

entity CU1 is
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
end CU1;

architecture behavioral of CU1 is
type mem_array is array (integer range 0 to MICROCODE_MEM_SIZE - 1) of std_logic_vector(CW_SIZE - 1 downto 0);
  signal cw_mem : mem_array := ("1111010010001", --ADD RTYPE
				"1111010110001", -- sub rtype
				"1111011010001", -- and rtype
				"1111011110001", -- or rtype
				"1011110010001", -- addi1 itype
				"0000010000010", -- nop
				"1011110110001", -- subi1 itype
				"1011111010001", -- andi1 itype
				"1011111110001", -- ori1 itype
				"1101000010001", -- addi2 itype
				"1101000110001", -- subi2 itype
				"1101001010001", -- andi2 itype
				"1101001110001", -- ori2 itype
				"1101000010001", -- MOV itype , non sicuro sia giusto
				"1011110000001", -- S_REG1 itype
				"1101000000001", -- S_REG2 itype
				"1111000010100", -- S_MEM itype
				"1111110011011", -- L_MEM itype
				"1111000011011"  --LMEM_ itype				
				);-- to be completed (enlarged and filled)

signal cw_s   : std_logic_vector(CW_SIZE - 1 downto 0); -- full control word read from cw_mem
signal cw1_s : std_logic_vector (CW_SIZE -1 downto 0); -- stage 1
signal cw2_s : std_logic_vector (CW_SIZE -1 -3 downto 0); -- stage 2
signal cw3_s : std_logic_vector (CW_SIZE -1 -3 -5 downto 0); -- stage 3
signal opcode_s : std_logic_vector ( 6- 1 downto 0); --- generated because of an error created by modelsim during compilation (in which a generic dimension is not allowed) 
signal func_s : std_logic_vector (11 - 1 downto 0);

begin

	opcode_s <= OPCODE;
	func_s <= FUNC;


	EN1 <= cw1_s(CW_SIZE -1);
	RF1 <= cw1_s(CW_SIZE -2);    
	RF2 <= cw1_s(CW_SIZE -3);
     


	EN2 <= cw2_s(CW_SIZE -4); 
	S1 <= cw2_s(CW_SIZE -5);     
	S2 <= cw2_s(CW_SIZE -6);    
	ALU1 <= cw2_s(CW_SIZE -7);   
	ALU2 <= cw2_s(CW_SIZE -8);
   

	EN3 <= cw3_s(CW_SIZE -9);
	RM <= cw3_s(CW_SIZE -10);     
	WM <= cw3_s(CW_SIZE -11);    
	S3 <= cw3_s(CW_SIZE -12);
	WF1 <= cw3_s(CW_SIZE -13);
--process to pipeline to control word
CW_PIPE: process (Clk, Rst)
  begin  -- process Clk
    if Rst = '0' then                   -- asynchronous reset (active low)
      cw1_s <= (others => '0');
      cw2_s <= (others => '0');
      cw3_s <= (others => '0');
      
    elsif Clk'event and Clk = '1' then  -- rising clock edge
      cw1_s <= cw_s;
      cw2_s <= cw1_s(CW_SIZE - 1 - 3 downto 0);
      cw3_s <= cw2_s(CW_SIZE - 1 -3 - 5 downto 0);
     
    end if;
  end process CW_PIPE;
-- works on OPCODE and FUNC to take the correct control word.
process (OPCODE_s , FUNC_s)
begin
	case OPCODE_s is	
			when RTYPE =>
						case FUNC_s is 
								when RTYPE_ADD => cw_s <= cw_mem ( conv_integer (FUNC_s));
								when RTYPE_SUB => cw_s <= cw_mem (conv_integer(FUNC_s));
								when RTYPE_AND => cw_s <= cw_mem ( conv_integer(FUNC_s));
								when RTYPE_OR => cw_s <= cw_mem (conv_integer(FUNC_s));
								when others => cw_s <= cw_mem (conv_integer(NOP)); 
						end case;
			when ITYPE_ADDI1 => cw_s <= cw_mem(conv_integer(OPCODE_s)+3); 
			when NOP => cw_s <= cw_mem(conv_integer(OPCODE_s)+3); 
			when ITYPE_SUBI1 => cw_s <= cw_mem(conv_integer(OPCODE_s)+3);
			when ITYPE_ANDI1 => cw_s <= cw_mem(conv_integer(OPCODE_s)+3);  
			when ITYPE_ORI1 => cw_s <= cw_mem(conv_integer(OPCODE_s)+3);
			when ITYPE_ADDI2 => cw_s <= cw_mem(conv_integer(OPCODE_s)+3);
			when ITYPE_SUBI2=> cw_s <= cw_mem(conv_integer(OPCODE_s)+3);
			when ITYPE_ANDI2 => cw_s <= cw_mem(conv_integer(OPCODE_s)+3);
			when ITYPE_ORI2=> cw_s <= cw_mem(conv_integer(OPCODE_s)+3); 
			when ITYPE_MOV => cw_s <= cw_mem(conv_integer(OPCODE_s)+3);
			when ITYPE_S_REG1 => cw_s <= cw_mem(conv_integer(OPCODE_s)+3);      
  			when ITYPE_S_REG2 => cw_s <= cw_mem(conv_integer(OPCODE_s)+3);
			when ITYPE_S_MEM => cw_s <= cw_mem(conv_integer(OPCODE_s)+3);
			when ITYPE_L_MEM1 => cw_s <= cw_mem(conv_integer(OPCODE_s)+3);
			when ITYPE_L_MEM2 => cw_s <= cw_mem(conv_integer(OPCODE_s)+3);
			when OTHERS =>  cw_s <= cw_mem(conv_integer(NOP));
	end case;
end process;
end architecture;

configuration CFG_cu1 of cu1 is
    for Behavioral
    end for;
end configuration;

              

                                














