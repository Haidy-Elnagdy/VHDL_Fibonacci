
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

Entity fibo_dp is
port( clk,rst,b_sel, a_sel, b_ld, a_ld, c_ld, count_en, count_ld : in std_logic;
           i_in: in std_logic_vector(3 downto 0);
          n_neq_0 : out std_logic;
            fib: out std_logic_vector(7 downto 0));
end fibo_dp;

Architecture rtl of fibo_dp is

component count_dec
port(clk,rst,en,ld: in std_logic;
          d: in std_logic_vector(3 downto 0);
         count: out std_logic_vector(3 downto 0));
end component;

component mux2_1
port(a,b:in std_logic_vector(7 downto 0);
     s:in std_logic;
     y: out std_logic_vector(7 downto 0));
end component;

component comp_equ
port( a,b :in std_logic_vector (3 downto 0);
         y: out std_logic);
end component;

component reg_par_8bit_load
port (clk, rst, load: in std_logic;
        reg_in: in std_logic_vector(7 downto 0);
       reg_out: out std_logic_vector(7 downto 0));
end component;

component adder_8bit 
port(a,b: in std_logic_vector (7 downto 0);
        y: out std_logic_vector(7 downto 0));
end component;
signal a_in,a_out,b_in,b_out,sum,c_out : std_logic_vector(7 downto 0);
signal n: std_logic_vector(3 downto 0); 
begin

dp :reg_par_8bit_load port map( clk,rst,a_ld,a_in,a_out);
dp1:reg_par_8bit_load port map(clk,rst,b_ld,b_in,b_out);
dp2:reg_par_8bit_load port map(clk,rst,c_ld,sum,c_out);

dp3:mux2_1 port map("00000000",b_out,a_sel,a_in);
dp4:mux2_1 port map("00000001",c_out,b_sel,b_in);

dp5:count_dec port map(clk,rst,count_en,count_ld,i_in,n);

dp6:adder_8bit port map(a_out,b_out,sum);

dp7:comp_equ port map(n,"0000",n_neq_0);

fib<= c_out;

end rtl;
