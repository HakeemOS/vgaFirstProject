----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/19/2023 06:57:40 PM
-- Design Name: 
-- Module Name: vgaController_tb - Behavioral
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

entity vgaController_tb is
--  Port ( );
end vgaController_tb;

architecture Behavioral of vgaController_tb is

component vgaController_s is 
    port (  clk : in std_logic; 
            hSync : out std_logic; 
            vSync : out std_logic; 
            redOUT : out std_logic_vector (3 downto 0);  
            greenOUT : out std_logic_vector (3 downto 0); 
            blueOUT : out std_logic_vector (3 downto 0)
    );
end component; 

signal clk, hSync, vSync : std_logic; 
signal redOUT, greenOUT, blueOUT : std_logic_vector (3 downto 0); 
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

    uut : vgaController_s 
    port map (
        clk => clk, 
        hSync => hSync, 
        vSync => vSync, 
        redOUT => redOUT, 
        greenOUT => greenOUT, 
        blueOUT => blueOUt
    );

    stim : process 
    begin
        wait; 
    end process ; -- stim


end Behavioral;
