----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/28/2023 07:15:33 PM
-- Design Name: 
-- Module Name: clk25MHz_tb - Behavioral
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

entity clk25MHz_tb is
--  Port ( );
end clk25MHz_tb;

architecture Behavioral of clk25MHz_tb is

component clk_25MHz is 
    port (  clk : in std_logic; 
            clkOUT : out std_logic
    );
end component; 

signal clk, clkOut : std_logic; 

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

    uut : clk_25MHz 
    port map (
        clk => clk, 
        clkOUT => clkOUT
    ); 

    stim : process 
    begin
        

        wait for 200ns; 

        wait; 
    end process ; -- stim

end Behavioral;
