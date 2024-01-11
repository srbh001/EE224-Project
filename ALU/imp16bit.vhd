library ieee;
use ieee.std_logic_1164.all;
library work;
use work.all;

entity imp16bit is 
	port(A,B : in std_logic_vector(15 downto 0);
		  Y : out std_logic_vector(15 downto 0));
			
end entity imp16bit ;

architecture logic of imp16bit is 
	-- B -> A
	signal yes_A , yes_B: std_logic;
	
begin
 
	Y <= A or (not(B));
	
end architecture;
