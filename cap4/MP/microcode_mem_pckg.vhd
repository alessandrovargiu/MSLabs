library ieee;
use ieee.std_logic_1164.all;
use work.myTypes.all;
package microcode_mem_pckg is
    
    
  type mem_array is array (integer range 0 to MICROCODE_MEM_SIZE - 1) of std_logic_vector(CW_SIZE - 1 downto 0);
  
  signal microcode : mem_array := (					
								"1110000000000", --ADDR 	0
								"0010100100000", --			
								"0000000100101", --			
								"0110000000000", --ADDI1
								"0011100100000", --			
								"0000000100101", --			
								"0110000000000", --SUBI1 	
								"0011101100000", --			
								"0000000100101", --		
								"0110000000000", --ANDI1	9
								"0011110100000", --			
								"0000000100101", --			
								"0110000000000", --ORI1  
								"0011111100000", --					 
								"0000000100101", --					 
								"1010000000000", --ADDI2
								"0010000100000", --				 
								"0000000100101", --					 
								"1010000000000", --SUBI2
								"0010001100000", --				19
								"0000000100101", --					
								"1010000000000", --ANDI2
								"0010010100000", --					
								"0000000100101", --					
								"1010000000000", --ORI2
								"0010011100000", --					
								"0000000100101", --				
								"1010000000000", --MOVI (l'ho interpretata come una subI che sottrae il valore immediato 0(INP1)) 
								"0010000100000", --			
								"0000000100101", --			indirizzo 29
								"0110000000000", --S_REG1 
								"0011100100000", --
								"0000000100101", --
								"1010000000000", --S_REG2 
								"0010000100000", --
								"0000000100101", --
								"1110000000000", --S_MEM
								"0010000100000", --
								"0000000101101", -- 
								"1110000000000", --L_MEM 
								"0011100100000", --
								"0000000110111", -- 
								"1110000000000", --L_MEM1 
								"0010000100000", --
								"0000000110111", -- 
								"0000000000000", --
								"0000000000000", --
								"0000000000000", -- 
								"0000000000000", --
								"0000000000000", -- indirizzo 49
								"0000000000000", --
								"0000000000000", -- 
								"0000000000000", -- 
								"0000000000000",-- 
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",-- indirizzo 59
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "1110000000000",--Control signal corresponding to SUB Rtype inst. (Address 00000000001 000000 /64in dec)
                                "0010101100000",--
                                "0000000100101",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--indirizzo 69
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--indirizzo 79
                                "0000000000000",-- 
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--indirizzo 89
                                "0000000000000",-- 
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--indirizzo 99
                                "0000000000000",-- 
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--indirizzo 109
                                "0000000000000",-- 
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--indirizzo 119
                                "0000000000000",-- 
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "1110000000000",--Control signal corresponding to AND Rtype inst. (Address 00000000010 000000 / 128 in dec)
                                "0010110100000",--indirizzo 129
                                "0000000100101",-- 
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--indirizzo 139
                                "0000000000000",-- 
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--indirizzo 149
                                "0000000000000",-- 
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--indirizzo159
                                "0000000000000",-- 
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--indirzzo 169
                                "0000000000000",-- 
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--indirizzo 179
                                "0000000000000",-- 
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--
                                "0000000000000",--indirizzo 189
                                "0000000000000",-- 
                                "0000000000000",-- 
                                "1110000000000",--Control signal corresponding to OR Rtype inst. (Address 00000000011 000000 /(192 in dec))
                                "0010111100000",--
                                "0000000100101"--
								);


end package;
