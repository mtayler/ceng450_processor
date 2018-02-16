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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control_unit is
	Port ( clk : IN std_logic;
	       rst : IN std_logic;
			 opcode : IN  std_logic_vector(6 downto 0);
          alu_mode : OUT  std_logic_vector(2 downto 0);
			 a_instr_sel : OUT std_logic;
			 wr_instr : OUT std_logic
	);
end control_unit;

architecture Behavioral of control_unit is

begin

alu_mode <= opcode(2 downto 0) when (rst='0' AND (unsigned(opcode)<=7 OR (unsigned(opcode)>=32 AND unsigned(opcode)<=33))) else "000";
a_instr_sel <= '1' when (rst='0' AND (unsigned(opcode)=5 OR unsigned(opcode)=6)) else '0';
wr_instr <= '1' when (rst='0' AND ((unsigned(opcode)>=1 AND unsigned(opcode)<=7) OR (unsigned(opcode)>=32 AND unsigned(opcode)<=33))) else '0';

end Behavioral;

