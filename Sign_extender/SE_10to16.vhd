library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SE_10to16 is
	port (A : in std_logic_vector(9 downto 0); Y : out std_logic_vector(15 downto 0));
end entity SE_10to16 ;

architecture logic of SE_10to16 is
	
begin

	Y <= "111111" & A when (A(9) = '1') else
				"000000" & A;

end architecture ;