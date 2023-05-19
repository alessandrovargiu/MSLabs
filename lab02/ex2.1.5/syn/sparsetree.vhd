library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.constants.all;

entity sparseTree is
  
  generic (NBIT : integer := 32; 
           NBIT_PER_BLOCK : integer := 4	
          );
  
  port 	( A : in std_logic_vector(nBit-1 downto 0);
          B : in std_logic_vector(nBit-1 downto 0);
          cin : in std_logic;
          cout : out std_logic_vector((nBit/Nbit_per_block) downto 0)
        );
  
end entity;

architecture structural of sparseTree is
  
  
  constant Part2 : integer := integer(log2(real(NBIT))); 
  
  
  type matrix is array ((Part2) downto 0) of std_logic_vector(NBIT-1 downto 0); 
  signal Sig1, Sig2: matrix;     
  component PgNetwork is
    
    --generic (NBit : integer := 32);
    port ( A : in std_logic_vector(NBit-1 downto 0);
           B : in std_logic_vector(NBit-1 downto 0);
           Cin : in std_logic;
           P : out std_logic_vector(NBit-1 downto 0);
           G : out std_logic_vector(NBit-1 downto 0)
         );
  end component;
  
  component G is 
    
    port (P_ik : in std_logic;
          G_ik 	: in std_logic;
          Gk_1j	: in std_logic;
          G_ij 	: out std_logic
         );
  end component; 

  component PG is 
    
    port ( P_ik	: in std_logic;
           G_ik : in std_logic;
           Gk_1j : in std_logic;
           Pk_1j : in std_logic;
           G_ij : out std_logic;
           P_ij : out std_logic
         );
  end component;

begin
  m_pgNetwork : PgNetwork 	
    --generic map (NBIT => NBIT)
    port map (A	=> A,
              B => B,
              cin=> cin,
              P => Sig1(0),
              G => Sig2(0)
             );
 

	cout(0) <= cin;
  
  Loop0: for l in 1 to Part2 generate		--tree levels
    Loop1: for i in 0 to NBit-1 generate  
        If2: if (l <= integer(log2(real(NBIT_PER_BLOCK)))) generate
           G0: if (((i+1) mod (2**l) = 0) and (i < 2**l))  generate 
           m_blockG : G	port map(P_ik => Sig1(l-1)(i),
                                 G_ik => Sig2(l-1)(i),
                                 Gk_1j => Sig2(l-1)(i - 2**(l-1)),
                                 G_ij => Sig2(l)(i)
                                );

              end generate;         
	
          G1: if (((i+1)mod(2**l) = 0) and (i >= 2**l)) generate  
          m_blockPG : PG port map(P_ik => Sig1(l-1)(i),
                                  G_ik => Sig2(l-1)(i),
                                  Gk_1j=> Sig2(l-1)(i - (2**(l-1))),
                                  Pk_1j=> Sig1(l-1)(i - (2**(l-1))),
                                  G_ij => Sig2(l)(i),
                                  P_ij => Sig1(l)(i)
                                 );

             end generate;
          end generate;  --end If2
	
	--second part of the tree
	If3: if (l > integer(log2(real(NBIT_PER_BLOCK)))) generate
           G2: if(((i mod (2**l)) >= 2**(l-1) and (i mod (2**l)) < 2**l) and (((i+1) mod NBIT_PER_BLOCK) = 0) and (i < 2**l)) generate	
	       m1_blockG : G port map(P_ik => Sig1(l-1)(i),
                                      G_ik => Sig2(l-1)(i),
                                      Gk_1j => Sig2(l-1)((i/2**(l-1))*2**(l-1) - 1),
                                      G_ij => Sig2(l)(i)
                                     );
               end generate; 
      
          If4: if (((i mod (2**l))>=2**(l-1) and (i mod (2**l))<2**l) and (((i+1) mod NBIT_PER_BLOCK) =0) and (i>=2**l)) generate
          m1_blockPG : PG port map(P_ik => Sig1(l-1)(i),
                                   G_ik => Sig2(l-1)(i),
                                   Gk_1j => Sig2(l-1)((i/2**(l-1))*2**(l-1)-1),
                                   Pk_1j => Sig1(l-1)((i/2**(l-1))*2**(l-1)-1),
                                   G_ij => Sig2(l)(i),
                                   P_ij => Sig1(l)(i)
                                  );
          
	      end generate;
         If5: if((i mod (2**l))<2**(l-1) and (i mod (2**l))>=0) and (((i+1) mod NBIT_PER_BLOCK) =0) generate
          	 Sig1(l)(i) <= Sig1(l-1)(i);
		 Sig2(l)(i) <= Sig2(l-1)(i);
             end generate; 
      end generate;	-- If3 
      
      
      If6: if (l = Part2) generate		--last level, connect output of G blocks to the tree outputs
       cout1:  if ((i+1) mod NBIT_PER_BLOCK) = 0 generate
                  cout((i/NBIT_PER_BLOCK)+1) <= Sig2(l)(i); 
	       end generate;
	   end generate;
    end generate;	--loop1
  end generate;		--loop0
  
end architecture;      

configuration cfg_sparseTree of sparseTree is
  for structural
    for m_pgNetwork : pgNetwork
      use configuration work.cfg_pgNetwork;
    end for;
  end for;
end configuration;
