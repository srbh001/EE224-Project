library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity left_shift6bit is
	port (A : in std_logic_vector(5 downto 0); Y : out std_logic_vector(5 downto 0));
end entity left_shift6bit ;

architecture logic of left_shift6bit is
	
begin

		Y <= A(4 downto 0) & '0' ;
		

end architecture ;