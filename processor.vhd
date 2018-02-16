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
use IEEE.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity processor is
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		instruction : IN std_logic_vector(15 downto 0);
		inport: IN std_logic_vector(15 downto 0);
		outport : OUT std_logic_vector(15 downto 0)
	);
end processor;

architecture Behavioral of processor is

	constant instr_size : integer := 1;
	
	Component register_file
	PORT(
		rst : IN std_logic;
		clk : IN std_logic;
		rd_index1 : IN std_logic_vector(2 downto 0);
		rd_index2 : IN std_logic_vector(2 downto 0);
		rd_data1 : OUT std_logic_vector(15 downto 0);
		rd_data2 : OUT std_logic_vector(15 downto 0);
		wr_index : IN std_logic_vector(2 downto 0);
		wr_data : IN std_logic_vector(15 downto 0);
		wr_enable : IN std_logic
	);
	end Component;

	Component alu
	PORT(
		in1: IN std_logic_vector(15 downto 0);
		in2: IN std_logic_vector(15 downto 0);
		alu_mode : IN  std_logic_vector(2 downto 0);
      clk : IN std_logic;
      rst : IN std_logic;
      result : OUT std_logic_vector(15 downto 0);
		overflow : OUT std_logic_vector(15 downto 0);
      z_flag : OUT  std_logic;
      n_flag : OUT  std_logic
	);
	end Component;
	
	Component control_unit
	PORT(
		rst : IN std_logic;
		clk : IN std_logic;
		opcode : IN std_logic_vector(6 downto 0);
		alu_mode : OUT std_logic_vector(2 downto 0);
		a_instr_sel : OUT std_logic;
		wr_instr : OUT std_logic;
		out_instr : OUT std_logic
	);
	end Component;
	
	Component ram
	PORT(
		rst : IN std_logic;
		clk : IN std_logic;
		wr_enable : IN std_logic;
		addr : IN std_logic_vector(6 downto 0);
		data : INOUT std_logic_vector(15 downto 0)
	);
	end Component;
	
	Component ROM_VHDL
	PORT(
		clk : IN std_logic;
		addr : IN std_logic_vector(6 downto 0);
		data : OUT std_logic_vector(15 downto 0)
	);
	end Component;
	
	type t_InstructionFetch is record
		opcode : std_logic_vector(6 downto 0);
		data : std_logic_vector(8 downto 0);
		inport : std_logic_vector(15 downto 0);
	end record t_InstructionFetch;
	
	type t_InstructionDecode is record
		ra : std_logic_vector(2 downto 0);
		alu_mode : std_logic_vector(2 downto 0);
		wr_instr : std_logic;
		out_instr : std_logic;
		data1 : std_logic_vector(15 downto 0);
		data2 : std_logic_vector(15 downto 0);
	end record t_InstructionDecode;
	
	type t_Execute is record
		ra : std_logic_vector(2 downto 0);
		addr : std_logic_vector(15 downto 0);
		wr_instr : std_logic;
		out_instr : std_logic;
		alu_result : std_logic_vector(15 downto 0);
		alu_overflow : std_logic_vector(15 downto 0);
		z_flag : std_logic;
		n_flag : std_logic;
	end record t_Execute;
	
	type t_Mem is record
		addr : std_logic_vector(2 downto 0);
		wr_instr : std_logic;
		data : std_logic_vector(15 downto 0);
		overflow : std_logic_vector(15 downto 0);
	end record t_Mem;
	
	signal reg_instructionFetch : t_InstructionFetch := (opcode => "0000000",
	                                                     data => (others => '0'),
	                                                     inport => (others => '0'));
																		  
	signal reg_instructionDecode : t_InstructionDecode := (ra => "000",
	                                                       alu_mode => "000",
	                                                       wr_instr => '0',
																			 out_instr => '0',
	                                                       data1 => (others => '0'),
	                                                       data2 => (others => '0'));
																			 
	signal reg_execute : t_Execute := (ra => "000",
	                                   addr => (others => '0'),
												  wr_instr => '0',
												  out_instr => '0',
												  alu_result => (others => '0'),
												  alu_overflow => (others => '0'),
												  z_flag => '0',
												  n_flag => '0');

	signal reg_mem : t_Mem := (addr => "000",
	                           wr_instr => '0',
	                           data => (others => '0'),
										overflow => (others => '0'));
										
	signal rd_index1 : std_logic_vector(2 downto 0);
	signal rd_index2 : std_logic_vector(2 downto 0);
	signal rd_data1 : std_logic_vector(15 downto 0);
	signal rd_data2 : std_logic_vector(15 downto 0);
	signal wr_index : std_logic_vector(2 downto 0);
	signal wr_data : std_logic_vector(15 downto 0);
	signal wr_enable : std_logic;
	
	signal alu_mode : std_logic_vector(2 downto 0);
	signal in1 : std_logic_vector(15 downto 0);
	signal in2 : std_logic_vector(15 downto 0);
	signal alu_result : std_logic_vector(15 downto 0);
	signal alu_overflow : std_logic_vector(15 downto 0);
	signal z_flag : std_logic;
	signal n_flag : std_logic;
	
	signal opcode : std_logic_vector(6 downto 0);
	signal decoded_alu_mode : std_logic_vector(2 downto 0);
	signal a_instr_sel : std_logic;
	signal wr_instr : std_logic;
	signal out_instr : std_logic;
	
	signal PC : std_logic_vector(6 downto 0);
	signal rom_data : std_logic_vector(15 downto 0);
	
