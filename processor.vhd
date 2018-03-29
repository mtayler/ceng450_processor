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

	constant NOP : integer := 0;

	constant ADD : integer := 1;
	constant SUB : integer := 2;
	constant MULT : integer := 3;
	constant N_AND : integer := 4;
	constant SHL : integer := 5;
	constant SHR : integer := 6;
	constant TEST : integer := 7;

	constant LOAD : integer := 16;
	constant STORE : integer := 17;
	constant LOADIMM : integer := 18;
	constant MOV : integer := 19;

	constant DOUT : integer := 32;
	constant DIN : integer := 33;

	constant BRR : integer := 64;
	constant BRR_N : integer := 65;
	constant BRR_Z : integer := 66;
	constant BR : integer := 67;
	constant BR_N : integer := 68;
	constant BR_Z : integer := 69;
	constant BR_SUB : integer := 70;
	constant RET : integer := 71;

	constant instr_mem_size : integer := 1;
		
	function opcode(signal instr : std_logic_vector(15 downto 0)) return unsigned is
	begin
		return unsigned(instr(15 downto 9));
	end opcode;
	
	function wr_instr(signal instr : std_logic_vector(15 downto 0)) return boolean is
	begin
		return ((opcode(instr)>=ADD AND opcode(instr)<=SHR) OR opcode(instr)=DIN
				OR opcode(instr)=LOAD OR opcode(instr)=LOADIMM OR opcode(instr)=MOV);
	end wr_instr;
	
	function b1_instr(signal instr : std_logic_vector(15 downto 0)) return boolean is
	begin
		return (opcode(instr)=BRR OR opcode(instr)=BRR_N OR opcode(instr)=BRR_Z);
	end b1_instr;
	
	function b2_instr(signal instr : std_logic_vector(15 downto 0)) return boolean is
	begin
		return (opcode(instr)=BR OR opcode(instr)=BR_N OR opcode(instr)=BR_Z OR opcode(instr)=BR_SUB);
	end b2_instr;
	
	function a1_instr(signal instr : std_logic_vector(15 downto 0)) return boolean is
	begin
		return (opcode(instr)>=ADD AND opcode(instr)<=N_AND);
	end a1_instr;
	
	function l2_instr(signal instr : std_logic_vector(15 downto 0)) return boolean is
	begin
		return (opcode(instr)=LOAD OR opcode(instr)=STORE OR opcode(instr)=MOV);
	end l2_instr;
	
	function ra_instr(signal instr : std_logic_vector(15 downto 0)) return boolean is
	begin
		return (opcode(instr)=SHL OR opcode(instr)=SHR OR opcode(instr)=TEST OR opcode(instr)=DOUT OR b2_instr(instr));
	end ra_instr;
	
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
		addr : IN std_logic_vector(15 downto 0);
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
		PC : std_logic_vector(6 downto 0);
	end record t_IF;
	
	type t_ID is record
		instr : std_logic_vector(15 downto 0);
		data1 : std_logic_vector(15 downto 0);
		data2 : std_logic_vector(15 downto 0);
		PC : std_logic_vector(6 downto 0);
	end record t_ID;
	
	type t_EX is record
		instr : std_logic_vector(15 downto 0);
		result : std_logic_vector(15 downto 0);
		overflow : std_logic_vector(15 downto 0);
		PC : std_logic_vector(6 downto 0);
		z_flag : std_logic;
		n_flag : std_logic;
	end record t_EX;
	
	
	signal reg_IF : t_IF := (instr => (others => '0'),
	                         inport => (others => '0'),
									 PC => (others => '0'));
																		  
	signal reg_ID : t_ID := (instr => (others => '0'),
	                         data1 => (others => '0'),
	                         data2 => (others => '0'),
									 PC => (others => '0'));
																			 
	signal reg_EX : t_EX := (instr => (others => '0'),
									 result => (others => '0'),
									 overflow => (others => '0'),
									 PC => (others => '0'),
									 z_flag => '0',
									 n_flag => '0');
										
	-- Connections requiring logic between
	signal rd_index1 : std_logic_vector(2 downto 0);
	signal rd_index2 : std_logic_vector(2 downto 0);
	signal rd_data1 : std_logic_vector(15 downto 0);
	signal rd_data2 : std_logic_vector(15 downto 0);
	signal wr_index : std_logic_vector(2 downto 0);
	signal wr_enable : std_logic;
	signal wr_overflow : std_logic;
	signal wr_overflow_data : std_logic_vector(15 downto 0);
		
	signal in1 : std_logic_vector(15 downto 0);
	signal in2 : std_logic_vector(15 downto 0);
	signal alu_mode : std_logic_vector(2 downto 0);
	signal alu_result : std_logic_vector(15 downto 0);
	
	signal result : std_logic_vector(15 downto 0);
	signal overflow : std_logic_vector(15 downto 0);
	signal z_flag : std_logic;
	signal n_flag : std_logic;
	
	signal branch_trigger : std_logic;
		
	signal PC : std_logic_vector(6 downto 0);
	signal PC_next : std_logic_vector(6 downto 0);
	signal rom_data : std_logic_vector(15 downto 0);
	
	signal ram_data : std_logic_vector(15 downto 0);
	signal ram_addr : std_logic_vector(15 downto 0);
	signal ram_wr_enable : std_logic;
	
	signal merged_bits : std_logic_vector(15 downto 0);

