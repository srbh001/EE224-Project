library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mul is
    Port (
        a, b : in  std_logic_vector(3 downto 0); -- 4-bit input numbers
        result : out std_logic_vector(15 downto 0) -- 8-bit output for the product extended to 16 bits
    );
end mul;

architecture Behavioral of mul is

signal y : std_logic_vector(7 downto 0) ;
begin

    y <= std_logic_vector(unsigned(a) * unsigned(b));
	 result <= "11111111" & y when (y(7) = '1') 
						else "00000000" & y ;
						
						
				
end Behavioral;