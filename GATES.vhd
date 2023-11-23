 -- Common files to have all the components that are used multiple times but don't need a separate file
library ieee;
use ieee.std_logic_1164.all;
package Gates is
  
  component str_Match is -- Functions as XNOR gate but with 3 bit inputs
    port (A, B: in std_logic_vector(2 downto 0); S: out std_logic);
  end component str_match;

  component TwoxOneMux is -- 2x1 Mux with 8 bit inputs
    port (A, B, Sel: in  std_logic_vector(7 downto 0); 
        Y: out std_logic);
  end component TwoxOneMux;

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
  port (A, B, S: in  std_logic_vector(7 downto 0); 
        Y: out std_logic);
end entity TwoxOneMux;

architecture Equations of TwoxOneMux is
begin
    gen: for i in 0 to 7 generate
           Y <= (A(i) and not Sel) or (B(i) and Sel);
        end generate;
    end generate;
    
end Equations;
