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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity processor is
end processor;

architecture Behavioral of processor is

	signal clk : STD_LOGIC := '0';
	signal rst : STD_LOGIC := '0';
	
	Component register_file
	PORT(
		rst : in STD_LOGIC;
		clk : in STD_LOGIC;
		rd_index1 : in STD_LOGIC_VECTOR(2 downto 0);
		rd_index2 : in STD_LOGIC_VECTOR(2 downto 0);
		rd_data1 : out STD_LOGIC_VECTOR(15 downto 0);
		rd_data2 : out STD_LOGIC_VECTOR(15 downto 0);
		wr_index : in STD_LOGIC_VECTOR(2 downto 0);
		wr_data : in STD_LOGIC_VECTOR(15 downto 0)
		--wr_enable : in STD_LOGIC
	);
	end Component;

	Component alu
	PORT(
		in1: in STD_LOGIC_VECTOR(15 downto 0);
		in2: in STD_LOGIC_VECTOR(15 downto 0);
		alu_mode : in  STD_LOGIC_VECTOR(2 downto 0);
      clk : in STD_LOGIC;
      rst : in STD_LOGIC;
      result : out STD_LOGIC_VECTOR(15 downto 0);
		overflow : out STD_LOGIC_VECTOR(15 downto 0);
      z_flag : out STD_LOGIC;
      n_flag : out STD_LOGIC
	);
	end Component;
	
	Component control_unit
	PORT(
		clk : in STD_LOGIC;
		opcode : in STD_LOGIC_VECTOR(6 downto 0);
		alu_mode : out STD_LOGIC_VECTOR(2 downto 0);
		a_instr_sel : out STD_LOGIC
	);
	end Component;
	
	Component ram
	PORT(
		rst : in STD_LOGIC;
		clk : in STD_LOGIC;
		wr_enable : in STD_LOGIC;
		addr : in STD_LOGIC_VECTOR(15 downto 0);
		data : in STD_LOGIC_VECTOR(15 downto 0)
	);
	end Component;
	
	type t_InstructionFetch is record
		opcode : STD_LOGIC_VECTOR(6 downto 0);
		data : STD_LOGIC_VECTOR(8 downto 0);
	end record t_InstructionFetch;
	
	type t_InstructionDecode is record
		ra : STD_LOGIC_VECTOR(2 downto 0);
		alu_mode : STD_LOGIC_VECTOR(2 downto 0);
		data1 : STD_LOGIC_VECTOR(15 downto 0);
		data2 : STD_LOGIC_VECTOR(15 downto 0);
	end record t_InstructionDecode;
	
	type t_Execute is record
		ra : STD_LOGIC_VECTOR(2 downto 0);
		addr : STD_LOGIC_VECTOR(15 downto 0);
		alu_result : STD_LOGIC_VECTOR(15 downto 0);
		alu_overflow : STD_LOGIC_VECTOR(15 downto 0);
		z_flag : STD_LOGIC;
		n_flag : STD_LOGIC;
	end record t_Execute;
	
	type t_Mem is record
		addr : STD_LOGIC_VECTOR(2 downto 0);
		data : STD_LOGIC_VECTOR(15 downto 0);
	end record t_Mem;
	
	signal reg_instructionFetch : t_InstructionFetch := (opcode => "0000000",
	                                                       data => (others => '0'));
	signal reg_instructionDecode : t_InstructionDecode := (ra => "000",
	                                                         alu_mode => "000",
																				data1 => (others => '0'),
																				data2 => (others => '0'));
	signal reg_execute : t_Execute := (ra => "000",
	                                   addr => (others => '0'),
												  alu_result => (others => '0'),
												  alu_overflow => (others => '0'),
												  z_flag => '0',
												  n_flag => '0');

	signal reg_mem : t_Mem := (addr => "000",
	                           data => (others => '0'));
										
	signal rd_index1 : STD_LOGIC_VECTOR(2 downto 0);
	signal rd_data2 : STD_LOGIC_VECTOR(15 downto 0);
	signal a_instr_sel : STD_LOGIC;
	
begin

	rf0: register_file PORT MAP (
		rst => rst,
		clk => clk,
		rd_index1 => rd_index1,
		rd_index2 => reg_instructionFetch.data(2 downto 0),
		rd_data1 => reg_instructionDecode.data1,
		rd_data2 => rd_data2,
		wr_index => reg_mem.addr,
		wr_data => reg_mem.data
	);
	
	alu0: alu PORT MAP (
		rst => rst,
		clk => clk,
		alu_mode => reg_instructionDecode.alu_mode,
		in1 => reg_instructionDecode.data1,
		in2 => reg_instructionDecode.data2,
		result => reg_execute.alu_result,
		overflow => reg_execute.alu_overflow,
		z_flag => reg_execute.z_flag,
		n_flag => reg_execute.n_flag
	);
	
	cu0: control_unit PORT MAP (
		clk => clk,
		opcode => reg_instructionFetch.opcode,
		alu_mode => reg_instructionDecode.alu_mode,
		a_instr_sel => a_instr_sel
	);
	
	process(clk, rst) is
	begin
		if rising_edge(clk) then
			-- synchronize ra
			reg_instructionDecode.ra <= reg_instructionFetch.data(8 downto 6);
			
			if (a_instr_sel='1') then
				-- ra and cl (immediate)
				rd_index1 <= reg_instructionFetch.data(8 downto 6);
				reg_instructionDecode.data2 <= std_logic_vector(resize(signed(reg_instructionFetch.data(3 downto 0)),16));
			else
				-- rb and rd_data2 (reg)
				rd_index1 <= reg_instructionFetch.data(5 downto 3);
				reg_instructionDecode.data2 <= rd_data2;
			end if;
		end if;
	end process;

end Behavioral;

