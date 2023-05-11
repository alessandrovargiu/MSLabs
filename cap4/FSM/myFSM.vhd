library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes.all;
--use ieee.numeric_std.all;
--use work.all;

entity dlx_cu is
  generic (
    MICROCODE_MEM_SIZE :     integer := 10;  -- Microcode Memory Size
    FUNC_SIZE          :     integer := 11;  -- Func Field Size for R-Type Ops
    OP_CODE_SIZE       :     integer := 6;  -- Op Code Size
    -- ALU_OPC_SIZE       :     integer := 6;  -- ALU Op Code Word Size
    IR_SIZE            :     integer := 32;  -- Instruction Register Size    
    CW_SIZE            :     integer := 15);  -- Control Word Size
  port (
    Clk                : in  std_logic;  -- Clock
    Rst                : in  std_logic;  -- Reset:Active-Low
    OPCODE : in std_logic_vector(OP_CODE_SIZE-1 downto 0);
    FUNC   : in std_logic_vector(FUNC_SIZE-1 downto 0);
    EN1	   : out std_logic;
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
  );   

end dlx_cu;

architecture dlx_cu_rtl of dlx_cu is
  type mem_array is array (integer range 0 to MICROCODE_MEM_SIZE - 1) of std_logic_vector(CW_SIZE - 1 downto 0);
  signal cw_mem : mem_array := ("1111010010001"	 --ADD RTYPE
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
				); 
  signal cw_s: std_logic_vector(CW_SIZE - 1 downto 0); -- full control word read from cw_mem

  type TYPE_STATE is (
		S0, S1, S2  
	);
	signal CurrState : TYPE_STATE := S0;
	signal NextState: TYPE_STATE := S1;
 
begin  
   	
	--FSM

 	StateReg : process(Clk, Rst)		
	begin
		If Rst='0' then
	      CurrState <= S0;
		elsif (Clk ='1' and Clk'EVENT) then 
		    CurrState <= NextState;
		end if;
	end process StateReg;

	DECODE : process(OPCODE, FUNC)
	begin
		 	
	If OpCode = RTYPE then                        
		  case FUNC_s is 
          when RTYPE_ADD => cw_s <= cw_mem (conv_integer(FUNC_s));
          when RTYPE_SUB => cw_s <= cw_mem (conv_integer(FUNC_s));
          when RTYPE_AND => cw_s <= cw_mem (conv_integer(FUNC_s));
          when RTYPE_OR => cw_s <= cw_mem (conv_integer(FUNC_s));
          when others => cw_s <= cw_mem (conv_integer(NOP)); 
      end case;	
	else                                      --instructions not RTYPE have their own OPCODE
      CASE FUNC_s is  
			    when ITYPE_ADDI1 => cw_s <= cw_mem(conv_integer(OPCODE_s) + 3); 
          when NOP => cw_s <= cw_mem(conv_integer(OPCODE_s) + 3); 
          when ITYPE_SUBI1 => cw_s <= cw_mem(conv_integer(OPCODE_s) + 3);
          when ITYPE_ANDI1 => cw_s <= cw_mem(conv_integer(OPCODE_s) + 3);  
          when ITYPE_ORI1 => cw_s <= cw_mem(conv_integer(OPCODE_s) + 3);
          when ITYPE_ADDI2 => cw_s <= cw_mem(conv_integer(OPCODE_s) + 3);
          when ITYPE_SUBI2=> cw_s <= cw_mem(conv_integer(OPCODE_s) + 3);
          when ITYPE_ANDI2 => cw_s <= cw_mem(conv_integer(OPCODE_s) + 3);
          when ITYPE_ORI2=> cw_s <= cw_mem(conv_integer(OPCODE_s) + 3); 
          when ITYPE_MOV => cw_s <= cw_mem(conv_integer(OPCODE_s) + 3);
          when ITYPE_S_REG1 => cw_s <= cw_mem(conv_integer(OPCODE_s) + 3);      
          when ITYPE_S_REG2 => cw_s <= cw_mem(conv_integer(OPCODE_s) + 3);
          when ITYPE_S_MEM => cw_s <= cw_mem(conv_integer(OPCODE_s) + 3);
          when ITYPE_L_MEM1 => cw_s <= cw_mem(conv_integer(OPCODE_s) + 3);
          when ITYPE_L_MEM2 => cw_s <= cw_mem(conv_integer(OPCODE_s) + 3);
  end if;  	
	end process DECODE;
	
	
	Ctrl_Signals: process(CurrState)
	begin

    NextState <= CurrState;
		case CurrState is	
			when S0 => 
          EN1 <= cw_s(CW_SIZE);
          RF1 <= cw_s(CW_SIZE - 1);
          RF2 <= cw_s(CW_SIZE - 2);
          NextState <= S1;
			when S1 => 
          EN2 <= cw_s(CW_SIZE - 3);
          S1 <= cw_s(CW_SIZE - 4);
          S2 <= cw_s(CW_SIZE - 5);
          ALU1 <= cw_s(CW_SIZE - 6);
          ALU2 <= cw_s(CW_SIZE - 7);
          NextState <= S2
			when S2 =>
          EN3 <= cw_s(CW_SIZE - 8);
          RM <= cw_s(CW_SIZE - 9);
          WM <= cw_s(CW_SIZE - 10);
          S3 <= cw_s(CW_SIZE - 11);
          WF1 <= cw_s(CW_SIZE - 12);
          NextState <= S0
			when others =>  
          cw_s <= (OTHERS => '0');
		end case; 	
	end process Ctrl_Signals;



end dlx_cu_rtl;
