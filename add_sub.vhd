library ieee;
use ieee.std_logic_1164.all;
library work;
use work.GATES.all;


entity add_sub is
port (A,B: in std_logic_vector(15 downto 0); M: in std_logic ; S :out std_logic_vector(15 downto 0); Cout: out std_logic);
end entity;


architecture struct of add_sub is

	signal xors : std_logic_vector(15 downto 0);
	signal c: std_logic_vector (14 downto 0);
	
	COMPONENT FULLADDER is
   port (A,B, C_in: in std_logic;
	SUM, C_out: out std_logic);
	end  COMPONENT;
	
	begin 
	
	XOR_Gen: for i in 0 to 15 generate
        XORS(i)<= M xor B(i);
   end generate;
	
	FA1: FULLADDER port map(A=>A(0),B=>xors(0),C_in=>M,SUM=>S(0),C_out=>c(0));

	fullADDER_gen: for i in 1 to 14 generate
		FA: FULLADDER port map(A=>A(i),B=>xors(i),C_in=>c(i-1),SUM=>S(i),C_out=>c(i));
	end generate;
		
	FA16: FULLADDER port map(A=>A(15),B=>xors(15),C_in=>c(14),SUM=>S(15),C_out=>Cout);
	
end Struct;


