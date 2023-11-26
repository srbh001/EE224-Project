library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux_16bit is 
	port(I1,I0: in std_logic_vector(15 downto 0);
			sel : in std_logic; 
			Qout : buffer std_logic_vector(15 downto 0));
			
end entity mux_16bit;

architecture logic of mux_16bit is 

component MUX2x1 is 
	port(I1,I0,S : in std_logic;
			Y : out std_logic);
			
end component;

begin      

mux : for i IN 0 to 15 GENERATE 
mux_16bit : MUX2x1 
port map(I1=>I1(i),I0=>I0(i),S=>sel,Y=>Qout(i) );
end Generate;

end architecture;
