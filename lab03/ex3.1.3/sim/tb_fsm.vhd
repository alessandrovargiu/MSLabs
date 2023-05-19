library ieee;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
--use WORK.all;
USE ieee.numeric_std.ALL;
use WORK.constants.all;

entity tb_fsm is
end tb_fsm;

architecture TEST of tb_fsm is

	component prova3 is
		
	generic(Nbit : integer := 32;         --regs width    
        	M : integer := 4;    --number of global regs
        	N : integer := 4;    --number of regs in each internal window (IN, OUT, LOCAL)
        	F : integer := 3;    --number of windows
        	bit_F: integer := 2;
		IN_LOC: integer := 8 ;
		bit_inloc: integer := 4
);
	port(
		Clk: in std_logic;
		Rst: in std_logic;
		CALL: in std_logic;
		RET: in std_logic;
		ACK_FILL: in std_logic;
		ACK_SPILL: in std_logic;
		FILL: OUT std_logic;
		SPILL: OUT std_logic;
		CWP: OUT std_logic_vector(Addr_bits-1 downto 0);
		SWP: OUT std_logic_vector(Addr_bits-1 downto 0)
	);
	end component;
	
	signal clk_s : std_logic := '0';
	signal rst_s, CALL_s, RET_s, ACK_FILL_s, ACK_SPILL_s, FILL_s, SPILL_s: std_logic;
	signal CWP_r, SWP_r: std_logic_vector(Addr_bits-1 downto 0);
	constant Period: time := 2 ns;
begin

	fsm: prova3
	GENERIC MAP (Nbit, M, N, F, bit_F)
	PORT MAP(Clk_s, Rst_s, CALL_s , RET_s, ACK_FILL_s, ACK_SPILL_s, FILL_s, SPILL_s, CWP_r, SWP_r);
	
	clk_s <= not clk_s after Period/2;
	
	test: process
	begin
		ACK_SPILL_s <= '1';
		ACK_FILL_s <= '1';
	
		--SPILL AND FILL take 8 clock cycles, wait for them before executing other
		--events, compute the delays with care

		rst_s <= '1', '0' after 2 ns, '0' after 4 ns;
		
		call_s <='0','1' after 5 ns, '0' after 6 ns,'1' after 8 ns, '0' after 10 ns,
                         '1' after 12 ns, '0' after 14 ns, '1' after 16 ns, '0' after 18 ns,    --spill
			 '1' after 36 ns, '0' after 38 ns, '1' after 56 ns,'0' after 58 ns;	-- two spill
			 --'1' after 76 ns,'0' after 78 ns, '1' after 96 ns,'0' after 98 ns; 
                        
		ret_s <= '0', '1' after 80 ns,'0' after 82 ns, '1' after 84 ns, '0' after 86 ns,
			 '1' after 88 ns, '0' after 90 ns, '1' after 92 ns, '0' after 94 ns,
			 '1' after 120 ns, '0' after 122 ns, '1' after 140 ns, '0' after 142 ns;
			 --'1' after 236 ns, '0' after 238 ns, '1' after 256 ns, '0' after 258 ns,
			 --'1' after 276 ns,'0' after 278 ns;
       
		WAIT;
	end process;

end architecture TEST;
