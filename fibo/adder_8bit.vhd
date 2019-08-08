

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

Entity adder_8bit is
port(a,b: in std_logic_vector (7 downto 0);
        y: out std_logic_vector(7 downto 0));
end adder_8bit;

Architecture rtl of adder_8bit is
 signal y_u:unsigned (7 downto 0);
begin

process(a,b)
begin
y_u<=unsigned(a)+ unsigned(b);

end process;

y<=std_logic_vector(y_u);

end rtl; 
