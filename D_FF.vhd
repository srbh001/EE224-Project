library ieee;
use ieee.std_logic_1164.all;
library work;
use work.all;

entity D_FF is 
	port(D,En,reset,pre,clk : in std_logic;
			Q,Qbar : buffer std_logic);
end entity D_FF ;

architecture Logic of D_FF is 

component JK_FF is 
	port(J,K : in std_logic;
			Q,Qbar : buffer std_logic;
			clk,En,reset,pre : in std_logic);
end component JK_FF;

signal din,dinbar,Qout,Qoutbar: std_logic ;

begin 


dinbar <= NOT(D);
Jk1 : JK_FF port map(J=>D,K=>dinbar,Q=>Q,Qbar=>Qbar,clk=>clk,En=>En,reset=>reset,pre=>pre);


end architecture Logic;
