--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:05:08 02/07/2018
-- Design Name:   
-- Module Name:   C:/Users/mfarrow/ceng450_rf_and_alu-master/al_and_rf_tb.vhd
-- Project Name:  register_file_alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu_and_rf
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
 
ENTITY al_and_rf_tb IS
END al_and_rf_tb;
 
ARCHITECTURE behavior OF al_and_rf_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu_and_rf
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         rd_index1 : IN  std_logic_vector(2 downto 0);
         rd_index2 : IN  std_logic_vector(2 downto 0);
         wr_enable : IN  std_logic;
         wr_index : IN  std_logic_vector(2 downto 0);
         wr_data : IN  std_logic_vector(15 downto 0);
         alu_mode : IN  std_logic_vector(2 downto 0);
         z_flag : OUT  std_logic;
         n_flag : OUT  std_logic;
         result : OUT  std_logic_vector(15 downto 0);
			mult : OUT std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal rd_index1 : std_logic_vector(2 downto 0) := (others => '0');
   signal rd_index2 : std_logic_vector(2 downto 0) := (others => '0');
   signal wr_enable : std_logic := '0';
   signal wr_index : std_logic_vector(2 downto 0) := (others => '0');
   signal wr_data : std_logic_vector(15 downto 0) := (others => '0');
   signal alu_mode : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal z_flag : std_logic;
   signal n_flag : std_logic;
   signal result : std_logic_vector(15 downto 0);
	signal mult : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu_and_rf PORT MAP (
          clk => clk,
          rst => rst,
          rd_index1 => rd_index1,
          rd_index2 => rd_index2,
          wr_enable => wr_enable,
          wr_index => wr_index,
          wr_data => wr_data,
          alu_mode => alu_mode,
          z_flag => z_flag,
          n_flag => n_flag,
          result => result,
			 mult => mult
        );

   -- Clock process definitions
   clk_process: process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		rst <= '1'; rd_index1 <= "000"; rd_index2 <= "000";
		wr_index <= "000"; wr_enable <= '0';
      -- hold reset state for 100 ns.
      wait for clk_period*10;
		rst <= '0';
		
		wait for clk_period*4;

      wait until (clk='1' and clk'event);
			wr_enable <= '1'; wr_data <= X"d1d5";
		wait until (clk='1' and clk'event);
			wr_index <= "001"; wr_data <= X"00e9";
		wait until (clk='1' and clk'event);
			wr_enable <= '0';
		wait until (clk='1' and clk'event);
			rd_index1 <= "000"; rd_index2 <= "001";
			alu_mode <= "001";
		wait until (clk='1' and clk'event);
			alu_mode <= "111";
		wait until (clk='1' and clk'event);
			wr_enable <= '1'; wr_data <=X"0010";

      wait;
   end process;

END;
