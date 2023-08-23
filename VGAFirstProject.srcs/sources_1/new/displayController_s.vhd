----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/09/2023 08:40:22 AM
-- Design Name: 
-- Module Name: displayController_s - Behavioral
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

entity displayController_s is
    port (  hCount : in std_logic_vector (9 downto 0); 
            vCount : in std_logic_vector (9 downto 0);
            redOUT : out std_logic_vector (3 downto 0); 
            greenOUT : out std_logic_vector (3 downto 0); 
            blueOUT : out std_logic_vector (3 downto 0)
    );
end displayController_s;

architecture Behavioral of displayController_s is

signal redOUT_t : std_logic_vector (3 downto 0) := (others => '0'); 
signal greenOUT_t : std_logic_vector (3 downto 0) := (others => '0'); 
signal blueOUT_t : std_logic_vector (3 downto 0) := (others => '0'); 

begin

    displayProc : process( hCount, vCount )
    begin
        if (vCount > "0000100010"  and vCount < "1000000011") then -- 35 to 515
            if (hCount > "0010001111"  and hCount < "1100010000") then -- 144 to 784
                redOUT_t <= "1111";
                greenOUT_t <= "1111";
                blueOUT_t <= "1111"; 
            else
                redOUT_t <= "0000";
                greenOUT_t <= "0000";
                blueOUT_t <= "0000";   
            end if ;
        else
            redOUT_t <= "0000";
            greenOUT_t <= "0000";
            blueOUT_t <= "0000";   
        end if ;
        
    end process ; -- displayProc

    redOUT <= redOUT_t;
    greenOUT <= greenOUT_t;
    blueOUT <= blueOUT_t;


end Behavioral;
