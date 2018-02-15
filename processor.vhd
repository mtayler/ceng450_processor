----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:25:41 02/07/2018 
-- Design Name: 
-- Module Name:    processor - Behavioral 
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

entity processor is
end processor;

architecture Behavioral of processor is

	 signal clk : std_logic := '0';
	 signal alu_rst : std_logic := '0';
	 signal rf_rst : std_logic := '0';

	Component alu
	PORT(
		in1: IN std_logic_vector(15 downto 0);
		in2: IN std_logic_vector(15 downto 0);
		alu_mode : IN  std_logic_vector(2 downto 0);
      clk : IN  std_logic;
      rst : IN  std_logic;
      result : OUT  std_logic_vector(15 downto 0);
      z_flag : OUT  std_logic;
      n_flag : OUT  std_logic
	);
	end Component;
	
	signal in1 : std_logic_vector(15 downto 0) := (others => '0');
	signal in2 : std_logic_vector(15 downto 0) := (others => '0');
	signal alu_mode : std_logic_vector(2 downto 0) := (others => '0');
	 
	Component rf
	PORT(
		rst : in std_logic;
		clk : in std_logic;
		rd_index1 : in std_logic_vector(2 downto 0);
		rd_index1 : in std_logic_vector(2 downto 0);
		rd_data1 : in std_logic_vector(15 downto 0);
		rd_data2 : in std_logic_vector(15 downto 0);
		wr_index : in std_logic_vector(2 downto 0);
		wr_data : in std_logic_vector(15 downto 0);
		wr_enable : in std_logic
	);
	end Component;
	
	signal wr_enable : std_logic := '0';
	signal reg_data : std_logic_vector(2 downto 0) bus;

begin
	u0 : rf port map(
		rf_rst => rst,
		clk => clk,
		rd_data1 => reg_data,
		wr_data => reg_data,
		wr_enable => wr_enable
	);

end Behavioral;

