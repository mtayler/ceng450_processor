----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:58:38 03/28/2018 
-- Design Name: 
-- Module Name:    bit_merger - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bit_merger is
    Port ( data : in  STD_LOGIC_VECTOR (15 downto 0);
           value : in  STD_LOGIC_VECTOR (7 downto 0);
           ctrl : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end bit_merger;

architecture Behavioral of bit_merger is

begin


end Behavioral;

