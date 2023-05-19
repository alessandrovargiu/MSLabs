library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
--use WORK.all;
USE ieee.numeric_std.ALL;
use WORK.constants.all;

entity window_reg_fsm is
    generic (
	Nbit : 	integer;		--regs width	
	M : 	integer;		--number of global regs
	N : 	integer;		--number of regs in each internal window (IN, OUT, LOCAL)
	F : 	integer;		--number of windows
	bit_F: 	integer;
	IN_LOC: integer;
	bit_inloc: integer
	    );

    port (
	Clk: 		IN std_logic;
	Rst: 		IN std_logic;
	CALL: 		IN std_logic;
	RET: 		IN std_logic;
	ACK_FILL: 	IN std_logic;					--data is ready from the memory
	ACK_SPILL:	IN std_logic;
	FILL: 		OUT std_logic;
	SPILL: 		OUT std_logic;
	CWP: 		OUT std_logic_vector(Addr_bits-1 downto 0);
	SWP: OUT std_logic_vector(Addr_bits-1 downto 0)
    );
end window_reg_fsm;

architecture Behavioral of window_reg_fsm is


signal cwp_s,swp_s:unsigned ( addr_bits-1 downto 0);
signal CANSAVE,CANRESTORE: unsigned (bit_F downto 0);
signal TransferRegsCounter: unsigned (bit_inloc-1 downto 0);  
						
Type State is (S_Init,S_On, S_Wait_Spill, S_Wait_Fill);
	signal CurrState: State; 

begin
	process(Clk, Rst)

	begin
		If (Rst = '1') then
		    Currstate <= S_Init;
		elsif (rising_edge(Clk)) then
		    CASE Currstate is

			WHEN S_init =>
			    SWP_s <= (others => '1');
			    CWP_s <= (others => '1');
			    CANSAVE <= to_unsigned(F,bit_F+1);
			    CANRESTORE <= (others => '0');
			    TransferRegsCounter <= (others => '0');
			    Currstate <= S_On;

			WHEN S_On =>
			    If(call = '1') then 
			        If(CANSAVE = 0) then 		-- No available windows -> we need to spill the registers
				    	SPILL <= '1';
				    	Currstate <= S_wait_spill;
					else												
				    	CANRESTORE <= CANRESTORE + 1;					-- normal CALL -> new parent
				    	CANSAVE <= CANSAVE - 1;							-- one less window available
				    	CWP_s <= CWP_s - to_unsigned(IN_LOC,Addr_bits);
				    	Currstate <= S_on;
					end if;
			    elsif (ret = '1') then
			        If(CANRESTORE = 0 ) then								--necessary condition for FILL
						CWP_s <= CWP_s + to_unsigned(IN_LOC,Addr_bits);
						CurrState <= S_On;
						If(CWP_s = SWP_s) then								--sufficient condition for FILL
							FILL <= '1';
							CurrState <= S_Wait_Fill;
						end if;
					else
				    CWP_s <= CWP_s + to_unsigned(IN_LOC,Addr_bits);
				    CANSAVE <= CANSAVE + 1;									--returned window now available
				    CANRESTORE <= CANRESTORE - 1;							--return -> one less parent
				    CurrState <= S_On;
					end if;
			    else
			        Currstate <= S_On;		  
			    end if;

			WHEN S_Wait_Spill =>					
				SPILL <= '0';  			
				If(TransferRegsCounter = IN_LOC-1) then			--1 register transfered each clock cycle
				    If(ACK_SPILL = '1') then
						CurrState <= S_On;
						CWP_s <= CWP_s - to_unsigned(IN_LOC, Addr_bits);
						SWP_s <= SWP_s - to_unsigned(IN_LOC, Addr_bits);
						TransferRegsCounter <= (OTHERS => '0');
				    else 
						CurrState <= S_Wait_Spill;				--waits in this state until ACK from Memory is high
				    end if;
				else
				    TransferRegsCounter <= TransferRegsCounter + 1;
				    CurrState <= S_Wait_Spill;
				end if;

		       WHEN S_Wait_Fill =>					--same algorithm as spill but next SWP points to parent window
				FILL <= '0';
				IF(TransferRegsCounter = IN_LOC - 1) then  			--1 register transfered each clock cycle
				    If(ACK_FILL = '1') then				--waits for MMU to send FILL data to register file
						CurrState <= S_On;
				    	CWP_s <= CWP_s - to_unsigned(IN_LOC, Addr_bits);
				    	SWP_s <= SWP_s + to_unsigned(IN_LOC, Addr_bits);
						TransferRegsCounter <= (OTHERS => '0'); 
				    else
				        CurrState <= S_Wait_Fill;
				    end if;
				else
				    TransferRegsCounter <= TransferRegsCounter + 1;
				    CurrState <= S_Wait_Fill;
				end if;

		    WHEN OTHERS =>		
				CurrState <= S_On;
	      	end CASE;
	     end if;
		
	end process;
	
	SWP <= std_logic_vector(SWP_s);
	CWP <= std_logic_vector(CWP_S);
	
end Behavioral;

configuration CFG_WindowReg_Beh of window_reg_fsm is
    for Behavioral
    end for;
end configuration;
							
















						
						








						












