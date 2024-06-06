library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sys2 is
    port(
        input_w : in std_logic;
        a_data : in std_logic_vector(0 to 7);
        b_data : in std_logic_vector(0 to 7);
        clk : in std_logic;
        dat_4 : out std_logic_vector(0 to 7);
        dat_5 : out std_logic_vector(0 to 2)
    );
end entity;