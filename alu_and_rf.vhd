----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:53:43 02/07/2018 
-- Design Name: 
-- Module Name:    alu_and_rf - Behavioral 
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

entity alu_and_rf is
    Port ( clk, rst : in STD_LOGIC;
	        rd_index1 : in  STD_LOGIC_VECTOR (2 downto 0);
           rd_index2 : in  STD_LOGIC_VECTOR (2 downto 0);
           wr_enable : in  STD_LOGIC;
           wr_index : in  STD_LOGIC_VECTOR (2 downto 0);
           wr_data : in  STD_LOGIC_VECTOR (15 downto 0);
           alu_mode : in  STD_LOGIC_VECTOR (2 downto 0);
           z_flag : out  STD_LOGIC;
           n_flag : out  STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (15 downto 0);
			  mult : out STD_LOGIC_VECTOR (15 downto 0));
end alu_and_rf;

architecture Behavioral of alu_and_rf is
	
	component alu
	Port (
		in1 : in STD_LOGIC_VECTOR(15 downto 0);
		in2 : in STD_LOGIC_VECTOR(15 downto 0);
		alu_mode : in STD_LOGIC_VECTOR(2 downto 0);
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		result : out STD_LOGIC_VECTOR(15 downto 0);
		mult : out STD_LOGIC_VECTOR(15 downto 0);
		z_flag : out STD_LOGIC;
		n_flag : out STD_LOGIC
	);
	end component;
	
	component register_file
	Port (
		rst : in STD_LOGIC;
		clk : in STD_LOGIC;
		rd_index1 : in STD_LOGIC_VECTOR(2 downto 0);
		rd_index2 : in STD_LOGIC_VECTOR(2 downto 0);
		rd_data1 : out STD_LOGIC_VECTOR(15 downto 0);
		rd_data2 : out STD_LOGIC_VECTOR(15 downto 0);
		wr_index : in STD_LOGIC_VECTOR(2 downto 0);
		wr_data : in STD_LOGIC_VECTOR(15 downto 0);
		wr_enable : in STD_LOGIC
	);
	end component;
	
	signal rd_data1, rd_data2 : STD_LOGIC_VECTOR(15 downto 0);
		
begin
	
	alu0 : alu port map(
		rst => rst,
		clk => clk,
		in1 => rd_data1,
		in2 => rd_data2,
		alu_mode => alu_mode,
		result => result,
		mult => mult,
		z_flag => z_flag,
		n_flag => n_flag
	);

	rf0 : register_file port map(
		rst => rst,
		clk => clk,
		rd_index1 => rd_index1,
		rd_index2 => rd_index2,
		rd_data1 => rd_data1,
		rd_data2 => rd_data2,
		wr_index => wr_index,
		wr_data => wr_data,
		wr_enable => wr_enable
	);
	
end Behavioral;

