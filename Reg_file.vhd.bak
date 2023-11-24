library ieee;
use ieee.std_logic_1164.all;
library work;
use work.GATES.all;
use ieee.numeric_std_unsigned.all;
 -- Register File Works as follows :
    -- has 8 registers and each register is 16 bits 
    -- has 3 inputs : 
        -- 1. writeReg : 3 bit input to indicate which register to write to
        -- 2. writeData : 16 bit input to indicate what data to write to the register
        -- 3. regWrite : 1 bit input to indicate whether to write or not


entity Reg_File is
    port(
        clk : in std_logic;
        Write : in std_logic; -- Flag to write - should be 1 if writing
        readReg1 : in std_logic_vector(2 downto 0); -- A1
        readReg2 : in std_logic_vector(2 downto 0); -- A2
        writeReg : in std_logic_vector(2 downto 0); -- A3
        writeData : in std_logic_vector(15 downto 0); -- D3
        readData1 : out std_logic_vector(15 downto 0); -- D1
        readData2 : out std_logic_vector(15 downto 0) -- D2
    );
end Reg_File;

architecture struct of Reg_File is

    component Register_16b is 
        port(Clk, Reset, write : in std_logic;
        data_in : in std_logic_vector(15 downto 0);
        data_out : out std_logic_vector(15 downto 0));
    end component;

    signal writeDataBuff1, writeDataBuff2 : std_logic_vector(15 downto 0) := (others => '0');
    signal writeRegBuff1, writeRegBuff2 : std_logic_vector(2 downto 0) := (others => '0');
    signal writeFlag : std_logic_vector(7 downto 0) := (others => '0'); -- 8 bit flag to indicate which register to write to
    signal readA, readB : std_logic_vector(15 downto 0) := (others => '0');
    signal readf1, readf2 : std_logic_vector(7 downto 0) := (others=>'0');

    begin

 
    
    gen_reg : for i in 0 to 7 generate
        i_match : str_match port map (a => writeReg, b => std_logic_vector(to_unsiged(i),3), y => writeFlag(i)); -- returns '1' if i matches writeReg
        j_match : str_match port map (a => readReg1, b => std_logic_vector(to_unsiged(i),3), y => readf1(i)); -- returns '1' if i matches readReg1
        k_match : str_match port map (a => readReg2, b => std_logic_vector(to_unsiged(i),3), y => readf2(i)); -- returns '1' if i matches readReg2
        regW : Register_16b port map(
            Clk => clk,
            Reset => '0',
            write => writeFlag(i) and Write ,
            data_in => writeData,
            data_out => writeDataBuff2
        );

        regA_mux : TwoxOnemux port map(
            a => readA,
            b => writeDataBuff2,
            sel => readf1(i),
            y => readA
        );
        regB_mux : TwoxOnemux port map(
            a => readB,
            b => writeDataBuff2,
            sel => readf2(i),
            y => readB
        );
    

    end generate;

        readData1 <= readA;
        readData2 <= readB;

end architecture struct;

    
