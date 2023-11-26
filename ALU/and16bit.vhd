library ieee;
use ieee.std_logic_1164.all;
library work;
use work.all;

entity and16bit is 
	port(A,B : in std_logic_vector(15 downto 0);
		  Y : out std_logic_vector(15 downto 0));
			
end entity and16bit ;

architecture logic of and16bit is 

begin
 
	Y<= A and B ;
	
end architecture;
