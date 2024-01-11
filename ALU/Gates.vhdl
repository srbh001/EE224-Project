library ieee;
use ieee.std_logic_1164.all;

-- A package declaration is used to store a set of common declarations, such as components.
-- These declarations can then be imported into other design units using a use clause.

package Gates is
  component INVERTER is
   port (A: in std_logic; Y: out std_logic);
  end component INVERTER;

  component AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component AND_2;

  component NAND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component NAND_2;

  component OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component OR_2;

  component NOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component NOR_2;

  component XOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component XOR_2;

  component XNOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component XNOR_2;

  component HALF_ADDER is
   port (A, B: in std_logic; S, C: out std_logic);
  end component HALF_ADDER;



component TwoxOneMux is -- 2x1 Mux with 8 bit inputs
  port (A, B: in  std_logic_vector(7 downto 0);
  Sel: std_logic; 
      Y: out std_logic_vector(7 downto 0));
end component TwoxOneMux;


component EighttoOneMux is 
  port (I0, I1, I2, I3, I4, I5, I6, I7: in std_logic_vector(15 downto 0);
      Sel: in std_logic_vector(2 downto 0);
        Y: out std_logic_vector(15 downto 0));
end component EighttoOneMux;


end package Gates;


library ieee;
use ieee.std_logic_1164.all;
entity INVERTER is
   port (A: in std_logic; Y: out std_logic);
end entity INVERTER;

architecture Equations of INVERTER is
begin
   Y <= not A;
end Equations;
  

library ieee;
use ieee.std_logic_1164.all;
entity AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity AND_2;

architecture Equations of AND_2 is
begin
   Y <= A and B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity NAND_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity NAND_2;

architecture Equations of NAND_2 is
begin
   Y <= not (A and B);
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity OR_2;

architecture Equations of OR_2 is
begin
   Y <= A or B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity NOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity NOR_2;

architecture Equations of NOR_2 is
begin
   Y <= not (A or B);
end Equations;
  

library ieee;
use ieee.std_logic_1164.all;
entity XOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity XOR_2;

architecture Equations of XOR_2 is
begin
   Y <= A xor B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity XNOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity XNOR_2;

architecture Equations of XNOR_2 is
begin
   Y <= not (A xor B);
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity HALF_ADDER is
   port (A, B: in std_logic; S, C: out std_logic);
end entity HALF_ADDER;

architecture Equations of HALF_ADDER is
begin
   S <= (A xor B);
   C <= (A and B);
end Equations;




library ieee;
use ieee.std_logic_1164.all;

entity TwoxOneMux is
  port (A, B : in  std_logic_vector(7 downto 0); 
        Sel: in std_logic;
        Y: out std_logic_vector(7 downto 0));
end entity TwoxOneMux;

architecture Equations of TwoxOneMux is
begin
    gen: for i in 0 to 7 generate
           Y(i) <= (A(i) and not Sel) or (B(i) and Sel);
        end generate;
    
end Equations;

library ieee;
use ieee.std_logic_1164.all;


entity EighttoOneMux is 
    port (I0, I1, I2, I3, I4, I5, I6, I7: in std_logic_vector(15 downto 0);
        Sel: in std_logic_vector(2 downto 0);
          Y: out std_logic_vector(15 downto 0));
    end entity EighttoOneMux;

architecture struct of EighttoOneMux is
begin 
gen : for i in 0 to 15 generate
    Y(i) <= (I0(i) and (not sel(2) and not sel(1) and not sel(0) )) or 
        (I1(i) and (not sel(2) and not sel(1) and sel(0) )) or
        (I2(i) and (not sel(2) and sel(1) and not sel(0) )) or
        (I3(i) and (not sel(2) and sel(1) and sel(0) )) or
        (I4(i) and (sel(2) and not sel(1) and not sel(0) )) or
        (I5(i) and (sel(2) and not sel(1) and sel(0) )) or
        (I6(i) and (sel(2) and sel(1) and not sel(0) )) or
        (I7(i) and (sel(2) and sel(1) and sel(0) ));

end generate;
end struct;

