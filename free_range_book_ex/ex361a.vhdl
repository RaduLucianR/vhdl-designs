library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sys1 is
    port(
        a_in1 : in std_logic;
        b_in2 : in std_logic;
        clk : in std_logic;
        ctrl_int : in std_logic;
        out_b : out std_logic
    );
end entity;