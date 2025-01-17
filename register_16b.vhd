-- Pipo Register of 16 bits 
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.all;

entity Register_16b is
port(Clk, Reset, writef : in std_logic;
data_in : in std_logic_vector(15 downto 0);
data_out : out std_logic_vector(15 downto 0));
end entity;

architecture struct of Register_16b is 
	
    component D_FF is 
    port(D,En,reset,pre,clk : in std_logic;
            Q,Qbar : buffer std_logic);
    end component D_FF ;
	 
	signal buffer_qbar :std_logic_vector(15 downto 0);
    signal data_out_buffer : std_logic_vector(15 downto 0);
    signal sig_write: std_logic_vector(15 downto 0) :=(others => '0');
    
begin
	
    gen : for i in 0 to 15 generate
        sig_write(i) <= (writef and data_in(i)) or (not writef and data_out_buffer(i));
        dff : D_FF port map (D=> sig_write(i), En => '1', reset => Reset, pre => '0', clk => Clk, Q=> data_out_buffer(i), Qbar => buffer_qbar(i));
    end generate gen;
    data_out <= data_out_buffer;

end architecture struct;