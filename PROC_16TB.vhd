--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:05:12 02/15/2018
-- Design Name:   
-- Module Name:   /home/mtayler/ceng450/processor/PROC_16TB.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: processor
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
 
ENTITY PROC_16TB IS
END PROC_16TB;
 
ARCHITECTURE behavior OF PROC_16TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT processor
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         instruction : IN  std_logic_vector(15 downto 0);
			inport : IN std_logic_vector(15 downto 0);
         outport : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal instruction : std_logic_vector(15 downto 0) := (others => '0');
	signal inport : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal outport : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: processor PORT MAP (
          clk => clk,
          rst => rst,
          instruction => instruction,
			 inport => inport,
          outport => outport
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
		rst <= '1';
      wait for 100 ns;

		rst <= '0';

      -- insert stimulus here
		wait until rising_edge(clk); inport <= x"0002";
		wait until rising_edge(clk); inport <= x"0003";
		wait until rising_edge(clk); inport <= x"0001";
		wait until rising_edge(clk); inport <= x"0005";
		wait until rising_edge(clk); inport <= x"0009";
		wait until rising_edge(clk); inport <= x"0001";
		wait until rising_edge(clk); inport <= x"0007";
		wait until rising_edge(clk); inport <= x"0000";

      wait;
   end process;

END;
