-- Full Adder Component
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.GATES.all;



entity FULLADDER is
   port (A,B, C_in: in std_logic;
	SUM, C_out: out std_logic);
	
end entity FULLADDER;

architecture ADDER_A of FULLADDER is 

signal s1,s2,s3,p1 : std_logic;

begin
	XOR1 : XOR_2 port map (A, B, s1);
	AND1 : AND_2 port map (A, B, s2);
	OR3 : OR_2 port map (p1, s2, C_out);
	AND2 : AND_2 port map (s1, C_in, p1);
	OR2 : OR_2 port map (A, B, s3);
	XOR2 : XOR_2 port map (s1, C_in, SUM);
	
end ADDER_A;



