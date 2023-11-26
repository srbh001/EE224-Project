library ieee;
use ieee.std_logic_1164.all;
library work;
use work.all;

entity mux8x1 is 
	port(I0,I1,I2,I3,I4,I5,I6,I7: in std_logic_vector(15 downto 0);
			s2,s1,s0 : in std_logic; 
			Qout : out std_logic_vector(15 downto 0));
			
end entity mux8x1;

architecture logic of mux8x1 is 

signal q1,q2,q3,q4,q5,q6 : std_logic_vector(15 downto 0);

component mux_16bit is 
	port(I1,I0: in std_logic_vector(15 downto 0);
			sel : in std_logic; 
			Qout : buffer std_logic_vector(15 downto 0));
			
end component mux_16bit;

begin      

m1 : mux_16bit port map(I0=>I0,I1=>I1,sel=>s0,Qout=>q1);
m2 : mux_16bit port map(I0=>I2,I1=>I3,sel=>s0,Qout=>q2);
m3 : mux_16bit port map(I0=>I4,I1=>I5,sel=>s0,Qout=>q3);
m4 : mux_16bit port map(I0=>I6,I1=>I7,sel=>s0,Qout=>q4);
m5 : mux_16bit port map(I0=>q1,I1=>q2,sel=>s1,Qout=>q5);
m6 : mux_16bit port map(I0=>q3,I1=>q4,sel=>s1,Qout=>q6);
m7 : mux_16bit port map(I0=>q5,I1=>q6,sel=>s2,Qout=>Qout);

end architecture;
