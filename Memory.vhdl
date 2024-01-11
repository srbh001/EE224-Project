library std;
library ieee;
use std.standard.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;	 
use ieee.std_logic_unsigned.all;

entity Memory is 
	port (address, Mem_datain: in std_logic_vector(15 downto 0);
	      clk, write_signal: in std_logic;
	      Mem_dataout: out std_logic_vector(15 downto 0);
			sel_in : in std_logic_vector(5 downto 0);
			memory_out : out std_logic_vector(7 downto 0);
			select_sb  : in std_logic );
end entity;



architecture struct of Memory is

	type regarr is array(64 downto 0) of std_logic_vector(15 downto 0);   

	
	-- Instruction are hardcoded here
	
	signal Mem: regarr:= (0=>  "0000000001010000",
								 1=>  "0001000001000101",
								 2=>  "0010000001010000",
								 3=>  "0011000001010000",
								 4=>  "0100000001010000",
								 5=> "0101000001010000",
								 6=> "0110000001010000",
								 7=> "1000000000000000",
								 8=> "1001000000000001",
								 9=> "1010000001010000",
								 10=> "1011000001010000",
								 11=> "1100100101000010",
								 12=> "1101000000001000",
								 13=> "1111000001000000",
								 14=> "0000000000000110",
			
							others => "0000001100010000"); 
   signal dataout : std_logic_vector(15 downto 0);
	
	begin

	Mem_dataout <= Mem(conv_integer(address));
	dataout <= Mem(conv_integer(sel_in));
	
	
	
	Mem_write:

	process (write_signal, Mem_datain, address, clk, select_sb, sel_in)
		begin
		if(select_sb = '1') then 
	     memory_out <= dataout(15 downto 8);
	   else 
	     memory_out <= dataout(7  downto 0);
	   end if;
	
		if(write_signal = '1') then
			if(rising_edge(clk)) then
				Mem(conv_integer(address)) <= Mem_datain;
			end if;
		end if;
	end process;

end struct;
