library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
--use WORK.all;
USE ieee.numeric_std.ALL;
use WORK.constants.all;

entity tb_top_entity is
end tb_top_entity;

architecture test of tb_top_entity is

component top_entity is
    generic (
	Nbit : integer := 32 ;			
	M : integer :=4 ;	
	N : integer := 8;	
	F : integer := 4;	
	Addr_bits: integer := 5;
	bit_F : integer := 2
	    );
    port (
	Clk:  IN std_logic;
	Rst:  IN std_logic;
	CALL: IN std_logic;
	RET:  IN std_logic;
	ACK_FILL :  IN std_logic;					
	ACK_SPILL : IN std_logic;
	FILL:  OUT std_logic;
	SPILL: OUT std_logic;
	CWP :  OUT std_logic_vector(Addr_bits-1 downto 0);
	SWP :  OUT std_logic_vector(Addr_bits-1 downto 0);
	ENABLE: 	IN std_logic;
	RD1: 		IN std_logic;
	RD2: 		IN std_logic;
	WR: 		IN std_logic;
	ADDR_WR_IN: 	IN std_logic_vector(Addr_bits-2 downto 0);
	ADDR_RD1_IN: 	IN std_logic_vector(Addr_bits-2 downto 0);
	ADDR_RD2_IN: 	IN std_logic_vector(Addr_bits-2 downto 0);
	DATAIN: 	IN std_logic_vector(nbit-1 downto 0);
    	OUT1: 		OUT std_logic_vector(nbit-1 downto 0);
	OUT2: 		OUT std_logic_vector(nbit-1 downto 0)
    );
end component;

	signal call, rst, ret, ack_fill, ack_spill, enable, wr, rd1, rd2, fill, spill: std_logic;
	signal CLOCK: std_logic := '0';
	signal addr_wr_in, addr_rd1_in, addr_rd2_in : std_logic_vector(Addr_bits-2 downto 0);
	signal datain, out1, out2: std_logic_vector(nbit-1 downto 0);
	signal cwp_s, swp_s: std_logic_vector(addr_bits-1 downto 0);
	constant Period: time := 2 ns;
begin

	top: top_entity
	GENERIC MAP (Nbit,M,N,F,Addr_bits,bit_F)
	PORT MAP (CLOCK,rst,call,ret,ack_fill,ack_spill,fill,spill,cwp_s, swp_s, enable,rd1,rd2,wr,addr_wr_in,addr_rd1_in,
		  addr_rd2_in,datain,OUT1,OUT2);
  	
	CLOCK <= not CLOCK after Period/2;

	test: process
	begin
 	    
	    --rst <= '0','1' after 2 ns, '0' after 4 ns;
	    --wait for 2 ns;
 	    enable <= '1';				--always high -> reg file always enabled   
	    ACK_FILL <= '1'; ACK_SPILL <= '1';    
	    wait for 2 ns;
	    
	    CALL <= '1', '0' after 1.5 ns;	--CALL 1
	    wait for 4 ns;
	    CALL <= '1', '0' after 1.5 ns;	--CALL 2
	    wait for 4 ns;
	    
	    --READ FROM REG_FILE (W2 here)
	    RD1 <= '1', '0' after 5 ns;
	    ADDR_RD1_IN <= "0100";		--Address: CPU -> transformer -> reg_file
	    wait for 10 ns;   

	    CALL <= '1', '0' after 1.5 ns;	--CALL 3
	    wait for 4 ns;
	    CALL <= '1', '0' after 1.5 ns;	--CALL 4(SPILL)
	    wait for 12 ns;
	
	    --READ2 FROM REG_FILE (W0 here)
	    RD2 <= '1', '0' after 5 ns;
	    ADDR_RD2_IN <= "0101";
	    wait for 10 ns;

	    RET <= '1', '0' after 1.5 ns;		-- RET(4)
	    wait for 4 ns;
	    RET <= '1', '0' after 1.5 ns;		--RET(3 - FILL)
	    wait for 12 ns;
	    RET <= '1', '0' after 1.5 ns;		--RET(3)
	    wait for 4 ns;
	    RET <= '1', '0' after 1.5 ns;		--RET(2 - FILL)
	    wait for 12 ns;

	    --WRITE IN REG_FILE (W1 here)
	    WR <= '1', '0' after 5 ns;
	    ADDR_WR_IN <= "0100";
	    DATAIN <= (OTHERS => '1');		--write all 1s in register
	    wait for 10 ns;
	
	    RET <= '1', '0' after 1.5 ns;		--RET(2) 
	    wait for 4 ns;
	    RET <= '1', '0' after 1.5 ns;		--RET(1 - FILL)
	    wait for 12 ns;
	    RET <= '1', '0' after 1.5 ns;		--RET(1)
	    wait for 4 ns;
	   	    

           --cwp_s <= "11111","01111" after 15 ns,"10111" after 25 ns;
	   --addr_wr_in <= "0000" , "0100" after 8 ns , "1000" after 12 ns, "0101" after 16 ns ,
	   --		   "1010" after 18 ns,"0111" after 26 ns , "1011" after 28 ns;
	    WAIT;

	end process;
end test;

