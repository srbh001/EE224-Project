
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.Gates.all;

entity Reg_file is
	  port (A1: in std_logic_vector(2 downto 0);
			  A2: in std_logic_vector(2 downto 0);
			  A3: in std_logic_vector(2 downto 0);
			  D1: out std_logic_vector(15 downto 0);
			  D2: out std_logic_vector(15 downto 0);
			  D3: in std_logic_vector(15 downto 0);
			  Dip : in std_logic_vector(15 downto 0);
			  Dip_out : out std_logic_vector(15 downto 0);
			  Asel : in std_logic_vector(2 downto 0);
			  Dout : out std_logic_vector(7 downto 0);
			  clk: in std_logic;
			  select_sb : in std_logic;
		     write_en : in std_logic);
end entity Reg_file;

architecture struct of Reg_file is


	-- FOR TESTING , registers are hardcoded with certain values

	type reg_array is array(7 downto 0) of std_logic_vector(15 downto 0);
	-- r0,r1,----r7 ke values define below.
		signal initial_storage : reg_array := (0=>"0000000000000100",
													   1=>"0000000000000001",
														2=>"0000000000000010",
														3=>"0011110001111001",
														4=>"0011110001111001",
														5=>"0011110001111001",
														6=>"0000000000001111",
														7=>"0000000000000000");  
														
		
     signal data_out : std_logic_vector(15 downto 0);		
	
begin
	
  RF_process : process (clk, A1, A2, A3,Asel, D3,initial_storage, select_sb) is
  begin
		D1 <= initial_storage(to_integer(unsigned(A1)));
		D2 <= initial_storage(to_integer(unsigned(A2)));
		data_out <= initial_storage(to_integer(unsigned(Asel)));
		if(select_sb = '1') then
		Dout <= data_out(15 downto 8);
		else
		Dout <= data_out(7 downto 0);
		end if ;
		
		Dip_out <= initial_storage(7);
		
		 if rising_edge(clk) then
			if write_en = '1' then
				initial_storage(to_integer(unsigned(A3))) <= D3;  -- Write
				initial_storage(7) <= Dip;
				
			else
				initial_storage(7 downto 0)<=initial_storage(7 downto 0);
			end if;
		end if;
  end  process;
end  architecture;
--	