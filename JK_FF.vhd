library ieee;
use ieee.std_logic_1164.all;
library work;

entity JK_FF is 
	port(J,K : in std_logic;
			Q,Qbar : buffer std_logic;
			clk,En,reset,pre : in std_logic);
end entity JK_FF;

architecture bhv of JK_FF is 

begin 

process(clk,En,pre,reset)
begin

if(En = '1') then 

if(pre = '1') then
	Q <= '1';
	Qbar <= NOT(Q);
elsif (reset = '1') then
	Q<= '0' ;
	Qbar <= NOT(Q) ;

elsif(clk'event and clk = '1') then 

	if(J = '1' and Q = '0') then
		Q <= '1' ;
		Qbar <= '0';
	elsif (J = '0' and Q = '1') then
		Q <= '0' ;
		Qbar <= '1';
	elsif (J = '0' and Q = '0') then 
		Q <= Q ;
		Qbar <= NOT(Q);	
	elsif (J = '1' and K = '1') then
		Q <= NOT(Q) ;
		Qbar <= NOT(Qbar);
	
	end if ;	

		
end if;

elsif(En = '0') then
	Q <= Q ;
	Qbar <= NOT(Q) ;
	
end if ;
	
	
end process;
end architecture bhv;
