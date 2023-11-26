library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.all;

entity ALU_unit is 
	port (A,B : in std_logic_vector(15 downto 0 );
			p,q,r : in std_logic;
			C : out std_logic_vector(15 downto 0);
			carry_flag : out std_logic;
			zero_flag : out std_logic);
end entity ALU_unit ;

architecture logic of ALU_unit is


 
component mux8x1 is 
	port(I0,I1,I2,I3,I4,I5,I6,I7: in std_logic_vector(15 downto 0);
			s2,s1,s0 : in std_logic; 
			Qout : out std_logic_vector(15 downto 0));
end component mux8x1;			

component and16bit is 
	port(A,B : in std_logic_vector(15 downto 0);
		  Y : out std_logic_vector(15 downto 0));
			
end component and16bit ;

component or16bit is 
	port(A,B : in std_logic_vector(15 downto 0);
		  Y : out std_logic_vector(15 downto 0));
			
end component or16bit ;

component imp16bit is 
	port(A,B : in std_logic_vector(15 downto 0);
		  Y : out std_logic_vector(15 downto 0));
			
end component imp16bit ;

component zeroflag is 
	port(A: in std_logic_vector(15 downto 0);
		  Y : out std_logic);
			
end component zeroflag ;			

component  add_sub is
	port (A,B: in std_logic_vector(15 downto 0); M: in std_logic ; S :out std_logic_vector(15 downto 0);
			Cout: out std_logic);
end component;

component  mul is
    Port (
        a, b : in  std_logic_vector(3 downto 0); -- 4-bit input numbers
        result : out std_logic_vector(15 downto 0) -- 8-bit output for the product extended to 16 bits
    );
end component;		  
 			
signal y0,y1,y2,y3,y4,y5,y6,y7,yfinal : std_logic_vector(15 downto 0) ;			
signal c0 : std_logic ;

begin 

adder16 : add_sub port map(A=>A,B=>B,M=>'0',S=>y0,Cout=>carry_flag);
sub16 :   add_sub port map(A=>A,B=>B,M=>'1',S=>y1,Cout=>c0);
mul16 :   mul port map(A=>A(3 downto 0),B=>B(3 downto 0),result=>y2);
and16 : and16bit port map(A=>A,B=>B,Y=>y3);
or16 :  or16bit  port map(A=>A,B=>B,Y=>y4);
imp16 : imp16bit port map(A=>A,B=>B,Y=>y5);

mux8 : mux8x1 port map(I0=>y0,I1=>y6,I2=>y1,I3=>y2,I4=>y3,I5=>y4,I6=>y5,I7=>y6,s2=>p,s1=>q,s0=>r,Qout=>yfinal);
C<=yfinal;

zerochecker : zeroflag port map(A=>yfinal,Y=>zero_flag);


end architecture;












			