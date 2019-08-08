


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity fibo_tb is
end fibo_tb;

architecture behav of fibo_tb is

component fibo
port(clk,rst,go: in std_logic;
          i: in std_logic_vector(3 downto 0);
          fib: out std_logic_vector(7 downto 0));
end component;

signal rst,go : std_logic;
signal i: std_logic_vector(3 downto 0);
signal fib : std_logic_vector (7 downto 0);
signal clk :std_logic := '1';
begin
dut : fibo port map(clk,rst,go,i,fib);

i<= "1101";

rst<='1','0'after 70 ns;
go<='0','1' after 220 ns,'0' after 420 ns;
clk <= not (clk) after 50 ns;



end behav;
