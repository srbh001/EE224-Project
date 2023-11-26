library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity MUX2x1 is 
	port(I1,I0,S : in std_logic;
			Y : out std_logic);
			
end entity;

architecture simple of MUX2x1 is
		signal s1,s2,s3 : std_logic ;
		
begin
		NOT1: INVERTER port map(A=>S,Y=>s3);
   	AND1: AND_2 port map(A=>I0,B=>s3,Y=>s1);
		AND2: AND_2 port map(A=>I1,B=>S,Y=>s2);
		OR1 : OR_2  port map(A=>s1,B=>s2,Y=>Y);
		
end architecture simple;		