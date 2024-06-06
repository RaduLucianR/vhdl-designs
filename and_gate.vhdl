-- library declaration
library IEEE;
use IEEE.std_logic_1164.all; -- basic IEEE library
use IEEE.numeric_std.all;

-- 2-input AND gate
entity and_gate is
    port(
        in_a  : in std_logic;
        in_b  : in std_logic;
        out_a : out std_logic
    );
end and_gate;

-- 2-input AND gate architecture
architecture and_gate_archi of and_gate is
begin
    out_a <= in_a and in_b;
end and_gate_archi;
    
