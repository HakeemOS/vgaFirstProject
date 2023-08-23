----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/28/2023 08:51:50 AM
-- Design Name: 
-- Module Name: vCounter_s - Behavioral
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

entity vCounter_s is
    port (  clk : in std_logic; 
            vCEn : in std_logic; 
            vSync : out std_logic; 
            vCount : out std_logic_vector (9 downto 0)
    );
end vCounter_s;

architecture Behavioral of vCounter_s is

signal vCount_t : std_logic_vector (9 downto 0) := (others => '0'); 
signal vSync_t : std_logic := '0';

begin

    proc1 : process( clk, vCEn )
    begin
        if (rising_edge(clk)) then
            if (vCEn = '1') then
                if (vCount_t < "0000000001") then
                    vSync_t <= '0'; 
                    vCount_t <= std_logic_vector(to_unsigned(to_integer(unsigned( vCount_t )) + 1, 10));
                elsif (vCount_t  < "1000001100") then
                    vSync_t <= '1'; 
                    vCount_t <= std_logic_vector(to_unsigned(to_integer(unsigned( vCount_t )) + 1, 10)); -- here 10 is number of bits, 1 is being added to input vector of length 10 
                else
                    vSync_t <= '0'; 
                    vCount_t <= "0000000000"; 

               end if ; 
            end if ;
        end if ;
    end process ; -- proc1


    vCount <= vCount_t; 
    vSync <= vSync_t; 

end Behavioral;
