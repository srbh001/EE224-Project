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
	component full_adder is
		port(A,B,C : in std_logic;
			 sum : out std_logic;
			 carry : out std_logic);

	end component full_adder;
	
	signal x1,x2,x3,x4,x5,x6,x7,x8 : std_logic;
	
begin
	
	FA1 : component full_adder port map (A=>A(0),B=>x5,C=>M,sum=>S(0),carry=>x1);
	FA2 : component full_adder port map (A=>A(1),B=>x6,C=>x1,sum=>S(1),carry=>x2);
	FA3 : component full_adder port map (A=>A(2),B=>x7,C=>x2,sum=>S(2),carry=>x3);
	FA4 : component full_adder port map (A=>A(3),B=>x8,C=>x3,sum=>S(3),carry=>C0);
	XOR1 : XOR_2 port map(A=>B(0),B=>M,Y=>x5);
	XOR2 : XOR_2 port map(A=>B(1),B=>M,Y=>x6);
	XOR3 : XOR_2 port map(A=>B(2),B=>M,Y=>x7);
	XOR4 : XOR_2 port map(A=>B(3),B=>M,Y=>x8);
	
end architecture logic;	
	
	