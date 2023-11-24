 -- Common files to have all the components that are used multiple times but don't need a separate file
library ieee;
use ieee.std_logic_1164.all;
package Gates is
  
  component str_Match is -- Functions as XNOR gate but with 3 bit inputs
    port (A, B: in std_logic_vector(2 downto 0); S: out std_logic);
  end component str_match;

  component TwoxOneMux is -- 2x1 Mux with 8 bit inputs
    port (A, B: in  std_logic_vector(7 downto 0);
    Sel: std_logic; 
        Y: out std_logic);
  end component TwoxOneMux;

  component EighttoOneMux is 
    port (A, B, C, D, E, F, G, H: in std_logic;
        Sel: in std_logic_vector(2 downto 0);
          Y: out std_logic);
end component EighttoOneMux;

end package Gates;


  
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
        Y: out std_logic);
end entity TwoxOneMux;

architecture Equations of TwoxOneMux is
begin
    gen: for i in 0 to 7 generate
           Y(i) <= (A(i) and not Sel) or (B(i) and Sel);
        end generate;
    end generate;
    
end Equations;

library ieee;
use ieee.std_logic_1164.all;


entity EighttoOneMux is 
    port (A, B, C, D, E, F, G, H: in std_logic;
        Sel: in std_logic_vector(2 downto 0);
          Y: out std_logic);
    end entity EighttoOneMux;

architecture struct of EighttoOneMux is
begin 
    Y <= (A and (not sel(0) and not sel(1) and not sel(2) )) or 
        (B and (not sel(0) and not sel(1) and sel(2) )) or
        (C and (not sel(0) and sel(1) and not sel(2) )) or
        (D and (not sel(0) and sel(1) and sel(2) )) or
        (E and (sel(0) and not sel(1) and not sel(2) )) or
        (F and (sel(0) and not sel(1) and sel(2) )) or
        (G and (sel(0) and sel(1) and not sel(2) )) or
        (H and (sel(0) and sel(1) and sel(2) ));
end struct;

