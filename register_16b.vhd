-- Pipo Register of 16 bits 
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.all;

entity Register6bit is
port(Clk, Reset : in std_logic;
data_in : in std_logic_vector(15 downto 0);
data_out : out std_logic_vector(15 downto 0));
end entity;

architecture struct of Register6bit is 
	
	
    entity D_FF is 
    port(D,En,reset,pre,clk : in std_logic;
            Q,Qbar : buffer std_logic);
    end entity D_FF ;
	signal buffer_qbar :std_logic_vector(15 downto 0);
    
begin
	
    gen : for i in 0 to 15 generate
        dff : D_FF port map (D=> data_in(i), En => '1', reset => Reset, pre => '0', clk => Clk, Q=> data_out(i), Qbar => buffer_qbar(i));
    end generate gen;


end architecture struct;