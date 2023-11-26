library ieee;
use ieee.std_logic_1164.all;
library work;
use work.all;

entity Testbench is 
end entity Testbench ;

architecture Logic of Testbench is 

component CPU is 
    port (
        clk : in std_logic;
        reset : in std_logic
       
    );
end component CPU;
signal clk : std_logic := '0';
signal reset: std_logic := '0' ;


begin 

	dut_instance : CPU port map(clk=>clk,reset=>reset);


	clk<= not(clk) after 10ns;
	



end architecture Logic;
