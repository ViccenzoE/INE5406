library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_textio.all;
use std.textio.all;

entity topo_tb is
end topo_tb;


-- Ver se precisa do teste1 no final 

architecture tb of topo_tb is

    signal CLOCK: std_logic := '0';
    signal iniciar: std_logic := '1';
    signal reset: std_logic := '0';
    signal sample_ori: std_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');
    signal sample_can: std_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');

    -- Saída
    signal SAD_saida: std_logic_vector(13 DOWNTO 0);
    signal end_sad: std_logic_vector(5 DOWNTO 0);
    signal read_sad: std_logic;
    signal pronto: std_logic;

    constant passo: TIME := 20 ns;

begin 

    -- Instanciação do módulo Topo
    DUV: entity work.sad
        port map (
            CLOCK      => CLOCK,
            iniciar    => iniciar,
            reset      => reset,
            sample_ori => sample_ori,
            sample_can => sample_can,
            SAD_saida  => SAD_saida,
            end_sad    => end_sad,
            read_sad   => read_sad,
            pronto     => pronto
        );

    -- Processo para geração do clock
    clk_process: process
    begin
        while True loop
            CLOCK <= '0';
            wait for passo / 2;
            CLOCK <= '1';
            wait for passo / 2;
        end loop;
    end process;

    -- Processo para fornecer estímulos
    stimulus_process: process
    begin
        -- Inicialização dos sinais
        reset <= '1';
        wait for passo;
        reset <= '0';

        sample_ori <= std_LOGIC_VECTOR(to_unsigned(0, sample_ori'length));
        sample_can <= std_LOGIC_VECTOR(to_unsigned(0, sample_can'length));
        wait for passo;

        -- Teste 1
        assert (SAD_saida = "00000000000000")
        report "Fail 0" severity error;
        wait for passo;
		  
		  

        wait;
    end process;

end tb;
