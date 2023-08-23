----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/04/2023 08:52:43 AM
-- Design Name: 
-- Module Name: hCounter_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hCounter_tb is
--  Port ( );
end hCounter_tb;

architecture Behavioral of hCounter_tb is

component hCounter_s is 
    port (  clk : in std_logic;
            hSync : out std_logic; 
            vCEn : out std_logic; 
            hCount : out std_logic_vector (9 downto 0)
    );
end component;

signal clk, hSync, vCEn : std_logic; 
signal hCount : std_logic_vector (9 downto 0); 
-- clk signals -- 
signal clk_period : time := 20ns; 
signal clk_stop : boolean; 


begin

    clkproc : process 
    begin
        clk <= '1';  
        wait for clk_period/2; 
        clk <= '0'; 
        wait for clk_period/2; 
    end process ; -- clkproc

    uut : hCounter_s 
    port map (
        clk => clk, 
        hSync => hSync, 
        vCEn => vCEn, 
        hCount => hCount
    );

    stim : process 
    begin


        wait; 
        
    end process ; -- stim

end Behavioral;
