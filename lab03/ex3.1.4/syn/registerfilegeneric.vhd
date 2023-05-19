library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
--use WORK.all;
USE ieee.numeric_std.ALL;
use WORK.constants.all;

entity register_file is
 generic(
		nbit : integer ;
		addr_bits : integer 
		);
 port ( CLK: 		IN std_logic;
         RESET: 	IN std_logic;
	 ENABLE: 	IN std_logic;
	 RD1: 		IN std_logic;
	 RD2: 		IN std_logic;
	 WR: 		IN std_logic;
	 ADD_WR: 	IN std_logic_vector(addr_bits-1 downto 0);
	 ADD_RD1: 	IN std_logic_vector(addr_bits-1 downto 0);
	 ADD_RD2: 	IN std_logic_vector(addr_bits-1 downto 0);
	 DATAIN: 	IN std_logic_vector(nbit-1 downto 0);
     OUT1: 		OUT std_logic_vector(nbit-1 downto 0);
	 OUT2: 		OUT std_logic_vector(nbit-1 downto 0));
end register_file;

architecture Behavioral of register_file is

        subtype REG_ADDR is natural range 0 to 31; -- using natural type
	type REG_ARRAY is array(REG_ADDR) of std_logic_vector(nbit-1 downto 0); 
	signal REGISTERS : REG_ARRAY; 

	
begin 
-- write your RF code 
	WrProc: PROCESS (Clk, reset, enable, WR, RD1, RD2, ADD_WR, ADD_RD1, ADD_RD2, DATAIN) 
  		BEGIN
   			IF (rising_edge(Clk)) THEN
				IF (reset = '1') THEN
            			    REGISTERS <= (OTHERS => (OTHERS =>'0'));
				else
         			    If (enable = '1') then
         			        IF (WR = '1') THEN
            				    REGISTERS(to_integer(unsigned(Add_WR))) <= DATAIN;
				        end if;
			 
         			        IF (RD1 = '1') THEN
				            OUT1 <= REGISTERS(to_integer(unsigned(Add_RD1)));	
				        else
					    OUT1 <= (OTHERS => 'Z');
				        end if;
			
				        IF (RD2 = '1') THEN
					    OUT2 <= REGISTERS(to_integer(unsigned(Add_RD2)));
				        else
					   OUT2 <= (OTHERS => 'Z');
				        end if;
				    end if;
			        end if;
		      end if;
		end PROCESS;
end Behavioral;

configuration CFG_RF_BEH of register_file is
  for Behavioral
  end for;
end configuration;
