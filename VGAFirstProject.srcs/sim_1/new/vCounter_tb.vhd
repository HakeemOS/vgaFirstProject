----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/05/2023 07:31:44 PM
-- Design Name: 
-- Module Name: vCounter_tb - Behavioral
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

entity vCounter_tb is
--  Port ( );
end vCounter_tb;

architecture Behavioral of vCounter_tb is

component vCounter_s is 
    port (  clk : in std_logic; 
            vCEn : in std_logic; 
            vSync : out std_logic; 
            vCount : out std_logic_vector (9 downto 0)
    ); 
end component; 

signal clk, vCEn, vSync : std_logic; 
signal vCount : std_logic_vector (9 downto 0); 
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

    uut : vCounter_s 
    port map (
        clk => clk, 
        vCEn => vCEn, 
        vSync => vSync, 
        vCount => vCount
    );

    stim : process 
    begin

        vCEn <= '0'; 

        wait for 20ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- copy/paste barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 2

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 3

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 4

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 
        
        -- Large Barrier 1 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- copy/paste barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 2

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 3

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 4

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- 80 Barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- copy/paste barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 2

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 3

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 4

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 
        
        -- Large Barrier 1 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- copy/paste barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 2

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 3

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 4

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- 160 barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- copy/paste barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 2

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 3

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 4

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 
        
        -- Large Barrier 1 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- copy/paste barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 2

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 3

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 4

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- 80 Barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- copy/paste barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 2

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 3

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 4

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 
        
        -- Large Barrier 1 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- copy/paste barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 2

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 3

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 4

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- 320 Barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- copy/paste barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 2

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 3

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 4

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 
        
        -- Large Barrier 1 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- copy/paste barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 2

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 3

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 4

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- 80 Barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- copy/paste barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 2

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 3

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 4

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 
        
        -- Large Barrier 1 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- copy/paste barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 2

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 3

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 4

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- 160 barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- copy/paste barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 2

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 3

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 4

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 
        
        -- Large Barrier 1 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- copy/paste barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 2

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 3

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 4

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- 80 Barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- copy/paste barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 2

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 3

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 4

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 
        
        -- Large Barrier 1 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- copy/paste barrier 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 2

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 3

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        -- barrier 4

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 

        wait for 80ns; 

        vCEn <= '1'; 

        wait for 20ns; 

        vCEn <= '0'; 
        wait; 



        
    end process ; -- stim

end Behavioral;
