----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/28/2023 08:51:32 AM
-- Design Name: 
-- Module Name: hCounter_s - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hCounter_s is
    port (  clk : in std_logic;
            hSync : out std_logic; 
            vCEn : out std_logic; 
            hCount : out std_logic_vector (9 downto 0)
    );
end hCounter_s;

architecture Behavioral of hCounter_s is

signal hCount_t : std_logic_vector ( 9 downto 0) := (others => '0'); 
signal hSync_t : std_logic := '0'; 

begin

    proc1 : process( clk )
    begin
        if (rising_edge(clk)) then
            if (hCount_t < "1100011111") then
                hCount_t <= std_logic_vector(to_unsigned(to_integer(unsigned( hCount_t )) + 1, 10)); -- here 10 is number of bits, 1 is being added to input vector of length 10 
                vCEn <= '0'; 
            else
                hCount_t <= "0000000000"; 
                vCEn <= '1'; 
            end if ;
            if (hCount_t < "0001011111" ) then
                hSync_t <= '0'; 
            elsif (hCount_t = "1100011111") then
                hSync_t <= '0'; 
            else
                hSync_t <= '1';
            end if ;
        end if ;
    end process ; -- proc1

    hCount <= hCount_t; 
    hSync <= hSync_t; 


end Behavioral;
