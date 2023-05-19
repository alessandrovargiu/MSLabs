library IEEE;

use IEEE.std_logic_1164.all;

entity TBREGISTERFILE is
end TBREGISTERFILE;

architecture TESTA of TBREGISTERFILE is
		
	   constant nbit: integer := 32;
	   constant addr_bits : integer := 5;
       signal CLK: std_logic := '0';
       signal RESET: std_logic;
       signal ENABLE: std_logic;
       signal RD1: std_logic;
       signal RD2: std_logic;
       signal WR: std_logic;
       signal ADDR_WR: std_logic_vector(addr_bits-1 downto 0);
       signal ADDR_RD1: std_logic_vector(addr_bits-1 downto 0);
       signal ADDR_RD2: std_logic_vector( addr_bits-1 downto 0);
       signal DATAIN: std_logic_vector(nbit-1 downto 0);
       signal OUT1: std_logic_vector(nbit-1 downto 0);
       signal OUT2: std_logic_vector(nbit-1 downto 0);
	   
component register_file
 generic (
			Nbit: integer;
			Addr_bits: integer	
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
	
	end component;

begin 

RG:register_file
GENERIC MAP (Nbit,Addr_bits)
PORT MAP (CLK,RESET,ENABLE,RD1,RD2,WR,ADDR_WR,ADDR_RD1,ADDR_RD2,DATAIN,OUT1,OUT2);
	
	RESET <= '1','0' after 5 ns;
	ENABLE <= '0','1' after 3 ns, '0' after 10 ns, '1' after 15 ns;
	WR <= '0','1' after 6 ns, '0' after 7 ns, '1' after 10 ns, '0' after 20 ns;
	RD1 <= '1','0' after 5 ns, '1' after 13 ns, '0' after 20 ns; 
	RD2 <= '0','1' after 17 ns;
	ADDR_WR <= "10110", "01000" after 9 ns;
	ADDR_RD1 <="10110", "01000" after 9 ns;
	ADDR_RD2<= "11100", "01000" after 9 ns;
	DATAIN<=(others => '0'),(others => '1') after 8 ns;

	PCLOCK : process(CLK)
	begin
		CLK <= not(CLK) after 0.5 ns;	
	end process;

end TESTA;

---
configuration CFG_TESTRF of TBREGISTERFILE is
  for TESTA
	for RG : register_file
		use configuration WORK.CFG_RF_BEH;
	end for; 
  end for;
end CFG_TESTRF;
