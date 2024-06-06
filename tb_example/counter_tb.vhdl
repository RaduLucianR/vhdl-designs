library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_basic_tb is
end entity;

architecture tb of counter_basic_tb is
    signal clk : std_logic;
    signal clk_ena : boolean := false;
    constant C_CLK_PERIOD : time := 20 ns;

    signal cnt : std_logic_vector(3 downto 0);
    signal rdy : std_logic;
    signal rst : std_logic;

    begin
        DUT: entity work.counter(rtl)
        port map(
            clk => clk,
            rst => rst,
            cnt => cnt,
            rdy => rdy
        );
    
    clk <= not clk after C_CLK_PERIOD / 2 when clk_ena else '0';

    p_stimuli : process
    begin
        report("Starting simulation");
        clk_ena <= true;
        rst <= '0';
        wait until rising_edge(clk);
        rst <= '1';
        wait until rising_edge(clk);
        rst <= '0';
        wait for 16 * C_CLK_PERIOD;
        clk_ena <= false;
        report("End of simulation");
        wait;
    end process;
end architecture;