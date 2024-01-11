library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity left_shift9bit is
	port (A : in std_logic_vector(8 downto 0); Y : out std_logic_vector(8 downto 0));
end entity left_shift9bit ;

architecture logic of left_shift9bit is
	
begin

		Y <= A(7 downto 0) & '0' ;
		

end architecture ;