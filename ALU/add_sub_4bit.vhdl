library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity add_sub_4bit is 
	port( A,B : in std_logic_vector(3 downto 0);
			M : in std_logic;
			C0 : out std_logic;
			S : out std_logic_vector(3 downto 0));
end entity ;

architecture logic of add_sub_4bit is 
component FULLADDER is
   port (A,B, C_in: in std_logic;
	SUM, C_out: out std_logic);
	
end component FULLADDER;
	
	signal x1,x2,x3,x4,x5,x6,x7,x8 : std_logic;
	
begin
	
	FA1 : component FULLADDER port map (A=>A(0),B=>x5,C_in=>M, sum=>S(0),C_out=>x1);
	FA2 : component FULLADDER port map (A=>A(1),B=>x6,C_in=>x1,sum=>S(1),C_out=>x2);
	FA3 : component FULLADDER port map (A=>A(2),B=>x7,C_in=>x2,sum=>S(2),C_out=>x3);
	FA4 : component FULLADDER port map (A=>A(3),B=>x8,C_in=>x3,sum=>S(3),C_out=>C0);
	XOR1 : XOR_2 port map(A=>B(0),B=>M,Y=>x5);
	XOR2 : XOR_2 port map(A=>B(1),B=>M,Y=>x6);
	XOR3 : XOR_2 port map(A=>B(2),B=>M,Y=>x7);
	XOR4 : XOR_2 port map(A=>B(3),B=>M,Y=>x8);
	
end architecture logic;	
	
	