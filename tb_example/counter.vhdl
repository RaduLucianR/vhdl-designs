-- Taken from here: https://www.uio.no/studier/emner/matnat/fys/FYS4220/h20/lecture-slides/vhdl_testbenches.pdf

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
    port(
        clk : in std_logic;
        rst : in std_logic;
        cnt : out std_logic_vector(3 downto 0);
        rdy : out std_logic
    );
end entity;

architecture rtl of counter is
    signal cnt_int : unsigned(3 downto 0) := "0000";
begin
    cnt <= std_logic_vector(cnt_int);

    p_count : process(clk)
    begin
        if rising_edge(clk) then
            cnt_int <= cnt_int + 1;
        end if;

        if rst = '1' then
            cnt_int <= (others => '0');
        end if;
    end process;

    rdy <= '1' when cnt_int = 10 else '0';
end architecture;
