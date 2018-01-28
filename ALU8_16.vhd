----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:24:38 01/27/2018 
-- Design Name: 
-- Module Name:    ALU8_16 - Behavioral 
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

entity alu is
    Port ( in1 : in  STD_LOGIC_VECTOR (15 downto 0);
           in2 : in  STD_LOGIC_VECTOR (15 downto 0);
           alu_mode : in  STD_LOGIC_VECTOR (2 downto 0);
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (15 downto 0);
           z_flag : out  STD_LOGIC;
           n_flag : out  STD_LOGIC);
end alu;

architecture Behavioral of alu is

begin

process(clk) begin
	if (rst='1') then
		z_flag <= '0';
		n_flag <= '0';
		result <= (others => '0');
	else
	if (clk='1') then
		case alu_mode is
			-- nop
			when "000" => NULL;
			-- add
			when "001" => result <= std_logic_vector(signed(in1) + signed(in2));
			-- sub
			when "010" => result <= std_logic_vector(signed(in1) - signed(in2));
			-- mult
			when "011" => result <= std_logic_vector(resize(signed(in1) * signed(in2), 16));
			-- nand
			when "100" => result <= in1 nand in2;
			-- shl
			when "101" => result <= std_logic_vector(shift_left(unsigned(in1), to_integer(signed(in2))));
			-- shr
			when "110" => result <= std_logic_vector(shift_right(unsigned(in1), to_integer(signed(in2))));
			-- test
			when "111" => if (signed(in1) < 0) then
				n_flag <= '1'; elsif (signed(in1) = 0) then z_flag <= '1'; end if;
			when others => NULL;
		end case;
	end if;
	end if;
end process;

end Behavioral;

