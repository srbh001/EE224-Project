library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SE_6to16 is
	port (A : in std_logic_vector(5 downto 0); Y : out std_logic_vector(15 downto 0));
end entity SE_6to16 ;

architecture logic of SE_6to16 is
	
begin

	Y <= "1111111111" & A when (A(5) = '1') else
				"0000000000" & A;

end architecture ;