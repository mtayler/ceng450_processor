----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:55:57 02/15/2018 
-- Design Name: 
-- Module Name:    control_unit - Behavioral 
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

entity control_unit is
    Port ( opcode : in  STD_LOGIC_VECTOR(6 downto 0);
           data : in  STD_LOGIC_VECTOR (8 downto 0);
           alu_mode : out  STD_LOGIC;
           rd_index1 : out  STD_LOGIC;
           rd_index2 : out  STD_LOGIC;
           wr_index : out  STD_LOGIC);
end control_unit;

architecture Behavioral of control_unit is

begin

alu_mode <= opcode(2 downto 0) when (opcode(6 downto 3)="0000");

wr_index <= data(8 downto 6) when (integer(opcode) >= 1 AND integer(opcode) <= 6);

rd_index1 <= data(5 downto 3) when (integer(opcode) >= 1 AND integer(opcode) <= 4);
rd_index2 <= data(2 downto 0) when (integer(opcode) >= 1 AND integer(opcode) <= 4);

end Behavioral;

