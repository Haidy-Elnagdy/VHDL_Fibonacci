

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

Entity fibo is
port(clk,rst,go: in std_logic;
          i: in std_logic_vector(3 downto 0);
          fib: out std_logic_vector(7 downto 0));
end fibo;

Architecture rtl of fibo is

component fibo_dp
port( clk,rst,b_sel, a_sel, b_ld, a_ld, c_ld, count_en, count_ld : in std_logic;
           i_in: in std_logic_vector(3 downto 0);
          n_neq_0 : out std_logic;
            fib: out std_logic_vector(7 downto 0));
end component;

component fibo_fsm
port(clk,rst,n_neq_0,go_i: std_logic;
     a_sel,b_sel,a_ld,b_ld,c_ld,count_ld,count_en: out std_logic);
end component;

signal b_sel,a_sel, b_ld, a_ld, c_ld, count_en, count_ld,n_neq_0 : std_logic;

begin 

f1: fibo_dp port map(clk,rst,b_sel,a_sel, b_ld, a_ld, c_ld, count_en, count_ld,i,n_neq_0,fib);

f2:fibo_fsm port map(clk,rst,n_neq_0,go,a_sel,b_sel,a_ld,b_ld,c_ld,count_ld,count_en);


end rtl;