library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std_unsigned.all;

entity Reg_File_tb is
end entity Reg_File_tb;

architecture tb_arch of Reg_File_tb is
  signal clk_tb, Writef_tb : std_logic := '0';
  signal readReg1_tb, readReg2_tb, writeReg_tb : std_logic_vector(2 downto 0);
  signal writeData_tb : std_logic_vector(15 downto 0);
  signal readData1_tb, readData2_tb : std_logic_vector(15 downto 0);

  -- Instantiate Reg_File component
  component Reg_File
    port (
      clk : in std_logic;
      Writef : in std_logic;
      readReg1, readReg2, writeReg : in std_logic_vector(2 downto 0);
      writeData : in std_logic_vector(15 downto 0);
      readData1, readData2 : out std_logic_vector(15 downto 0)
    );
  end component Reg_File;

  -- Instantiate clock generator
  signal clk_period : time := 10 ns;
  signal clk_count : integer := 0;

begin
  -- Clock process
  clk_process: process
  begin
    wait for clk_period / 2;
    clk_tb <= not clk_tb;

    if clk_count = 0 then
      Writef_tb <= '0';  -- Initial read operations
    else
      Writef_tb <= '1';  -- Write operations
    end if;

    clk_count <= clk_count + 1;
  end process;

  -- Instantiate Reg_File
  uut: Reg_File
    port map (
      clk => clk_tb,
      Writef => Writef_tb,
      readReg1 => readReg1_tb,
      readReg2 => readReg2_tb,
      writeReg => writeReg_tb,
      writeData => writeData_tb,
      readData1 => readData1_tb,
      readData2 => readData2_tb
    );

  -- Testbench stimulus process
  stimulus_process: process
  begin
    -- Initial read operations
    for i in 0 to 255 loop
      wait until rising_edge(clk_tb);
      readReg1_tb <= std_logic_vector(to_unsigned(i, 3));
      readReg2_tb <= std_logic_vector(to_unsigned(i + 1, 3));

      -- Check the values of readData1_tb and readData2_tb
      assert readData1_tb = std_logic_vector(to_unsigned(i, 16))
        report "Error: readData1_tb mismatch at iteration " & integer'image(i)
        severity error;

      assert readData2_tb = std_logic_vector(to_unsigned(i + 1, 16))
        report "Error: readData2_tb mismatch at iteration " & integer'image(i)
        severity error;
    end loop;

    -- Write operations
    for i in 0 to 7 loop
      wait until rising_edge(clk_tb);
      writeReg_tb <= std_logic_vector(to_unsigned(i, 3));
      writeData_tb <= std_logic_vector(to_unsigned(i, 16));

      -- Check the values of readData1_tb and readData2_tb
      assert readData1_tb = std_logic_vector(to_unsigned(i + 7, 16))
        report "Error: readData1_tb mismatch during write operation " & integer'image(i)
        severity error;

      assert readData2_tb = std_logic_vector(to_unsigned(i + 6, 16))
        report "Error: readData2_tb mismatch during write operation " & integer'image(i)
        severity error;
    end loop;

    wait;
  end process stimulus_process;

end architecture tb_arch;
