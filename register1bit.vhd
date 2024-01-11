library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library Work;

entity register1bit is
	port (input:in std_logic;
			w_enable, clk: in std_logic;
			output: out std_logic);
end entity register1bit;                           

architecture bhv of register1bit is
	signal storage: std_logic:= '0';
	begin
		output<= storage;
		process_write : process(clk,w_enable,storage)
		begin
			if(clk='1' and clk'event and w_enable='1') then
				storage<=input;
			else
				storage<=storage;
			end if;
		end process;
end architecture bhv;