library ieee;
use ieee.std_logic_1164.all;
library work;
use work.GATES.all;
use ieee.numeric_std.all;


 -- Register File Works as follows :
    -- has 8 registers and each register is 16 bits 
    -- has 3 inputs : 
        -- 1. writeReg : 3 bit input to indicate which register to write to
        -- 2. writeData : 16 bit input to indicate what data to write to the register
        -- 3. regWrite : 1 bit input to indicate whether to write or not


entity Reg_File is
    port(
        clk : in std_logic;
        Writeff : in std_logic; -- Flag to write - should be 1 if writing
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
        port(Clk, Reset, writef : in std_logic;
        data_in : in std_logic_vector(15 downto 0);
        data_out : out std_logic_vector(15 downto 0));
    end component;

    signal writeDataBuff1, writeDataBuff2 : std_logic_vector(15 downto 0) := (others => '0');
    signal reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7 : std_logic_vector(15 downto 0) := (others => '0');
    signal writeRegBuff1, writeRegBuff2 : std_logic_vector(2 downto 0) := (others => '0');
    signal writeFlag : std_logic_vector(7 downto 0) := (others => '0'); -- 8 bit flag to indicate which register to write to
    signal readA, readB : std_logic_vector(15 downto 0) := (others => '0');
    --signal readf1, readf2 : std_logic_vector(7 downto 0) := (others=>'0');

    begin

 
    
    gen_reg : for i in 0 to 7 generate
        i_match : str_match port map (a => writeReg, b => std_logic_vector(to_unsigned(i,3)), S => writeFlag(i)); -- returns '1' if i matches writeReg
    
    
    end generate;

---- REGISTERS COMPONENTS ----

    regW1 : Register_16b port map(
            Clk => clk,
            Reset => '0',
            writef => writeFlag(0) and Writeff ,
            data_in => writeData,
            data_out => reg0
    );
    regW2 : Register_16b port map(
            Clk => clk,
            Reset => '0',
            writef => writeFlag(1) and Writeff ,
            data_in => writeData,
            data_out => reg1
    );
    regW3 : Register_16b port map(
            Clk => clk,
            Reset => '0',
            writef => writeFlag(2) and Writeff ,
            data_in => writeData,
            data_out => reg2
    );

    regW4 : Register_16b port map(
            Clk => clk,
            Reset => '0',
            writef => writeFlag(3) and Writeff ,
            data_in => writeData,
            data_out => reg3
    );
    regW5 : Register_16b port map(
            Clk => clk,
            Reset => '0',
            writef => writeFlag(4) and Writeff ,
            data_in => writeData,
            data_out => reg4
    );
    regW6 : Register_16b port map(
            Clk => clk,
            Reset => '0',
            writef => writeFlag(5) and Writeff ,
            data_in => writeData,
            data_out => reg5
    );
    regW7 : Register_16b port map(
            Clk => clk,
            Reset => '0',
            writef => writeFlag(6) and Writeff ,
            data_in => writeData,
            data_out => reg6
    );
    regW8 : Register_16b port map(
            Clk => clk,
            Reset => '0',
            writef => writeFlag(7) and Writeff ,
            data_in => writeData,
            data_out => reg7
    );
    
    eightOneM : EighttoOneMux port map (
        a => reg0,
        b => reg1,
        c => reg2,
        d => reg3,
        e => reg4,
        f => reg5,
        g => reg6,
        h => reg7,
        sel => readReg1,
        y => readA        );
    eightOneM2 : EighttoOneMux port map (
        a => reg0,
        b => reg1,
        c => reg2,
        d => reg3,
        e => reg4,
        f => reg5,
        g => reg6,
        h => reg7,
        sel => readReg2,
        y => readB
        );
    


        readData1 <= readA;
        readData2 <= readB;

end architecture struct;

    