begin

	rom0 : ROM_VHDL PORT MAP (
		clk => clk,
		addr => PC,
		data => rom_data
	);

	rf0: register_file PORT MAP (
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
	
	alu0: alu PORT MAP (
		rst => rst,
		clk => clk,
		alu_mode => alu_mode,
		in1 => in1,
		in2 => in2,
		result => alu_result,
		overflow => alu_overflow,
		z_flag => z_flag,
		n_flag => n_flag
	);
	
	cu0: control_unit PORT MAP (
		clk => clk,
		rst => rst,
		opcode => opcode,
		alu_mode => decoded_alu_mode,
		a_instr_sel => a_instr_sel,
		wr_instr => wr_instr,
		out_instr => out_instr
	);
	
	opcode <= reg_instructionFetch.opcode;
	in1 <= reg_instructionDecode.data1;
	in2 <= reg_instructionDecode.data2;
	alu_mode <= reg_instructionDecode.alu_mode;
	
	rd_index1 <= reg_instructionFetch.data(8 downto 6) when (a_instr_sel='1') else reg_instructionFetch.data(5 downto 3);
	rd_index2 <= reg_instructionFetch.data(2 downto 0);
	
	process(clk, rst) is
	begin
		if (rst='1') then
			reg_instructionFetch.opcode <= "0000000";
			reg_instructionFetch.data <= (others => '0');
			reg_instructionFetch.inport <= (others => '0');
			
			reg_instructionDecode.ra <= "000";
			reg_instructionDecode.alu_mode <= "000";
			reg_instructionDecode.wr_instr <= '0';
			reg_instructionDecode.out_instr <= '0';
			reg_instructionDecode.data1 <= (others => '0');
			reg_instructionDecode.data2 <= (others => '0');
			
			reg_execute.ra <= "000";
			reg_execute.addr <= (others => '0');
			reg_execute.wr_instr <= '0';
			reg_execute.out_instr <= '0';
			reg_execute.alu_result <= (others => '0');
			reg_execute.alu_overflow <= (others => '0');
			reg_execute.z_flag <= '0';
			reg_execute.n_flag <= '0';

			reg_mem.addr <= "000";
			reg_mem.wr_instr <= '0';
			reg_mem.data <= (others => '0');
			reg_mem.overflow <= (others => '0');
			
			PC <= (others => '0');
			outport <= (others => '0');
		-- Stages in reverse order so stages cascade rather than updating at once
		else -- (not rst)
		if rising_edge(clk) then
			-- WRITEBACK
			wr_index <= reg_mem.addr;
			wr_data <= reg_mem.data;
			
			if (reg_mem.wr_instr='1') then
				wr_enable <= '1';
			else
				wr_enable <= '0';
			end if;
			if (reg_execute.out_instr='1') then
				outport <= reg_mem.data;
			else
				outport <= (others => '0');
			end if;
									
			-- MEM
			reg_mem.addr <= reg_execute.ra;
			reg_mem.wr_instr <= reg_execute.wr_instr;
			reg_mem.data <= reg_execute.alu_result;
			reg_mem.overflow <= reg_execute.alu_overflow;
			
			-- EXECUTE
			reg_execute.ra <= reg_instructionDecode.ra;
			reg_execute.wr_instr <= reg_instructionDecode.wr_instr;
			reg_execute.out_instr <= reg_instructionDecode.out_instr;
			
			reg_execute.alu_result <= alu_result;
			reg_execute.alu_overflow <= alu_overflow;
			reg_execute.z_flag <= z_flag;
			reg_execute.n_flag <= n_flag;
			
			-- DECODE
			reg_instructionDecode.ra <= reg_instructionFetch.data(8 downto 6);
			reg_instructionDecode.wr_instr <= wr_instr;
			reg_instructionDecode.out_instr <= out_instr;
			
			reg_instructionDecode.alu_mode <= decoded_alu_mode;
			
			-- Determine rd_index1 and set data2 (potentially from rd_data2)
			if (unsigned(reg_instructionFetch.opcode)=33) then
				-- IN operation (IN port)
				reg_instructionDecode.data1 <= reg_instructionFetch.inport;
				reg_instructionDecode.data2 <= x"0000";
			elsif (a_instr_sel='1') then
				-- ra and cl (immediate)
				reg_instructionDecode.data1 <= rd_data1;
				reg_instructionDecode.data2 <= std_logic_vector(resize(signed(reg_instructionFetch.data(3 downto 0)),16));
			else
				-- rb and rd_data2 (reg)
				reg_instructionDecode.data1 <= rd_data1;
				reg_instructionDecode.data2 <= rd_data2;
			end if;
		
			-- FETCH
			reg_instructionFetch.opcode <= rom_data(15 downto 9);
			reg_instructionFetch.data <= rom_data(8 downto 0);
			reg_instructionFetch.inport <= inport;
			PC <= std_logic_vector(unsigned(PC) + instr_size);
			
		end if; end if;
	end process;

end Behavioral;

