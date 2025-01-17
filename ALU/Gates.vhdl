library ieee;
use ieee.std_logic_1164.all;

--A package declaration is used to store a set of common declarations, such as components.
--These declarations can then be imported into other design units using a use clause.

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



  component str_Match is -- Functions as XNOR gate but with 3 bit inputs
  port (A, B: in std_logic_vector(2 downto 0); S: out std_logic);
end component str_match;

component TwoxOneMux is -- 2x1 Mux with 8 bit inputs
  port (A, B: in  std_logic_vector(7 downto 0);
  Sel: std_logic; 
      Y: out std_logic_vector(7 downto 0));
end component TwoxOneMux;

component ThreetoEightDemux is 
   port (A: in std_logic_vector(2 downto 0);
         Y: out std_logic_vector(7 downto 0));
end component ThreetoEightDemux;

component EighttoOneMux is 
  port (A, B, C, D, E, F, G, H: in std_logic_vector(15 downto 0);
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

entity str_Match is
  port (A, B: in std_logic_vector(2 downto 0); S: out std_logic);
end entity str_Match;

architecture Equations of str_match is
    signal C: std_logic_vector(2 downto 0);
begin
    C <= not (A xor B);
    S <= C(0) and C(1) and C(2);
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
    port (A, B, C, D, E, F, G, H: in std_logic_vector(15 downto 0);
        Sel: in std_logic_vector(2 downto 0);
          Y: out std_logic_vector(15 downto 0));
    end entity EighttoOneMux;

architecture struct of EighttoOneMux is
begin 
gen : for i in 0 to 15 generate
    Y(i) <= (A(i) and (not sel(0) and not sel(1) and not sel(2) )) or 
        (B(i) and (not sel(0) and not sel(1) and sel(2) )) or
        (C(i) and (not sel(0) and sel(1) and not sel(2) )) or
        (D(i) and (not sel(0) and sel(1) and sel(2) )) or
        (E(i) and (sel(0) and not sel(1) and not sel(2) )) or
        (F(i) and (sel(0) and not sel(1) and sel(2) )) or
        (G(i) and (sel(0) and sel(1) and not sel(2) )) or
        (H(i) and (sel(0) and sel(1) and sel(2) ));

end generate;
end struct;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity ThreetoEightDemux is 
port (A: in std_logic_vector(2 downto 0);
      Y: out std_logic_vector(7 downto 0));
end entity ThreetoEightDemux;

architecture struct of ThreetoEightDemux is
   signal Y_temp : std_logic_vector(7 downto 0) := (others => '0');

begin

	Y(0) <= (A(0) xnor '0') and (A(1) xnor '0') and (A(2) xnor '0');
	Y(1) <= (A(0) xnor '0') and (A(1) xnor '0') and (A(2) xnor '1');
	Y(2) <= (A(0) xnor '0') and (A(1) xnor '1') and (A(2) xnor '0');
	Y(3) <= (A(0) xnor '0') and (A(1) xnor '1') and (A(2) xnor '1');
	Y(4) <= (A(0) xnor '1') and (A(1) xnor '0') and (A(2) xnor '0');
	Y(5) <= (A(0) xnor '1') and (A(1) xnor '0') and (A(2) xnor '1');
	Y(6) <= (A(0) xnor '1') and (A(1) xnor '1') and (A(2) xnor '0');
	Y(7) <= (A(0) xnor '1') and (A(1) xnor '1') and (A(2) xnor '1');
		
		
end struct;