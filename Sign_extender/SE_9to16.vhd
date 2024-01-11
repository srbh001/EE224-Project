library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SE_9to16 is
	port (A : in std_logic_vector(8 downto 0); Y : out std_logic_vector(15 downto 0));
end entity SE_9to16 ;

architecture logic of SE_9to16 is
	
begin

	Y <= "1111111" & A when (A(8) = '1') else
				"0000000" & A;

end architecture ;