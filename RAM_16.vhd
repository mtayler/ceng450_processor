-- Single-Port BRAM with Byte Write Enable
--  2x8-bit write
--  Read-First mode
--  Single-process description
--  Compact description of the write with a for-loop statement
--  Column width and number of columns easily configurable
-- File: HDL_Coding_Techniques/rams/bytewrite_ram_1b.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ram is
port (
	clk : in std_logic;
	we: in std_logic_vector(1 downto 0);
	addr : in std_logic_vector(11 downto 0);
	din: in std_logic_vector(15 downto 0);
	dout: out std_logic_vector(15 downto 0));
end ram;

architecture behavioral of ram is type ram_type is
		array (65536-1 downto 0)
			of std_logic_vector (15 downto 0);
	signal RAM : ram_type := (others => (others => '0'));
begin
	process (clk)
	begin
		if falling_edge(clk) then
			dout <= RAM(conv_integer(addr));
--			if we(0) = '1' then
--				RAM(conv_integer(addr))(15 downto 8) <= din(15 downto 8);
--			end if;
--			if we(1) = '1' then
--				RAM(conv_integer(addr))(7 downto 0) <= din(7 downto 0);
--			end if;
			if we="11" then
				RAM(conv_integer(addr)) <= din;
			end if;
		end if;
	end process;
end behavioral;