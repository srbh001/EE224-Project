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
        reset : in std_logic;
		  finalout : out std_logic_vector(15 downto 0);
		  select_reg : in std_logic_vector(2 downto 0);
		  select_sb  : in std_logic 
    );
	 
end component CPU;

signal clk : std_logic := '1';
signal reset : std_logic := '0';
signal finalout : std_logic_vector(15 downto 0);
signal select_reg : std_logic_vector(2 downto 0);
signal select_sb  : std_logic; 


begin 

	dut_instance : CPU port map(clk=>clk, reset=>reset, finalout=>finalout, select_reg => select_reg, select_sb=>select_sb);
	

	clk<= not(clk) after 1000ns;	
	select_reg <= "010" ;
	select_sb <= '0';
	
	
	
end architecture Logic;
