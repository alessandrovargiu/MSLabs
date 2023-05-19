library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use WORK.constants.all;
USE ieee.numeric_std.ALL;

entity Addr_Transformer is
 generic(
	  Addr_bits : integer;
	  M : integer;
	  in_loc_out : integer			  
	);
 port ( 
	 ENABLE: IN std_logic;
	 RD1:           IN std_logic;
         RD2:           IN std_logic;
         WR:            IN std_logic;
	 ADDR_WR_IN: 	IN std_logic_vector(Addr_bits-2 downto 0);
	 ADDR_RD1_IN: 	IN std_logic_vector(Addr_bits-2 downto 0);
	 ADDR_RD2_IN: 	IN std_logic_vector(Addr_bits-2 downto 0);
	 CWP: 			IN std_logic_vector(Addr_bits-1 downto 0);
	 ADDR_WR_OUT: 	OUT std_logic_vector(Addr_bits-1 downto 0);
	 ADDR_RD1_OUT: 	OUT std_logic_vector(Addr_bits-1 downto 0);
	 ADDR_RD2_OUT: 	OUT std_logic_vector(Addr_bits-1 downto 0)
	  ); 
end Addr_Transformer;

architecture Behavioral of Addr_Transformer is

begin

	process(ADDR_WR_IN, ADDR_RD1_IN, ADDR_RD2_IN, CWP, ENABLE, RD1, RD2, WR)
	begin
	    IF(ENABLE = '1') then
		IF(RD1 = '1') then
	            if (ADDR_RD1_IN < M) then
	                ADDR_RD1_OUT <= '0' & ADDR_RD1_IN;
	            else
	                ADDR_RD1_OUT <= std_logic_vector(unsigned(CWP) - (to_unsigned(in_loc_out,Addr_bits)) + unsigned('0' & ADDR_RD1_IN) - 						to_unsigned(M,Addr_bits));
	            end if;
		end if;
	    
	        IF(RD2 = '1') then
	            If (ADDR_RD2_IN < M) then
	                ADDR_RD2_OUT <= '0' & ADDR_RD2_IN;
	            else
	                ADDR_RD2_OUT <= std_logic_vector(unsigned(CWP) - (to_unsigned(in_loc_out,Addr_bits)) + unsigned('0' & ADDR_RD2_IN) - to_unsigned(M,Addr_bits));
	            end if;
	        end if;
	    IF(WR = '1') then
		If (ADDR_WR_IN < M) then
	            ADDR_WR_OUT <= '0' & ADDR_WR_IN;
	        else
	            ADDR_WR_OUT <= std_logic_vector(unsigned(CWP) - (to_unsigned(in_loc_out,Addr_bits)) + unsigned('0' & ADDR_WR_IN) - to_unsigned(M,Addr_bits));
	        end if;
	    end if;
	  end if;
    end process;
end behavioral;

configuration CFG_ADDR_TRANSFORMER of addr_transformer is
    for Behavioral
    end for;
end configuration;


