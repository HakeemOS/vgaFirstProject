----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/18/2023 08:42:38 AM
-- Design Name: 
-- Module Name: displayController_tb - Behavioral
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

entity displayController_tb is
--  Port ( );
end displayController_tb;

architecture Behavioral of displayController_tb is

component displayController_s is 
    port (  hCount : in std_logic_vector (9 downto 0); 
            vCount : in std_logic_vector (9 downto 0);
            redOUT : out std_logic_vector (3 downto 0); 
            greenOUT : out std_logic_vector (3 downto 0); 
            blueOUT : out std_logic_vector (3 downto 0)
    );
end component; 

signal clk : std_logic; 
signal hCount, vCount : std_logic_vector (9 downto 0); 
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
    
    uut : displayController_s 
    port map (
        hCount => hCount, 
        vCount => vCount, 
        redOUT => redOUT, 
        greenOUT => greenOUT, 
        blueOUT => blueOUT
    ); 

    stim : process 
    begin

        hCount <= "0000000000"; 
        vCount <= "0000000000"; 

        wait for 20ns; 

        hCount <= "0000000001"; 
        vCount <= "0000000001"; 

        wait for 20ns; 

        hCount <= "0000000010"; 
        vCount <= "0000000010"; 

        wait for 20ns; 

        hCount <= "0000000011"; 
        vCount <= "0000000011"; 

        wait for 20ns; 

        vCount <= "0000000100";
        
        wait for 20ns; 

        hCount <= "0000000100"; 

        wait for 20ns; 

        hCount <= "0000000101"; 
        vCount <= "0000000101"; 
        
        wait for 20ns; 

        hCount <= "0000000110"; 
        vCount <= "0000000110"; 

        wait for 20ns; 

        hCount <= "0000000111"; 
        vCount <= "0000000111"; 

        wait for 20ns; 

        hCount <= "0000001000"; 

        wait for 20ns; 
        
        vCount <= "0000001000"; 

        wait for 20ns; 

        hCount <= "0000001001"; 
        --vCount <= "0000001001"; 

        wait for 20ns; 

        hCount <= "0000001010"; 
        --vCount <= "0000001010"; 

        wait; 

    end process ; -- stim


end Behavioral;
