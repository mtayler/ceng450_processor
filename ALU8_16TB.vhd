--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:46:21 01/27/2018
-- Design Name:   
-- Module Name:   /home/mtayler/ceng450/register_file_alu/test_alu.vhd
-- Project Name:  register_file_alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_alu IS
END test_alu;
 
ARCHITECTURE behavior OF test_alu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu
    PORT(
         in1 : IN  std_logic_vector(15 downto 0);
         in2 : IN  std_logic_vector(15 downto 0);
         alu_mode : IN  std_logic_vector(2 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic;
         result : OUT  std_logic_vector(15 downto 0);
			overflow : OUT std_logic_vector(15 downto 0);
         z_flag : OUT  std_logic;
         n_flag : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic_vector(15 downto 0) := (others => '0');
   signal in2 : std_logic_vector(15 downto 0) := (others => '0');
   signal alu_mode : std_logic_vector(2 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal result : std_logic_vector(15 downto 0);
	signal mult : std_logic_vector(15 downto 0);
   signal z_flag : std_logic;
   signal n_flag : std_logic;

   -- Clock period definitions
   constant clk_period : time := 100 ns;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu PORT MAP (
          in1 => in1,
          in2 => in2,
          alu_mode => alu_mode,
          clk => clk,
          rst => rst,
          result => result,
			 mult => mult,
          z_flag => z_flag,
          n_flag => n_flag
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		in1 <= x"0000";
		in2 <= x"0000";
		alu_mode <= "000";
		rst <= '1';
      wait for 100 ns;	
		rst <= '0';
      wait for clk_period*10;

      -- insert stimulus here
		-- nop
		wait until rising_edge(clk); in1 <= x"200f"; in2 <= x"1000"; alu_mode <= "000";
		-- add
		wait until rising_edge(clk); alu_mode <= "001";
		-- sub
		wait until rising_edge(clk); alu_mode <= "010";
		-- mult
		wait until rising_edge(clk); in1 <= x"0352"; in2 <= x"0529"; alu_mode <= "011"; -- = 0x00F3 0x40F3
		-- nand
		wait until rising_edge(clk); in1 <= x"ff07"; in2 <= x"f0fc"; alu_mode <= "100";
		-- shl
		wait until rising_edge(clk); in1 <= x"0001"; in2 <= x"000f"; alu_mode <= "101";
		-- shr
		wait until rising_edge(clk); in1 <= x"8000"; in2 <= x"000f"; alu_mode <= "110";
		-- test
		wait until rising_edge(clk); in1 <= x"0001"; alu_mode <= "111";
		wait until rising_edge(clk); in1 <= x"fff1";
		wait until rising_edge(clk); in1 <= x"0000";

      wait;
   end process;

END;
