library ieee;
use ieee.std_logic_1164.all;
library work;
 -- Register File Works as follows :
    -- has 8 registers and each register is 16 bits 


entity Reg_File is
    port(
        clk : in std_logic;
        regWrite : in std_logic; -- Flag to write - should be 1 if writing
        readReg1 : in std_logic_vector(2 downto 0); -- A1
        readReg2 : in std_logic_vector(2 downto 0); -- A2
        writeReg : in std_logic_vector(2 downto 0); -- A3
        writeData : in std_logic_vector(15 downto 0); -- D3
        readData1 : out std_logic_vector(15 downto 0); -- D1
        readData2 : out std_logic_vector(15 downto 0) -- D2
    );
end RegisterFile;

architecture struct of Reg_File is

    component Register6bit is
        port(Clk, Reset : in std_logic;
        data_in : in std_logic_vector(15 downto 0);
        data_out : out std_logic_vector(15 downto 0));
    end component;

    signal reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8 : std_logic_vector(15 downto 0): = (others => '0');
    signal reset_bar : std_logic := '0';
    
    begin


 

end architecture struct;

    
