library ieee;
use ieee.std_logic_1164.all;
library work;
use work.all;

entity or16bit is 
	port(A,B : in std_logic_vector(15 downto 0);
		  Y : out std_logic_vector(15 downto 0));
			
end entity or16bit ;

architecture logic of or16bit is 
signal yes_A , yes_B: std_logic;

begin
 
	Y <= A or B ;

end architecture;
