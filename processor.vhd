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
use IEEE.std_logic_misc.ALL;

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

	constant instr_mem_size : integer := 1;
	
	function wr_instr(signal opcode : std_logic_vector(6 downto 0)) return boolean is
	begin
		return ((unsigned(opcode)>=1 AND unsigned(opcode)<=7) OR unsigned(opcode)=33);
	end wr_instr;
	
	function a2_instr(signal opcode : std_logic_vector(6 downto 0)) return boolean is
	begin
		return (unsigned(opcode)=5 OR unsigned(opcode)=6 OR unsigned(opcode)=32);
	end a2_instr;
	
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
		wr_enable : IN std_logic;
		wr_overflow_data : IN std_logic_vector(15 downto 0);
		wr_overflow : IN std_logic
	);
	end Component;

	Component alu
	PORT(
		in1: IN std_logic_vector(15 downto 0);
		in2: IN std_logic_vector(15 downto 0);
      clk : IN std_logic;
      rst : IN std_logic;
		alu_mode : IN std_logic_vector(2 downto 0);
      result : OUT std_logic_vector(15 downto 0);
		overflow : OUT std_logic_vector(15 downto 0);
      z_flag : OUT  std_logic;
      n_flag : OUT  std_logic
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
	
	type t_IF is record
		instr : std_logic_vector(15 downto 0);
		inport : std_logic_vector(15 downto 0);
	end record t_IF;
	
	type t_ID is record
		instr : std_logic_vector(15 downto 0);
		data1 : std_logic_vector(15 downto 0);
		data2 : std_logic_vector(15 downto 0);
	end record t_ID;
	
	type t_EX is record
		instr : std_logic_vector(15 downto 0);
		alu_result : std_logic_vector(15 downto 0);
		alu_overflow : std_logic_vector(15 downto 0);
		z_flag : std_logic;
		n_flag : std_logic;
	end record t_EX;
	
	type t_WR is record
		instr : std_logic_vector(15 downto 0);
		data : std_logic_vector(15 downto 0);
		overflow : std_logic_vector(15 downto 0);
	end record t_WR;
	
	signal reg_IF : t_IF := (instr => (others => '0'),
	                         inport => (others => '0'));
																		  
	signal reg_ID : t_ID := (instr => (others => '0'),
	                         data1 => (others => '0'),
	                         data2 => (others => '0'));
																			 
	signal reg_EX : t_EX := (instr => (others => '0'),
									 alu_result => (others => '0'),
									 alu_overflow => (others => '0'),
									 z_flag => '0',
									 n_flag => '0');

	signal reg_WR : t_WR := (instr => (others => '0'),
	                           data => (others => '0'),
										overflow => (others => '0'));
										
	-- Connections requiring logic between
	signal rd_index1 : std_logic_vector(2 downto 0);
	signal rd_index2 : std_logic_vector(2 downto 0);
	signal rd_data1 : std_logic_vector(15 downto 0);
	signal rd_data2 : std_logic_vector(15 downto 0);
	signal wr_enable : std_logic;
	signal wr_overflow : std_logic;
	
	signal alu_result : std_logic_vector(15 downto 0);
	signal alu_overflow : std_logic_vector(15 downto 0);
	signal z_flag : std_logic;
	signal n_flag : std_logic;
		
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
		wr_index => reg_WR.instr(8 downto 6),
		wr_data => reg_WR.data,
		wr_enable => wr_enable,
		wr_overflow_data => reg_WR.overflow,
		wr_overflow => wr_overflow
	);
	
	alu0: alu PORT MAP (
		rst => rst,
		clk => clk,
		alu_mode => reg_ID.instr(11 downto 9),
		in1 => reg_ID.data1,
		in2 => reg_ID.data2,
		result => alu_result,
		overflow => alu_overflow,
		z_flag => z_flag,
		n_flag => n_flag
	);
	
-- COMBINATIONAL LOGIC
	rd_index1 <= reg_IF.instr(8 downto 6) when a2_instr(reg_IF.instr(15 downto 9)) else reg_IF.instr(5 downto 3);
	rd_index2 <= reg_IF.instr(2 downto 0);
	
	wr_enable <= '1' when wr_instr(reg_WR.instr(15 downto 9)) else '0';
	wr_overflow <= '1' when (wr_instr(reg_WR.instr(15 downto 9)) AND reg_WR.instr(11 downto 9)="011") else '0';
	
	process(clk, rst) is
	begin
		if (rst='1') then
			reg_IF.instr <= (others => '0');
			reg_IF.inport <= (others => '0');
			
			reg_ID.instr <= (others => '0');
			reg_ID.data1 <= (others => '0');
			reg_ID.data2 <= (others => '0');
			
			reg_EX.instr <= (others => '0');
			reg_EX.alu_result <= (others => '0');
			reg_EX.alu_overflow <= (others => '0');
			reg_EX.z_flag <= '0';
			reg_EX.n_flag <= '0';

			reg_WR.instr <= (others => '0');
			reg_WR.data <= (others => '0');
			reg_WR.overflow <= (others => '0');
			
			PC <= (others => '0');
			outport <= (others => '0');
		-- Stages in reverse order so stages cascade rather than data passing through
		-- in one cycle
		else -- (not rst)
		if rising_edge(clk) then
			-- WRITEBACK
			if (unsigned(reg_WR.instr(15 downto 9))=32) then
				outport <= reg_WR.data;
			else
				outport <= (others => '0');
			end if;
			
			reg_WR.instr <= reg_EX.instr;
			reg_WR.data <= reg_EX.alu_result;
			reg_WR.overflow <= reg_EX.alu_overflow;
			
			-- EX/MEM
			reg_EX.instr <= reg_ID.instr;

			if (unsigned(reg_ID.instr(15 downto 9))=32) then
				reg_EX.alu_result <= reg_ID.data1;
			else
				reg_EX.alu_result <= alu_result;
			end if;
			reg_EX.alu_overflow <= alu_overflow;
			reg_EX.z_flag <= z_flag;
			reg_EX.n_flag <= n_flag;
			
			-- DECODE
			reg_ID.instr <= reg_IF.instr;
			
			-- Determine rd_index1 and set data2 (potentially from rd_data2)
			if (unsigned(reg_IF.instr(15 downto 9))=33) then
				-- IN operation (IN port)
				reg_ID.data1 <= reg_IF.inport;
				reg_ID.data2 <= x"0000";
			elsif (a2_instr(reg_IF.instr(15 downto 9))) then
				-- ra and cl (immediate)
				reg_ID.data1 <= rd_data1;
				if (unsigned(reg_ID.instr(15 downto 9))/=32) then -- take cl
					reg_ID.data2 <= std_logic_vector(resize(signed(reg_IF.instr(3 downto 0)),16));
				else -- ignore cl (short to 0)
					reg_ID.data2 <= x"0000";
				end if;
			else
				-- rb and rd_data2 (reg)
				reg_ID.data1 <= rd_data1;
				reg_ID.data2 <= rd_data2;
			end if;
		
			-- FETCH
			reg_IF.instr <= rom_data;
			reg_IF.inport <= inport;
			PC <= std_logic_vector(unsigned(PC) + instr_mem_size);
			
		end if; end if;
	end process;

end Behavioral;

