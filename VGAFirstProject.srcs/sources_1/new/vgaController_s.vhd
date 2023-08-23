----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/28/2023 08:53:24 AM
-- Design Name: 
-- Module Name: vgaController_s - Behavioral
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

entity vgaController_s is
    port (  clk : in std_logic; 
            hSync : out std_logic; 
            vSync : out std_logic; 
            redOUT : out std_logic_vector (3 downto 0);  
            greenOUT : out std_logic_vector (3 downto 0); 
            blueOUT : out std_logic_vector (3 downto 0)
    );
end vgaController_s;

architecture Behavioral of vgaController_s is

-- Components --
component clk_25MHz is 
    port (  clk : in std_logic; 
            clkOUT : out std_logic
    );
end component; 

component hCounter_s is 
    port (  clk : in std_logic;
            hSync : out std_logic; 
            vCEn : out std_logic; 
            hCount : out std_logic_vector (9 downto 0)
    );
end component; 

component vCounter_s is 
    port (  clk : in std_logic; 
            vCEn : in std_logic; 
            vSync : out std_logic; 
            vCount : out std_logic_vector (9 downto 0)
    );
end component; 

component displayController_s is 
    port (  hCount : in std_logic_vector (9 downto 0); 
            vCount : in std_logic_vector (9 downto 0);
            redOUT : out std_logic_vector (3 downto 0); 
            greenOUT : out std_logic_vector (3 downto 0); 
            blueOUT : out std_logic_vector (3 downto 0)
    );
end component; 

    -- Signal --
signal clkOUT : std_logic := '0'; 
signal vCEn : std_logic := '0'; 
signal hCount : std_logic_vector (9 downto 0) := (others => '0'); 
signal vCount : std_logic_vector (9 downto 0) := (others => '0'); 
    -- OUTs --
signal hSync_t : std_logic := '0'; 
signal vSync_t : std_logic := '0'; 
signal redOUT_t : std_logic_vector (3 downto 0) := (others => '0');  
signal greenOUT_t : std_logic_vector (3 downto 0) := (others => '0');
signal blueOUT_t : std_logic_vector (3 downto 0) := (others => '0');

begin

    clk0 : clk_25MHz
    port map (
        clk => clk, 
        clkOUT => clkOUT
    );

    hC0 : hCounter_s
    port map (
        clk => clkOUT, 
        hSync => hSync_t, 
        vCEn => vCEn, 
        hCount => hCount
    );

    vC0 : vCounter_s
    port map (
        clk => clkOUT, 
        vCEn => vCEn, 
        vSync => vSync_t, 
        vCount => vCount
    ); 

    dCtr0 : displayController_s 
    port map (
        hCount => hCount, 
        vCount => vCount, 
        redOUT => redOUT_t, 
        greenOUT => greenOUT_t, 
        blueOUT => blueOUT_t
    ); 

    hSync <= hSync_t; 
    vSync <= vSync_t; 
    redOUT <= redOUT_t; 
    greenOUT <= greenOUT_t; 
    blueOUT <= blueOUT_t; 


end Behavioral;