begin

	rom0 : ROM_VHDL PORT MAP (
		clk => clk,
		addr => PC,
		data => rom_data
	);
	
	ram0 : ram PORT MAP (
		rst => rst,
		clk => clk,
		wr_enable => ram_wr_enable,
		addr => ram_addr,
		data => ram_data
	);

	rf0: register_file PORT MAP (
		rst => rst,
		clk => clk,
		rd_index1 => rd_index1,
		rd_index2 => rd_index2,
		rd_data1 => rd_data1,
		rd_data2 => rd_data2,
		wr_index => wr_index,
		wr_data => reg_EX.result,
		wr_enable => wr_enable,
		wr_overflow_data => wr_overflow_data,
		wr_overflow => wr_overflow
	);
	
	alu0: alu PORT MAP (
		rst => rst,
		clk => clk,
		alu_mode => alu_mode,
		in1 => in1,
		in2 => in2,
		result => alu_result,
		overflow => overflow,
		z_flag => z_flag,
		n_flag => n_flag
	);
	
-- COMBINATIONAL LOGIC
	-- bottom 3 bits of A format instruction, add instruction on BRANCH or OUT
	alu_mode <= reg_ID.instr(11 downto 9) when (opcode(reg_ID.instr) <= 7)
			else "001" when (opcode(reg_ID.instr)=DOUT OR (opcode(reg_ID.instr)>=BRR AND opcode(reg_ID.instr)<=RET) OR opcode(reg_ID.instr)=DIN OR opcode(reg_ID.instr)=MOV) else "000";
	
	result <= ram_data when (opcode(reg_ID.instr)=LOAD) else alu_result;
	
	merged_bits <= reg_ID.instr(7 downto 0) & in1(7 downto 0) when reg_ID.instr(8)='1' else in1(15 downto 8) & reg_ID.instr(7 downto 0);

	-- set read index to r7 in special cases, ra normally
	rd_index1 <= reg_IF.instr(8 downto 6) when (ra_instr(reg_IF.instr) OR l2_instr(reg_IF.instr)) else
			"111" when (opcode(reg_IF.instr)=RET OR opcode(reg_IF.instr)=LOADIMM) else reg_IF.instr(5 downto 3);
	rd_index2 <= reg_IF.instr(5 downto 3) when l2_instr(reg_IF.instr) else reg_IF.instr(2 downto 0);
	
	ram_addr <= in1 when (opcode(reg_ID.instr)=STORE)
			else in2 when (opcode(reg_ID.instr)=LOAD)
			else (others => '0');
			
	ram_wr_enable <= '1' when opcode(reg_ID.instr)=STORE else '0';
	
	-- TODO: ensure driving to Z here and data from RAM module actually works
	ram_data <= in2 when (opcode(reg_ID.instr)=STORE) else (others => 'Z');
	
	-- r7 when BR_SUB otherwise ra
	wr_index <= "111" when (opcode(reg_EX.instr)=BR_SUB) else reg_EX.instr(8 downto 6);
	
	-- check if we have something to write back
	wr_enable <= '1' when wr_instr(reg_EX.instr) else '0';
	wr_overflow <= '1' when ((wr_instr(reg_EX.instr) AND reg_EX.instr(11 downto 9)="011") OR opcode(reg_EX.instr)=BR_SUB) OR opcode(reg_EX.instr)=LOADIMM  else '0';
	
	-- write PC to r7 when BR_SUB, otherwise write overflow
	wr_overflow_data <= std_logic_vector(resize(unsigned(reg_EX.PC),16)) when opcode(reg_EX.instr)=BR_SUB
			else reg_EX.overflow;
	
	PC_next <= std_logic_vector(resize(signed(reg_EX.result),7)) when (branch_trigger='1')
					else std_logic_vector(unsigned(PC) + instr_mem_size);
	
	-- result forwarding {
	-- (may need to add load instruction support, branch instructions should be covered by branch
	in1 <= reg_EX.overflow when ( -- check for overflow forward
			(opcode(reg_EX.instr)=MULT OR opcode(reg_EX.instr)=LOADIMM) AND ( -- when last instruction was multiply
				(a1_instr(reg_ID.instr) AND reg_ID.instr(5 downto 3)="111") -- A1 instruction and rb=7
				OR (ra_instr(reg_ID.instr) AND reg_ID.instr(8 downto 6)="111") -- A2/OUT instruction and ra=7
				OR (opcode(reg_ID.instr)=LOADIMM)                              -- LOADIMM instruction
			)
		) else reg_EX.result when ( -- check for result forward
			wr_instr(reg_EX.instr) AND ( -- last instruction is writing back
				((a1_instr(reg_ID.instr) OR opcode(reg_ID.instr)=TEST) AND reg_ID.instr(5 downto 3)=reg_EX.instr(8 downto 6)) -- A1 or TEST, instruction and rb=writeback register
				OR (ra_instr(reg_ID.instr) AND reg_ID.instr(8 downto 6)=reg_EX.instr(8 downto 6)) -- A2/OUT ra=writeback register
				OR (l2_instr(reg_ID.instr) AND reg_ID.instr(8 downto 6)=reg_EX.instr(8 downto 6)) -- L2 instruction and ra=writeback
			)
		) else reg_ID.data1;
	
	in2 <= reg_EX.overflow when ( -- check for overflow forward
			(opcode(reg_EX.instr)=MULT OR opcode(reg_EX.instr)=LOADIMM) AND ( -- when last instruction was multiply
				(a1_instr(reg_ID.instr) AND reg_ID.instr(2 downto 0)="111")    -- A1 instruction and rc=7              
				OR (l2_instr(reg_ID.instr) AND reg_ID.instr(5 downto 3)="111") -- L2 instruction and rb=7
			)
		) else reg_EX.result when ( -- check for result forward
			wr_instr(reg_EX.instr) AND ( -- last instruction is writing back
				(a1_instr(reg_ID.instr) AND reg_ID.instr(2 downto 0)=reg_EX.instr(8 downto 6)) -- A1, instruction and rc=writeback register
				OR (l2_instr(reg_ID.instr) AND reg_ID.instr(5 downto 3)=reg_EX.instr(8 downto 6)) -- L2, rb=writeback reg
			)
		) else reg_ID.data2;
	
	branch_trigger <= '1' when ( -- check opcode and conditions for branch
			(opcode(reg_EX.instr)=BRR OR opcode(reg_EX.instr)=BR_SUB OR opcode(reg_EX.instr)=RET) -- BRR, BR_SUB or RETURN instruction (always branch)
					OR ((opcode(reg_EX.instr)=BRR_N OR opcode(reg_EX.instr)=BR_N) AND reg_EX.n_flag='1') -- if NEG branch
					OR ((opcode(reg_EX.instr)=BRR_Z OR opcode(reg_EX.instr)=BR_Z) AND reg_EX.z_flag='1') -- if ZERO branch
			) 
			else '0';
	
	ControlUpdate: process(clk, rst) is
	begin
		if (rst='1') then
			PC <= (others => '0');
		
		elsif falling_edge(clk) then -- (not rst)
			PC <= PC_next;
		end if;
	end process;
	
	-- } end result forwarding
	InstructionFetch: process(clk, rst) is
	begin
		if (rst='1') then
			reg_IF.instr <= (others => '0');
			reg_IF.inport <= (others => '0');
			reg_IF.PC <= (others => '0');
			
		elsif rising_edge(clk) then -- (not rst)
			reg_IF.instr <= rom_data;
			reg_IF.inport <= inport;
			reg_IF.PC <= PC;
			
			-- If branching, nop instruction
			if (branch_trigger='1') then
				reg_IF.instr <= (others => '0');
			end if;
		end if;
	end process;
	
	InstructionDecode: process(clk, rst) is
	begin
		if (rst='1') then
			reg_ID.instr <= (others => '0');
			reg_ID.data1 <= (others => '0');
			reg_ID.data2 <= (others => '0');
			reg_ID.PC <= (others => '0');
			
		elsif rising_edge(clk) then -- (not rst)		
			reg_ID.instr <= reg_IF.instr;
			reg_ID.PC <= reg_IF.PC;
			
			-- Determine rd_index1 and set data2 (potentially from rd_data2)
			if (opcode(reg_IF.instr)=DIN) then -- IN instruction (ra and 0)
				-- IN operation (IN port)
				reg_ID.data1 <= reg_IF.inport;
				reg_ID.data2 <= x"0000";
			elsif (opcode(reg_IF.instr)=RET) then -- RETURN instruction, want r7 (rd_data1) and 0
				reg_ID.data1 <= rd_data1;
				reg_ID.data2 <= x"0000";
			elsif (ra_instr(reg_IF.instr) AND NOT b2_instr(reg_IF.instr)) then -- A2 instruction (A3 already checked)
				-- ra and cl (immediate)
				reg_ID.data1 <= rd_data1;
				if (opcode(reg_ID.instr)=DOUT) then -- OUT, null cl
					reg_ID.data2 <= x"0000";
				else -- ignore cl (short to 0)
					reg_ID.data2 <= std_logic_vector(resize(signed(reg_IF.instr(3 downto 0)),16));
				end if;
			elsif (b1_instr(reg_IF.instr)) then -- B1 branch (PC and disp.l)
				reg_ID.data1 <= std_logic_vector(resize(unsigned(reg_IF.PC),16));
				reg_ID.data2 <= std_logic_vector(resize(signed(reg_IF.instr(8 downto 0)),16)); -- disp.l
			elsif (b2_instr(reg_IF.instr)) then -- B2 branch (ra and disp.s)
				reg_ID.data1 <= rd_data1;
				reg_ID.data2 <= std_logic_vector(resize(signed(reg_IF.instr(5 downto 0)),16)); -- disp.s
			elsif (opcode(reg_IF.instr)=MOV) then -- r.src
				reg_ID.data1 <= x"0000";
				reg_ID.data2 <= rd_data2;
			else
				-- rb and rd_data2 (reg)
				reg_ID.data1 <= rd_data1;
				reg_ID.data2 <= rd_data2;
			end if;
			
			-- If branching, nop instruction
			if (branch_trigger='1') then
				reg_ID.instr <= (others => '0');
			end if;
		end if;
	end process;
				
	Execution: process(clk, rst) is
	begin
		if (rst='1') then
			reg_EX.instr <= (others => '0');
			reg_EX.result <= (others => '0');
			reg_EX.overflow <= (others => '0');
			reg_EX.PC <= (others => '0');
			reg_EX.z_flag <= '0';
			reg_EX.n_flag <= '0';
			
		elsif rising_edge(clk) then -- (not rst)	
			reg_EX.instr <= reg_ID.instr;
			reg_EX.PC <= reg_ID.PC;		
			
			if (opcode(reg_ID.instr)=DOUT) then
				outport <= reg_EX.result;
			else
				outport <= (others => '0');
			end if;

			reg_EX.result <= result;
			if (opcode(reg_ID.instr)=LOADIMM) then	-- for LOADIMM
				reg_EX.overflow <= merged_bits;
			else
				reg_EX.overflow <= overflow;
			end if;
			reg_EX.z_flag <= z_flag;
			reg_EX.n_flag <= n_flag;
			
			-- If branching, nop instruction
			if (branch_trigger='1') then
				reg_EX.instr <= (others => '0');
			end if;
		end if;
	end process;

end Behavioral;

