----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/28/2023 08:51:02 AM
-- Design Name: 
-- Module Name: clk_25MHz - Behavioral
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

entity clk_25MHz is
    port (  clk : in std_logic; 
            clkOUT : out std_logic
    );
end clk_25MHz;

architecture Behavioral of clk_25MHz is

signal count : std_logic := '0';  
signal clkOUT_t : std_logic := '0'; 

begin

    proc1 : process( clk )
    begin
        if (rising_edge(clk)) then 
            if (count = '1') then
                clkOUT_t <= not clkOUT_t; 
                count <= '0'; 
            else
                count <= '1'; 
            end if ;
        end if ;
    end process ; -- proc1

    clkOUT <= clkOUT_t; 


end Behavioral;
