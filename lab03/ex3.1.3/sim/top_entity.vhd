library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
--use WORK.all;
USE ieee.numeric_std.ALL;
use WORK.constants.all;

entity top_entity is
  generic (
    Nbit : integer;		--regs width	
    M : integer;	--number of global regs
    N : integer;	--number of regs in each internal window (IN, OUT, LOCAL)
    F : integer;	--number of windows
    Addr_bits: integer ;
    bit_F : integer
    );
  port (
    Clk: IN std_logic;
    Rst: IN std_logic;
    CALL: IN std_logic;
    RET: IN std_logic;
    ACK_FILL : IN std_logic;					--data is ready from the memory
    ACK_SPILL : IN std_logic;
    FILL: OUT std_logic;
    SPILL: OUT std_logic;
    CWP : OUT std_logic_vector(Addr_bits-1 downto 0);
    SWP : OUT std_logic_vector(Addr_bits-1 downto 0);
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
end top_entity;
architecture structural of top_entity is

  component window_reg_fsm is
    generic (
      Nbit : integer;		--regs width	
      M : integer;	--number of global regs
      N : integer;	--number of regs in each internal window (IN, OUT, LOCAL)
      F : integer;	--number of windows
      bit_F : integer;
	  IN_LOC : Integer;
	  bit_inloc: integer
      );
    port (
      Clk: IN std_logic;
      Rst: IN std_logic;
      CALL: IN std_logic;
      RET: IN std_logic;
      ACK_FILL : IN std_logic;					--data is ready from the memory
      ACK_SPILL : IN std_logic;
      FILL: OUT std_logic;
      SPILL: OUT std_logic;
      CWP : OUT std_logic_vector(Addr_bits-1 downto 0);
      SWP : OUT std_logic_vector(Addr_bits-1 downto 0)
      );
  end component;

  component Addr_Transformer is
    generic(
      Addr_bits : integer;
      M : integer;
	  in_loc_out : integer			
      );
    port ( 
      ADDR_WR_IN: 	IN std_logic_vector(Addr_bits-2 downto 0);
      ADDR_RD1_IN: 	IN std_logic_vector(Addr_bits-2 downto 0);
      ADDR_RD2_IN: 	IN std_logic_vector(Addr_bits-2 downto 0);
      CWP: 		IN std_logic_vector (Addr_bits-1 downto 0);
      ENABLE: 	IN std_logic;
      RD1: 		IN std_logic;
      RD2: 		IN std_logic;
      WR: 		IN std_logic;
      ADDR_WR_OUT: 	OUT std_logic_vector(Addr_bits-1 downto 0);
      ADDR_RD1_OUT: 	OUT std_logic_vector(Addr_bits-1 downto 0);
      ADDR_RD2_OUT: 	OUT std_logic_vector(Addr_bits-1 downto 0)
      );	 
  end component;

  component register_file is
    generic(
      nbit : integer ;
      addr_bits : integer 
      );
    port (  CLK: 	IN std_logic;
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
            OUT2: 		OUT std_logic_vector(nbit-1 downto 0)
            );
  end component ;

  signal cwp_s, swp_s : std_logic_vector (Addr_bits-1 downto 0);
  signal fill_s,spill_s:std_logic;
  signal ADDR_WR: std_logic_vector(addr_bits-1 downto 0);
  signal ADDR_RD1: std_logic_vector(addr_bits-1 downto 0);
  signal ADDR_RD2: std_logic_vector(addr_bits-1 downto 0);
  signal out1_s,out2_s: std_Logic_vector (nbit-1 downto 0);

begin

  
  fsm: window_reg_fsm
    generic map (Nbit ,M , N, F, bit_F,IN_LOC,bit_inloc)
    port map(clk,rst,call,ret,ack_fill,ack_spill,fill_s,spill_s,CWP_S,SWP_S);
  
  addr_trsf: addr_transformer
    generic map (Addr_bits ,M,in_loc_out)
    port map(addr_wr_in,addr_rd1_in,addr_rd2_in,cwp_s, enable, RD1, RD2, WR, addr_wr,addr_rd1,addr_rd2);
  
  regfile: register_file
    generic map (nbit,Addr_bits)
    port map(clk,rst,enable,rd1,rd2,wr,addr_wr,addr_rd1,addr_rd2,datain,out1,out2);

end structural;

configuration CFG_topentity of top_entity is
  for structural
   -- for a: window_reg_fsm
   --   use configuration WORK.CFG_WindowReg_Beh;
   -- end for;
  --  for add: addr_transformer
    --  use configuration WORK.CFG_addrtransformer;
    --end for;
    --for regfile: register_file
      --use configuration WORK.CFG_RF_BEH;
    --end for;
  end for;
end configuration;




















